#include <stdio.h>
#include "internal.h"

// Clears given rewind sequence by setting size value to 0.
void REW_clearRewindSeq(struct REW_RewindSequence* sequence) {
  sequence->size = 0;
}

// Returns true if sequence is empty.
// Returns false, otherwise.
bool REW_isSequenceEmpty(struct REW_RewindSequence* sequence) {
  return (sequence->size == 0);
}

// Deletes a given rewindEntry from the given rewindSequence.
// Then refactors the sequence: 012345 -> 012*45 -> 01245.
// Assumes the entry is part of said sequence.
void REW_deleteRewindEntry(struct REW_RewindSequence* seq, struct REW_RewindEntry* entry) {
  struct REW_RewindEntry* entryIt;
  int entrySize, entryItSize, align, it = 0;
  
  // Allocate buffer for remaining rewindEntries.
  u8 newSequenceTail[REW_SEQUENCE_BUFFER_SIZE];
  
  // Copy entries after given entry over to separate buffer.
  entrySize = entry->size;
  entryIt = REW_nextEntry(seq, entry);
  while (entryIt != NULL) {
    
    // 4 align the size of the entry.
    entryItSize = entryIt->size;
    align = entryItSize & 3;
    if (align)
      entryItSize += 4 - align;
    
    // Copy rewindEntry to buffer.
    CpuCopy32((void*)entryIt, &newSequenceTail[it], entryItSize);
    
    it += entryItSize;
    entryIt = REW_nextEntry(seq, entryIt);
  }
  
  // Adjust rewindSequence buffer size.
  align = entrySize & 3;
  if (align)
    entrySize += 4 - align;
  seq->size -= entrySize;
  
  // If we deleted the sequence's only rewindEntry,
  // properly clear/empty the sequence.
  if (seq->size == REW_SEQUENCE_BASESIZE) {
    REW_clearRewindSeq(seq);
    return;
  }
  
  // If we find no entries past the
  // deleted rewindEntry, then nothing to refactor.
  if (it <= 0)
    return;
  
  // Copy buffer to rewindSequence.
  CpuCopy32(&newSequenceTail[0], (void*)entry, it);
}

// Adds a new rewindEntry to the rewindSequence, REW_curSequence.
// Returns pointer to new rewindEntry or
// NULL if no more space is available in the rewindSequence.
// - size argument is additional size to add to rewindEntry.
struct REW_RewindEntry* REW_mallocNewRewindEntry(u16 size) {
  struct REW_RewindSequence* seq = REW_curSequence;
  struct REW_RewindEntry* entry;
  
  // If rewindSequence was marked as not fiting into allocated RAM anymore,
  // return NULL.
  if (seq->size == REW_SEQUENCE_LIMIT_REACHED)
    return NULL;
  
  // If adding new entry makes rewindSequence not fit into allocated RAM anymore,
  // mark rewindSequence for ignoring and return NULL.
  if ((seq->size + REW_ENTRY_BASESIZE + size) > (u16)(u32)(&REW_curSequenceMaxSize)) {
    seq->size = REW_SEQUENCE_LIMIT_REACHED;
    return NULL;
  }
  
  // Set rewindSequence size to base size if rewindSequence is empty.
  if (REW_isSequenceEmpty(seq))
    seq->size = REW_SEQUENCE_BASESIZE;
  
  // Determine address of new rewindEntry.
  entry = (struct REW_RewindEntry*)((u32)seq + seq->size);
  
  // Set rewindEntry's size.
  entry->size = REW_ENTRY_BASESIZE + size;
  
  // Add rewindEntry's size to rewindSequence size.
  seq->size += entry->size;
  
  // Return pointer to address of new rewindEntry.
  return entry;
}

// Adds additional size to given rewindEntry and the rewindSequence.
// Returns false if no more space is available in the rewindSequence.
bool REW_mallocSize(struct REW_RewindEntry* entry, u16 size) {
  struct REW_RewindSequence* seq = REW_curSequence;
  
  // If sequence was marked as not fiting into allocated RAM anymore,
  // return false.
  if (seq->size == REW_SEQUENCE_LIMIT_REACHED)
    return false;
  
  // If adding additional size makes sequence not fit into allocated RAM anymore,
  // mark sequence for ignoring and return false.
  if ((seq->size + size) > (u16)(u32)(&REW_curSequenceMaxSize)) {
    seq->size = REW_SEQUENCE_LIMIT_REACHED;
    return false;
  }
  
  // Add additional size to rewindEntry and rewindSequence.
  seq->size += size;
  entry->size += size;
  return true;
}

