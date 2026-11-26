#ifndef MOVE_H
#define MOVE_H
#include "gbafe.h"
#include "../internal.h"

enum {
  
  // Sizes.
  REW_CONSEQ_UNITMOVE_SIZE =   4,
  
};

// Rewind entry data.
// Tracks when a unit moves.
struct REW_UnitMove {
  /* 00 */ s8 xBefore;
  /* 01 */ s8 yBefore;
  /* 02 */ s8 xAfter;
  /* 03 */ s8 yAfter;
};

void REW_undoUnitMove(struct REW_RewindEntry* entry);
void REW_redoUnitMove(struct REW_RewindEntry* entry);

void REW_conseqUnitMove(u8 xBefore, u8 yBefore, u8 xAfter, u8 yAfter);
void REW_cancelUnitMove(u8 xBefore, u8 yBefore, u8 xAfter, u8 yAfter);


#endif // MOVE_H