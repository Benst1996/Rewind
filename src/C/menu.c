#include <stdio.h>
#include "menu.h"

// Command is usable if there's at least one sequence in rewind buffer.
u8 REW_rewindMenuUsability(struct MenuItemDef* command, u8 commandId) {
  u32 size;
  
  // Confirm whether there's data in the rewind-buffer or not.
  ReadSramFast(REW_findRewindBuf(), &size, 4);   // Read size of rewindbuffer.

  if (size == 0)
    return MENU_NOTSHOWN;
  return MENU_ENABLED;
}

u8 REW_rewindMenuEffect(struct MenuProc* menu, struct MenuItemProc* menuItem) {
  LockGame();
  
  // Start rewind proc and initialize some params.
  struct REW_ProcState* proc = (struct REW_ProcState*)Proc_Start(REW_procScr, PROC_TREE_3);
  proc->muActor = NULL;
  proc->muTarget = NULL;

  return MENU_ACT_SKIPCURSOR | MENU_ACT_END | MENU_ACT_SND6A | MENU_ACT_CLEAR;
}

const struct ProcCmd REW_procScr[] = {
  PROC_NAME("REW_proc"),
  PROC_YIELD,
  PROC_CALL(ResetText),
  PROC_CALL(REW_initProc),
  PROC_CALL(REW_initUI),
  PROC_CALL(REW_refreshUI),
  
  // Main loop
  PROC_LABEL(1),
  PROC_REPEAT(REW_handleInput),
  
  // B-press: Cancel rewind.
  PROC_LABEL(2),
  //PROC_CALL_ROUTINE(REW_cancelRewind),
  
  // A-press: Confirm rewind.
  PROC_LABEL(3),
  PROC_CALL(REW_procEnd),
  PROC_END
};

// Set-up last sequence as current.
void REW_initProc(struct REW_ProcState* proc) {
  
  // Load rewindBuffer into RAM.
  REW_loadRewind(REW_findRewindBuf(), (u16)(u32)(&REW_rewindMaxSize));
  
  // We shouldn't be able to get here,
  // but end proc if rewind buffer is empty.
  if (REW_rewindBuffer->size <= 0) {
    Proc_End((ProcPtr)proc);
    return;
  }
  
  // Init current sequence.
  proc->curSequence = REW_rewindBuffer->end;
  
  // Init flags.
  proc->flags = REW_REFRESH_TURN;
  if (REW_isUndoAvailable(proc->curSequence)) { proc->flags |= REW_UNDO_AVAILABLE; }
  if (REW_isRedoAvailable(proc->curSequence)) { proc->flags |= REW_REDO_AVAILABLE; }
}

// Draws actor (left unit) name & starts MU.
void REW_displayActor(struct REW_ProcState* proc, struct REW_RewindEntry* rewindEntry, struct Text* sequenceDesc) {
  struct Unit* unit = NULL;
  struct Unit referenceUnit;
  u8 x, y, unitID;
  
  // Check if action is combat.
  if (rewindEntry->diffType == UNIT_ACTION_COMBAT) {
  
    // Check if unit died.
    if (rewindEntry->flags == REW_UNITDIED_CLEARED) {
      
      // Unit died and got cleared. Create temporary unit instead.
      REW_loadUnit(&referenceUnit, (struct REW_UnitDefData*)rewindEntry->data, 0, 0);
      unit = &referenceUnit;
      
    } else if ((rewindEntry->flags & REW_UNITDIED_NOCLEAR) == REW_UNITDIED_NOCLEAR) {
      
      // Unit died but did not get cleared.
      unit = GetUnit(rewindEntry->flags & ~REW_UNITDIED_NOCLEAR);
      
    } else {
      
      // Unit did not die.
      unit = GetUnit(rewindEntry->flags);
    }
    
  } else {
    
    // For every other action we assume data is
    // headed by REW_ACTION_REWINDENTRYDATA_HEADER
    // which means the first two bytes are the unit's coordinates.
    x = rewindEntry->data[0];
    y = rewindEntry->data[1];
    
    // Find unit.
    unitID = gBmMapUnit[y][x];
    unit = GetUnit(unitID);
    
  }
  
  u16 name = unit->pCharacterData->nameTextId;
  u8 class = unit->pClassData->number;
  Text_DrawString(sequenceDesc, GetStringFromIndex(name));     // Draw actor's name.
  
  proc->muActor = StartMuInternal(0, 0, class, -1, GetUnitSpritePalette(unit));
  proc->muActor->layer = 0x400;                           // Priority 1;
  proc->muActor->sprite_anim->tileBase &= 0xF3FF;         // Draw sprite
  proc->muActor->sprite_anim->tileBase |= 0x0400;         // over UI.    
  proc->muActor->x_q4 += 256;                             // Adjust x position.
  proc->muActor->y_q4 += 384;                             // Adjust y position.
  SetMuFacing(proc->muActor, MU_FACING_SELECTED);
}

