#ifndef WAIT_H
#define WAIT_H
#include "gbafe.h"
#include "../internal.h"

enum {
  
  // Sizes.
  REW_ACTION_WAIT_SIZE = 2,
  
};

// Rewind entry data.
// Tracks unit's x and y when they wait.
struct REW_Wait {
  REW_ACTION_REWINDENTRYDATA_HEADER
};

void REW_undoWait(struct REW_RewindEntry* entry);
void REW_redoWait(struct REW_RewindEntry* entry);

void REW_actionWait(u8 x, u8 y);

#endif // WAIT_H