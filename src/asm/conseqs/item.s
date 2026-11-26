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

@ Track whenever a unit gains an item.
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

@ Track whenever a unit loses an item.
@
@ TODO.


@ Take a snapshot of a unit's inventory
@ before they interact with the supply.
@ We allocate an additional 0xA bytes 
@ to the PrepItemSupplyProc procState
@ to temporarily store this snapshot.
@
@ Hooked at 0x9EB38, StartBmSupply.
.global REW_hookSupplyTakeSnapshot
REW_hookSupplyTakeSnapshot:

@ Vanilla, overwritten by hook.
push  {r4, r14}
mov   r4, r0
ldr   r0, =ProcScr_BmSupplyScreen
mov   r1, #0x3
ldr   r3, =Proc_Start
bl    GOTO_R3
str   r4, [r0, #0x2C]

@ Take snapshot of unit's inventory.
mov   r1, #0x5E   @ Right after PrepItemSupplyProc->
add   r1, r0      @ yOffsetPerPage[9] there's room.
mov   r2, r0
mov   r0, r4
mov   r4, r2      @ Keep proc* for later.
ldr   r3, =REW_conseqSupplyWriteInventorySnapshot
bl    GOTO_R3
mov   r0, r4      @ Need proc* when we return.

@ Return.
ldr   r3, =0x809EB47
bx    r3

@ Compare unit's inventory to prior snapshot
@ and track the two inventories.
@
@ Registers:
@   r0: PrepItemSupplyProc procState. Unit* in procState + 0x2C.
@
@ Hooked at 0x9EA7C, PrepItemSupply_OnEnd.
.global REW_hookSupplyTrackInventories
REW_hookSupplyTrackInventories:

@ Vanilla, overwritten by hook.
push  {r4, r14}
mov   r4, r0

ldr   r0, [r4, #0x2C]     @ Unit*.
mov   r1, r4
add   r1, #0x5E           @ Pointer to inventory snapshot.
ldr   r3, =REW_conseqSupplyTrackInventoryChanges
bl    GOTO_R3

@ Vanilla, overwritten by hook.
ldr   r0, =gGMData
ldrb  r1, [r0]

@ Return.
ldr   r3, =0x809EA85
bx    r3
