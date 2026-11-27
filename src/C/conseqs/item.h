#ifndef ITEM_H
#define ITEM_H
#include "gbafe.h"
#include "../internal.h"

enum {
  
  // Sizes.
  REW_ENTRY_INVENTORYREORDER_SIZE =   2,
  
  REW_CONSEQ_ITEMOBTAINED_UNIT_SIZE = 4,
  REW_CONSEQ_ITEMREMOVED_UNIT_SIZE = 4,
  REW_CONSEQ_ITEMOBTAINED_SUPPLY_SIZE = 2,
  REW_CONSEQ_ITEMREMOVED_SUPPLY_SIZE = 2,
  
  REW_CONSEQ_UNITSUPPLYEXCHANGE_SIZE = UNIT_ITEM_COUNT * 2 * 2,
  
  // Reordering inventory.
  REW_REORDER_FUTURE = false,
  REW_REORDER_PAST = true,
  
};

// Rewind entry data.
// Tracks how a unit's inventory gets reordered.
// X and Y hold absolute position of unit.
struct REW_InventoryReorder {
  /* 00 */ s8 x;
  /* 01 */ s8 y;
};

// Rewind entry data.
// Tracks when a unit obtained/lost an item.
struct REW_ItemUnit {
  /* 00 */ s8 x;
  /* 01 */ s8 y;
  /* 02 */ u16 item;
};

// Tracks the exchange of items between units and
// supply whenever a unit accesses the supply by
// storing the inventory of the unit before
// and after the exchange.
struct REW_UnitSupplyExchange {
  /* 00 */ s8 x;
  /* 01 */ s8 y;
  /* 02 */ u16 itemsBefore[UNIT_ITEM_COUNT];
  /* 0C */ u16 itemsAfter[UNIT_ITEM_COUNT];
};

// rewindEntry flags for an REW_InventoryReorder
struct REW_ReorderPositions {
  /* 00 */ u8 item1Pos : 3;
  /* 00 */ u8 item2Pos : 2;
  /* 00 */ u8 item3Pos : 2;
  /* 00 */ u8 item4Pos : 1;
  // item5Pos can be inferred.
};

struct REW_ReorderPositions REW_createReorderPositions(u16* inventoryBefore, u16* inventoryAfter);
void REW_reorderInventory(u16* inventory, u16* resultInventory, struct REW_ReorderPositions reorderPositions, bool direction);
void REW_doInventoryReorder(struct REW_RewindEntry* entry, bool undo);
void REW_undoItemObtainedUnit(struct REW_RewindEntry* entry);
void REW_undoItemRemovedUnit(struct REW_RewindEntry* entry);
void REW_undoItemObtainedSupply(struct REW_RewindEntry* entry);
void REW_undoItemRemovedSupply(struct REW_RewindEntry* entry);
void REW_redoItemObtainedUnit(struct REW_RewindEntry* entry);
void REW_redoItemRemovedUnit(struct REW_RewindEntry* entry);
void REW_redoItemObtainedSupply(struct REW_RewindEntry* entry);
void REW_redoItemRemovedSupply(struct REW_RewindEntry* entry);

void REW_undoUnitSupplyExchange(struct REW_RewindEntry* entry);
void REW_redoUnitSupplyExchange(struct REW_RewindEntry* entry);

void REW_conseqEquipItem(struct Unit* unit, int itemSlot);
void REW_conseqItemObtainedUnit(struct Unit* unit, u16 item, bool wasItemObtainedSuccessfully);
void REW_conseqItemRemovedUnit(struct Unit* unit, u16 item);
void REW_conseqItemObtainedSupply(u16 item);
void REW_conseqItemRemovedSupply(u16 item);

void REW_conseqSupplyWriteInventorySnapshot(struct Unit* unit, u16* snapshotPtr);
void REW_conseqSupplyTrackInventoryChanges(struct Unit* unit, u16* snapshotPtr);

void REW_undoItemObtained(struct REW_RewindSequence* sequence, struct REW_RewindEntry* entry);
void REW_redoItemObtained(struct REW_RewindSequence* sequence, struct REW_RewindEntry* entry);

#endif // ITEM_H