#include <stdio.h>
#include "move.h"

// Undo unitmovement.
void REW_undoUnitMove(struct REW_RewindEntry* entry) {
  s8 unitID;
  struct Unit* unit;
  struct REW_UnitMove* unitMove = (struct REW_UnitMove*)entry->data;
  
  // Find unit.
  unitID = gBmMapUnit[unitMove->yAfter][unitMove->xAfter];
  unit = GetUnit(unitID);
  if (!UNIT_IS_VALID(unit)) {
    // FIXME, add debug printing, we're not supposed to get here!
    return;
  }
  
  // Move unit back.
  unit->xPos = unitMove->xBefore;
  unit->yPos = unitMove->yBefore;
  
  // Move unit on the unitMap as well.
  gBmMapUnit[unitMove->yAfter][unitMove->xAfter] = 0;
  gBmMapUnit[unitMove->yBefore][unitMove->xBefore] = unitID;
  
  // Move rescuee and/or ballista as well.
  UnitFinalizeMovement(unit);
}

// Redo unitmovement.
void REW_redoUnitMove(struct REW_RewindEntry* entry) {
  s8 unitID;
  struct Unit* unit;
  struct REW_UnitMove* unitMove = (struct REW_UnitMove*)entry->data;
  
  // Find unit.
  unitID = gBmMapUnit[unitMove->yBefore][unitMove->xBefore];
  unit = GetUnit(unitID);
  if (!UNIT_IS_VALID(unit)) {
    // FIXME, add debug printing, we're not supposed to get here!
    return;
  }
  
  // Move unit back.
  unit->xPos = unitMove->xAfter;
  unit->yPos = unitMove->yAfter;
  
  // Move unit on the unitMap as well.
  gBmMapUnit[unitMove->yBefore][unitMove->xBefore] = 0;
  gBmMapUnit[unitMove->yAfter][unitMove->xAfter] = unitID;
  
  // Move rescuee and/or ballista as well.
  UnitFinalizeMovement(unit);
}

// Track where a unit moved from and to.
void REW_conseqUnitMove(u8 xBefore, u8 yBefore, u8 xAfter, u8 yAfter) {
  struct REW_RewindEntry* entry;
  struct REW_UnitMove* unitMove;
  
  // If coordinates before and after are the exact same,
  // nothing to track, return.
  if (xBefore == xAfter && yBefore == yAfter)
    return;
  
  // If a unitMove already exists on the sequence
  // then we're a duplicate of that unitMove,
  // nothing to track, return.
  if (!(REW_isSequenceEmpty(REW_curSequence))) {
    if (REW_findEntry(REW_curSequence, REW_curSequence->entry, REW_CONSEQ_UNITMOVE) != NULL)
      return;
  }
  
  // Create new RewindEntry for REW_CONSEQ_UNITMOVE.
  entry = REW_mallocNewRewindEntry(REW_CONSEQ_UNITMOVE_SIZE);
  if (entry == NULL)
    return;
  entry->diffType = REW_CONSEQ_UNITMOVE;
  
  // Set the before- and afterMoving coordinates.
  unitMove = (struct REW_UnitMove*)entry->data;
  unitMove->xBefore = xBefore;
  unitMove->yBefore = yBefore;
  unitMove->xAfter = xAfter;
  unitMove->yAfter = yAfter;
  
  // Align rewindEntry.
  REW_alignEntry();
}

// Deletes a REW_UnitMove rewindEntry if unit movement has been canceled.
void REW_cancelUnitMove(u8 xBefore, u8 yBefore, u8 xAfter, u8 yAfter) {
  struct REW_RewindEntry* unitMoveEntry, *entryIt;
  
  // If unit didn't move, rewindSequence may be empty.
  if (REW_isSequenceEmpty(REW_curSequence))
    return;
  
  // If coordinates before and after are the exact same,
  // there's no unitMove rewindEntry to delete, return.
  if (xBefore == xAfter && yBefore == yAfter)
    return;
  
  // Find the prior unitMove rewindEntry.
  unitMoveEntry = REW_findEntry(REW_curSequence, REW_curSequence->entry, REW_CONSEQ_UNITMOVE);
  if (unitMoveEntry == NULL) {
    // FIXME, add debug printing, we're not supposed to get here!
    return;
  }
  
  // Find all REW_CONSEQ_INVENTORYREORDER entries following the unitMove entry.
  // This covers the equip-action which can be taken without committing to a move.
  entryIt = REW_findEntry(REW_curSequence, unitMoveEntry, REW_CONSEQ_INVENTORYREORDER);
  while (entryIt != NULL) {
    
    // Update x and y coordinates.
    entryIt->data[0] = xBefore;
    entryIt->data[1] = yBefore;
    
    // Iterate.
    entryIt = REW_nextEntry(REW_curSequence, entryIt);
    entryIt = REW_findEntry(REW_curSequence, entryIt, REW_CONSEQ_INVENTORYREORDER);
  }
  
  // Find all REW_CONSEQ_ITEMREMOVED_UNIT entries following the unitMove entry.
  // This covers the discard-action which can be taken without committing to a move.
  entryIt = REW_findEntry(REW_curSequence, unitMoveEntry, REW_CONSEQ_ITEMREMOVED_UNIT);
  while (entryIt != NULL) {
    
    // Update x and y coordinates.
    entryIt->data[0] = xBefore;
    entryIt->data[1] = yBefore;
    
    // Iterate.
    entryIt = REW_nextEntry(REW_curSequence, entryIt);
    entryIt = REW_findEntry(REW_curSequence, entryIt, REW_CONSEQ_ITEMREMOVED_UNIT);
  }
  
  // Delete rewindEntry.
  REW_deleteRewindEntry(REW_curSequence, unitMoveEntry);
}