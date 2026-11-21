#ifndef ITEM_H
#define ITEM_H
#include "gbafe.h"
#include "../internal.h"

enum {
  
  // Sizes.
  REW_ENTRY_INVENTORYREORDER_SIZE =   2,
  REW_CONSEQ_ITEMOBTAINED_UNIT_SIZE = 4,
  
};

// Rewind entry data.
// Tracks when a unit obtained an item.
struct REW_ItemObtainedUnit {
  /* 00 */ s8 x;
  /* 01 */ s8 y;
  /* 02 */ u16 item;
};

// Rewind entry data.
// Tracks how a unit's inventory gets reordered.
// X and Y hold absolute position of unit.
struct REW_InventoryReorder {
  /* 00 */ s8 x;
  /* 01 */ s8 y;
};

// rewindEntry flags for an REW_InventoryReorder
struct REW_InventoryReorderFlags {
  /* 00 */ u8 item1Pos : 3;
  /* 00 */ u8 item2Pos : 2;
  /* 00 */ u8 item3Pos : 2;
  /* 00 */ u8 item4Pos : 1;
  // item5Pos can be inferred.
};

void REW_doInventoryReorder(struct REW_RewindEntry* entry, bool undo);
void REW_undoItemObtainedUnit(struct REW_RewindEntry* entry);
void REW_undoItemRemovedUnit(struct REW_RewindEntry* entry);
void REW_undoItemObtainedSupply(struct REW_RewindEntry* entry);
void REW_undoItemRemovedSupply(struct REW_RewindEntry* entry);
void REW_redoItemObtainedUnit(struct REW_RewindEntry* entry);
void REW_redoItemRemovedUnit(struct REW_RewindEntry* entry);
void REW_redoItemObtainedSupply(struct REW_RewindEntry* entry);
void REW_redoItemRemovedSupply(struct REW_RewindEntry* entry);

void REW_conseqEquipItem(struct Unit* unit, int itemSlot);
void REW_conseqItemObtainedUnit(struct Unit* unit, u16 item, bool wasItemObtainedSuccessfully);

void REW_undoItemObtained(struct REW_RewindSequence* sequence, struct REW_RewindEntry* entry);
void REW_redoItemObtained(struct REW_RewindSequence* sequence, struct REW_RewindEntry* entry);

#endif // ITEM_H