// Draws target (right unit) name & starts MU.
// If obstacle, draw obstacle name.
void REW_displayTarget(struct REW_ProcState* proc, struct REW_RewindEntry* rewindEntry, struct Text* sequenceDesc) {
  struct Unit* unit = GetUnit(rewindEntry->flags);
  struct Unit referenceUnit;
  
  // Check if target is unit or obstacle.
  if (rewindEntry->diffType == UNIT_ACTION_COMBAT) {
    // Target is unit.
    
    // Check if unit died.
    if (rewindEntry->flags == REW_UNITDIED_CLEARED) {
      
      // Unit died and got cleared. Create temporary unit instead.
      REW_loadUnit(&referenceUnit, (struct REW_UnitDefData*)rewindEntry->data, 0, 0);
      unit = &referenceUnit;
    } else if ((rewindEntry->flags & REW_UNITDIED_NOCLEAR) == REW_UNITDIED_NOCLEAR) {
    
      // Unit died but did not get cleared.
      unit = GetUnit(rewindEntry->flags & ~REW_UNITDIED_NOCLEAR);
    }
    
    u16 name = unit->pCharacterData->nameTextId;
    u8 class = unit->pClassData->number;
    Text_DrawString(sequenceDesc, GetStringFromIndex(name));     // Draw target's name.
    int targetX = (Text_GetCursor(sequenceDesc) + 43) << 4;
    
    proc->muTarget = StartMuInternal(0, 0, class, -1, GetUnitSpritePalette(unit));
    proc->muTarget->layer = 0x400;                          // Priority 1;
    proc->muTarget->sprite_anim->tileBase &= 0xF3FF;        // Draw sprite
    proc->muTarget->sprite_anim->tileBase |= 0x0400;        // over UI.   
    proc->muTarget->x_q4 += 128 + targetX;                  // Adjust x position.
    proc->muTarget->y_q4 += 384;                            // Adjust y position.
    SetMuFacing(proc->muTarget, MU_FACING_SELECTED);
    
  } else if (rewindEntry->diffType == REW_ACTION_BREAK) {
    // Target is obstacle.
    
    char* name = (rewindEntry->flags & REW_OBSTACLE_SNAG) ? GetTerrainName(REW_SNAG_ID) : GetTerrainName(REW_WALL_ID);
    Text_DrawString(sequenceDesc, name);    // Draw target's name.
  }
}

void REW_displayCombatVerb(struct REW_RewindSequence* seq, struct REW_RewindEntry* entry, struct Text* sequenceDesc) {
  u16 textID = TEXTID(REW_combat);
  struct REW_RewindEntry* nextEntry = REW_nextEntry(seq, entry);
  
  if (nextEntry->diffType == REW_ACTION_BREAK) {
    struct Trap* trap = (struct Trap*)nextEntry->data;
    trap = GetTypedTrapAt(trap->xPos, trap->yPos, trap->type);
    if (trap == NULL)
      textID = TEXTID(REW_obstacleDestroyed);
  } else {
    if (false)        // TODO check if actor was killed.
      ;
    else if (false)   // TODO check if target was killed.
      ;
  }
  Text_DrawString(sequenceDesc, GetStringFromIndex(textID));
}

