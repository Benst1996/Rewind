#ifndef PHASECHANGE_H
#define PHASECHANGE_H
#include "gbafe.h"
#include "../internal.h"

enum {
  
  // Sizes.
  REW_ENTRY_PHASECHANGEDATA_BASESIZE = 0,
  REW_PHASECHANGEBUFFER_ENTRYSIZE = 8,      // Preferably a power of 2.
  
  // REW_RewindPhaseChangeData.flags.
  REW_PHASE_PRE_ALLY =    0x0,
  REW_PHASE_PRE_NPC =     0x1,
  REW_PHASE_PRE_ENEMY =   0x2,
  REW_PHASE_PRE_MASK =    0x3,
  REW_PHASE_POST_ALLY =   0x0,
  REW_PHASE_POST_NPC =    0x4,
  REW_PHASE_POST_ENEMY =  0x8,
  REW_PHASE_POST_MASK =   0xC,
  REW_PHASECHANGE_TURNINCR =  0x10,
  REW_PHASECHANGE_SKIPPHASE = 0x20,
  
};

void REW_undoPhaseChange(struct REW_RewindEntry* entry);
void REW_redoPhaseChange(struct REW_RewindEntry* entry);

u8 REW_nextPhase(u8 phase, u8* turn, u8* skip);
void REW_actionPhaseChangeStart();
void REW_actionPhaseChangeSuppports();
void REW_actionPhaseChangeTrackStatus();
void REW_actionPhaseChangeRecordStatus();

#endif // PHASECHANGE_H