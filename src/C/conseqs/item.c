#include <stdio.h>
#include "item.h"

// Undo or redo a reordering of a unit's inventory.
// bool undo is true if undoing the reorder, false if redoing the reorder.
void REW_doInventoryReorder(struct REW_RewindEntry* entry, bool undo) {
  struct REW_InventoryReorder* inventoryReorder;
  struct REW_InventoryReorderFlags* inventoryReorderFlags;
  s8 unitID;
  struct Unit* unit;
  u8 inventorySlotAvailabilityMask = 0;
  u16 items[UNIT_ITEM_COUNT];
  int i, j, k, l;
  
  inventoryReorder = (struct REW_InventoryReorder*)entry->data;
  inventoryReorderFlags = (struct REW_InventoryReorderFlags*)&entry->flags;
  
  // Sanity checks. These values will not be accepted.
  if (inventoryReorderFlags->item1Pos > 4 ||
      inventoryReorderFlags->item3Pos > 2)
    return;
  
  // Find unit.
  unitID = gBmMapUnit[inventoryReorder->y][inventoryReorder->x];
  unit = GetUnit(unitID);
  if (!UNIT_IS_VALID(unit))
    return;
  
  // Prepare item location array.
  int itemPositions[UNIT_ITEM_COUNT] = {inventoryReorderFlags->item1Pos,
                                        inventoryReorderFlags->item2Pos,
                                        inventoryReorderFlags->item3Pos,
                                        inventoryReorderFlags->item4Pos,
                                        0};
  
  // Determine new positions of items.
  for (l = 0; l < UNIT_ITEM_COUNT; l++) {
  
    // Item l.
    i = 0;
    j = itemPositions[l];
    k = 1;
    while (true) {
      
      if (!(inventorySlotAvailabilityMask & k)) {
        
        if (j == 0)
          break;      // Found the inventory slot.
        else
          j--;        // Not this inventory slot.
      }
      
      k <<= 1;
      i++;
    }
    
    inventorySlotAvailabilityMask |= k;
    
    if (undo)
      items[l] = unit->items[i];
    else // Redo.
      items[i] = unit->items[l];
  }
  
  // Reorder unit's inventory.
  for (l = 0; l < UNIT_ITEM_COUNT; l++)
    unit->items[l] = items[l];
}

// Undo unit obtaining an item.
void REW_undoItemObtainedUnit(struct REW_RewindEntry* entry) {
  struct REW_ItemObtainedUnit* itemObtainedUnit;
  s8 unitID;
  struct Unit* unit;
  
  itemObtainedUnit = (struct REW_ItemObtainedUnit*)entry->data;
  
  // Find unit.
  unitID = gBmMapUnit[itemObtainedUnit->y][itemObtainedUnit->x];
  unit = GetUnit(unitID);
  if (!UNIT_IS_VALID(unit))
    return;
  
  // Remove last item in unit's inventory.
  unit->items[GetUnitItemCount(unit) - 1] = 0;
}

// Undo unit losing an item.
void REW_undoItemRemovedUnit(struct REW_RewindEntry* entry) { 

}

// Undo item sent to supply.
void REW_undoItemObtainedSupply(struct REW_RewindEntry* entry) { 

}

// Undo item removed from supply.
void REW_undoItemRemovedSupply(struct REW_RewindEntry* entry) { 

}

// Redo unit obtaining an item.
void REW_redoItemObtainedUnit(struct REW_RewindEntry* entry) { 
  struct REW_ItemObtainedUnit* itemObtainedUnit;
  s8 unitID;
  struct Unit* unit;
  int itemCount;
  
  itemObtainedUnit = (struct REW_ItemObtainedUnit*)entry->data;
  
  // Find unit.
  unitID = gBmMapUnit[itemObtainedUnit->y][itemObtainedUnit->x];
  unit = GetUnit(unitID);
  if (!UNIT_IS_VALID(unit))
    return;
  
  // Can't re-add item if inventory is full.
  // We shouldn't get here.
  itemCount = GetUnitItemCount(unit);
  if (itemCount >= UNIT_ITEM_COUNT)
    return;
  
  // Add obtained item to unit's inventory.
  unit->items[itemCount] = itemObtainedUnit->item;
}

