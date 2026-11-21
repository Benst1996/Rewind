@ Track whenever a unit opens a chest.
@ registers:
@   r0: holds itemSlot of item used to open chest.
@
@ Hooked at 0x23E6C ChestCommandEffect.
.thumb
.global REW_hookOpenChest
REW_hookOpenChest:

@ Call REW_actionOpenChest.
ldr   r3, =REW_actionOpenChest
bl    GOTO_R3

@ Vanilla, overwritten by hook.
@ return MENU_ACT_SKIPCURSOR | MENU_ACT_END | MENU_ACT_SND6A | MENU_ACT_CLEAR;
mov   r0, #0x17
pop   {r4}
pop   {r1}
bx    r1
GOTO_R3:
bx    r3
