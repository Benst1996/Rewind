.thumb

@ We track whenever a unit moves in playerphase.
@
@ Hooked at 0x1D470, PlayerPhase_ApplyUnitMovement
.global REW_hookPlayerPhaseUnitMove
REW_hookPlayerPhaseUnitMove:

@ Vanilla, overwritten by hook.
push  {r4-r6, r14}
mov   r6, r0                @ ProcState*

@ Determine args to REW_conseqUnitMove.
ldr   r4, =gActiveUnitMoveOrigin
ldrh  r0, [r4]              @ xBefore.
ldrh  r1, [r4, #0x2]        @ yBefore.
ldr   r5, =gActionData
ldrb  r2, [r5, #0xE]        @ xAfter.
ldrb  r3, [r5, #0xF]        @ yAfter.

@ Call REW_conseqUnitMove
ldr   r5, =REW_conseqUnitMove
bl    GOTO_R5

@ Vanilla, overwritten by hook.
ldr   r4, =gActiveUnit
ldr   r1, [r4]

@ Return.
ldr   r0, =0x801D479
bx    r0
GOTO_R4:
bx    r4
GOTO_R5:
bx    r5


@ We remove move rewindEntry if unit cancels its movement.
@
@ Hooked at 0x1D008, PlayerPhase_BackToMove
.global REW_hookPlayerPhaseCancelUnitMove
REW_hookPlayerPhaseCancelUnitMove:

@ Vanilla, overwritten by hook.
push  {r4-r5, r14}
mov   r5, r0

@ Determine args to REW_cancelUnitMove.
ldr   r4, =gActiveUnitMoveOrigin
ldrh  r0, [r4]              @ xBefore.
ldrh  r1, [r4, #0x2]        @ yBefore.
ldr   r4, =gActionData
ldrb  r2, [r4, #0xE]        @ xAfter.
ldrb  r3, [r4, #0xF]        @ yAfter.

@ Call REW_cancelUnitMove
ldr   r4, =REW_cancelUnitMove
bl    GOTO_R4

@ Vanilla, overwritten by hook.
ldr   r4, =gActiveUnit
ldr   r1, [r4]

@ Return.
ldr   r0, =0x801D011
bx    r0