// Makes sure the rewind entry's size is a multiple of 4.
// We do this to ensure the next entry is word-aligned.
// This function should only be called after an entry's size is finalized.
void REW_alignEntry() {
  struct REW_RewindSequence* seq = REW_curSequence;
  int align;
  
  // If sequence was marked as not fiting into allocated RAM anymore,
  // don't align entry.
  if (seq->size == REW_SEQUENCE_LIMIT_REACHED)
    return;
  
  // Don't increase size of sequence if there is no more space for it.
  align = seq->size & 3;
  if ((seq->size + (4 - align)) > (u16)(u32)(&REW_curSequenceMaxSize))
    return;
  
  // 4-align the entry with the sequence.
  if (align)
    seq->size += 4 - align;
}

// Given a rewind-sequence, return the next sequence of the buffer.
// Return NULL instead if the rewind-sequence is at the end of the buffer.
struct REW_RewindSequence* REW_nextSequence(struct REW_RewindSequence* sequence) {
  
  // There is no next sequence if sequence is at the end of buffer.
  if (REW_rewindBuffer->end == sequence)
    return NULL;
  
  // Otherwise, return the next sequence.
  return (struct REW_RewindSequence*)((u32)(sequence) + 
         (u32)sequence->size);
}

// Given a rewind-sequence, return the previous sequence of the buffer.
// Return NULL instead if the rewind-sequence is at the start of the buffer.
struct REW_RewindSequence* REW_prevSequence(struct REW_RewindSequence* sequence) {
  
  // There is no next sequence if sequence is at the start of buffer
  // or if sizePrev is equal to zero.
  if (&REW_rewindBuffer->start == sequence || sequence->sizePrev == 0)
    return NULL;
  
  // Otherwise, return the previous sequence.
  return (struct REW_RewindSequence*)((u32)(sequence) - 
         (u32)sequence->sizePrev);
}

// Given a rewind-entry, return the next entry of the sequence
// or return NULL if there is no next entry.
struct REW_RewindEntry* REW_nextEntry(struct REW_RewindSequence* seq, struct REW_RewindEntry* entry) {
  u16 size = entry->size;
  int align = size & 3;
  
  // Pad out size until it's word aligned;
  // Entries are always word-aligned.
  if (align)
    size += 4 - align;
  
  // Return NULL if entry wouldn't be in sequence.
  entry = (struct REW_RewindEntry*)((u32)entry + size);
  if ((u32)entry >= (u32)seq + seq->size)
    return NULL;
  return entry;
}

// Given a rewind-sequence and an entry, find the preceding entry in this sequence.
struct REW_RewindEntry* REW_prevEntry(struct REW_RewindSequence* seq, struct REW_RewindEntry* entry) {
  struct REW_RewindEntry* prev = seq->entry;
  struct REW_RewindEntry* cur = REW_nextEntry(seq, prev);
  
  // Return NULL if there is no previous entry.
  if (prev == entry)
    return NULL;
  
  // Find current entry.
  while (cur != entry) {
    prev = cur;
    cur = REW_nextEntry(seq, cur);
  }
  
  // Return previous entry.
  return prev;
}

// Given a rewind-sequence, return the last entry of the sequence.
// Returns NULL if the sequence is empty.
struct REW_RewindEntry* REW_lastEntry(struct REW_RewindSequence* seq) {
  struct REW_RewindEntry* prev = seq->entry;
  struct REW_RewindEntry* cur = seq->entry;
  
  // if the sequence is empty, we return NULL.
  if (REW_isSequenceEmpty(seq))
    return NULL;
  
  // Find final entry.
  while (cur != NULL) {
    prev = cur;
    cur = REW_nextEntry(seq, cur);
  }
  
  // Return final entry.
  return prev;
}

// Searches for a rewindEntry with the given diffType in the given rewindSequence.
// args:
//  - seq: rewindSequence to search through.
//  - entry: first entry in the sequence to search from onwards.
//  - diffType: diffType of entry we're searching.
// Returns first matching entry found or NULL if no such entry is in the sequence.
struct REW_RewindEntry* REW_findEntry(struct REW_RewindSequence* seq, struct REW_RewindEntry* entry, u8 diffType) {
  
  // If the sequence is empty, then entry not found.
  if (REW_isSequenceEmpty(seq))
    return NULL;
  
  // Iterate over sequence's rewindEntries.
  while (entry != NULL) {
    
    // If diffType matches, return this entry.
    if (entry->diffType == diffType)
      return entry;
    
    // Otherwise iterate.
    entry = REW_nextEntry(seq, entry);
  }
  
  // Couldn't find entry of given diffType in given sequence past given entry.
  return NULL;
}

