#ifndef UNLOCK_H
#define UNLOCK_H
#include "gbafe.h"
#include "../internal.h"

enum {
  
  // Sizes.
  REW_ACTION_CHESTOPENED_SIZE = 4,
  
};

// Rewind entry data.
// Tracks unit's x and y before
// they open chest and after.
struct REW_ChestOpened {
  REW_ACTION_REWINDENTRYDATA_HEADER
};

void REW_undoChestOpened(struct REW_RewindEntry* entry);
void REW_redoChestOpened(struct REW_RewindEntry* entry);

void REW_actionOpenChest(u8 itemSlot);

#endif // UNLOCK_H