// Initialize UI, draw box, turn text, phase text.
void REW_initUI(struct REW_ProcState* proc) {
  struct Text phaseText, turnText;
  
  // Put arrow gfx in OBJ VRAM.
  UnpackUiVArrowGfx(0x360, 3);
  
  // Draw info window.
  Decompress(&REW_menuTSA, gGenericBuffer);
  CallARM_FillTileRect(gBG1TilemapBuffer, gGenericBuffer, 0);

  // Init Turn number display text.
  InitText(&proc->turnNumberText, 2);
  InitText(&proc->turnNumberTextAlt, 2);
  
  // Draw "Turn".
  InitText(&turnText, 3);
  Text_SetCursor(&turnText, 1);
  Text_DrawString(&turnText, GetStringFromIndex(0x1C2));
  PutText(&turnText, TILEMAP_LOCATED(gBG0TilemapBuffer, 24, 1));
  
  // Draw "Phase".
  InitText(&phaseText, 4);
  Text_SetCursor(&phaseText, 1);
  Text_DrawString(&phaseText, GetStringFromIndex(TEXTID(REW_phaseIndicator)));
  PutText(&phaseText, TILEMAP_LOCATED(gBG0TilemapBuffer, 24, 3));
  
  // Init action text.
  InitText(&proc->sequenceDesc, 15);
  InitText(&proc->sequenceDescAlt, 15);
  
  // Draw phase indicator.
  proc->phaseAPProc = (struct APProc*)APProc_Create(&REW_phaseAPDef, 0, 0, 0, 0, 0);
  
  // Clear up & down arrow AP proc pointers.
  proc->upArrowAPProc = NULL;
  proc->downArrowAPProc = NULL;
  
  BG_EnableSync(1);
}

// Refresh UI, draw action text, turncount, phase indicator,
// moving map sprites, arrows.
void REW_refreshUI(struct REW_ProcState* proc) {
  int turn, actionNotFound;
  u16 pal;
  struct REW_RewindEntry* rewindEntry;
  struct Text* sequenceDesc, *turnNumberText;
  
  // Refresh turn number.
  if (proc->flags & REW_REFRESH_TURN) {
    turn = gPlaySt.chapterTurnNumber;
    turnNumberText = turn & 1 ? &proc->turnNumberTextAlt : &proc->turnNumberText;
    
    ClearText(turnNumberText);
    Text_SetColor(turnNumberText, 2);    // Blue colour for turn number.
    
    if (turn < 10) {
      // One-digit number.
      Text_Skip(turnNumberText, 6);
      Text_DrawNumber(turnNumberText, turn);
    } else if (turn < 100) {
      // Two-digit number.
      Text_DrawNumber(turnNumberText, turn / 10);
      Text_Skip(turnNumberText, 16);
      Text_DrawNumber(turnNumberText, turn % 10);
    } // We're not drawing three+ digit numbers. Because.
    PutText(turnNumberText, TILEMAP_LOCATED(gBG0TilemapBuffer, 27, 1));
    proc->flags &= ~REW_REFRESH_TURN;
  }
  
  // Refresh phase indicator.
  if (proc->flags & REW_REFRESH_PHASE) {
    pal = 0;                                            // Ally.
    if (gPlaySt.faction == FACTION_GREEN)
      pal = 0x2000;                                     // Other.
    else if (gPlaySt.faction == FACTION_RED)
      pal = 0x1000;                                     // Enemy.
    
    proc->phaseAPProc->pHandle->tileBase &= 0x0FFF;
    proc->phaseAPProc->pHandle->tileBase |= pal;
    proc->flags &= ~REW_REFRESH_PHASE;
  }
  
  // Draw or remove up arrow.
  if ((proc->flags & REW_UNDO_AVAILABLE) && (proc->upArrowAPProc == NULL))
    proc->upArrowAPProc = (struct APProc*)APProc_Create(&REW_upArrowAPDef, 0, 0, 0, 0, 0);
  else if (!(proc->flags & REW_UNDO_AVAILABLE) && (proc->upArrowAPProc != NULL)) {
    Proc_End((ProcPtr)proc->upArrowAPProc);
    proc->upArrowAPProc = NULL;
  }
  
  // Draw or remove down arrow.
  if ((proc->flags & REW_REDO_AVAILABLE) && (proc->downArrowAPProc == NULL))
    proc->downArrowAPProc = (struct APProc*)APProc_Create(&REW_downArrowAPDef, 0, 0, 0, 0, 0);
  else if (!(proc->flags & REW_REDO_AVAILABLE) && (proc->downArrowAPProc != NULL)) {
    Proc_End((ProcPtr)proc->downArrowAPProc);
    proc->downArrowAPProc = NULL;
  }
  
  // Clear potential MUs.
  EndAllMus();
  proc->muActor = NULL;
  proc->muTarget = NULL;
  
  // Draw action text.
  // TODO, this should become a switch for every action possible.
  // Maybe put this part in a separate routine as it could get huge.
  
  // Clear buffered screen entries.
  for (int y = 0; y < 20; y++) {
    for (int x = 0; x < 24; x++) {
      gBG0TilemapBuffer[y * 0x20 + x] = 0;
    }
  }
  
  // Alternate texthandles to minimize text flickering.
  sequenceDesc = proc->flags & REW_ALTERNATE_TEXT ? &proc->sequenceDescAlt : &proc->sequenceDesc;
  proc->flags ^= REW_ALTERNATE_TEXT;
  
  ClearText(sequenceDesc);
  Text_SetCursor(sequenceDesc, 2);
  actionNotFound = true;
  rewindEntry = proc->curSequence->entry;
  while (actionNotFound) {
    switch (rewindEntry->diffType) {
      case UNIT_ACTION_COMBAT:
        actionNotFound = false;
        
        REW_displayActor(proc, rewindEntry, sequenceDesc);
        REW_displayCombatVerb(proc->curSequence, rewindEntry, sequenceDesc);
        REW_displayTarget(proc, REW_nextEntry(proc->curSequence, rewindEntry), sequenceDesc);
        Text_DrawCharacter(sequenceDesc, ".");                                      // Period.
        PutText(sequenceDesc, TILEMAP_LOCATED(gBG0TilemapBuffer, 5, 2));
        break;
        
      case REW_ACTION_PHASECHANGE:
        actionNotFound = false;
        
        switch (gPlaySt.faction) {
          case FACTION_BLUE:
            Text_DrawString(sequenceDesc, GetStringFromIndex(TEXTID(REW_phaseBlue)));
            PutText(sequenceDesc, TILEMAP_LOCATED(gBG0TilemapBuffer, 6, 2));
            break;
            
          case FACTION_RED:
            Text_Skip(sequenceDesc, 1);
            Text_DrawString(sequenceDesc, GetStringFromIndex(TEXTID(REW_phaseRed)));
            PutText(sequenceDesc, TILEMAP_LOCATED(gBG0TilemapBuffer, 6, 2));
            break;
            
          case FACTION_GREEN:
          default:
            Text_Skip(sequenceDesc, 4);
            Text_DrawString(sequenceDesc, GetStringFromIndex(TEXTID(REW_phaseGreen)));
            PutText(sequenceDesc, TILEMAP_LOCATED(gBG0TilemapBuffer, 6, 2));
        }
        break;
        
      case UNIT_ACTION_CHEST:
        actionNotFound = false;
        
        REW_displayActor(proc, rewindEntry, sequenceDesc);
        Text_DrawString(sequenceDesc, GetStringFromIndex(TEXTID(REW_txtOpenedChest)));
        PutText(sequenceDesc, TILEMAP_LOCATED(gBG0TilemapBuffer, 6, 2));
        break;
        
      default:
        rewindEntry = REW_nextEntry(proc->curSequence, rewindEntry);
    }
  }
  BG_EnableSync(0);
}