int REW_isUndoAvailable(struct REW_RewindSequence* sequence) {
  if (!sequence->sizePrev)
    return false;
  return true;
}

int REW_isRedoAvailable(struct REW_RewindSequence* sequence) {
  if (REW_rewindBuffer->end <= sequence)
    return false;
  return true;
}

// Searches unitData for X and Y coordinate difference
// and returns these (call by reference).
void REW_getCoordinateDifference(struct REW_UnitChangeData* unitChangeData, u16 size, s8* xDiff, s8* yDiff) {
  int i = 0;
  *xDiff = 0;
  *yDiff = 0;
  int foundX = false;
  int foundY = false;
  
  while (i * 2 < size) {
    
    if (unitChangeData[i].offs == REW_UNITOFFS_X) {
      *xDiff = (s8)unitChangeData[i].diff;
      foundX = true;
    }
    
    if (unitChangeData[i].offs == REW_UNITOFFS_Y) {
      *yDiff = (s8)unitChangeData[i].diff;
      foundY = true;
    }
    
    if (foundX && foundY)
      break;
    
    i++;
  }
}

// Given REW_UnitData, return unitID.
// Looks for the unitID in the gBmMapUnit.
// arg size is the size of the unitData.
u8 REW_getUnitID(struct REW_UnitData* unitData, u16 size, u8 mode) {
  s8 xDiff = 0;
  s8 yDiff = 0;
  
  // For UNDO we need to apply coordinate difference to
  // original coordinate before action was taken.
  if (mode == REW_FINDUNIT_UNDO) {
    
    REW_getCoordinateDifference(unitData->unitChangeData, size - REW_ENTRY_UNITDATA_BASESIZE, &xDiff, &yDiff);
    return gBmMapUnit[unitData->y + yDiff][unitData->x + xDiff];
  
  // For REDO we need to use the
  // original coordinate before action was taken.
  } else if (mode == REW_FINDUNIT_REDO) {

    return gBmMapUnit[unitData->y][unitData->x];
    
  }
  
  // You gotta pick between the two modes.
  return 0;
}

// Need to hide units again if we:
//  - undo a de-roofing.
//  - redo a roofing.
void REW_hideRoofedUnits() {

  for (int i = 1; i < 0xC0; i++) {
    struct Unit* unit = GetUnit(i);
    if (!UNIT_IS_VALID(unit))
      continue;
    
    if (gBmMapTerrain[unit->yPos][unit->xPos] == REW_ROOF_ID) {
      unit->state |= US_UNDER_A_ROOF | US_HIDDEN;
    }
  }
}

// Load unit out of REW_UnitDefData.
void REW_loadUnit(struct Unit* unit, struct REW_UnitDefData* unitDefData, s8 x, s8 y) {
  struct UnitDefinition unitDef;
  int i;
  
  unitDef.charIndex =       unitDefData->charIndex;
  unitDef.classIndex =      unitDefData->classIndex;
  unitDef.leaderCharIndex = 0;
  unitDef.autolevel =       0;
  unitDef.allegiance =      unitDefData->allegiance;
  unitDef.level =           unitDefData->level;
  unitDef.xPosition =       x;
  unitDef.yPosition =       y;
  unitDef.genMonster =      0;
  unitDef.itemDrop =        unitDefData->itemDrop;
  unitDef.unk_05_7 =        0;
  unitDef.extraData =       0;
  unitDef.redaCount =       0;
  unitDef.redas =           NULL;
  for (i = 0; i < UNIT_DEFINITION_ITEM_COUNT; i++) { unitDef.items[i] = 0; }
  for (i = 0; i < UDEF_AIIDX_MAX; i++) { unitDef.ai[i] = 0; }
  
  // Clear unit.
  CpuFill32(0, unit, REW_UNITSIZE);
  
  // Load unit from unitDefinition.
  UnitInitFromDefinition(unit, &unitDef);
  
  // Set index to reflect faction.
  unit->index = unitDef.allegiance << 6;
}

// Vanilla's RemoveItemFromConvoy requires an index
// and GetConvoyItemSlot doesn't care about the item's uses
// so we need to make a function for our needs.
//
// Removes the item from supply and returns 0.
// If item isn't in supply, return -1 instead.
int REW_removeItemFromSupply(u16 item) {
  int i;
  u16* supply = GetConvoyItemArray();
  
  // Find item in supply.
  for (i = 0; i < CONVOY_ITEM_COUNT; i++) {
    if (supply[i] == item) {
      supply[i] = 0;
      return 0;
    }
  }
  
  // Couldn't find item.
  return -1;
}