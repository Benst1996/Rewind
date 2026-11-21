#include <stdio.h>
#include "save.h"

// Find address of current sequence in save data.
void* REW_findCurSequence() {

  //void* const source = GetSaveSourceAddress(SAVE_ID_SUSPEND);  // Doesn't work when no active suspend.
  void* const source = (void*)(0xE000000 + gSaveBlockDecl[SAVE_ID_SUSPEND * 2]);
  const struct SaveChunkDecl* chunk = MS_FindSuspendSaveChunk((u16)(u32)(&EMS_CHUNK_REWIND_SEQ));
  
  return (void*)(source + chunk->offset);
}

// Clear current sequence buffer,
// by setting size values to 0.
// Executes at the start of a chapter.
void REW_clearCurSequence() {
  REW_curSequence->sizePrev = 0;
  REW_curSequence->size = 0;
  WriteAndVerifySramFast(REW_curSequence, REW_findCurSequence(), 4);
}

// Find address of rewindBuffer in save data.
void* REW_findRewindBuf() {
  
  //void* const source = GetSaveSourceAddress(SAVE_ID_SUSPEND);  // Doesn't work when no active suspend.
  void* const source = (void*)(0xE000000 + gSaveBlockDecl[SAVE_ID_SUSPEND * 2]);
  const struct SaveChunkDecl* chunk = MS_FindSuspendSaveChunk((u16)(u32)(&EMS_CHUNK_REWIND_BUF));
  
  return (void*)(source + chunk->offset);
}

// Clear the rewind buffer, by setting size val to 0
// and NULLing the end sequence pointer.
// Executes at the start of a chapter.
void REW_clearRewindBuf() {
  u32 val[2] = {0, 0};
  WriteAndVerifySramFast(&val, REW_findRewindBuf(), 8);
}

// Save non-player phase changes.
// Replaces proc call to AiPhaseInit at
// 0x5A7F10, hence why we call AiPhaseInit.
void REW_cpPhaseChangeSave(ProcPtr proc) {
  
  // Save only if phase is not skipped.
  if (GetPhaseAbleUnitCount(gPlaySt.faction) > 0) {
    gActionData.suspendPointType = SUSPEND_POINT_CPPHASE;
    WriteSuspendSave(SAVE_ID_SUSPEND);
  }
  
  // This function call was overwritten by inline
  // insertion of the REW_cpPhaseChangeSave call
  AiPhaseInit(proc);
}

// Load active unit's position before acting.
// We need this so we can track where unit
// was before undertaking action.
void REW_loadActiveUnitMoveOrigin(void* src, u32 size) {
  s8 moveOrigin[2];
  
  ReadSramFast(src, moveOrigin, size);
  
  gActiveUnitMoveOrigin.x = (s16)moveOrigin[0];
  gActiveUnitMoveOrigin.y = (s16)moveOrigin[1];
}

// Save active unit's position before acting.
// Vanilla doesn't do this as the data is
// no longer needed when an action has been
// confirmed and the game saves.
void REW_saveActiveUnitMoveOrigin(void* dest, u32 size) {
  s8 moveOrigin[2];
  
  moveOrigin[0] = (s8)gActiveUnitMoveOrigin.x;
  moveOrigin[1] = (s8)gActiveUnitMoveOrigin.y;
  
  WriteAndVerifySramFast(moveOrigin, dest, size);
}

// Load sequence from save to REW_curSequence.
void REW_loadCurSequence(void* src, u32 size) {
  ReadSramFast(src, (void*)REW_curSequence, size);
}

// Save partial actions and phase change sequences.
// Partial action saves happen for example when the
// game suspend-saves when a battle happens, before the battle ends.
// We need to save the data in the REW_curSequence buffer.
void REW_saveCurSequence(void* dest, u32 size) {
  
  if (gActionData.suspendPointType != SUSPEND_POINT_DURINGACTION &&
      gActionData.suspendPointType != SUSPEND_POINT_PHASECHANGE)
    return;
  
  WriteAndVerifySramFast((void*)REW_curSequence, dest, size);
}

