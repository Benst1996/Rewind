# Unsets thumb bits in function names in a symbol file.
# This allows no$gba to display function names properly.
# - We assume that any symbol corresponding to an address
#   that has the least significant bit set is a function symbol.
import sys
import os
import argparse
import string
import pdb

# Handle user input.
parser = argparse.ArgumentParser(prog="UnsetThumbBitInSymbolFile",
                                 description="Unsets thumb bits in function names in a symbol file.")
parser.add_argument('inFilename', help='Input sym file.')
parser.add_argument('outFilename', help='Output sym file.')
args = parser.parse_args()

if not os.path.isfile(args.inFilename):
  print("ERROR: Couldn't find input file: \"" + args.inFilename + "\".")
  sys.exit()

# Open input- & outputfiles.
symFile = open(args.inFilename, "r", encoding="utf-8", errors="replace")
newSymFile = open(args.outFilename, "w")

# Loop over input file.
for i, line in enumerate(symFile):
  # Determine address value.
  j = 0
  addr = 0
  while line[j] in string.hexdigits:
    addr *= 16
    addr += int(line[j], 16)
    j += 1
  
  # Determine new address and write it.
  if addr != 0:
    
    # Unset thumb-bit.
    addr &= 0xFFFFFFFE
    
    # Address needs to be 8 numbers for
    # no$gba to not complain it seems.
    # Therefore we add a leading 0
    # if necessary.
    if addr < 0x10000000:
      newSymFile.write("0")
    
    # Write new address. Skip the '0x'.
    newSymFile.write(hex(addr)[2:])
  
  # Write remainder of line past the address.
  while j < len(line):
    newSymFile.write(line[j])
    j += 1