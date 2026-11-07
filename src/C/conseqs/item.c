#include <stdio.h>
#include "item.h"

/*
// Undo item obtained consequence.
void REW_undoItemObtained(struct REW_RewindSequence* sequence, struct REW_RewindEntry* entry) {
  struct REW_RewindEntry* unitRewindEntry = sequence->entry[0];
  
  
  while (!REW_isUnitAction(unitRewindEntry->diffType)) {
    
    unitRewindEntry = REW_nextEntry(sequence, unitRewindEntry);
  
  }
  
  
  switch(entry->flags) {
    
    case REW_ITEM_INVENTORYNOTFULL:
      
      break;
    
    case REW_ITEM_CONVOY_DIFFERENTITEM:
      
      break;
    
    case REW_ITEM_CONVOY_OBTAINEDITEM:
      
      break;
    
    case REW_ITEM_DISCARD_DIFFERENTITEM:
      
      break;
    
    default:
  }
  
}

// Redo item obtained consequence.
void REW_redoItemObtained(struct REW_RewindSequence* sequence, struct REW_RewindEntry* entry) {
  
}
*/

// Tracks key item used for opening chest/doors.
// TODO, doors.
void REW_keyItemUsed() {
  struct REW_RewindSequence* rewindSeq = REW_curSequence;
  struct REW_RewindEntry* rewindEntry;
  struct REW_chestLootData* chestLootData;
  struct Unit* unit = GetUnit(gActionData.subjectIndex);
  u8 flags = 0;
  u16 keyItem = unit->items[gActionData.itemSlotIndex];
  
  // Create new entry for chest action.
  rewindEntry = REW_createSeqEntry(rewindSeq);
  rewindEntry->diffType = gActionData.unitActionType;
  chestLootData = (struct REW_chestLootData*)rewindEntry->data;
  
  // Setup flags accordingly:
  // - 3 bits: inventory slot of key item (5 values).
  // - 2 bits: key item type in case key item breaks.
  
  // - Inventory slot of key item.
  rewindEntry->flags = gActionData.itemSlotIndex;
  
  // - Key item type.
  if (GetItemUses(keyItem) > 1) {
    flags = REW_ITEM_NOTBROKEN;
  } else {
    switch (GetItemIndex(keyItem)) {
      
      // 1-use chest key.
      case (ITEM_CHESTKEY):
        flags = REW_ITEM_CHESTKEY;
        break;
      
      // 5-use chest key.
      case (ITEM_CHESTKEY_BUNDLE):
        flags = REW_ITEM_CHESTKEY_BUNDLE;
        break;
      
      // Lockpick.
      case (ITEM_LOCKPICK):
        flags = REW_ITEM_LOCKPICK;
        break;
      
    }
  }
  rewindEntry->flags |= (flags << 3);
  
  // Store unit's X and Y difference after action.
  chestLootData->xDiff = unit->xPos - gActiveUnitMoveOrigin.x;
  chestLootData->yDiff = unit->yPos - gActiveUnitMoveOrigin.y;
  
  // Setup rewind entry size.
  rewindEntry->size = REW_ENTRY_BASESIZE + REW_CHESTLOOTDATA_BASESIZE;
  
  // Default assumption is that obtained item is discarded.
  // If anything else happens, REW_itemObtained will change these flags.
  chestLootData->flags = REW_ITEM_DISCARD_OBTAINEDITEM;
  
  // Adjust sequence size.
  rewindSeq->size += rewindEntry->size;
  REW_alignSequence(rewindSeq);
}


// Tracks item obtained through
//  - looting defeated enemy,
//  - looting a chest,
//  - stealing from an enemy.
// argument kind determines how the item was obtained
// and what action should be taken.
void REW_itemObtained(u8 kind, s8 inventorySlot) {
  struct REW_RewindSequence* rewindSeq = REW_curSequence;
  struct REW_RewindEntry* rewindEntry;
  struct REW_chestLootData* chestLootData;
  
  // Looting a chest.
  if (!REW_isSequenceEmpty(rewindSeq) &&
      rewindSeq->entry[0].diffType == UNIT_ACTION_CHEST) {
    
    // Setup vars.
    rewindEntry = rewindSeq->entry;
    chestLootData = (struct REW_chestLootData*)rewindEntry->data;
    
    // Store flags indicating if item was discarded/sent to convoy.
    chestLootData->flags = kind | inventorySlot;
    
    // If item discarded/sent to convoy is not obtained item,
    // Store item that was discarded/sent to convoy.
    if (kind != REW_ITEM_INVENTORYNOTFULL &&
        inventorySlot != 5) {
      
      // Store item that was discarded/sent to convoy.
      chestLootData->replaceditem = gActiveUnit->items[inventorySlot];
      
      // Adjust sequence size.
      rewindEntry->size += 2;
      rewindSeq->size += 2;
      REW_alignSequence(rewindSeq);
    }
  }
  
/*
  struct REW_RewindSequence* rewindSeq = REW_curSequence;
  struct REW_RewindEntry* rewindEntry;
  
  if (gActionData.unitActionType == UNIT_ACTION_CHEST) {
    rewindEntry = REW_createSeqEntry(rewindSeq);
    
    
  }

  
  // Setup rewindEntry.
  rewindEntry->diffType = REW_CONSEQ_ITEMOBTAINED;
  rewindEntry->size = REW_SEQUENCE_BASESIZE;
  
  switch(kind) {
    
    // Inventory not full, nothing discarded/sent to convoy.
    case REW_ITEM_INVENTORYNOTFULL:
      
      // Setup flags.
      rewindEntry->flags = REW_ITEM_INVENTORYNOTFULL;
      
      break;
    
    // Inventory full, send different item to convoy.
    case REW_ITEM_CONVOY_DIFFERENTITEM:
      
      // Setup flags.
      rewindEntry->flags = (u8)inventorySlot;
      rewindEntry->flags |= REW_ITEM_CONVOY_DIFFERENTITEM;
      
      // Save item.
      ((u16*)(rewindEntry->data))[0] = gActiveUnit->items[inventorySlot];
      
      // Add item size to rewindEntry's size.
      rewindEntry->size += 2;
      break;
    
    // Inventory full, send obtained item to convoy.
    case REW_ITEM_CONVOY_OBTAINEDITEM:
      
      // Setup flags.
      rewindEntry->flags = (u8)inventorySlot;
      rewindEntry->flags |= REW_ITEM_CONVOY_OBTAINEDITEM;
      
      break;
    
    case REW_ITEM_DISCARD_DIFFERENTITEM:
      
      // Setup flags.
      rewindEntry->flags = (u8)inventorySlot;
      rewindEntry->flags |= REW_ITEM_DISCARD_DIFFERENTITEM;
      
      // Save item.
      ((u16*)(rewindEntry->data))[0] = gActiveUnit->items[inventorySlot];
      
      // Add item size to rewindEntry's size.
      rewindEntry->size += 2;
      
      break;
    
    // Shouldn't trigger the default.
    default:
    
      // Don't save the rewindEntry.
      return;
  }
  
  rewindSeq->size += rewindEntry->size;
  REW_alignSequence(rewindSeq);
  */
}