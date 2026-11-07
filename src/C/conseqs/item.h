#ifndef ITEM_H
#define ITEM_H
#include "gbafe.h"
#include "../internal.h"

enum {
  
  // Types of item drops.
  REW_ITEM_INVENTORYNOTFULL =      0x7,
  REW_ITEM_CONVOY_DIFFERENTITEM =  0x8,
  REW_ITEM_CONVOY_OBTAINEDITEM =   0xD,
  REW_ITEM_DISCARD_DIFFERENTITEM = 0x0,
  REW_ITEM_DISCARD_OBTAINEDITEM =  0x5,
  
  // Types of key items.
  REW_ITEM_CHESTKEY =        0,
  REW_ITEM_CHESTKEY_BUNDLE = 1,
  REW_ITEM_LOCKPICK =        2,
  REW_ITEM_NOTBROKEN =       3,
  
  // Minimum size of REW_chestLootData.
  REW_CHESTLOOTDATA_BASESIZE = 2
  
};

struct REW_chestLootData {
  /* 00 */ u8 flags : 4;          // Additional flags.
  /* 00 */ s8 xDiff : 6;
  /* 01 */ s8 yDiff : 6;
  /* 02 */ u16 replaceditem;      // Item sent to convoy/discarded.
};

void REW_undoItemObtained(struct REW_RewindSequence* sequence, struct REW_RewindEntry* entry);
void REW_redoItemObtained(struct REW_RewindSequence* sequence, struct REW_RewindEntry* entry);
void REW_keyItemUsed();
void REW_itemObtained(u8 kind, s8 inventorySlot);

#endif // LOADUNIT_H