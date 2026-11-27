#include <stdio.h>
#include "loadUnit.h"

// Undo load unit consequence.
void REW_undoLoadUnit(struct REW_RewindEntry* entry) {
  struct Unit* unit = GetUnit(entry->flags);
  
  // If unit doesn't exist, ignore.
  if (!UNIT_IS_VALID(unit))
    return;
  
  ClearUnit(unit);
}

// Redo load unit consequence.
void REW_redoLoadUnit(struct REW_RewindEntry* entry) {
  LoadUnit((struct UnitDefinition*)entry->data);
}

// Add loaded unit to rewind sequence.
void REW_conseqInitUnit(struct Unit* unit, struct UnitDefinition* unitDef) {
  struct REW_RewindEntry* entry;
  struct UnitDefinition* unitDefCopy;
  
  // Don't add consequence if sequence is empty.
  // This is to prevent tracking units loaded before turn 1 starts.
  if (REW_isSequenceEmpty(REW_curSequence))
    return;
  
  // If unit doesn't exist, ignore.
  if (!UNIT_IS_VALID(unit))
    return;
  
  // Setup rewindEntry.
  entry = REW_mallocNewRewindEntry(REW_UNITDEFSIZE);
  if (entry == NULL)
    return;
  entry->diffType = REW_CONSEQ_UNITLOAD_INIT;
  entry->flags = unit->index;
  
  // Setup unit definition data.
  unitDefCopy = (struct UnitDefinition*)entry->data;
  CpuCopy16(unitDef, unitDefCopy, REW_UNITDEFSIZE);
  unitDefCopy->xPosition = unit->xPos;
  unitDefCopy->yPosition = unit->yPos;
  
  // Align rewindEntry.
  REW_alignEntry();
}

// Finalize loaded units' positions in rewind sequence.
void REW_conseqFinalizeUnits() {
  struct Unit* unit;
  struct UnitDefinition* unitDefData;
  struct REW_RewindEntry* entry = REW_curSequence->entry;
  
  // Ignore if sequence is empty.
  if (REW_curSequence->size == 0)
    return;
  
  // Find all prior REW_CONSEQ_UNITLOAD_INIT rewindEntries.
  entry = REW_findEntry(REW_curSequence, entry, REW_CONSEQ_UNITLOAD_INIT);
  while (entry != NULL) {
    
    // Set unit's position to final position.
    unit = GetUnit(entry->flags);
    if (UNIT_IS_VALID(unit)) {
      entry->diffType = REW_CONSEQ_UNITLOAD_FINAL;
      
      unitDefData = (struct UnitDefinition*)entry->data;
      unitDefData->xPosition = unit->xPos;
      unitDefData->yPosition = unit->yPos;
      unitDefData->redaCount = 0;
      unitDefData->redas = NULL;
    }
    
    // Iterate.
    entry = REW_nextEntry(REW_curSequence, entry);
    entry = REW_findEntry(REW_curSequence, entry, REW_CONSEQ_UNITLOAD_INIT);
  }
}