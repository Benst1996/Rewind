.thumb

@ Whenever a unit equips an item
@ we need to track how the inventory is reordered.
@
@ Hooked at 0x16BC0, EquipUnitItemSlot.
.global REW_hookEquipItem
REW_hookEquipItem:
push  {r4-r5, r14}
mov   r4, r0
mov   r5, r1

@ Call REW_conseqEquipItem.
ldr   r3, =REW_conseqEquipItem
bl    GOTO_R3
mov   r0, r4
mov   r1, r5

@ Vanilla, overwritten by hook.
mov   r3, r0
lsl   r4, r1, #0x1
add   r0, #0x1E

@ Return
ldr   r5, =0x8016BC9
bx    r5

GOTO_R3:
bx    r3
GOTO_R0:
bx    r0

@ Whenever a unit gains an item track that.
@
@ Hooked at 0x17948 UnitAddItem.
.global REW_hookItemObtained
REW_hookItemObtained:

@ Vanilla, overwritten by hook.
push  {r4-r6, r14}
mov   r4, r0
mov   r5, r1
mov   r3, #0x0
mov   r2, r0
add   r2, #0x1E

@ Execute UnitAddItem.
@ We push pc because UnitAddItem's initial
@ lr push has been overwritten by hook.
mov   r0, r15
add   r0, #0x9
push  {r0}
ldr   r0, =0x8017951
bl    GOTO_R0
mov   r6, r0

@ Call REW_conseqItemObtainedUnit.
mov   r0, r4
mov   r1, r5
mov   r2, r6
ldr   r3, =REW_conseqItemObtainedUnit
bl    GOTO_R3

@ Return the UnitAddItem result.
mov   r0, r6
pop   {r4-r6}
pop   {r1}
bx    r1