// Redo unit losing an item.
void REW_redoItemRemovedUnit(struct REW_RewindEntry* entry) { 

}

// Redo item removed from supply.
void REW_redoItemObtainedSupply(struct REW_RewindEntry* entry) { 

}

// Redo item removed from supply.
void REW_redoItemRemovedSupply(struct REW_RewindEntry* entry) { 

}

// Track when a unit equips a different item.
// - itemSlot is the new slot the to-be-equipped item previously occupied.
void REW_conseqEquipItem(struct Unit* unit, int itemSlot) {
  struct REW_RewindEntry* entry;
  struct REW_InventoryReorder* inventoryReorder;
  struct REW_InventoryReorderFlags* inventoryReorderFlags;
  
  // Nothing to reorder.
  if (itemSlot <= 0)
    return;
  
  // Don't track reordering for temporary/copy units.
  if (GetUnit(unit->index) != unit)
    return;
  
  // Create new RewindEntry for REW_CONSEQ_INVENTORYREORDER.
  entry = REW_createSeqEntry(REW_curSequence);
  entry->diffType = REW_CONSEQ_INVENTORYREORDER;
  inventoryReorderFlags = (struct REW_InventoryReorderFlags*)&entry->flags;
  inventoryReorder = (struct REW_InventoryReorder*)entry->data;
  
  // Track unit's X and Y.
  inventoryReorder->x = gActiveUnitMoveOrigin.x;
  inventoryReorder->y = gActiveUnitMoveOrigin.y;
  
  // Setup default inventory order.
  inventoryReorderFlags->item1Pos = 1;      // This item is guaranteed to have moved one down.
  inventoryReorderFlags->item2Pos = 0;
  inventoryReorderFlags->item3Pos = 0;
  inventoryReorderFlags->item4Pos = 0;
  
  // Second item location.
  if (itemSlot > 1)
    inventoryReorderFlags->item2Pos = 1;
  
  // Third item location.
  if (itemSlot > 2)
    inventoryReorderFlags->item3Pos = 1;
  
  // Fourth item location.
  if (itemSlot > 3)
    inventoryReorderFlags->item4Pos = 1;
  
  // Set entry size & update sequence size.
  REW_addRewindEntrySize(REW_curSequence, entry, REW_ENTRY_BASESIZE + REW_ENTRY_INVENTORYREORDER_SIZE);
}

// Track when a unit obtains an item.
//  - wasItemObtainedSuccessfully is the return value of UnitAddItem
//    which is called prior to this function. If this value is false
//    we don't track but return immediately.
void REW_conseqItemObtainedUnit(struct Unit* unit, u16 item, bool wasItemObtainedSuccessfully) {
  struct REW_RewindEntry* entry;
  struct REW_ItemObtainedUnit* itemObtainedUnit;
  
  // If we are in preparations nothing to track; Return.
  if (PrepAtMenuExists(NULL))
    return;
  
  // If item was not obtained (UnitAddItem returned false)
  // nothing to track; Return.
  if (!wasItemObtainedSuccessfully)
    return;
  
  // If unit is not valid, return.
  if (!UNIT_IS_VALID(unit))
    return;
  
  // Create new RewindEntry for REW_CONSEQ_ITEMOBTAINED_UNIT.
  entry = REW_createSeqEntry(REW_curSequence);
  entry->diffType = REW_CONSEQ_ITEMOBTAINED_UNIT;
  itemObtainedUnit = (struct REW_ItemObtainedUnit*)entry->data;
  
  // Track unit's X and Y.
  itemObtainedUnit->x = gActiveUnitMoveOrigin.x;
  itemObtainedUnit->y = gActiveUnitMoveOrigin.y;
  
  // Track item.
  itemObtainedUnit->item = item;
  
  // Set entry size & update sequence size.
  REW_addRewindEntrySize(REW_curSequence, entry, REW_ENTRY_BASESIZE + REW_CONSEQ_ITEMOBTAINED_UNIT_SIZE);
}