// Wait for key-input.
void REW_handleInput(struct REW_ProcState* proc) {
  int phase = gPlaySt.faction;
  int turn = gPlaySt.chapterTurnNumber;
  
  // Key-input.
  if ((gKeyStatusPtr->repeatedKeys & DPAD_UP) && (proc->flags & REW_UNDO_AVAILABLE)) {
    // Up-press: rewind/undo action.
    
    PlaySoundEffect(SONG_SE_SYS_CURSOR_UD1);
    
    // If any partial actions have been taken
    // and we're at the tail of the queue
    // rewind those consequences too.
    if (!REW_isSequenceEmpty(REW_curSequence) && (REW_rewindBuffer->end == proc->curSequence))
      REW_undo(REW_curSequence);
    
    // Undo action.
    REW_undo(proc->curSequence);
    
    // Update flags tracking if phase or turn display
    // needs to refresh.
    if (phase != gPlaySt.faction)
      proc->flags |= REW_REFRESH_PHASE;
    if (turn != gPlaySt.chapterTurnNumber)
      proc->flags |= REW_REFRESH_TURN;
    
    // Set previous sequence as current sequence.
    proc->curSequence = REW_prevSequence(proc->curSequence);
    
    // Update flags tracking if another undo is available.
    if (!REW_isUndoAvailable(proc->curSequence)) { proc->flags &= ~REW_UNDO_AVAILABLE; }
    proc->flags |= REW_REDO_AVAILABLE;
    
    // Draw previous sequence.
    REW_refreshUI(proc);
    
    // Refresh units.
    RefreshEntityBmMaps();
    RefreshUnitSprites();
    
  } else if ((gKeyStatusPtr->repeatedKeys & DPAD_DOWN) && (proc->flags & REW_REDO_AVAILABLE)) {
    // Down-press: redo action.
    
    PlaySoundEffect(SONG_SE_SYS_CURSOR_UD1);
    
    // Set next sequence as current sequence.
    proc->curSequence = REW_nextSequence(proc->curSequence);
    
    // Redo action.
    REW_redo(proc->curSequence);
    
    // If any partial actions had been taken
    // and we're at the tail of the queue
    // redo that sequence too.
    if (!REW_isSequenceEmpty(REW_curSequence) && !REW_isRedoAvailable(proc->curSequence))
      REW_redo(REW_curSequence);
    
    // Update flags tracking if phase or turn display
    // needs to refresh.
    if (phase != gPlaySt.faction)
      proc->flags |= REW_REFRESH_PHASE;
    if (turn != gPlaySt.chapterTurnNumber)
      proc->flags |= REW_REFRESH_TURN;
    
    // Update flags tracking if another redo is available.
    if (!REW_isRedoAvailable(proc->curSequence))
      proc->flags &= ~REW_REDO_AVAILABLE;
    proc->flags |= REW_UNDO_AVAILABLE;
    
    // Draw next sequence.
    REW_refreshUI(proc);
    
    // Refresh units.
    RefreshEntityBmMaps();
    RefreshUnitSprites();
    
  } else if (gKeyStatusPtr->repeatedKeys & B_BUTTON) {
    // B-press. Set cursor to present by
    // redoing all sequences that have been undone.
    
    PlaySoundEffect(SONG_SE_SYS_WINDOW_CANSEL1);
    
    while (REW_isRedoAvailable(proc->curSequence)) {
      
      // Set next sequence as current sequence.
      proc->curSequence = REW_nextSequence(proc->curSequence);
      
      // Redo this sequence.
      REW_redo(proc->curSequence);
    }
    
    // If any partial actions had been taken
    // redo that sequence too.
    if (!REW_isSequenceEmpty(REW_curSequence))
      REW_redo(REW_curSequence);
    
    // Refresh units.
    RefreshEntityBmMaps();
    RefreshUnitSprites();
    
    // Move procScript to endProc.
    Proc_Goto(proc, 3);
    
  } else if (gKeyStatusPtr->repeatedKeys & A_BUTTON) {
    // A-press. Confirm rewind and exit menu.
    
    PlaySoundEffect(SONG_SE_SYS_WINDOW_SELECT1);
    
    // Move procScript to endProc.
    Proc_Goto(proc, 3);
    
    // If we're at the tail of the queue then
    // nothing was undone. No need to save.
    if (!REW_isRedoAvailable(proc->curSequence))
      return;
    
    // We clear sequences that have been re-wound
    // by setting REW_curSequence->sizePrev to a special value.
    REW_curSequence->sizePrev = REW_SAVE_BUFFERHEADER;
    
    // Set buffer's end pointer to the current sequence.
    REW_rewindBuffer->end = proc->curSequence;
    
    // Update buffer's size value.
    REW_rewindBuffer->size = ((u32)(proc->curSequence) +
                              (u32)(proc->curSequence->size)) -
                              (u32)(REW_rewindBuffer);
    
    // Save.
    PlayerPhase_Suspend();
  }
}

// Clear BGs, APs & MUs.
void REW_procEnd(struct REW_ProcState* proc) {
  
  // End APs.
  Proc_End((ProcPtr)proc->phaseAPProc);
  if (proc->downArrowAPProc)
    Proc_End((ProcPtr)proc->downArrowAPProc);
  if (proc->upArrowAPProc)
    Proc_End((ProcPtr)proc->upArrowAPProc);
  
  // End any MUs.
  if (proc->muActor)
    Proc_End((ProcPtr)proc->muActor);
  if (proc->muTarget)
    Proc_End((ProcPtr)proc->muTarget);
  
  ClearBg0Bg1();
  UnlockGame();
}