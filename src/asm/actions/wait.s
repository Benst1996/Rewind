.thumb

@ Track whenever a unit waits.
@ registers:
@   r0: unit's x
@   r1: unit's y
@
@ Hooked at 0x18740 MoveActiveUnit.
.global REW_hookWait
REW_hookWait:

@ Vanilla, overwritten by hook.
push  {r4-r6, r14}

@ Preserve x and y args.
push  {r0-r1}

@ Call REW_actionWait.
ldr   r3, =REW_actionWait
bl    GOTO_R3

@ Reinstate the x and y args.
pop   {r0-r1}

@ Vanilla, overwritten by hook.
ldr   r6, =gActiveUnit
ldr   r2, [r6]
strb  r0, [r2, #0x10]

@ Return.
ldr   r3, =0x8018749
GOTO_R3:
bx    r3
