#include <stdio.h>
#include "item.h"

// Given a before- and after-inventory, this function
// will generate the matrix that can be used to
// transition from one to the other (REW_ReorderPositions).
struct REW_ReorderPositions REW_createReorderPositions(u16* inventoryBefore, u16* inventoryAfter) {
  int i, j, k, l;
  u8 inventorySlotAvailabilityMask = 0;
  struct REW_ReorderPositions reorderPositions = {0, 0, 0, 0};
  u16 inventoryAfterCopy[UNIT_ITEM_COUNT] = {inventoryAfter[0],
                                             inventoryAfter[1],
                                             inventoryAfter[2],
                                             inventoryAfter[3],
                                             inventoryAfter[4]};
  
  // Build the transitionMatrix (REW_ReorderPositions).
  for (i = 0; i < UNIT_ITEM_COUNT; i++) {
    for (j = 0; j < UNIT_ITEM_COUNT; j++) {
      
      // If matching item has been found.
      if (inventoryBefore[i] == inventoryAfterCopy[j]) {
        
        // Hard to document how this exactly works.
        k = 0;
        l = 0;
        while (k != j) {
          
          // if slot is open.
          if (!(inventorySlotAvailabilityMask & (1 << k)))
            l++;
          
          k++;
        }
        
        inventorySlotAvailabilityMask |= (1 << j);
        
        // To ensure duplicate items don't throw things off,
        // we replace filled slots with special code 0xFFFF.
        inventoryAfterCopy[j] = 0xFFFF;
        
        if (i == 0)
          reorderPositions.item1Pos = l;
        if (i == 1)
          reorderPositions.item2Pos = l;
        else if (i == 2)
          reorderPositions.item3Pos = l;
        else if (i == 3)
          reorderPositions.item4Pos = l;
        
        break;
      }
    }
    
    if (j >= UNIT_ITEM_COUNT) {
      // We should only get here if there's X number of some item
      // in inventoryBefore and less than X of that item in inventoryAfter.
      // FIXME, add debug printing, we're not supposed to get here!
      return (struct REW_ReorderPositions){0, 0, 0, 0};
    }
  }
  
  return reorderPositions;
}

// Transitions an inventory from before to after or vice versa
// depending on direction. The resulting inventory is returned
// via the resultInventory argument (call-by-reference).
void REW_reorderInventory(u16* inventory, u16* resultInventory, struct REW_ReorderPositions reorderPositions, bool direction) {
  u8 inventorySlotAvailabilityMask = 0;
  int i, j, k, l;
  
  // Prepare item location array.
  int itemPositions[UNIT_ITEM_COUNT] = {reorderPositions.item1Pos,
                                        reorderPositions.item2Pos,
                                        reorderPositions.item3Pos,
                                        reorderPositions.item4Pos,
                                        0};
  
  // Determine new positions of items.
  for (l = 0; l < UNIT_ITEM_COUNT; l++) {
  
    // Hard to document how this exactly works.
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
    
    if (direction == REW_REORDER_PAST)
      resultInventory[l] = inventory[i];
    else // REW_REORDER_FUTURE.
      resultInventory[i] = inventory[l];
  }
}

// Undo or redo a reordering of a unit's inventory.
// bool undo is true if undoing the reorder, false if redoing the reorder.
void REW_doInventoryReorder(struct REW_RewindEntry* entry, bool undo) {
  struct REW_InventoryReorder* inventoryReorder;
  struct REW_ReorderPositions* reorderPositions;
  s8 unitID;
  struct Unit* unit;
  u16 items[UNIT_ITEM_COUNT];
  int i;
  
  inventoryReorder = (struct REW_InventoryReorder*)entry->data;
  reorderPositions = (struct REW_ReorderPositions*)&entry->flags;
  
  // Sanity checks. These values will not be accepted.
  if (reorderPositions->item1Pos > 4 ||
      reorderPositions->item3Pos > 2)
    return;
  
  // Find unit.
  unitID = gBmMapUnit[inventoryReorder->y][inventoryReorder->x];
  unit = GetUnit(unitID);
  if (!UNIT_IS_VALID(unit))
    return;
  
  // Generate unit's new inventory.
  REW_reorderInventory(unit->items, items, *reorderPositions, undo);
  
  // Reorder unit's inventory.
  for (i = 0; i < UNIT_ITEM_COUNT; i++)
    unit->items[i] = items[i];
}

