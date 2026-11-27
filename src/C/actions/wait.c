#include <stdio.h>
#include "wait.h"
// Wait actions. Also a fallback for actions
// that are tracked as consequences.

// Undo a unit waiting.
void REW_undoWait(struct REW_RewindEntry* entry) {
  
}

// Redo a unit waiting.
void REW_redoWait(struct REW_RewindEntry* entry) {
  
}

// Track when a unit waits.
// Used as fallback if no other actions
// have been tracked yet for this sequence.
void REW_actionWait(u8 x, u8 y) {
  struct REW_RewindEntry* entry;
  struct REW_Wait* wait;
  
  
  
}