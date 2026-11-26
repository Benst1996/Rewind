#include <stdio.h>
#include "unlock.h"
// "Door" & "Chest" actions.
// "Unlock" staff action can be found in "staff.c".

// Undo a chest being opened.
void REW_undoChestOpened(struct REW_RewindEntry* entry) {
  struct REW_ChestOpened* chestOpened = (struct REW_ChestOpened*)entry->data;
  struct Unit* unit;
  u8 unitID;
  int item;
  
  // Find actor.
  unitID = gBmMapUnit[chestOpened->y][chestOpened->x];
  unit = GetUnit(unitID);
  
  // Re-enable selecting unit.
  unit->state &= ~US_UNSELECTABLE;
  
  // Increment key item uses.
  item = unit->items[entry->flags];
  if (!(GetItemAttributes(item) & IA_UNBREAKABLE))
    unit->items[entry->flags] += (1 << 8);
  
  // Close chest.
  UntriggerMapChange(GetMapChangeIdAt(chestOpened->x, chestOpened->y), 0, NULL);
}

// Redo a chest being opened.
void REW_redoChestOpened(struct REW_RewindEntry* entry) {
  struct REW_ChestOpened* chestOpened = (struct REW_ChestOpened*)entry->data;
  struct Unit* unit;
  u8 unitID;
  int item;
  
  // Find actor.
  unitID = gBmMapUnit[chestOpened->y][chestOpened->x];
  unit = GetUnit(unitID);
  
  // Disable selecting unit.
  unit->state |= US_UNSELECTABLE;
  
  // Decrement key item uses.
  item = unit->items[entry->flags];
  if (!(GetItemAttributes(item) & IA_UNBREAKABLE))
    unit->items[entry->flags] -= (1 << 8);
  
  // Open chest.
  TriggerMapChanges(GetMapChangeIdAt(chestOpened->x, chestOpened->y), 0, NULL);
}

// Track when a unit opens a chest.
void REW_actionOpenChest(u8 itemSlot) {
  struct REW_RewindEntry* entry;
  struct REW_ChestOpened* chestOpened;
  
  // If itemSlot is not in [0, 4]
  // force it to be 0.
  if (itemSlot > 4)
    itemSlot = 0;
  
  // Create new RewindEntry for UNIT_ACTION_CHEST.
  entry = REW_mallocNewRewindEntry(REW_ACTION_CHESTOPENED_SIZE);
  if (entry == NULL)
    return;
  entry->diffType = UNIT_ACTION_CHEST;
  
  // Track itemSlot.
  entry->flags = itemSlot;
  
  // Track X, Y.
  chestOpened = (struct REW_ChestOpened*)entry->data;
  chestOpened->x = gActiveUnit->xPos;
  chestOpened->y = gActiveUnit->yPos;
  
  // Align entry.
  REW_alignEntry();
}