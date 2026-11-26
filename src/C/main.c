#include <stdio.h>
#include "main.h"
#include "internal.c"
#include "actions/actions.c"
#include "conseqs/conseqs.c"
#include "save/save.c"
#include "menu.c"

// Loop backwards over all entries of given sequence and undo effects.
void REW_undo(struct REW_RewindSequence* sequence) {
  struct REW_RewindEntry* entry = REW_lastEntry(sequence);
  
  while(entry != NULL) {
    switch(entry->diffType) {
      
      // Phase change.
      case REW_ACTION_PHASECHANGE:
        REW_undoPhaseChange(entry);
        break;
      
      // Breaking an obstacle.
      case REW_ACTION_BREAK:
        REW_undoObstacleCombat(entry);
        break;
      
      // Chest opening action.
      case UNIT_ACTION_CHEST:
        REW_undoChestOpened(entry);
        break;
      
      // Generic unit changes.
      case REW_CONSEQ_UNITCHANGE:
      
      // Combat.
      case UNIT_ACTION_COMBAT:
        REW_undoCombat(entry);
        break;
      
      // Unit movement.
      case REW_CONSEQ_UNITMOVE:
        REW_undoUnitMove(entry);
        break;
      
      // Unit loading.
      case REW_CONSEQ_UNITLOAD_INIT:
      case REW_CONSEQ_UNITLOAD_FINAL:
        REW_undoLoadUnit(entry);
        break;
      
      // Inventory reorder (equipping/discarding/obtaining an item).
      case REW_CONSEQ_INVENTORYREORDER:
        REW_doInventoryReorder(entry, true);
        break;
      
      // Item obtained by unit.
      case REW_CONSEQ_ITEMOBTAINED_UNIT:
        REW_undoItemObtainedUnit(entry);
        break;
      
      // Item removed from unit.
      case REW_CONSEQ_ITEMREMOVED_UNIT:
        REW_undoItemRemovedUnit(entry);
        break;
      
      // Item sent to supply.
      case REW_CONSEQ_ITEMOBTAINED_SUPPLY:
        REW_undoItemObtainedSupply(entry);
        break;
      
      // Item removed from supply.
      case REW_CONSEQ_ITEMREMOVED_SUPPLY:
        REW_undoItemRemovedSupply(entry);
        break;
      
      // Unit exchanging items with supply.
      case REW_CONSEQ_UNITSUPPLYEXCHANGE:
        REW_undoUnitSupplyExchange(entry);
        break;
      
      default:
        break;
    }
    entry = REW_prevEntry(sequence, entry);
  }
}

void REW_redo(struct REW_RewindSequence* sequence) {
  struct REW_RewindEntry* entry = sequence->entry;
  
  // Loop over all entries of given sequence.
  while(entry != NULL) {
    switch(entry->diffType) {
      
      // Phase change.
      case REW_ACTION_PHASECHANGE:
        REW_redoPhaseChange(entry);
        break;
      
      // Breaking an obstacle.
      case REW_ACTION_BREAK:
        REW_redoObstacleCombat(entry);
        break;
      
      // Chest opening action.
      case UNIT_ACTION_CHEST:
        REW_redoChestOpened(entry);
        break;
      
      // Generic unit changes.
      case REW_CONSEQ_UNITCHANGE:
      
      // Combat.
      case UNIT_ACTION_COMBAT:
        REW_redoCombat(entry);
        break;
      
      // Unit movement.
      case REW_CONSEQ_UNITMOVE:
        REW_redoUnitMove(entry);
        break;
      
      // Unit loading.
      case REW_CONSEQ_UNITLOAD_INIT:
      case REW_CONSEQ_UNITLOAD_FINAL:
        REW_redoLoadUnit(entry);
        break;
      
      // Inventory reorder (equipping/discarding/obtaining an item).
      case REW_CONSEQ_INVENTORYREORDER:
        REW_doInventoryReorder(entry, false);
        break;
      
      // Item obtained by unit.
      case REW_CONSEQ_ITEMOBTAINED_UNIT:
        REW_redoItemObtainedUnit(entry);
        break;
      
      // Item removed from unit.
      case REW_CONSEQ_ITEMREMOVED_UNIT:
        REW_redoItemRemovedUnit(entry);
        break;
      
      // Item sent to supply.
      case REW_CONSEQ_ITEMOBTAINED_SUPPLY:
        REW_redoItemObtainedSupply(entry);
        break;
      
      // Item removed from supply.
      case REW_CONSEQ_ITEMREMOVED_SUPPLY:
        REW_redoItemRemovedSupply(entry);
        break;
      
      // Unit exchanging items with supply.
      case REW_CONSEQ_UNITSUPPLYEXCHANGE:
        REW_redoUnitSupplyExchange(entry);
        break;
      
      default:
        break;
    }
    entry = REW_nextEntry(sequence, entry);
  }
}