// Undo unit obtaining an item.
void REW_undoItemObtainedUnit(struct REW_RewindEntry* entry) {
  struct REW_ItemUnit* itemUnit;
  s8 unitID;
  struct Unit* unit;
  
  itemUnit = (struct REW_ItemUnit*)entry->data;
  
  // Find unit.
  unitID = gBmMapUnit[itemUnit->y][itemUnit->x];
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
  struct REW_ItemUnit* itemUnit;
  s8 unitID;
  struct Unit* unit;
  int itemCount;
  
  itemUnit = (struct REW_ItemUnit*)entry->data;
  
  // Find unit.
  unitID = gBmMapUnit[itemUnit->y][itemUnit->x];
  unit = GetUnit(unitID);
  if (!UNIT_IS_VALID(unit))
    return;
  
  // Can't re-add item if inventory is full.
  // We shouldn't get here.
  itemCount = GetUnitItemCount(unit);
  if (itemCount >= UNIT_ITEM_COUNT)
    return;
  
  // Add obtained item to unit's inventory.
  unit->items[itemCount] = itemUnit->item;
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

// Undo unit exchanging items with supply.
void REW_undoUnitSupplyExchange(struct REW_RewindEntry* entry) {
  s8 unitID;
  struct Unit* unit;
  int a, b;
  u16 itemsBefore[UNIT_ITEM_COUNT] = {0, 0, 0, 0, 0};
  u16 itemsAfter[UNIT_ITEM_COUNT] = {0, 0, 0, 0, 0};
  struct REW_UnitSupplyExchange* unitSupplyExchange;
  unitSupplyExchange = (struct REW_UnitSupplyExchange*)entry->data;
  
  // Find unit.
  unitID = gBmMapUnit[unitSupplyExchange->y][unitSupplyExchange->x];
  unit = GetUnit(unitID);
  if (!UNIT_IS_VALID(unit))
    return;
  
  // Copy units' items before and after supply exchange.
  for (b = 0; b < UNIT_ITEM_COUNT; b++) {
    itemsBefore[b] = unitSupplyExchange->itemsBefore[b];
    itemsAfter[b] = unitSupplyExchange->itemsAfter[b];
    
    // Set unit's inventory to inventory before supply exchange.
    unit->items[b] = unitSupplyExchange->itemsBefore[b];
  }
  
  // Iterate over units' items before and after exchange
  // and clear matching items in both arrays.
  for (a = 0; a < UNIT_ITEM_COUNT; a++) {
    if (itemsAfter[a] != 0) {
      for (b = 0; b < UNIT_ITEM_COUNT; b++) {
        if (itemsAfter[a] == itemsBefore[b]) {
          itemsAfter[a] = 0;
          itemsBefore[b] = 0;
          break;
        }
      }
    }
  }
  
  // Remove leftover before-items from supply.
  for (b = 0; b < UNIT_ITEM_COUNT; b++) {
    if (itemsBefore[b] != 0) {
      if (REW_removeItemFromSupply(itemsBefore[b]) == -1) {
        // Item could not be found in supply.
        // FIXME, add debug printing, we're not supposed to get here!
        ;
      }
    }
  }
  
  // Cleans up empty item gaps in supply.
  ShrinkConvoyItemList();
  
  // Add leftover after-items to supply.
  for (a = 0; a < UNIT_ITEM_COUNT; a++) {
    if (itemsAfter[a] != 0) {
      if (AddItemToConvoy(itemsAfter[a]) == -1) {
        // No more room in supply for item.
        // FIXME, add debug printing, we're not supposed to get here!
        ;
      }
    }
  }
}

// Redo unit exchanging items with supply.
void REW_redoUnitSupplyExchange(struct REW_RewindEntry* entry) {
  s8 unitID;
  struct Unit* unit;
  int a, b;
  u16 itemsBefore[UNIT_ITEM_COUNT] = {0, 0, 0, 0, 0};
  u16 itemsAfter[UNIT_ITEM_COUNT] = {0, 0, 0, 0, 0};
  struct REW_UnitSupplyExchange* unitSupplyExchange;
  unitSupplyExchange = (struct REW_UnitSupplyExchange*)entry->data;
  
  // Find unit.
  unitID = gBmMapUnit[unitSupplyExchange->y][unitSupplyExchange->x];
  unit = GetUnit(unitID);
  if (!UNIT_IS_VALID(unit))
    return;
  
  // Copy units' items before and after supply exchange.
  for (a = 0; a < UNIT_ITEM_COUNT; a++) {
    itemsBefore[a] = unitSupplyExchange->itemsBefore[a];
    itemsAfter[a] = unitSupplyExchange->itemsAfter[a];
    
    // Set unit's inventory to inventory after supply exchange.
    unit->items[a] = unitSupplyExchange->itemsAfter[a];
  }
  
  // Iterate over units' items before and after exchange
  // and clear matching items in both arrays.
  for (a = 0; a < UNIT_ITEM_COUNT; a++) {
    if (itemsAfter[a] != 0) {
      for (b = 0; b < UNIT_ITEM_COUNT; b++) {
        if (itemsAfter[a] == itemsBefore[b]) {
          itemsAfter[a] = 0;
          itemsBefore[b] = 0;
          break;
        }
      }
    }
  }
  
  // Remove leftover after-items from supply.
  for (a = 0; a < UNIT_ITEM_COUNT; a++) {
    if (itemsAfter[a] != 0) {
      if (REW_removeItemFromSupply(itemsAfter[a]) == -1) {
        // Item could not be found in supply.
        // FIXME, add debug printing, we're not supposed to get here!
        ;
      }
    }
  }
  
  // Cleans up empty item gaps in supply.
  ShrinkConvoyItemList();
  
  // Add leftover before-items to supply.
  for (b = 0; b < UNIT_ITEM_COUNT; b++) {
    if (itemsBefore[b] != 0) {
      if (AddItemToConvoy(itemsBefore[b]) == -1) {
        // No more room in supply for item.
        // FIXME, add debug printing, we're not supposed to get here!
        ;
      }
    }
  }
}

// Track when a unit equips a different item.
// - itemSlot is the new slot the to-be-equipped item previously occupied.
void REW_conseqEquipItem(struct Unit* unit, int itemSlot) {
  struct REW_RewindEntry* entry;
  struct REW_InventoryReorder* inventoryReorder;
  struct REW_ReorderPositions* reorderPositions;
  struct REW_UnitMove* unitMove;
  int i;
  u16 itemsFuture[UNIT_ITEM_COUNT];
  u16 itemsPast[UNIT_ITEM_COUNT];
  u8 x, y;
  
  // Nothing to reorder.
  if (itemSlot <= 0)
    return;
  
  // If unit is not valid, return.
  if (!UNIT_IS_VALID(unit))
    return;
  
  // Don't track reordering for temporary/copy units.
  if (GetUnit(unit->index) != unit)
    return;
  
  // If possible, merge inventoryReorder into existing preceding
  // REW_CONSEQ_INVENTORYREORDER instead of creating a new one.
  x = unit->xPos;
  y = unit->yPos;
  entry = REW_lastEntry(REW_curSequence);
  while (entry != NULL) {
    
    // We can iterate over unitMoves, but we have to
    // track how the unit's coordinates change.
    if (entry->diffType == REW_CONSEQ_UNITMOVE) {
      
      unitMove = (struct REW_UnitMove*)entry->data;
      if (unitMove->xAfter == x && unitMove->yAfter == y) {
        x = unitMove->xBefore;
        y = unitMove->yBefore;
      }
    
    // If the previous entry is an REW_CONSEQ_INVENTORYREORDER
    // of the same unit, merge changes.
    } else if (entry->diffType == REW_CONSEQ_INVENTORYREORDER) {
      inventoryReorder = (struct REW_InventoryReorder*)entry->data;
      reorderPositions = (struct REW_ReorderPositions*)&entry->flags;
      
      if (inventoryReorder->x == x && inventoryReorder->y == y) {
        
        // Create what will be the new inventory setup
        // when item gets equipped.
        itemsFuture[0] = unit->items[itemSlot];
        for (i = 1; i < UNIT_ITEM_COUNT; i++) {
          
          if (i <= itemSlot)
            itemsFuture[i] = unit->items[i - 1];
          else
            itemsFuture[i] = unit->items[i];
        
        }
        
        // Create past inventory-order.
        REW_reorderInventory(unit->items, itemsPast, reorderPositions[0], REW_REORDER_PAST);
        
        // Create new reorderTransitionMatrix based on past and future inventory-orders.
        reorderPositions[0] = REW_createReorderPositions(itemsPast, itemsFuture);
        
        // Now that we've merged the inventoryReorders, we're done.
        return;
      }
    
    // If we find any other diffType, give up on merging.
    } else {
      break;
    }
    
    entry = REW_prevEntry(REW_curSequence, entry);
  }
  
  // No option to merge, so
  // create new RewindEntry for REW_CONSEQ_INVENTORYREORDER.
  entry = REW_mallocNewRewindEntry(REW_ENTRY_INVENTORYREORDER_SIZE);
  if (entry == NULL)
    return;
  entry->diffType = REW_CONSEQ_INVENTORYREORDER;
  reorderPositions = (struct REW_ReorderPositions*)&entry->flags;
  inventoryReorder = (struct REW_InventoryReorder*)entry->data;
  
  // Track unit's X and Y.
  inventoryReorder->x = unit->xPos;
  inventoryReorder->y = unit->yPos;
  
  // Setup default inventory order.
  reorderPositions->item1Pos = 1;       // This item is guaranteed to have moved one down.
  reorderPositions->item2Pos = 0;
  reorderPositions->item3Pos = 0;
  reorderPositions->item4Pos = 0;
  
  // Second item location.
  if (itemSlot > 1)
    reorderPositions->item2Pos = 1;
  
  // Third item location.
  if (itemSlot > 2)
    reorderPositions->item3Pos = 1;
  
  // Fourth item location.
  if (itemSlot > 3)
    reorderPositions->item4Pos = 1;
  
  // Align rewindEntry.
  REW_alignEntry();
}

// Track when a unit obtains an item.
//  - wasItemObtainedSuccessfully is the return value of UnitAddItem
//    which is sometimes called prior to this function. If this value is false
//    we don't track but return immediately.
void REW_conseqItemObtainedUnit(struct Unit* unit, u16 item, bool wasItemObtainedSuccessfully) {
  struct REW_RewindEntry* entry;
  struct REW_ItemUnit* itemUnit;
  
  // If we are in preparations nothing to track; Return.
  if (PrepAtMenuExists(NULL))
    return;
  
  // If we are in world map nothing to track; Return.
  if (WM_Exists())
    return;
  
  // If item was not obtained (UnitAddItem returned false)
  // nothing to track; Return.
  if (!wasItemObtainedSuccessfully)
    return;
  
  // If unit is not valid, return.
  if (!UNIT_IS_VALID(unit))
    return;
  
  // If unit has no HP (unit is being loaded),
  // don't track; Return.
  if (unit->curHP == 0)
    return;
  
  // Create new RewindEntry for REW_CONSEQ_ITEMOBTAINED_UNIT.
  entry = REW_mallocNewRewindEntry(REW_CONSEQ_ITEMOBTAINED_UNIT_SIZE);
  if (entry == NULL)
    return;
  
  entry->diffType = REW_CONSEQ_ITEMOBTAINED_UNIT;
  itemUnit = (struct REW_ItemUnit*)entry->data;
  
  // Track unit's X and Y.
  itemUnit->x = gActiveUnit->xPos;
  itemUnit->y = gActiveUnit->yPos;
  
  // Track item.
  itemUnit->item = item;
  
  // Align rewindEntry.
  REW_alignEntry();
}

// Track when a unit loses an item.
void REW_conseqItemRemovedUnit(struct Unit* unit, u16 item) {
  struct REW_RewindEntry* entry;
  struct REW_ItemUnit* itemUnit;
  
  // If we are in preparations nothing to track; Return.
  if (PrepAtMenuExists(NULL))
    return;
  
  // If we are in world map nothing to track; Return.
  if (WM_Exists())
    return;
  
  // If unit is not valid, return.
  if (!UNIT_IS_VALID(unit))
    return;
  
  // If unit has no HP (unit is being loaded),
  // don't track; Return.
  if (unit->curHP == 0)
    return;
  
  // Create new RewindEntry for REW_CONSEQ_ITEMREMOVED_UNIT.
  entry = REW_mallocNewRewindEntry(REW_CONSEQ_ITEMREMOVED_UNIT_SIZE);
  if (entry == NULL)
    return;
  
  entry->diffType = REW_CONSEQ_ITEMREMOVED_UNIT;
  itemUnit = (struct REW_ItemUnit*)entry->data;
  
  // Track unit's X and Y.
  itemUnit->x = gActiveUnit->xPos;
  itemUnit->y = gActiveUnit->yPos;
  
  // Track item.
  itemUnit->item = item;
  
  // Align rewindEntry.
  REW_alignEntry();
}

// Track when an item is sent to supply.
void REW_conseqItemObtainedSupply(u16 item) {
  struct REW_RewindEntry* entry;
  u16* rewindEntryItem;
  
  // If we are in preparations nothing to track; Return.
  if (PrepAtMenuExists(NULL))
    return;
  
  // If we are in world map nothing to track; Return.
  if (WM_Exists())
    return;
  
  // Create new RewindEntry for REW_CONSEQ_ITEMOBTAINED_SUPPLY.
  entry = REW_mallocNewRewindEntry(REW_CONSEQ_ITEMOBTAINED_SUPPLY_SIZE);
  if (entry == NULL)
    return;
  entry->diffType = REW_CONSEQ_ITEMOBTAINED_SUPPLY;
  
  // Track item.
  rewindEntryItem = (u16*)entry->data;
  rewindEntryItem[0] = item;
  
  // Align rewindEntry.
  REW_alignEntry();
}

// Track when an item is removed from supply.
void REW_conseqItemRemovedSupply(u16 item) {
  struct REW_RewindEntry* entry;
  u16* rewindEntryItem;
  
  // If we are in preparations nothing to track; Return.
  if (PrepAtMenuExists(NULL))
    return;
  
  // If we are in world map nothing to track; Return.
  if (WM_Exists())
    return;
  
  // Create new RewindEntry for REW_CONSEQ_ITEMREMOVED_SUPPLY.
  entry = REW_mallocNewRewindEntry(REW_CONSEQ_ITEMREMOVED_SUPPLY_SIZE);
  if (entry == NULL)
    return;
  entry->diffType = REW_CONSEQ_ITEMREMOVED_SUPPLY;
  
  // Track item.
  rewindEntryItem = (u16*)entry->data;
  rewindEntryItem[0] = item;
  
  // Align rewindEntry.
  REW_alignEntry();
}

// Take a snapshot of a unit's inventory before they open supply.
// This will allow us to track how their inventory changes after they've
// interacted with the supply.
void REW_conseqSupplyWriteInventorySnapshot(struct Unit* unit, u16* snapshotPtr) {
  int i;
  
  // Take the snapshot (copy unit inventory).
  for (i = 0; i < UNIT_ITEM_COUNT; i++)
    snapshotPtr[i] = unit->items[i];
}

// Track how a unit's inventory has changed after they've interacted with the supply
// by comparing their current inventory to a snapshot taken prior.
void REW_conseqSupplyTrackInventoryChanges(struct Unit* unit, u16* snapshotPtr) {
  struct REW_RewindEntry* entry;
  struct REW_UnitSupplyExchange* unitSupplyExchange;
  bool didInventoryChange = false;
  int i;
  
  // If we are in preparations nothing to track; Return.
  if (PrepAtMenuExists(NULL))
    return;
  
  // If we are in world map nothing to track; Return.
  if (WM_Exists())
    return;
  
  // If snapshot and current inventory are the same, return.
  for (i = 0; i < UNIT_ITEM_COUNT; i++) {
    if (unit->items[i] != snapshotPtr[i]) {
      didInventoryChange = true;
      break;
    }
  }
  if (!didInventoryChange)
    return;
  
  // If last rewindEntry is a REW_CONSEQ_UNITSUPPLYEXCHANGE
  // change itemsAfter of that rewindEntry instead
  // of creating another REW_CONSEQ_UNITSUPPLYEXCHANGE rewindEntry.
  if (!(REW_isSequenceEmpty(REW_curSequence))) {
    entry = REW_lastEntry(REW_curSequence);
    
    if (entry->diffType == REW_CONSEQ_UNITSUPPLYEXCHANGE) {
      
      unitSupplyExchange = (struct REW_UnitSupplyExchange*)entry->data;
    
      for (i = 0; i < UNIT_ITEM_COUNT; i++)
        unitSupplyExchange->itemsAfter[i] = unit->items[i];
      
      return;
    }
  }
  
  // Create new RewindEntry for REW_CONSEQ_UNITSUPPLYEXCHANGE.
  entry = REW_mallocNewRewindEntry(REW_CONSEQ_UNITSUPPLYEXCHANGE_SIZE);
  if (entry == NULL)
    return;
  entry->diffType = REW_CONSEQ_UNITSUPPLYEXCHANGE;
  unitSupplyExchange = (struct REW_UnitSupplyExchange*)entry->data;
  
  // Track unit's X and Y.
  unitSupplyExchange->x = gActiveUnit->xPos;
  unitSupplyExchange->y = gActiveUnit->yPos;
  
  // Track inventory before and after supply exchange.
  unitSupplyExchange = (struct REW_UnitSupplyExchange*)entry->data;
  for (i = 0; i < UNIT_ITEM_COUNT; i++) {
    unitSupplyExchange->itemsBefore[i] = snapshotPtr[i];
    unitSupplyExchange->itemsAfter[i] = unit->items[i];
  }
  
  // Align rewindEntry.
  REW_alignEntry();
}