// Load rewind data from save into REW_rewindBuffer.
void REW_loadRewind(void* src, u32 size) {
  ReadSramFast(src, (void*)REW_rewindBuffer, size);
}

// Update saved rewind data.
// dest is ptr to SRAM which contains rewind data.
void REW_saveRewind(void* dest, u32 size) {
  u32 curSequenceBufferAddress, bufferStartOffset, bufferNewSize;
  struct REW_RewindSequence* seqIt;
  
  // Save only the rewindBuffer header if
  // the current REW_curSequence->sizePrev is a special value.
  // In this case, the player has confirmed a rewind
  // and the rewind buffer has been loaded already.
  if (REW_curSequence->sizePrev == REW_SAVE_BUFFERHEADER) {
    
    // Save.
    WriteAndVerifySramFast((void*)REW_rewindBuffer, dest, REW_BUFFER_BASESIZE);
    
    // Clear current rewind sequence to be safe.
    REW_clearRewindSeq(REW_curSequence);    // RAM.
    REW_clearCurSequence();                 // SRAM.
    
    return;
  }
  
  // Skip if there's no new rewind sequence to append.
  if (REW_curSequence->size == 0)
    return;
  
  // Don't update rewind data during action
  // or during phasechange
  if (gActionData.suspendPointType == SUSPEND_POINT_DURINGACTION ||
      gActionData.suspendPointType == SUSPEND_POINT_PHASECHANGE)
    return;
  
  // TODO if rewindSequence got too big, empty buffer.
  // Maybe write an error string instead to help bugreports?
  
  // Load existing rewind data into buffer.
  REW_loadRewind(dest, size);
  
  // If buffer is empty, initialize size.
  if (REW_rewindBuffer->size == 0) {
    REW_rewindBuffer->size = REW_BUFFER_BASESIZE;
  }
  
  // Make room for sequence in rewindBuffer if necessary.
  bufferStartOffset = 0;
  bufferNewSize = REW_rewindBuffer->size;
  seqIt = &REW_rewindBuffer->start;
  while (bufferNewSize + REW_curSequence->size > (u16)(u32)(&REW_rewindMaxSize)) {
    // Not enough space. Trim start of rewindBuffer
    // until new sequence fits.
    
    // No more sequences to trim.
    if (seqIt == NULL)
      break;
    
    bufferNewSize -= seqIt->size;
    bufferStartOffset += seqIt->size;
    seqIt = REW_nextSequence(seqIt);
  }
  
  // After trimming start of queue, mark new first sequence.
  seqIt->sizePrev = 0;
  
  // Calculate where current sequence will land in rewindBuffer.
  curSequenceBufferAddress = ((u32)(REW_rewindBuffer) + bufferNewSize);
  
  // Set current sequence's sizePrev to
  // Buffer's last sequence's size param.
  if (REW_rewindBuffer->end != NULL)
    REW_curSequence->sizePrev = REW_rewindBuffer->end->size;
  
  // Adjust REW_rewindBuffer params.
  REW_rewindBuffer->end = (struct REW_RewindSequence*)curSequenceBufferAddress;
  REW_rewindBuffer->size = bufferNewSize + REW_curSequence->size;
  
  // Save the data.
  // - Start of buffer.
  WriteAndVerifySramFast((void*)REW_rewindBuffer, dest, REW_BUFFER_BASESIZE);
  
  // - Existing/Untrimmed sequences.
  WriteAndVerifySramFast((void*)((u32)REW_rewindBuffer + REW_BUFFER_BASESIZE + bufferStartOffset),
                         (void*)((u32)dest + REW_BUFFER_BASESIZE),
                         bufferNewSize - REW_BUFFER_BASESIZE);
  
  // - Current sequence.
  WriteAndVerifySramFast((void*)REW_curSequence,
                         (void*)((u32)dest + bufferNewSize),
                         REW_curSequence->size);
  
  // Clear current rewind sequence to avoid writing it again.
  REW_clearRewindSeq(REW_curSequence);    // RAM.
  REW_clearCurSequence();                 // SRAM.
}