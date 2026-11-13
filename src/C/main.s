	.cpu arm7tdmi
	.arch armv4t
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"main.c"
	.text
	.align	1
	.p2align 2,,3
	.global	REW_initUI
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_initUI, %function
REW_initUI:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	lr, r10
	mov	r7, r9
	mov	r6, r8
	movs	r4, r0
	movs	r0, #216
	push	{r6, r7, lr}
	movs	r1, #3
	sub	sp, sp, #24
	ldr	r3, .L3
	lsls	r0, r0, #2
	bl	.L5
	ldr	r5, .L3+4
	ldr	r0, .L3+8
	movs	r1, r5
	ldr	r3, .L3+12
	bl	.L5
	movs	r2, #0
	ldr	r3, .L3+16
	movs	r1, r5
	ldr	r0, .L3+20
	bl	.L5
	movs	r0, r4
	ldr	r5, .L3+24
	movs	r1, #2
	adds	r0, r0, #64
	bl	.L6
	movs	r0, r4
	movs	r1, #2
	adds	r0, r0, #72
	bl	.L6
	add	r0, sp, #16
	movs	r1, #3
	bl	.L6
	ldr	r3, .L3+28
	movs	r1, #1
	add	r0, sp, #16
	mov	r10, r3
	bl	.L5
	movs	r0, #225
	ldr	r3, .L3+32
	lsls	r0, r0, #1
	mov	r9, r3
	bl	.L5
	ldr	r3, .L3+36
	movs	r1, r0
	add	r0, sp, #16
	mov	r8, r3
	bl	.L5
	ldr	r6, .L3+40
	ldr	r7, .L3+44
	movs	r1, r6
	add	r0, sp, #16
	bl	.L7
	add	r0, sp, #8
	movs	r1, #4
	bl	.L6
	movs	r1, #1
	add	r0, sp, #8
	bl	.L8
	ldr	r0, .L3+48
	lsls	r0, r0, #16
	lsrs	r0, r0, #16
	bl	.L9
	movs	r1, r0
	add	r0, sp, #8
	bl	.L10
	movs	r1, r6
	add	r0, sp, #8
	adds	r1, r1, #128
	bl	.L7
	movs	r0, r4
	movs	r1, #15
	adds	r0, r0, #48
	bl	.L6
	movs	r0, r4
	movs	r1, #15
	adds	r0, r0, #56
	bl	.L6
	movs	r5, #0
	movs	r2, #0
	movs	r1, #0
	movs	r3, #0
	str	r5, [sp, #4]
	str	r5, [sp]
	ldr	r6, .L3+52
	ldr	r0, .L3+56
	bl	.L11
	str	r5, [r4, #92]
	str	r0, [r4, #88]
	str	r5, [r4, #96]
	movs	r0, #1
	ldr	r3, .L3+60
	bl	.L5
	add	sp, sp, #24
	@ sp needed
	pop	{r5, r6, r7}
	mov	r10, r7
	mov	r9, r6
	mov	r8, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L4:
	.align	2
.L3:
	.word	UnpackUiVArrowGfx
	.word	gGenericBuffer
	.word	REW_menuTSA
	.word	Decompress
	.word	CallARM_FillTileRect
	.word	gBG1TilemapBuffer
	.word	InitText
	.word	Text_SetCursor
	.word	GetStringFromIndex
	.word	Text_DrawString
	.word	gBG0TilemapBuffer+112
	.word	PutText
	.word	REW_phaseIndicator
	.word	APProc_Create
	.word	REW_phaseAPDef
	.word	BG_EnableSync
	.size	REW_initUI, .-REW_initUI
	.align	1
	.p2align 2,,3
	.global	REW_procEnd
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_procEnd, %function
REW_procEnd:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	movs	r4, r0
	ldr	r5, .L29
	ldr	r0, [r0, #88]
	bl	.L6
	ldr	r0, [r4, #96]
	cmp	r0, #0
	beq	.L13
	bl	.L6
.L13:
	ldr	r0, [r4, #92]
	cmp	r0, #0
	beq	.L14
	bl	.L6
.L14:
	ldr	r0, [r4, #80]
	cmp	r0, #0
	beq	.L15
	bl	.L6
.L15:
	ldr	r0, [r4, #84]
	cmp	r0, #0
	beq	.L16
	bl	.L6
.L16:
	@ sp needed
	ldr	r3, .L29+4
	bl	.L5
	ldr	r3, .L29+8
	bl	.L5
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L30:
	.align	2
.L29:
	.word	Proc_End
	.word	ClearBg0Bg1
	.word	UnlockGame
	.size	REW_procEnd, .-REW_procEnd
	.align	1
	.p2align 2,,3
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_getUnitID.part.0, %function
REW_getUnitID.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	subs	r1, r1, #2
	lsls	r1, r1, #16
	push	{r4, r5, r6, r7, lr}
	lsrs	r6, r1, #16
	cmp	r1, #0
	beq	.L38
	movs	r1, #2
	movs	r2, #0
	rsbs	r1, r1, #0
	mov	ip, r2
	movs	r7, #0
	movs	r5, #0
	movs	r4, #0
	adds	r3, r0, #2
	subs	r1, r1, r0
	b	.L37
.L33:
	cmp	r2, #17
	beq	.L35
	movs	r2, r4
	ands	r2, r5
.L34:
	cmp	r2, #0
	bne	.L40
.L36:
	adds	r3, r3, #2
	adds	r2, r1, r3
	cmp	r6, r2
	ble	.L40
.L37:
	ldrb	r2, [r3]
	cmp	r2, #16
	bne	.L33
	movs	r7, #1
	movs	r2, r5
	movs	r4, #1
	ldrsb	r7, [r3, r7]
	cmp	r2, #0
	beq	.L36
.L40:
	mov	r3, ip
.L32:
	@ sp needed
	movs	r2, #1
	ldrsb	r2, [r0, r2]
	adds	r3, r2, r3
	ldr	r2, .L41
	ldr	r1, [r2]
	movs	r2, #0
	lsls	r3, r3, #2
	ldr	r3, [r3, r1]
	ldrsb	r2, [r0, r2]
	adds	r3, r3, r7
	ldrb	r0, [r3, r2]
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L35:
	movs	r2, #1
	ldrsb	r2, [r3, r2]
	movs	r5, #1
	mov	ip, r2
	movs	r2, r4
	b	.L34
.L38:
	movs	r7, #0
	movs	r3, #0
	b	.L32
.L42:
	.align	2
.L41:
	.word	gBmMapUnit
	.size	REW_getUnitID.part.0, .-REW_getUnitID.part.0
	.align	1
	.p2align 2,,3
	.global	REW_initProc
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_initProc, %function
REW_initProc:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L50
	push	{r4, r5, r6, lr}
	ldrh	r4, [r3, #12]
	movs	r3, #224
	lsls	r3, r3, #20
	mov	ip, r3
	ldr	r3, .L50+4
	lsls	r3, r3, #16
	movs	r5, r0
	lsrs	r0, r3, #16
	ldr	r3, .L50+8
	add	r4, r4, ip
	bl	.L5
	ldr	r2, .L50+12
	ldr	r6, .L50+16
	ldrh	r0, [r0]
	ldr	r3, .L50+20
	lsls	r2, r2, #16
	ldr	r3, [r3]
	lsrs	r2, r2, #16
	ldr	r1, [r6]
	adds	r0, r4, r0
	bl	.L5
	ldr	r3, [r6]
	ldr	r2, [r3]
	cmp	r2, #0
	beq	.L49
	movs	r2, #41
	movs	r1, #2
	ldr	r3, [r3, #4]
	str	r3, [r5, #44]
	strb	r1, [r5, r2]
	ldrh	r3, [r3]
	cmp	r3, #0
	beq	.L43
	movs	r3, #6
	strb	r3, [r5, r2]
.L43:
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L49:
	movs	r0, r5
	ldr	r3, .L50+24
	bl	.L5
	b	.L43
.L51:
	.align	2
.L50:
	.word	gSaveBlockDecl
	.word	EMS_CHUNK_REWIND_BUF
	.word	MS_FindSuspendSaveChunk
	.word	REW_rewindSize
	.word	REW_rewindBuffer
	.word	ReadSramFast
	.word	Proc_End
	.size	REW_initProc, .-REW_initProc
	.align	1
	.p2align 2,,3
	.global	REW_clearRewindSeq
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_clearRewindSeq, %function
REW_clearRewindSeq:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r3, #0
	@ sp needed
	strh	r3, [r0, #2]
	bx	lr
	.size	REW_clearRewindSeq, .-REW_clearRewindSeq
	.align	1
	.p2align 2,,3
	.global	REW_isSequenceEmpty
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_isSequenceEmpty, %function
REW_isSequenceEmpty:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrh	r0, [r0, #2]
	@ sp needed
	rsbs	r3, r0, #0
	adcs	r0, r0, r3
	bx	lr
	.size	REW_isSequenceEmpty, .-REW_isSequenceEmpty
	.align	1
	.p2align 2,,3
	.global	REW_createSeqEntry
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_createSeqEntry, %function
REW_createSeqEntry:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrh	r3, [r0, #2]
	cmp	r3, #0
	bne	.L56
	adds	r3, r3, #4
	strh	r3, [r0, #2]
.L56:
	@ sp needed
	adds	r0, r0, r3
	bx	lr
	.size	REW_createSeqEntry, .-REW_createSeqEntry
	.align	1
	.p2align 2,,3
	.global	REW_nextSequence
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_nextSequence, %function
REW_nextSequence:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrh	r3, [r0, #2]
	@ sp needed
	adds	r0, r0, r3
	bx	lr
	.size	REW_nextSequence, .-REW_nextSequence
	.align	1
	.p2align 2,,3
	.global	REW_prevSequence
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_prevSequence, %function
REW_prevSequence:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrh	r3, [r0]
	@ sp needed
	subs	r0, r0, r3
	bx	lr
	.size	REW_prevSequence, .-REW_prevSequence
	.align	1
	.p2align 2,,3
	.global	REW_nextEntry
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_nextEntry, %function
REW_nextEntry:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r3, r0
	movs	r0, #3
	push	{r4, lr}
	movs	r4, r0
	ldrh	r2, [r1, #2]
	ands	r4, r2
	tst	r0, r2
	beq	.L60
	adds	r2, r2, #4
	subs	r2, r2, r4
	lsls	r2, r2, #16
	lsrs	r2, r2, #16
.L60:
	adds	r0, r1, r2
	ldrh	r2, [r3, #2]
	@ sp needed
	adds	r3, r3, r2
	cmp	r0, r3
	sbcs	r3, r3, r3
	ands	r0, r3
	pop	{r4}
	pop	{r1}
	bx	r1
	.size	REW_nextEntry, .-REW_nextEntry
	.align	1
	.p2align 2,,3
	.global	REW_prevEntry
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_prevEntry, %function
REW_prevEntry:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	movs	r4, #3
	movs	r5, r4
	movs	r2, r0
	adds	r3, r0, #4
	ldrh	r0, [r0, #6]
	ands	r5, r0
	tst	r4, r0
	beq	.L67
	adds	r0, r0, #4
	subs	r0, r0, r5
	lsls	r0, r0, #16
	lsrs	r0, r0, #16
.L67:
	ldrh	r4, [r2, #2]
	adds	r0, r3, r0
	adds	r2, r2, r4
	cmp	r0, r2
	sbcs	r4, r4, r4
	ands	r0, r4
	cmp	r3, r1
	beq	.L74
	cmp	r1, r0
	beq	.L75
	movs	r4, #3
	b	.L72
.L76:
	movs	r0, r3
.L72:
	movs	r5, r4
	ldrh	r3, [r0, #2]
	ands	r5, r3
	tst	r4, r3
	beq	.L70
	adds	r3, r3, #4
	subs	r3, r3, r5
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
.L70:
	adds	r3, r0, r3
	cmp	r3, r2
	sbcs	r5, r5, r5
	ands	r3, r5
	cmp	r1, r3
	bne	.L76
.L66:
	@ sp needed
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.L75:
	movs	r0, r3
	b	.L66
.L74:
	movs	r0, #0
	b	.L66
	.size	REW_prevEntry, .-REW_prevEntry
	.align	1
	.p2align 2,,3
	.global	REW_lastEntry
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_lastEntry, %function
REW_lastEntry:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r2, #3
	movs	r1, r0
	push	{r4, lr}
	movs	r4, r2
	ldrh	r3, [r1, #2]
	adds	r0, r0, #4
	adds	r1, r1, r3
	ldrh	r3, [r0, #2]
	ands	r4, r3
	tst	r2, r3
	beq	.L84
.L92:
	adds	r3, r3, #4
	subs	r3, r3, r4
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
.L84:
	adds	r3, r0, r3
	cmp	r3, r1
	bcs	.L83
.L93:
	cmp	r3, #0
	beq	.L83
	movs	r0, r3
	movs	r4, r2
	ldrh	r3, [r0, #2]
	ands	r4, r3
	tst	r2, r3
	bne	.L92
	adds	r3, r0, r3
	cmp	r3, r1
	bcc	.L93
.L83:
	@ sp needed
	pop	{r4}
	pop	{r1}
	bx	r1
	.size	REW_lastEntry, .-REW_lastEntry
	.align	1
	.p2align 2,,3
	.global	REW_addRewindEntrySize
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_addRewindEntrySize, %function
REW_addRewindEntrySize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	lsls	r2, r2, #16
	lsrs	r2, r2, #16
	strh	r2, [r1, #2]
	ldrh	r3, [r0, #2]
	cmp	r3, #0
	bne	.L95
	adds	r3, r3, #4
.L95:
	adds	r3, r2, r3
	movs	r2, #3
	movs	r1, r2
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	ands	r1, r3
	tst	r2, r3
	beq	.L96
	adds	r3, r3, #4
	subs	r3, r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
.L96:
	strh	r3, [r0, #2]
	@ sp needed
	bx	lr
	.size	REW_addRewindEntrySize, .-REW_addRewindEntrySize
	.align	1
	.p2align 2,,3
	.global	REW_isUndoAvailable
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_isUndoAvailable, %function
REW_isUndoAvailable:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrh	r0, [r0]
	@ sp needed
	subs	r3, r0, #1
	sbcs	r0, r0, r3
	bx	lr
	.size	REW_isUndoAvailable, .-REW_isUndoAvailable
	.align	1
	.p2align 2,,3
	.global	REW_isRedoAvailable
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_isRedoAvailable, %function
REW_isRedoAvailable:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L103
	@ sp needed
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	cmp	r0, r3
	sbcs	r0, r0, r0
	rsbs	r0, r0, #0
	bx	lr
.L104:
	.align	2
.L103:
	.word	REW_rewindBuffer
	.size	REW_isRedoAvailable, .-REW_isRedoAvailable
	.align	1
	.p2align 2,,3
	.global	REW_getCoordinateDifference
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_getCoordinateDifference, %function
REW_getCoordinateDifference:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	movs	r4, #0
	strb	r4, [r2]
	strb	r4, [r3]
	cmp	r1, #0
	beq	.L105
	movs	r7, #0
	movs	r6, #0
	b	.L112
.L108:
	cmp	r5, #17
	beq	.L110
	movs	r5, r6
	ands	r5, r7
.L109:
	cmp	r5, #0
	bne	.L105
	adds	r4, r4, #2
	adds	r0, r0, #2
	cmp	r1, r4
	ble	.L105
.L112:
	ldrb	r5, [r0]
	cmp	r5, #16
	bne	.L108
	ldrb	r5, [r0, #1]
	strb	r5, [r2]
	ldrb	r5, [r0]
	cmp	r5, #17
	beq	.L115
	movs	r5, r7
	movs	r6, #1
	b	.L109
.L110:
	ldrb	r5, [r0, #1]
	movs	r7, #1
	strb	r5, [r3]
	movs	r5, r6
	b	.L109
.L115:
	ldrb	r2, [r0, #1]
	strb	r2, [r3]
.L105:
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.size	REW_getCoordinateDifference, .-REW_getCoordinateDifference
	.align	1
	.p2align 2,,3
	.global	REW_getUnitID
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_getUnitID, %function
REW_getUnitID:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r3, r0
	push	{r4, lr}
	cmp	r2, #0
	beq	.L120
	movs	r0, #0
	cmp	r2, #1
	beq	.L121
.L118:
	@ sp needed
	pop	{r4}
	pop	{r1}
	bx	r1
.L120:
	bl	REW_getUnitID.part.0
	b	.L118
.L121:
	movs	r2, #1
	ldr	r1, .L122
	ldrsb	r2, [r3, r2]
	ldr	r1, [r1]
	ldrb	r3, [r3]
	lsls	r2, r2, #2
	ldr	r2, [r2, r1]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	ldrb	r0, [r2, r3]
	b	.L118
.L123:
	.align	2
.L122:
	.word	gBmMapUnit
	.size	REW_getUnitID, .-REW_getUnitID
	.align	1
	.p2align 2,,3
	.global	REW_hideRoofedUnits
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_hideRoofedUnits, %function
REW_hideRoofedUnits:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	movs	r4, #1
	movs	r7, #129
	ldr	r5, .L134
	ldr	r6, .L134+4
.L126:
	movs	r0, r4
	bl	.L6
	cmp	r0, #0
	beq	.L125
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L125
	movs	r3, #17
	movs	r2, #16
	ldrsb	r3, [r0, r3]
	ldr	r1, [r6]
	lsls	r3, r3, #2
	ldrsb	r2, [r0, r2]
	ldr	r3, [r3, r1]
	ldrb	r3, [r3, r2]
	cmp	r3, #34
	bne	.L125
	ldr	r3, [r0, #12]
	orrs	r3, r7
	str	r3, [r0, #12]
.L125:
	adds	r4, r4, #1
	cmp	r4, #192
	bne	.L126
	@ sp needed
	pop	{r3, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L135:
	.align	2
.L134:
	.word	GetUnit
	.word	gBmMapTerrain
	.size	REW_hideRoofedUnits, .-REW_hideRoofedUnits
	.align	1
	.p2align 2,,3
	.global	REW_loadUnit
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_loadUnit, %function
REW_loadUnit:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	movs	r5, r0
	sub	sp, sp, #24
	ldrb	r0, [r1]
	add	r4, sp, #4
	strb	r0, [r4]
	ldrb	r0, [r1, #1]
	strb	r0, [r4, #1]
	movs	r0, #1
	ldrb	r1, [r1, #2]
	ands	r0, r1
	lsrs	r6, r1, #3
	lsls	r1, r1, #29
	lsrs	r1, r1, #30
	lsls	r6, r6, #11
	lsls	r1, r1, #9
	orrs	r1, r6
	strh	r1, [r4, #2]
	movs	r1, #63
	ands	r3, r1
	lsls	r3, r3, #6
	ands	r1, r2
	orrs	r3, r1
	movs	r1, #128
	ldr	r2, [sp, #8]
	lsls	r0, r0, #13
	lsls	r1, r1, #7
	ands	r2, r1
	orrs	r3, r0
	orrs	r3, r2
	str	r3, [sp, #8]
	movs	r3, #0
	movs	r1, r5
	mov	r0, sp
	str	r3, [sp, #12]
	str	r3, [sp, #16]
	str	r3, [sp, #20]
	str	r3, [sp]
	ldr	r2, .L137
	ldr	r3, .L137+4
	bl	.L5
	movs	r1, r4
	movs	r0, r5
	ldr	r3, .L137+8
	bl	.L5
	ldrb	r3, [r4, #3]
	lsls	r3, r3, #29
	lsrs	r3, r3, #30
	lsls	r3, r3, #6
	strb	r3, [r5, #11]
	add	sp, sp, #24
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L138:
	.align	2
.L137:
	.word	83886098
	.word	CpuSet
	.word	UnitInitFromDefinition
	.size	REW_loadUnit, .-REW_loadUnit
	.align	1
	.p2align 2,,3
	.global	REW_undoObstacleCombat
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_undoObstacleCombat, %function
REW_undoObstacleCombat:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L142
	movs	r4, r0
	ldrb	r2, [r0, #6]
	ldrb	r1, [r0, #5]
	ldrb	r0, [r0, #4]
	bl	.L5
	cmp	r0, #0
	beq	.L140
	ldrb	r3, [r0, #3]
	ldrb	r2, [r4, #7]
	subs	r3, r3, r2
	strb	r3, [r0, #3]
.L139:
	@ sp needed
	pop	{r4}
	pop	{r0}
	bx	r0
.L140:
	ldrb	r1, [r4, #5]
	ldrb	r0, [r4, #4]
	ldr	r3, .L142+4
	bl	.L5
	lsls	r0, r0, #16
	movs	r2, #0
	movs	r1, #0
	ldr	r3, .L142+8
	lsrs	r0, r0, #16
	bl	.L5
	ldrb	r3, [r4, #7]
	ldrb	r2, [r4, #6]
	ldrb	r1, [r4, #5]
	ldrb	r0, [r4, #4]
	rsbs	r3, r3, #0
	ldr	r4, .L142+12
	bl	.L144
	b	.L139
.L143:
	.align	2
.L142:
	.word	GetTypedTrapAt
	.word	GetMapChangeIdAt
	.word	UntriggerMapChange
	.word	AddTrap
	.size	REW_undoObstacleCombat, .-REW_undoObstacleCombat
	.align	1
	.p2align 2,,3
	.global	REW_redoObstacleCombat
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_redoObstacleCombat, %function
REW_redoObstacleCombat:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L148
	ldrb	r2, [r0, #6]
	movs	r4, r0
	ldrb	r1, [r0, #5]
	ldrb	r0, [r0, #4]
	bl	.L5
	ldrb	r2, [r4, #7]
	ldrb	r3, [r0, #3]
	adds	r3, r3, r2
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	strb	r3, [r0, #3]
	beq	.L147
.L145:
	@ sp needed
	pop	{r4}
	pop	{r0}
	bx	r0
.L147:
	ldr	r3, .L148+4
	bl	.L5
	ldrb	r1, [r4, #5]
	ldrb	r0, [r4, #4]
	ldr	r3, .L148+8
	bl	.L5
	lsls	r0, r0, #16
	movs	r2, #0
	movs	r1, #0
	ldr	r3, .L148+12
	lsrs	r0, r0, #16
	bl	.L5
	b	.L145
.L149:
	.align	2
.L148:
	.word	GetTypedTrapAt
	.word	RemoveTrap
	.word	GetMapChangeIdAt
	.word	TriggerMapChanges
	.size	REW_redoObstacleCombat, .-REW_redoObstacleCombat
	.align	1
	.p2align 2,,3
	.global	REW_undoCombat
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_undoCombat, %function
REW_undoCombat:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r6, r9
	mov	r7, r10
	mov	r5, r8
	mov	lr, fp
	push	{r5, r6, r7, lr}
	ldrh	r7, [r0, #2]
	subs	r3, r7, #6
	mov	r8, r3
	ldrb	r3, [r0, #1]
	movs	r6, r0
	mov	r9, r3
	sub	sp, sp, #12
	cmp	r3, #255
	bne	.LCB1043
	b	.L184	@long jump
.LCB1043:
	movs	r3, #63
	mov	r2, r9
	bics	r2, r3
	cmp	r2, #192
	bne	.LCB1050
	b	.L185	@long jump
.LCB1050:
	subs	r7, r7, #4
	adds	r5, r0, #4
	lsls	r1, r7, #16
	lsrs	r1, r1, #16
	movs	r0, r5
	bl	REW_getUnitID.part.0
	ldr	r3, .L190
	bl	.L5
	subs	r4, r0, #0
	beq	.L150
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L150
.L183:
	movs	r3, #17
	ldrsb	r3, [r4, r3]
	str	r3, [sp, #4]
	movs	r3, #16
	ldrsb	r3, [r4, r3]
	mov	r10, r3
.L152:
	mov	r3, r8
	lsrs	r3, r3, #31
	add	r3, r3, r8
	asrs	r7, r3, #1
	mov	r3, r8
	movs	r6, #0
	adds	r5, r5, #2
	cmp	r3, #1
	ble	.L166
	ldr	r3, .L190+4
	mov	r8, r3
	b	.L165
.L187:
	cmp	r3, #28
	beq	.L186
.L162:
	ldrb	r2, [r4, r3]
	ldrb	r1, [r5, #1]
	subs	r2, r2, r1
	strb	r2, [r4, r3]
.L163:
	adds	r6, r6, #1
	adds	r5, r5, #2
	cmp	r7, r6
	ble	.L166
.L165:
	ldrb	r3, [r5]
	cmp	r3, #71
	bls	.L187
	cmp	r3, #87
	bls	.L188
	cmp	r3, #88
	bne	.L163
	ldr	r3, .L190+8
	ldrb	r0, [r4, #28]
	bl	.L5
	ldrb	r2, [r5, #1]
	ldrb	r3, [r0, #6]
	adds	r6, r6, #1
	subs	r3, r3, r2
	strb	r3, [r0, #6]
	adds	r5, r5, #2
	cmp	r7, r6
	bgt	.L165
.L166:
	ldr	r1, [sp, #4]
	mov	r0, r10
	lsls	r7, r1, #2
	movs	r1, #0
	ldr	r2, .L190+12
	ldr	r3, [r2]
	ldr	r3, [r7, r3]
	strb	r1, [r3, r0]
	movs	r3, #17
	ldr	r1, [r2]
	movs	r2, #16
	ldrsb	r3, [r4, r3]
	lsls	r3, r3, #2
	ldr	r3, [r3, r1]
	ldrsb	r2, [r4, r2]
	ldrb	r1, [r4, #11]
	strb	r1, [r3, r2]
.L150:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7}
	mov	fp, r7
	mov	r10, r6
	mov	r9, r5
	mov	r8, r4
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L188:
	ldr	r3, [r4]
	ldrb	r0, [r3, #4]
	bl	.L10
	ldrb	r3, [r5]
	subs	r3, r3, #72
	ldrb	r2, [r0, r3]
	ldrb	r1, [r5, #1]
	subs	r2, r2, r1
	strb	r2, [r0, r3]
	b	.L163
.L186:
	movs	r3, #0
	ldrb	r0, [r5, #1]
	rsbs	r0, r0, #0
	lsls	r0, r0, #24
	strb	r3, [r4, #28]
	lsrs	r0, r0, #24
	ldr	r3, .L190+8
	bl	.L5
	mov	fp, r0
	ldr	r3, .L190+16
	bl	.L5
	mov	r2, fp
	ldrb	r3, [r4, #16]
	strb	r3, [r2]
	ldrb	r3, [r4, #17]
	strb	r3, [r2, #1]
	ldrb	r3, [r5]
	b	.L162
.L185:
	mov	r0, r9
	ldr	r3, .L190
	bics	r0, r2
	bl	.L5
	subs	r4, r0, #0
	beq	.L150
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L150
	ldr	r3, .L190+20
	bl	.L5
	mov	r9, r0
	cmp	r0, #0
	ble	.L189
	ldr	r3, .L190+24
	mov	r10, r3
	ldr	r3, .L190+28
	mov	fp, r3
	movs	r3, #50
	mov	ip, r3
	add	ip, ip, r4
	mov	r3, ip
	movs	r7, #0
	str	r3, [sp, #4]
	adds	r6, r6, #4
.L157:
	movs	r1, r7
	movs	r0, r4
	bl	.L8
	subs	r5, r0, #0
	beq	.L158
	ldr	r3, [r4]
	ldrb	r1, [r3, #4]
	bl	.L192
	ldrb	r3, [r6, r7]
	ldr	r2, [sp, #4]
	adds	r5, r5, r0
	adds	r5, r5, #50
	strb	r3, [r5]
	strb	r3, [r2, r7]
.L158:
	adds	r7, r7, #1
	cmp	r9, r7
	bne	.L157
.L159:
	mov	r3, r9
	adds	r5, r6, r3
	ldrsb	r3, [r6, r3]
	strb	r3, [r4, #16]
	mov	r10, r3
	movs	r3, #1
	ldrsb	r3, [r5, r3]
	mov	r2, r9
	str	r3, [sp, #4]
	strb	r3, [r4, #17]
	mov	r3, r8
	subs	r3, r3, r2
	mov	r8, r3
	b	.L152
.L184:
	ldrb	r0, [r0, #6]
	lsls	r0, r0, #29
	lsrs	r0, r0, #30
	ldr	r3, .L190+32
	lsls	r0, r0, #6
	bl	.L5
	movs	r3, #11
	ldrsb	r3, [r0, r3]
	movs	r2, #7
	mov	r8, r3
	movs	r3, #8
	ldrsb	r2, [r6, r2]
	ldrsb	r3, [r6, r3]
	adds	r1, r6, #4
	movs	r4, r0
	bl	REW_loadUnit
	mov	r3, r8
	strb	r3, [r4, #11]
	mov	r3, r9
	strb	r3, [r4, #9]
	movs	r3, #9
	rsbs	r3, r3, #0
	mov	r8, r3
	adds	r5, r6, #7
	add	r8, r8, r7
	b	.L183
.L189:
	adds	r6, r6, #4
	b	.L159
.L191:
	.align	2
.L190:
	.word	GetUnit
	.word	GetPidStats
	.word	GetTrap
	.word	gBmMapUnit
	.word	SetBallistaOccupied
	.word	GetUnitSupporterCount
	.word	GetUnitSupporterUnit
	.word	GetUnitSupporterNum
	.word	GetFreeUnit
	.size	REW_undoCombat, .-REW_undoCombat
	.align	1
	.p2align 2,,3
	.global	REW_redoCombat
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_redoCombat, %function
REW_redoCombat:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r7, r10
	mov	r5, r8
	mov	lr, fp
	mov	r6, r9
	push	{r5, r6, r7, lr}
	movs	r5, r0
	ldrh	r7, [r0, #2]
	ldrb	r0, [r0, #1]
	sub	sp, sp, #12
	subs	r4, r7, #6
	cmp	r0, #255
	bne	.LCB1326
	b	.L222	@long jump
.LCB1326:
	movs	r3, #63
	movs	r2, r0
	bics	r2, r3
	cmp	r2, #192
	bne	.LCB1333
	b	.L223	@long jump
.LCB1333:
	movs	r3, #5
	ldr	r2, .L229
	ldr	r1, [r2]
	mov	r9, r2
	movs	r2, #4
	ldrsb	r3, [r5, r3]
	lsls	r3, r3, #2
	ldr	r3, [r3, r1]
	ldrsb	r2, [r5, r2]
	ldrb	r0, [r3, r2]
	ldr	r3, .L229+4
	bl	.L5
	subs	r6, r0, #0
	beq	.L193
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L193
	adds	r3, r5, #4
	mov	r8, r3
.L196:
	movs	r3, #16
	ldrsb	r3, [r6, r3]
	str	r3, [sp, #4]
	movs	r3, #17
	lsrs	r7, r4, #31
	ldrsb	r3, [r6, r3]
	adds	r7, r7, r4
	mov	r10, r3
	asrs	r7, r7, #1
	cmp	r4, #1
	bgt	.LCB1366
	b	.L208	@long jump
.LCB1366:
	mov	r4, r8
	ldr	r3, .L229+8
	movs	r5, #0
	mov	fp, r3
	adds	r4, r4, #2
	b	.L207
.L226:
	cmp	r3, #28
	beq	.L224
.L203:
	ldrb	r2, [r6, r3]
	ldrb	r1, [r4, #1]
	adds	r2, r2, r1
	strb	r2, [r6, r3]
.L205:
	adds	r5, r5, #1
	adds	r4, r4, #2
	cmp	r7, r5
	ble	.L225
.L207:
	ldrb	r3, [r4]
	cmp	r3, #71
	bls	.L226
	cmp	r3, #87
	bls	.L227
	cmp	r3, #88
	bne	.L205
	ldr	r3, .L229+12
	ldrb	r0, [r6, #28]
	bl	.L5
	ldrb	r2, [r4, #1]
	ldrb	r3, [r0, #6]
	adds	r5, r5, #1
	adds	r3, r3, r2
	strb	r3, [r0, #6]
	adds	r4, r4, #2
	cmp	r7, r5
	bgt	.L207
.L225:
	movs	r3, #17
	movs	r1, #16
	ldrsb	r3, [r6, r3]
	ldrsb	r1, [r6, r1]
.L201:
	mov	r2, r9
	ldr	r2, [r2]
	lsls	r3, r3, #2
	ldr	r3, [r3, r2]
	ldrb	r2, [r6, #11]
	strb	r2, [r3, r1]
	mov	r3, r9
	ldr	r2, [r3]
	mov	r3, r10
	lsls	r3, r3, #2
	ldr	r3, [r3, r2]
	movs	r2, #0
	ldr	r1, [sp, #4]
	strb	r2, [r3, r1]
.L193:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7}
	mov	fp, r7
	mov	r10, r6
	mov	r9, r5
	mov	r8, r4
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L227:
	ldr	r3, [r6]
	ldrb	r0, [r3, #4]
	bl	.L192
	ldrb	r3, [r4]
	subs	r3, r3, #72
	ldrb	r2, [r0, r3]
	ldrb	r1, [r4, #1]
	adds	r2, r2, r1
	strb	r2, [r0, r3]
	b	.L205
.L224:
	ldr	r3, .L229+12
	ldrb	r0, [r6, #28]
	bl	.L5
	ldr	r3, .L229+16
	mov	r8, r0
	movs	r0, r6
	bl	.L5
	cmp	r0, #0
	beq	.L228
.L204:
	mov	r2, r8
	ldrb	r3, [r6, #16]
	strb	r3, [r2]
	ldrb	r3, [r6, #17]
	strb	r3, [r2, #1]
	ldrb	r3, [r4]
	b	.L203
.L223:
	ldr	r3, .L229+4
	bics	r0, r2
	bl	.L5
	subs	r6, r0, #0
	beq	.L193
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L193
	ldr	r3, .L229+20
	bl	.L5
	adds	r5, r5, #4
	ldr	r3, .L229+24
	movs	r0, r6
	bl	.L5
	mov	r8, r5
	ldr	r3, .L229
	add	r8, r8, r0
	mov	r9, r3
	subs	r4, r4, r0
	b	.L196
.L222:
	adds	r3, r5, #7
	mov	r8, r3
	movs	r3, #8
	ldr	r2, .L229
	ldr	r1, [r2]
	mov	r9, r2
	movs	r2, #7
	ldrsb	r3, [r5, r3]
	lsls	r3, r3, #2
	ldr	r3, [r3, r1]
	ldrsb	r2, [r5, r2]
	ldrb	r0, [r3, r2]
	ldr	r3, .L229+4
	bl	.L5
	subs	r6, r0, #0
	beq	.L195
	movs	r3, #0
	str	r3, [r0]
.L195:
	movs	r4, r7
	subs	r4, r4, #9
	b	.L196
.L228:
	mov	r0, r8
	ldr	r3, .L229+28
	bl	.L5
	b	.L204
.L208:
	ldr	r1, [sp, #4]
	b	.L201
.L230:
	.align	2
.L229:
	.word	gBmMapUnit
	.word	GetUnit
	.word	GetPidStats
	.word	GetTrap
	.word	GetUnitCurrentHp
	.word	InitUnitsupports
	.word	GetUnitSupporterCount
	.word	ClearBallistaOccupied
	.size	REW_redoCombat, .-REW_redoCombat
	.align	1
	.p2align 2,,3
	.global	REW_applyBWLChanges
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_applyBWLChanges, %function
REW_applyBWLChanges:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	lr, r9
	mov	r7, r8
	push	{r7, lr}
	ldr	r3, [r1]
	sub	sp, sp, #20
	movs	r5, r0
	ldrb	r0, [r3, #4]
	ldr	r3, .L281
	movs	r6, r1
	bl	.L5
	mov	r4, sp
	cmp	r0, #0
	beq	.L233
	movs	r2, #8
	mov	r1, sp
	ldr	r3, .L281+4
	bl	.L5
	movs	r2, #11
	ldr	r7, .L281+8
	ldrsb	r2, [r7, r2]
	cmp	r2, #0
	beq	.L233
	movs	r3, #110
	ldrsb	r1, [r6, r3]
	cmp	r1, #0
	beq	.L234
	ldr	r3, [sp, #8]
	lsls	r3, r3, #8
	lsrs	r3, r3, #20
	adds	r3, r3, r1
	movs	r1, #250
	lsls	r1, r1, #4
	cmp	r3, r1
	bgt	.L275
.L235:
	ldr	r1, [r4, #8]
	ldr	r0, .L281+12
	lsls	r3, r3, #20
	lsrs	r3, r3, #8
	ands	r1, r0
	orrs	r3, r1
	str	r3, [r4, #8]
.L234:
	movs	r1, #11
	movs	r3, #192
	ldrsb	r1, [r6, r1]
	tst	r3, r1
	beq	.L236
	ldr	r3, .L281+16
	mov	r8, r3
	ldrb	r3, [r3, #11]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	cmp	r3, r1
	beq	.L237
	cmp	r2, r1
	bne	.LCB1625
	b	.L274	@long jump
.LCB1625:
.L233:
	movs	r3, r5
	ldmia	r4!, {r0, r1, r2}
	stmia	r3!, {r0, r1, r2}
	movs	r0, r5
	ldr	r2, [r4]
	str	r2, [r3]
	add	sp, sp, #20
	@ sp needed
	pop	{r6, r7}
	mov	r9, r7
	mov	r8, r6
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L236:
	movs	r0, #250
	ldrh	r3, [r4, #12]
	lsls	r3, r3, #18
	lsrs	r3, r3, #20
	adds	r3, r3, #1
	lsls	r0, r0, #4
	cmp	r3, r0
	bgt	.L276
.L240:
	lsls	r3, r3, #20
	lsrs	r3, r3, #18
	mov	r8, r3
	ldrh	r0, [r4, #12]
	ldr	r3, .L281+20
	ands	r0, r3
	mov	r3, r8
	orrs	r3, r0
	strh	r3, [r4, #12]
	ldr	r3, .L281+16
	mov	r8, r3
	ldrb	r3, [r3, #11]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	cmp	r3, r1
	beq	.L237
	cmp	r2, r1
	beq	.L274
.L248:
	mov	r3, r8
	ldrb	r3, [r3, #11]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	cmp	r3, r1
	bne	.LCB1683
	b	.L277	@long jump
.LCB1683:
.L249:
	movs	r3, #11
	ldrsb	r3, [r7, r3]
	cmp	r3, r1
	bne	.L233
	mov	r0, r8
	ldr	r3, .L281+24
	bl	.L5
	cmp	r0, #0
	bne	.L233
.L252:
	movs	r1, #3
	movs	r3, r1
	ldrb	r2, [r4, #12]
	ldrb	r0, [r4, #11]
	ands	r3, r2
	lsls	r3, r3, #8
	orrs	r3, r0
	movs	r0, #250
	lsls	r0, r0, #2
	cmp	r3, r0
	bcs	.L233
	adds	r3, r3, #1
	strb	r3, [r4, #11]
	lsrs	r3, r3, #8
	ands	r3, r1
	bics	r2, r1
	orrs	r2, r3
	strb	r2, [r4, #12]
	b	.L233
.L275:
	movs	r3, r1
	b	.L235
.L276:
	movs	r3, r0
	b	.L240
.L237:
	ldr	r3, .L281+24
	mov	r0, r8
	mov	r9, r3
	bl	.L5
	cmp	r0, #0
	bne	.L278
.L242:
	ldr	r3, .L281+28
	bl	.L5
	cmp	r0, #2
	beq	.L279
	movs	r2, #63
	ldr	r3, .L281+32
	ldrb	r1, [r3, #14]
	ands	r2, r1
	movs	r1, #0
.L245:
	ldrh	r3, [r3, #16]
	lsls	r3, r3, #22
	lsls	r2, r2, #8
	lsrs	r3, r3, #8
	orrs	r3, r2
	ldr	r0, .L281+36
	ldr	r2, [sp, #4]
	ands	r2, r0
	orrs	r3, r2
	str	r3, [sp, #4]
	movs	r3, #127
	ldrb	r2, [r4, #14]
	lsls	r1, r1, #7
	ands	r3, r2
	orrs	r3, r1
	strb	r3, [r4, #14]
	mov	r3, r8
	movs	r1, #11
	ldrb	r3, [r3, #11]
	ldrsb	r1, [r6, r1]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	cmp	r3, r1
	beq	.L280
	mov	r3, r8
	ldr	r3, [r3]
	ldrb	r0, [r3, #4]
.L247:
	movs	r2, #3
	ands	r2, r0
	lsls	r3, r2, #6
	mov	r9, r3
	ldrb	r3, [r4, #13]
	mov	ip, r3
	movs	r3, #63
	mov	r2, ip
	ands	r3, r2
	mov	r2, r9
	orrs	r3, r2
	movs	r2, #127
	strb	r3, [r4, #13]
	ldrb	r3, [r4, #14]
	lsrs	r0, r0, #2
	bics	r3, r2
	orrs	r3, r0
	strb	r3, [r4, #14]
	ldrb	r3, [r4, #9]
	subs	r2, r2, #112
	bics	r3, r2
	movs	r2, #2
	orrs	r3, r2
	strb	r3, [r4, #9]
.L243:
	movs	r3, #192
	tst	r3, r1
	beq	.LCB1830
	b	.L233	@long jump
.LCB1830:
	b	.L248
.L274:
	ldr	r3, .L281+24
	mov	r9, r3
.L238:
	movs	r0, r7
	bl	.L9
	cmp	r0, #0
	beq	.L242
	movs	r1, #11
	ldrsb	r1, [r6, r1]
	b	.L243
.L278:
	movs	r1, #11
	movs	r3, #11
	ldrsb	r1, [r6, r1]
	ldrsb	r3, [r7, r3]
	cmp	r3, r1
	bne	.L243
	b	.L238
.L277:
	movs	r0, r7
	ldr	r3, .L281+24
	bl	.L5
	cmp	r0, #0
	bne	.LCB1865
	b	.L252	@long jump
.LCB1865:
	movs	r1, #11
	ldrsb	r1, [r6, r1]
	b	.L249
.L280:
	ldr	r3, [r7]
	ldrb	r0, [r3, #4]
	b	.L247
.L279:
	movs	r2, #63
	ldr	r3, .L281+40
	ldrb	r3, [r3, #17]
	movs	r1, #1
	ands	r2, r3
	ldr	r3, .L281+32
	b	.L245
.L282:
	.align	2
.L281:
	.word	GetPidStats
	.word	CpuSet
	.word	gBattleTarget
	.word	-16773121
	.word	gBattleActor
	.word	-16381
	.word	GetUnitCurrentHp
	.word	GetBattleMapKind
	.word	gPlaySt
	.word	-16776961
	.word	gGMData
	.size	REW_applyBWLChanges, .-REW_applyBWLChanges
	.align	1
	.p2align 2,,3
	.global	REW_storeCombatData
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_storeCombatData, %function
REW_storeCombatData:
	@ Function supports interworking.
	@ args = 12, pretend = 0, frame = 88
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	lr, r10
	mov	r7, r9
	mov	r6, r8
	mov	r8, r1
	push	{r6, r7, lr}
	sub	sp, sp, #88
	movs	r4, r3
	add	r3, sp, #120
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	ldr	r6, [sp, #128]
	mov	r9, r3
	ldrb	r3, [r0, #11]
	add	r7, sp, #16
	movs	r5, r0
	movs	r1, r7
	strb	r3, [r6, #1]
	mov	r10, r2
	ldr	r3, .L329
	movs	r2, #36
	mov	r0, r8
	bl	.L5
	mov	r3, r8
	ldrb	r1, [r5, #26]
	ldrb	r3, [r3, #26]
	ldr	r2, [r5, #4]
	subs	r3, r3, r1
	ldrb	r1, [r2, #17]
	subs	r3, r3, r1
	ldr	r1, [r5]
	ldrb	r1, [r1, #19]
	subs	r3, r3, r1
	strb	r3, [r7, #26]
	mov	r3, r8
	ldrb	r1, [r5, #29]
	ldrb	r3, [r3, #29]
	ldrb	r2, [r2, #18]
	subs	r3, r3, r1
	subs	r3, r3, r2
	strb	r3, [r7, #29]
	mov	r2, r8
	movs	r3, #82
	ldrsb	r3, [r2, r3]
	cmp	r3, #0
	beq	.L284
	movs	r3, #81
	mov	r1, r8
	ldrb	r3, [r2, r3]
	movs	r2, #72
	adds	r3, r3, #12
	ldrh	r2, [r1, r2]
	lsls	r3, r3, #1
	adds	r3, r7, r3
	strh	r2, [r3, #6]
.L284:
	movs	r3, #111
	mov	r2, r8
	ldrsb	r1, [r2, r3]
	cmp	r1, #0
	blt	.L285
	movs	r0, r7
	ldr	r3, .L329+4
	bl	.L5
.L285:
	mov	r1, r8
	movs	r2, #115
	ldrb	r3, [r7, #18]
	ldrb	r2, [r1, r2]
	adds	r3, r3, r2
	ldr	r1, [sp, #36]
	strb	r3, [r7, #18]
	mov	r3, r8
	movs	r0, r1
	ldr	r3, [r3, #116]
	ldr	r2, .L329+8
	ands	r0, r2
	ands	r2, r3
	eors	r3, r1
	ldr	r1, .L329+12
	adds	r2, r0, r2
	ands	r3, r1
	eors	r3, r2
	mov	r1, r8
	movs	r2, #120
	str	r3, [sp, #36]
	ldrb	r2, [r1, r2]
	ldrb	r3, [r7, #24]
	adds	r3, r3, r2
	movs	r2, #121
	strb	r3, [r7, #24]
	ldrb	r3, [r7, #25]
	ldrb	r2, [r1, r2]
	adds	r3, r3, r2
	movs	r0, r7
	strb	r3, [r7, #25]
	ldr	r3, .L329+16
	bl	.L5
	mov	r0, r8
	ldr	r3, .L329+20
	bl	.L5
	cmp	r0, #0
	ble	.L286
	movs	r3, #80
	mov	r2, r8
	ldrb	r3, [r2, r3]
	adds	r3, r7, r3
	adds	r3, r3, #40
	strb	r0, [r3]
.L286:
	ldr	r3, .L329+24
	movs	r0, r7
	bl	.L5
	mov	r2, r10
	ldr	r3, [r7, #12]
	orrs	r3, r2
	str	r3, [r7, #12]
	mov	r3, r9
	strb	r4, [r6, #4]
	strb	r3, [r6, #5]
	ldrb	r3, [r7, #16]
	subs	r3, r3, r4
	lsls	r3, r3, #24
	movs	r4, #0
	lsrs	r2, r3, #24
	cmp	r3, #0
	beq	.L287
	movs	r3, #16
	strb	r2, [r6, #7]
	strb	r3, [r6, #6]
	adds	r4, r4, #1
.L287:
	mov	r2, r9
	ldrb	r3, [r7, #17]
	subs	r3, r3, r2
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	cmp	r3, #0
	beq	.L288
	movs	r1, #17
	lsls	r3, r4, #1
	adds	r3, r6, r3
	strb	r1, [r3, #6]
	strb	r2, [r3, #7]
	adds	r4, r4, #1
.L288:
	movs	r1, r7
	movs	r2, #0
.L290:
	ldrb	r0, [r5, r2]
	ldrb	r3, [r1]
	subs	r3, r3, r0
	lsls	r3, r3, #24
	lsrs	r0, r3, #24
	cmp	r3, #0
	beq	.L289
	lsls	r3, r4, #1
	adds	r3, r6, r3
	strb	r2, [r3, #6]
	strb	r0, [r3, #7]
	adds	r4, r4, #1
.L289:
	adds	r2, r2, #1
	adds	r1, r1, #1
	cmp	r2, #72
	bne	.L290
	mov	r3, r8
	ldr	r3, [r3]
	ldrb	r0, [r3, #4]
	ldr	r3, .L329+28
	bl	.L5
	mov	r9, r0
	cmp	r0, #0
	beq	.L291
	mov	r1, r8
	mov	r0, sp
	bl	REW_applyBWLChanges
	mov	r1, r9
	mov	r3, sp
	subs	r1, r1, #1
	movs	r2, #1
	mov	r9, r1
	subs	r5, r3, #1
.L293:
	mov	r1, r9
	ldrb	r3, [r5, r2]
	ldrb	r0, [r1, r2]
	subs	r3, r3, r0
	lsls	r3, r3, #24
	lsrs	r0, r3, #24
	cmp	r3, #0
	beq	.L292
	movs	r1, #71
	mov	ip, r1
	add	ip, ip, r2
	mov	r1, ip
	lsls	r3, r4, #1
	adds	r3, r6, r3
	strb	r1, [r3, #6]
	strb	r0, [r3, #7]
	adds	r4, r4, #1
.L292:
	adds	r2, r2, #1
	cmp	r2, #17
	bne	.L293
.L291:
	ldrb	r3, [r7, #28]
	cmp	r3, #0
	beq	.L296
	movs	r3, #72
	mov	r2, r8
	ldrh	r0, [r2, r3]
	cmp	r0, #0
	bne	.L328
.L296:
	adds	r4, r4, #3
	lsls	r3, r4, #17
	lsrs	r3, r3, #16
	strh	r3, [r6, #2]
	ldr	r2, [sp, #124]
	ldrh	r2, [r2, #2]
	cmp	r2, #0
	bne	.L297
	adds	r2, r2, #4
.L297:
	adds	r3, r3, r2
	movs	r2, #3
	movs	r1, r2
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	ands	r1, r3
	tst	r2, r3
	beq	.L298
	adds	r3, r3, #4
	subs	r3, r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
.L298:
	ldr	r2, [sp, #124]
	strh	r3, [r2, #2]
	add	sp, sp, #88
	@ sp needed
	pop	{r5, r6, r7}
	mov	r10, r7
	mov	r9, r6
	mov	r8, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L328:
	ldr	r3, .L329+32
	bl	.L5
	ldr	r3, .L329+36
	movs	r5, r0
	ldrb	r0, [r7, #28]
	bl	.L5
	ldrb	r3, [r0, #6]
	subs	r3, r5, r3
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	cmp	r3, #0
	beq	.L296
	movs	r1, #88
	lsls	r3, r4, #1
	adds	r3, r6, r3
	strb	r1, [r3, #6]
	strb	r2, [r3, #7]
	adds	r4, r4, #1
	b	.L296
.L330:
	.align	2
.L329:
	.word	CpuSet
	.word	SetUnitStatus
	.word	2139062143
	.word	-2139062144
	.word	UnitCheckStatCaps
	.word	GetBattleUnitUpdatedWeaponExp
	.word	UnitRemoveInvalidItems
	.word	GetPidStats
	.word	GetItemUses
	.word	GetTrap
	.size	REW_storeCombatData, .-REW_storeCombatData
	.align	1
	.p2align 2,,3
	.global	REW_storeCombatDataDead
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_storeCombatDataDead, %function
REW_storeCombatDataDead:
	@ Function supports interworking.
	@ args = 12, pretend = 0, frame = 104
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r5, r8
	mov	lr, fp
	mov	r6, r9
	mov	r7, r10
	push	{r5, r6, r7, lr}
	sub	sp, sp, #108
	str	r2, [sp, #8]
	movs	r2, #192
	mov	fp, r3
	add	r3, sp, #144
	ldrb	r3, [r3]
	ldr	r5, [sp, #152]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	str	r3, [sp, #4]
	adds	r3, r5, #4
	mov	r8, r3
	movs	r3, #11
	movs	r6, r2
	str	r1, [sp]
	ldr	r1, [r0, #4]
	ldrsb	r3, [r0, r3]
	movs	r4, r0
	ldrb	r1, [r1, #4]
	ands	r6, r3
	tst	r2, r3
	bne	.L332
	cmp	r1, #81
	beq	.LCB2251
	b	.L376	@long jump
.LCB2251:
.L332:
	mov	r2, r8
	movs	r7, #255
	mov	r0, fp
	strb	r7, [r5, #1]
	adds	r6, r2, #3
	strb	r0, [r2, #3]
	ldr	r2, [sp, #4]
	strb	r2, [r6, #1]
	ldr	r2, [r4]
	ldrb	r2, [r2, #4]
	strb	r2, [r5, #4]
	movs	r2, #6
	asrs	r3, r3, #5
	ands	r3, r2
	ldr	r2, [r4, #12]
	strb	r1, [r5, #5]
	lsls	r2, r2, #19
	lsrs	r2, r2, #31
	orrs	r3, r2
	ldrb	r2, [r4, #8]
	lsls	r2, r2, #3
	orrs	r3, r2
	add	r1, sp, #32
	mov	r9, r1
	strb	r3, [r5, #6]
	movs	r2, #16
	movs	r3, #17
	mov	r1, r8
	ldrsb	r3, [r4, r3]
	ldrsb	r2, [r4, r2]
	mov	r0, r9
	bl	REW_loadUnit
	mov	r3, r9
	mov	r2, r9
	strb	r7, [r3, #9]
	ldrb	r3, [r4, #11]
	strb	r3, [r2, #11]
	ldr	r3, [r4, #60]
	str	r3, [r2, #60]
	movs	r3, #7
	mov	r8, r3
.L334:
	mov	r1, r9
	movs	r7, #0
	movs	r2, #0
.L338:
	ldrb	r0, [r4, r2]
	ldrb	r3, [r1]
	subs	r3, r3, r0
	lsls	r3, r3, #24
	lsrs	r0, r3, #24
	cmp	r3, #0
	beq	.L337
	lsls	r3, r7, #1
	adds	r3, r6, r3
	strb	r2, [r3, #2]
	strb	r0, [r3, #3]
	adds	r7, r7, #1
.L337:
	adds	r2, r2, #1
	adds	r1, r1, #1
	cmp	r2, #72
	bne	.L338
	ldr	r3, [r4]
	ldrb	r0, [r3, #4]
	ldr	r3, .L378
	bl	.L5
	mov	r9, r0
	cmp	r0, #0
	beq	.L339
	ldr	r1, [sp]
	add	r0, sp, #16
	bl	REW_applyBWLChanges
	mov	r0, r9
	movs	r2, #1
	mov	ip, r4
	mov	r9, r5
	add	r3, sp, #16
	subs	r1, r3, #1
	subs	r0, r0, #1
.L341:
	ldrb	r4, [r0, r2]
	ldrb	r3, [r1, r2]
	subs	r3, r3, r4
	lsls	r3, r3, #24
	lsrs	r4, r3, #24
	cmp	r3, #0
	beq	.L340
	movs	r5, r2
	lsls	r3, r7, #1
	adds	r3, r6, r3
	adds	r5, r5, #71
	strb	r5, [r3, #2]
	strb	r4, [r3, #3]
	adds	r7, r7, #1
.L340:
	adds	r2, r2, #1
	cmp	r2, #17
	bne	.L341
	mov	r4, ip
	mov	r5, r9
.L339:
	ldrb	r3, [r4, #28]
	cmp	r3, #0
	beq	.L344
	movs	r3, #72
	ldr	r2, [sp]
	ldrh	r0, [r2, r3]
	cmp	r0, #0
	bne	.L377
.L344:
	lsls	r3, r7, #1
	add	r3, r3, r8
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r5, #2]
	ldr	r2, [sp, #148]
	ldrh	r2, [r2, #2]
	cmp	r2, #0
	bne	.L345
	adds	r2, r2, #4
.L345:
	adds	r3, r3, r2
	movs	r2, #3
	movs	r1, r2
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	ands	r1, r3
	tst	r2, r3
	beq	.L346
	adds	r3, r3, #4
	subs	r3, r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
.L346:
	ldr	r2, [sp, #148]
	strh	r3, [r2, #2]
	add	sp, sp, #108
	@ sp needed
	pop	{r4, r5, r6, r7}
	mov	fp, r7
	mov	r10, r6
	mov	r9, r5
	mov	r8, r4
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L376:
	subs	r2, r2, #1
	subs	r2, r2, #255
	orrs	r3, r2
	strb	r3, [r5, #1]
	ldr	r3, .L378+4
	bl	.L5
	subs	r7, r0, #0
	ble	.L336
	ldr	r3, .L378+8
	mov	r9, r3
	ldr	r3, .L378+12
	mov	r10, r3
	mov	r3, fp
	mov	fp, r5
	movs	r5, r4
	movs	r4, r6
	str	r3, [sp, #12]
.L333:
	movs	r1, r4
	movs	r0, r5
	bl	.L9
	subs	r6, r0, #0
	beq	.L335
	ldr	r3, [r5]
	ldrb	r1, [r3, #4]
	bl	.L8
	mov	r2, r8
	adds	r6, r6, r0
	adds	r6, r6, #50
	ldrb	r3, [r6]
	strb	r3, [r2, r4]
.L335:
	adds	r4, r4, #1
	cmp	r7, r4
	bne	.L333
	ldr	r3, [sp, #12]
	movs	r4, r5
	mov	r5, fp
	mov	fp, r3
.L336:
	mov	r3, r8
	adds	r6, r3, r7
	mov	r3, fp
	strb	r3, [r6]
	ldr	r3, [sp, #4]
	strb	r3, [r6, #1]
	add	r3, sp, #32
	mov	r9, r3
	movs	r1, r3
	ldr	r2, .L378+16
	ldr	r3, .L378+20
	movs	r0, r4
	bl	.L5
	mov	r3, r9
	ldr	r2, [sp, #8]
	ldr	r3, [r3, #12]
	orrs	r2, r3
	movs	r3, r2
	ldr	r2, .L378+24
	ands	r3, r2
	mov	r2, r9
	str	r3, [r2, #12]
	movs	r3, #0
	strb	r3, [r2, #28]
	adds	r3, r7, #6
	mov	r8, r3
	b	.L334
.L377:
	ldr	r3, .L378+28
	bl	.L5
	mov	r9, r0
	ldr	r3, .L378+32
	ldrb	r0, [r4, #28]
	bl	.L5
	mov	r2, r9
	ldrb	r3, [r0, #6]
	subs	r3, r2, r3
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	cmp	r3, #0
	bne	.LCB2508
	b	.L344	@long jump
.LCB2508:
	lsls	r3, r7, #1
	adds	r6, r6, r3
	movs	r3, #88
	strb	r2, [r6, #3]
	strb	r3, [r6, #2]
	adds	r7, r7, #1
	b	.L344
.L379:
	.align	2
.L378:
	.word	GetPidStats
	.word	GetUnitSupporterCount
	.word	GetUnitSupporterUnit
	.word	GetUnitSupporterNum
	.word	67108882
	.word	CpuSet
	.word	-2049
	.word	GetItemUses
	.word	GetTrap
	.size	REW_storeCombatDataDead, .-REW_storeCombatDataDead
	.align	1
	.p2align 2,,3
	.global	REW_actionCombat
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_actionCombat, %function
REW_actionCombat:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	lr, r10
	mov	r6, r8
	mov	r7, r9
	movs	r0, #11
	push	{r6, r7, lr}
	ldr	r3, .L394
	ldr	r5, [r3]
	ldr	r3, .L394+4
	ldr	r6, .L394+8
	ldrsb	r0, [r3, r0]
	sub	sp, sp, #16
	mov	r8, r3
	bl	.L11
	movs	r4, r0
	movs	r0, #11
	ldr	r7, .L394+12
	ldrsb	r0, [r7, r0]
	bl	.L11
	ldrh	r2, [r5, #2]
	movs	r6, r0
	cmp	r2, #0
	bne	.L382
	movs	r3, #4
	strh	r3, [r5, #2]
	adds	r2, r2, #4
.L382:
	movs	r3, #2
	adds	r2, r5, r2
	strb	r3, [r2]
	mov	r0, r8
	movs	r3, #0
	ldr	r1, .L394+16
	ldrb	r0, [r0, #19]
	ldrsb	r3, [r1, r3]
	ldrb	r1, [r1, #2]
	lsls	r0, r0, #24
	lsls	r1, r1, #24
	mov	r10, r3
	asrs	r1, r1, #24
	asrs	r0, r0, #24
	bne	.L383
	adds	r0, r0, #1
	mov	r9, r0
	ldr	r3, [r4, #12]
	bics	r3, r0
	str	r3, [r4, #12]
	movs	r0, r4
	mov	r3, r10
	str	r2, [sp, #8]
	str	r1, [sp]
	movs	r2, #7
	mov	r1, r8
	str	r5, [sp, #4]
	bl	REW_storeCombatDataDead
	mov	r2, r9
	ldr	r3, [r4, #12]
	orrs	r3, r2
	str	r3, [r4, #12]
.L384:
	ldrh	r4, [r5, #2]
	cmp	r4, #0
	bne	.L386
	movs	r3, #4
	strh	r3, [r5, #2]
	adds	r4, r4, #4
.L386:
	adds	r4, r5, r4
	cmp	r6, #0
	beq	.L387
	movs	r3, #2
	movs	r1, #17
	movs	r2, #19
	strb	r3, [r4]
	movs	r3, #16
	ldrsb	r1, [r6, r1]
	ldrsb	r2, [r7, r2]
	ldrsb	r3, [r6, r3]
	str	r4, [sp, #8]
	str	r5, [sp, #4]
	str	r1, [sp]
	cmp	r2, #0
	beq	.L392
	movs	r2, #0
	movs	r1, r7
	movs	r0, r6
	bl	REW_storeCombatData
.L380:
	add	sp, sp, #16
	@ sp needed
	pop	{r5, r6, r7}
	mov	r10, r7
	mov	r9, r6
	mov	r8, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L383:
	str	r2, [sp, #8]
	str	r1, [sp]
	movs	r2, #3
	mov	r1, r8
	movs	r0, r4
	str	r5, [sp, #4]
	bl	REW_storeCombatData
	b	.L384
.L392:
	movs	r1, r7
	movs	r0, r6
	adds	r2, r2, #5
	bl	REW_storeCombatDataDead
	b	.L380
.L387:
	movs	r1, #17
	movs	r0, #16
	ldrsb	r1, [r7, r1]
	ldr	r3, .L394+20
	ldrsb	r0, [r7, r0]
	bl	.L5
	movs	r3, #65
	strh	r3, [r4]
	movs	r3, #17
	ldr	r2, .L394+24
	ldr	r1, [r2]
	movs	r2, #16
	ldrsb	r3, [r7, r3]
	lsls	r3, r3, #2
	ldrsb	r2, [r7, r2]
	ldr	r3, [r3, r1]
	ldrb	r3, [r3, r2]
	subs	r3, r3, #51
	rsbs	r2, r3, #0
	adcs	r3, r3, r2
	strb	r3, [r4, #1]
	ldrb	r3, [r0]
	strb	r3, [r4, #4]
	ldrb	r3, [r0, #1]
	strb	r3, [r4, #5]
	ldrb	r3, [r0, #2]
	strb	r3, [r4, #6]
	ldrb	r3, [r7, #19]
	ldrb	r2, [r0, #3]
	subs	r3, r3, r2
	strb	r3, [r4, #7]
	movs	r3, #8
	strh	r3, [r4, #2]
	ldrh	r3, [r5, #2]
	cmp	r3, #0
	bne	.L390
	adds	r3, r3, #12
	strh	r3, [r5, #2]
	b	.L380
.L390:
	movs	r1, #3
	movs	r2, r3
	movs	r0, r1
	adds	r2, r2, #8
	lsls	r2, r2, #16
	lsrs	r2, r2, #16
	ands	r0, r2
	tst	r1, r2
	beq	.L393
	adds	r3, r3, #12
	subs	r3, r3, r0
	strh	r3, [r5, #2]
	b	.L380
.L393:
	strh	r2, [r5, #2]
	b	.L380
.L395:
	.align	2
.L394:
	.word	REW_curSequence
	.word	gBattleActor
	.word	GetUnit
	.word	gBattleTarget
	.word	gActiveUnitMoveOrigin
	.word	GetTrapAt
	.word	gBmMapTerrain
	.size	REW_actionCombat, .-REW_actionCombat
	.align	1
	.p2align 2,,3
	.global	REW_undoPhaseChange
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_undoPhaseChange, %function
REW_undoPhaseChange:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	lr, r8
	push	{lr}
	ldrb	r3, [r0, #1]
	ldr	r2, .L412
	lsls	r1, r3, #6
	movs	r5, r0
	strb	r1, [r2, #15]
	lsls	r3, r3, #27
	bpl	.L397
	ldrh	r3, [r2, #16]
	subs	r3, r3, #1
	strh	r3, [r2, #16]
.L397:
	ldrh	r3, [r5, #2]
	cmp	r3, #4
	bls	.L396
	movs	r3, #2
	movs	r4, #0
	mov	r8, r3
	ldr	r6, .L412+4
	adds	r7, r5, #4
.L400:
	ldrb	r0, [r7, r4]
	bl	.L11
	cmp	r0, #0
	beq	.L399
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L399
	mov	r2, r8
	ldr	r3, [r0, #12]
	orrs	r3, r2
	str	r3, [r0, #12]
.L399:
	ldrh	r3, [r5, #2]
	adds	r4, r4, #1
	subs	r3, r3, #4
	cmp	r3, r4
	bgt	.L400
.L396:
	@ sp needed
	pop	{r7}
	mov	r8, r7
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L413:
	.align	2
.L412:
	.word	gPlaySt
	.word	GetUnit
	.size	REW_undoPhaseChange, .-REW_undoPhaseChange
	.align	1
	.p2align 2,,3
	.global	REW_redoPhaseChange
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_redoPhaseChange, %function
REW_redoPhaseChange:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	lr, r8
	push	{lr}
	movs	r5, r0
	ldrb	r3, [r0, #1]
	movs	r0, #63
	ldr	r1, .L430
	lsls	r2, r3, #4
	bics	r2, r0
	strb	r2, [r1, #15]
	lsls	r3, r3, #27
	bpl	.L415
	ldrh	r3, [r1, #16]
	adds	r3, r3, #1
	strh	r3, [r1, #16]
.L415:
	ldrh	r3, [r5, #2]
	cmp	r3, #4
	bls	.L414
	movs	r3, #66
	movs	r4, #0
	mov	r8, r3
	ldr	r6, .L430+4
	adds	r7, r5, #4
.L418:
	ldrb	r0, [r7, r4]
	bl	.L11
	cmp	r0, #0
	beq	.L417
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L417
	mov	r2, r8
	ldr	r3, [r0, #12]
	bics	r3, r2
	str	r3, [r0, #12]
.L417:
	ldrh	r3, [r5, #2]
	adds	r4, r4, #1
	subs	r3, r3, #4
	cmp	r3, r4
	bgt	.L418
.L414:
	@ sp needed
	pop	{r7}
	mov	r8, r7
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L431:
	.align	2
.L430:
	.word	gPlaySt
	.word	GetUnit
	.size	REW_redoPhaseChange, .-REW_redoPhaseChange
	.align	1
	.p2align 2,,3
	.global	REW_nextPhase
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_nextPhase, %function
REW_nextPhase:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	movs	r4, r2
	cmp	r0, #0
	beq	.L435
	cmp	r0, #128
	bne	.L437
	movs	r0, #64
	movs	r5, #64
.L433:
	ldr	r3, .L438
	bl	.L5
	cmp	r0, #0
	bne	.L434
	movs	r3, #1
	strb	r3, [r4]
.L434:
	@ sp needed
	movs	r0, r5
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L437:
	ldrb	r3, [r1]
	adds	r3, r3, #1
	movs	r0, #0
	movs	r5, #0
	strb	r3, [r1]
	b	.L433
.L435:
	movs	r0, #128
	movs	r5, #128
	b	.L433
.L439:
	.align	2
.L438:
	.word	GetPhaseAbleUnitCount
	.size	REW_nextPhase, .-REW_nextPhase
	.align	1
	.p2align 2,,3
	.global	REW_actionPhaseChangeStart
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_actionPhaseChangeStart, %function
REW_actionPhaseChangeStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r6, r9
	mov	r5, r8
	mov	lr, fp
	mov	r7, r10
	push	{r5, r6, r7, lr}
	ldr	r6, .L468
	ldrb	r5, [r6, #15]
	sub	sp, sp, #12
	cmp	r5, #0
	beq	.L451
	cmp	r5, #128
	bne	.L467
	movs	r0, #64
	movs	r7, #4
	movs	r5, #0
.L441:
	ldr	r3, .L468+4
	bl	.L5
	ldr	r3, .L468+8
	str	r3, [sp, #4]
	ldr	r2, [r3]
	ldrh	r3, [r2, #2]
	cmp	r3, #0
	bne	.L443
	adds	r3, r3, #4
	strh	r3, [r2, #2]
.L443:
	mov	fp, r2
	add	fp, fp, r3
	mov	r2, fp
	movs	r3, #64
	strb	r3, [r2]
	ldrb	r4, [r6, #15]
	lsrs	r3, r4, #6
	orrs	r7, r3
	movs	r3, #16
	rsbs	r5, r5, #0
	ands	r3, r5
	orrs	r7, r3
	strb	r7, [r2, #1]
	cmp	r0, #0
	bne	.L444
	movs	r2, #32
	lsls	r3, r7, #24
	lsrs	r3, r3, #24
	orrs	r3, r2
	mov	r2, fp
	strb	r3, [r2, #1]
.L444:
	movs	r3, #4
	mov	r9, r3
	movs	r3, #0
	mov	r8, r3
	adds	r3, r3, #2
	movs	r5, #1
	mov	r10, r3
	ldr	r7, .L468+12
	b	.L448
.L446:
	ldrb	r4, [r6, #15]
.L448:
	adds	r4, r4, r5
	movs	r0, r4
	bl	.L7
	cmp	r0, #0
	beq	.L445
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L445
	mov	r2, r10
	ldr	r3, [r0, #12]
	tst	r3, r2
	beq	.L445
	mov	r3, fp
	add	r3, r3, r8
	strb	r4, [r3, #4]
	movs	r3, #1
	mov	ip, r3
	add	r9, r9, ip
	add	r8, r8, ip
.L445:
	adds	r5, r5, #1
	cmp	r5, #64
	bne	.L446
	ldr	r3, [sp, #4]
	ldr	r1, [r3]
	mov	r3, r9
	mov	r2, fp
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2, #2]
	ldrh	r2, [r1, #2]
	cmp	r2, #0
	bne	.L449
	adds	r2, r2, #4
.L449:
	adds	r3, r2, r3
	movs	r2, #3
	movs	r0, r2
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	ands	r0, r3
	tst	r2, r3
	beq	.L450
	adds	r3, r3, #4
	subs	r3, r3, r0
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
.L450:
	strh	r3, [r1, #2]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7}
	mov	fp, r7
	mov	r10, r6
	mov	r9, r5
	mov	r8, r4
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L467:
	movs	r0, #0
	movs	r7, #0
	movs	r5, #1
	b	.L441
.L451:
	movs	r0, #128
	movs	r7, #8
	b	.L441
.L469:
	.align	2
.L468:
	.word	gPlaySt
	.word	GetPhaseAbleUnitCount
	.word	REW_curSequence
	.word	GetUnit
	.size	REW_actionPhaseChangeStart, .-REW_actionPhaseChangeStart
	.align	1
	.p2align 2,,3
	.global	REW_actionPhaseChangeSuppports
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_actionPhaseChangeSuppports, %function
REW_actionPhaseChangeSuppports:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	lr, fp
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7, lr}
	ldr	r3, .L502
	ldrh	r2, [r3, #16]
	sub	sp, sp, #36
	cmp	r2, #1
	bne	.LCB3113
	b	.L470	@long jump
.LCB3113:
	ldrb	r3, [r3, #20]
	cmp	r3, #127
	bls	.LCB3116
	b	.L470	@long jump
.LCB3116:
	movs	r3, #1
	mov	fp, r3
	ldr	r3, .L502+4
	mov	r8, r3
	ldr	r3, .L502+8
	ldr	r7, .L502+12
	str	r3, [sp, #8]
	ldr	r3, .L502+16
	mov	r6, fp
	mov	r10, r7
	str	r3, [sp, #28]
	b	.L487
.L474:
	adds	r6, r6, #1
	cmp	r6, #64
	bne	.LCB3134
	b	.L470	@long jump
.LCB3134:
.L487:
	movs	r0, r6
	bl	.L10
	subs	r4, r0, #0
	beq	.L474
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L474
	ldr	r2, [r0, #12]
	ldr	r3, .L502+20
	tst	r2, r3
	bne	.L474
	ldr	r3, [sp, #8]
	bl	.L5
	cmp	r0, #4
	bgt	.L474
	mov	r3, r10
	ldr	r2, [r3]
	ldrh	r3, [r2, #2]
	cmp	r3, #0
	bne	.L477
	adds	r3, r3, #4
	strh	r3, [r2, #2]
.L477:
	adds	r3, r2, r3
	str	r3, [sp, #20]
	movs	r0, r4
	ldr	r3, [sp, #28]
	bl	.L5
	cmp	r0, #0
	ble	.L474
	movs	r3, #0
	str	r3, [sp, #24]
	adds	r3, r3, #6
	str	r3, [sp, #12]
	ldr	r3, .L502+20
	str	r6, [sp, #16]
	movs	r5, #0
	mov	r9, r3
	movs	r6, r0
	ldr	r7, .L502+24
.L484:
	movs	r1, r5
	movs	r0, r4
	bl	.L7
	cmp	r0, #0
	beq	.L480
	mov	r3, r9
	ldr	r1, [r0, #12]
	tst	r1, r3
	bne	.L480
	movs	r3, #11
	ldrsb	r3, [r0, r3]
	mov	ip, r3
	movs	r3, #192
	mov	r2, ip
	tst	r3, r2
	bne	.L480
	movs	r3, #16
	movs	r2, #16
	ldrsb	r3, [r4, r3]
	ldrsb	r2, [r0, r2]
	subs	r3, r3, r2
	asrs	r2, r3, #31
	adds	r3, r3, r2
	eors	r3, r2
	movs	r2, #17
	str	r3, [sp, #4]
	ldrsb	r2, [r4, r2]
	mov	fp, r2
	movs	r2, #17
	mov	r3, fp
	ldrsb	r2, [r0, r2]
	subs	r2, r3, r2
	asrs	r3, r2, #31
	adds	r2, r2, r3
	eors	r2, r3
	ldr	r3, [sp, #4]
	adds	r3, r3, r2
	cmp	r3, #0
	beq	.L481
	cmp	r3, #1
	bne	.L480
	ldr	r3, [r4, #12]
	orrs	r1, r3
	lsls	r1, r1, #26
	bpl	.L483
.L480:
	adds	r5, r5, #1
	cmp	r6, r5
	bne	.L484
	ldr	r1, [sp, #12]
	ldr	r6, [sp, #16]
	cmp	r1, #6
	beq	.L474
	movs	r3, #66
	ldr	r0, [sp, #20]
	strb	r3, [r0]
	strb	r6, [r0, #1]
	ldrh	r3, [r4, #16]
	strh	r3, [r0, #4]
	mov	r3, r10
	lsls	r1, r1, #16
	lsrs	r1, r1, #16
	ldr	r2, [r3]
	strh	r1, [r0, #2]
	ldrh	r3, [r2, #2]
	cmp	r3, #0
	bne	.L485
	adds	r3, r3, #4
.L485:
	adds	r3, r3, r1
	movs	r1, #3
	movs	r0, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	ands	r0, r3
	tst	r1, r3
	beq	.L501
	adds	r3, r3, #4
	subs	r3, r3, r0
.L501:
	adds	r6, r6, #1
	strh	r3, [r2, #2]
	cmp	r6, #64
	beq	.LCB3275
	b	.L487	@long jump
.LCB3275:
.L470:
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7}
	mov	fp, r7
	mov	r10, r6
	mov	r9, r5
	mov	r8, r4
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L481:
	ldrb	r3, [r4, #27]
	cmp	ip, r3
	bne	.L480
.L483:
	ldr	r3, [sp, #8]
	bl	.L5
	cmp	r0, #4
	bgt	.L480
	movs	r3, #50
	mov	fp, r3
	add	fp, fp, r4
	mov	r3, fp
	ldrb	r0, [r3, r5]
	movs	r1, r5
	str	r0, [sp, #4]
	ldr	r3, .L502+28
	movs	r0, r4
	bl	.L5
	mov	r3, fp
	ldr	r0, [sp, #4]
	ldrb	r3, [r3, r5]
	cmp	r0, r3
	beq	.L480
	ldr	r1, [sp, #20]
	mov	ip, r1
	movs	r1, r5
	ldr	r2, [sp, #24]
	lsls	r2, r2, #1
	add	r2, r2, ip
	subs	r3, r3, r0
	strb	r3, [r2, #7]
	adds	r1, r1, #50
	ldr	r3, [sp, #12]
	strb	r1, [r2, #6]
	ldr	r2, [sp, #24]
	adds	r3, r3, #2
	str	r3, [sp, #12]
	adds	r3, r2, #1
	str	r3, [sp, #24]
	b	.L480
.L503:
	.align	2
.L502:
	.word	gPlaySt
	.word	GetUnit
	.word	GetUnitTotalSupportLevel
	.word	REW_curSequence
	.word	GetUnitSupporterCount
	.word	65548
	.word	GetUnitSupporterUnit
	.word	UnitGainSupportExp
	.size	REW_actionPhaseChangeSuppports, .-REW_actionPhaseChangeSuppports
	.align	1
	.p2align 2,,3
	.global	REW_actionPhaseChangeTrackStatus
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_actionPhaseChangeTrackStatus, %function
REW_actionPhaseChangeTrackStatus:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	lr, r10
	mov	r6, r8
	mov	r7, r9
	ldr	r3, .L515
	ldr	r4, [r3]
	movs	r3, #0
	push	{r6, r7, lr}
	ldr	r5, .L515+4
	sub	sp, sp, #8
	ldrb	r6, [r5, #15]
	movs	r1, r4
	str	r3, [sp, #4]
	ldr	r2, .L515+8
	ldr	r3, .L515+12
	add	r0, sp, #4
	bl	.L5
	ldrb	r5, [r5, #15]
	adds	r6, r6, #64
	adds	r5, r5, #1
	cmp	r6, r5
	ble	.L505
	lsls	r3, r5, #3
	adds	r4, r4, r3
	ldr	r3, .L515+16
	mov	r9, r3
	movs	r3, #19
	mov	r10, r3
	adds	r3, r3, #29
	mov	r8, r3
	movs	r7, #49
.L507:
	movs	r0, r5
	bl	.L9
	cmp	r0, #0
	beq	.L506
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L506
	mov	r3, r10
	strb	r3, [r4]
	ldrb	r3, [r0, #19]
	strb	r3, [r4, #1]
	mov	r3, r8
	strb	r3, [r4, #2]
	ldrb	r3, [r0, r3]
	strb	r7, [r4, #4]
	strb	r3, [r4, #3]
	ldrb	r3, [r0, r7]
	strb	r3, [r4, #5]
	movs	r3, #11
	strb	r3, [r4, #6]
	ldrb	r3, [r0, #11]
	strb	r3, [r4, #7]
.L506:
	adds	r5, r5, #1
	adds	r4, r4, #8
	cmp	r6, r5
	bgt	.L507
.L505:
	ldr	r3, .L515+20
	bl	.L5
	add	sp, sp, #8
	@ sp needed
	pop	{r5, r6, r7}
	mov	r10, r7
	mov	r9, r6
	mov	r8, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L516:
	.align	2
.L515:
	.word	REW_rewindBuffer
	.word	gPlaySt
	.word	16777344
	.word	CpuFastSet
	.word	GetUnit
	.word	TickActiveFactionTurn
	.size	REW_actionPhaseChangeTrackStatus, .-REW_actionPhaseChangeTrackStatus
	.align	1
	.p2align 2,,3
	.global	REW_actionPhaseChangeRecordStatus
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_actionPhaseChangeRecordStatus, %function
REW_actionPhaseChangeRecordStatus:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	lr, fp
	mov	r5, r8
	push	{r5, r6, r7, lr}
	ldr	r3, .L536
	ldrb	r4, [r3, #15]
	ldr	r3, .L536+4
	mov	r9, r3
	movs	r3, #3
	ldr	r7, .L536+8
	adds	r6, r4, #1
	sub	sp, sp, #20
	adds	r4, r4, #64
	str	r4, [sp, #12]
	mov	fp, r3
	mov	r10, r9
	movs	r4, r7
	ldr	r2, .L536+12
	ldr	r5, [r2]
	lsls	r2, r6, #3
	adds	r5, r5, #8
	adds	r5, r5, r2
.L526:
	movs	r0, r6
	bl	.L8
	cmp	r0, #0
	beq	.L519
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L519
	ldr	r2, [r4]
	ldrh	r3, [r2, #2]
	cmp	r3, #0
	bne	.L522
	adds	r3, r3, #4
	strh	r3, [r2, #2]
.L522:
	mov	ip, r3
	movs	r1, #6
	movs	r7, #0
	str	r2, [sp, #4]
	add	ip, ip, r2
	movs	r2, r5
	movs	r3, r5
	mov	r9, r4
	movs	r5, r0
	movs	r4, r1
	movs	r0, r7
	mov	r8, r2
	str	r6, [sp, #8]
	subs	r3, r3, #8
.L524:
	ldrb	r1, [r3]
	ldrb	r7, [r3, #1]
	ldrb	r2, [r5, r1]
	cmp	r2, r7
	beq	.L523
	lsls	r6, r0, #1
	add	r6, r6, ip
	subs	r2, r2, r7
	strb	r1, [r6, #6]
	strb	r2, [r6, #7]
	adds	r4, r4, #2
	adds	r0, r0, #1
.L523:
	adds	r3, r3, #2
	cmp	r8, r3
	bne	.L524
	movs	r1, r4
	movs	r0, r5
	mov	r4, r9
	mov	r5, r8
	ldr	r2, [sp, #4]
	ldr	r6, [sp, #8]
	cmp	r1, #6
	beq	.L519
	mov	r3, ip
	movs	r7, #66
	strb	r6, [r3, #1]
	strb	r7, [r3]
	ldrh	r3, [r0, #16]
	mov	r0, ip
	lsls	r1, r1, #16
	lsrs	r1, r1, #16
	strh	r1, [r0, #2]
	strh	r3, [r0, #4]
	ldrh	r3, [r2, #2]
	mov	r0, fp
	adds	r3, r1, r3
	mov	r1, fp
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	ands	r1, r3
	tst	r0, r3
	beq	.L535
	adds	r3, r3, #4
	subs	r3, r3, r1
.L535:
	strh	r3, [r2, #2]
.L519:
	ldr	r3, [sp, #12]
	adds	r6, r6, #1
	adds	r5, r5, #8
	cmp	r6, r3
	bne	.L526
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7}
	mov	fp, r7
	mov	r10, r6
	mov	r9, r5
	mov	r8, r4
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L537:
	.align	2
.L536:
	.word	gPlaySt
	.word	GetUnit
	.word	REW_curSequence
	.word	REW_rewindBuffer
	.size	REW_actionPhaseChangeRecordStatus, .-REW_actionPhaseChangeRecordStatus
	.align	1
	.p2align 2,,3
	.global	REW_undoLoadUnit
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_undoLoadUnit, %function
REW_undoLoadUnit:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L546
	ldrb	r0, [r0, #1]
	bl	.L5
	cmp	r0, #0
	beq	.L538
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L538
	ldr	r3, .L546+4
	bl	.L5
.L538:
	@ sp needed
	pop	{r4}
	pop	{r0}
	bx	r0
.L547:
	.align	2
.L546:
	.word	GetUnit
	.word	ClearUnit
	.size	REW_undoLoadUnit, .-REW_undoLoadUnit
	.align	1
	.p2align 2,,3
	.global	REW_redoLoadUnit
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_redoLoadUnit, %function
REW_redoLoadUnit:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L549
	@ sp needed
	adds	r0, r0, #4
	bl	.L5
	pop	{r4}
	pop	{r0}
	bx	r0
.L550:
	.align	2
.L549:
	.word	LoadUnit
	.size	REW_redoLoadUnit, .-REW_redoLoadUnit
	.align	1
	.p2align 2,,3
	.global	REW_conseqInitUnit
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_conseqInitUnit, %function
REW_conseqInitUnit:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r6, .L563
	ldr	r5, [r6]
	ldrh	r3, [r5, #2]
	movs	r4, r0
	movs	r0, r1
	cmp	r3, #0
	beq	.L551
	cmp	r4, #0
	beq	.L551
	ldr	r2, [r4]
	cmp	r2, #0
	beq	.L551
	adds	r5, r5, r3
	movs	r3, #67
	strb	r3, [r5]
	ldrb	r3, [r4, #11]
	movs	r2, #10
	strb	r3, [r5, #1]
	adds	r1, r5, #4
	ldr	r3, .L563+4
	bl	.L5
	movs	r3, #63
	ldrb	r2, [r4, #17]
	ldrb	r1, [r4, #16]
	ands	r2, r3
	lsls	r2, r2, #6
	ands	r3, r1
	orrs	r3, r2
	ldrh	r2, [r5, #8]
	lsrs	r2, r2, #12
	lsls	r2, r2, #12
	orrs	r3, r2
	strh	r3, [r5, #8]
	movs	r3, #24
	ldr	r1, [r6]
	strh	r3, [r5, #2]
	ldrh	r3, [r1, #2]
	cmp	r3, #0
	beq	.L561
	movs	r0, #3
	movs	r2, r3
	movs	r4, r0
	adds	r2, r2, #24
	lsls	r2, r2, #16
	lsrs	r2, r2, #16
	ands	r4, r2
	tst	r0, r2
	beq	.L562
	adds	r3, r3, #28
	subs	r3, r3, r4
	strh	r3, [r1, #2]
.L551:
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L561:
	adds	r3, r3, #28
	strh	r3, [r1, #2]
	b	.L551
.L562:
	strh	r2, [r1, #2]
	b	.L551
.L564:
	.align	2
.L563:
	.word	REW_curSequence
	.word	CpuSet
	.size	REW_conseqInitUnit, .-REW_conseqInitUnit
	.align	1
	.p2align 2,,3
	.global	REW_conseqFinalizeUnits
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_conseqFinalizeUnits, %function
REW_conseqFinalizeUnits:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	ldr	r6, .L586
	ldr	r4, [r6]
	ldrh	r3, [r4, #2]
	cmp	r3, #0
	beq	.L565
	movs	r5, #3
	ldr	r7, .L586+4
	adds	r4, r4, #4
.L571:
	ldrb	r3, [r4]
	cmp	r3, #67
	beq	.L585
.L568:
	movs	r1, r5
	ldrh	r3, [r4, #2]
	ldr	r2, [r6]
	ands	r1, r3
	tst	r5, r3
	beq	.L570
	adds	r3, r3, #4
	subs	r3, r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
.L570:
	adds	r4, r4, r3
	ldrh	r3, [r2, #2]
	adds	r2, r2, r3
	cmp	r4, r2
	bcs	.L565
	cmp	r4, #0
	bne	.L571
.L565:
	@ sp needed
	pop	{r3, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L585:
	ldrb	r0, [r4, #1]
	bl	.L7
	cmp	r0, #0
	beq	.L568
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L568
	movs	r3, #68
	movs	r2, #63
	strb	r3, [r4]
	ldrb	r3, [r0, #17]
	ldrb	r1, [r0, #16]
	ands	r3, r2
	lsls	r3, r3, #6
	ands	r2, r1
	orrs	r3, r2
	ldr	r1, .L586+8
	ldr	r2, [r4, #8]
	ands	r2, r1
	orrs	r3, r2
	str	r3, [r4, #8]
	movs	r3, #0
	str	r3, [r4, #12]
	b	.L568
.L587:
	.align	2
.L586:
	.word	REW_curSequence
	.word	GetUnit
	.word	16773120
	.size	REW_conseqFinalizeUnits, .-REW_conseqFinalizeUnits
	.align	1
	.p2align 2,,3
	.global	REW_doInventoryReorder
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_doInventoryReorder, %function
REW_doInventoryReorder:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	mov	lr, r9
	push	{r7, lr}
	ldrb	r2, [r0, #1]
	lsls	r3, r2, #29
	movs	r4, r0
	mov	r8, r1
	sub	sp, sp, #36
	lsrs	r3, r3, #29
	cmp	r3, #4
	bhi	.L588
	movs	r3, #96
	ands	r3, r2
	cmp	r3, #96
	beq	.L588
	movs	r3, #5
	ldr	r2, .L608
	ldr	r1, [r2]
	movs	r2, #4
	ldrsb	r3, [r0, r3]
	lsls	r3, r3, #2
	ldr	r3, [r3, r1]
	ldrsb	r2, [r0, r2]
	ldrsb	r0, [r3, r2]
	ldr	r3, .L608+4
	bl	.L5
	subs	r6, r0, #0
	beq	.L588
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L588
	ldrb	r3, [r4, #1]
	lsls	r2, r3, #29
	lsrs	r2, r2, #29
	str	r2, [sp, #12]
	lsls	r2, r3, #27
	lsrs	r2, r2, #30
	str	r2, [sp, #16]
	lsls	r2, r3, #25
	lsrs	r3, r3, #7
	str	r3, [sp, #24]
	movs	r3, #0
	str	r3, [sp, #28]
	adds	r3, r3, #40
	movs	r1, r6
	mov	ip, r3
	mov	r9, sp
	mov	r0, sp
	movs	r5, #0
	lsrs	r2, r2, #30
	str	r2, [sp, #20]
	add	r4, sp, #12
	adds	r1, r1, #30
	add	ip, ip, r6
.L595:
	movs	r3, #1
	movs	r2, #0
	ldr	r7, [r4]
	b	.L592
.L607:
	subs	r7, r7, #1
.L590:
	lsls	r3, r3, #1
	adds	r2, r2, #1
.L592:
	tst	r5, r3
	bne	.L590
	cmp	r7, #0
	bne	.L607
	orrs	r3, r5
	lsls	r3, r3, #24
	lsrs	r5, r3, #24
	mov	r3, r8
	cmp	r3, #0
	beq	.L593
	adds	r2, r2, #12
	lsls	r3, r2, #1
	adds	r3, r6, r3
	ldrh	r3, [r3, #6]
	strh	r3, [r0]
.L594:
	adds	r1, r1, #2
	adds	r4, r4, #4
	adds	r0, r0, #2
	cmp	ip, r1
	bne	.L595
	mov	r3, r9
	ldrh	r3, [r3]
	strh	r3, [r6, #30]
	mov	r3, r9
	ldrh	r3, [r3, #2]
	strh	r3, [r6, #32]
	mov	r3, r9
	ldrh	r3, [r3, #4]
	strh	r3, [r6, #34]
	mov	r3, r9
	ldrh	r3, [r3, #6]
	strh	r3, [r6, #36]
	mov	r3, r9
	ldrh	r3, [r3, #8]
	strh	r3, [r6, #38]
.L588:
	add	sp, sp, #36
	@ sp needed
	pop	{r6, r7}
	mov	r9, r7
	mov	r8, r6
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L593:
	mov	r7, r9
	ldrh	r3, [r1]
	lsls	r2, r2, #1
	strh	r3, [r7, r2]
	b	.L594
.L609:
	.align	2
.L608:
	.word	gBmMapUnit
	.word	GetUnit
	.size	REW_doInventoryReorder, .-REW_doInventoryReorder
	.align	1
	.p2align 2,,3
	.global	REW_undoItemObtainedUnit
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_undoItemObtainedUnit, %function
REW_undoItemObtainedUnit:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r3, #5
	ldr	r2, .L618
	ldr	r1, [r2]
	movs	r2, #4
	push	{r4, lr}
	ldrsb	r3, [r0, r3]
	lsls	r3, r3, #2
	ldr	r3, [r3, r1]
	ldrsb	r2, [r0, r2]
	ldrsb	r0, [r3, r2]
	ldr	r3, .L618+4
	bl	.L5
	subs	r4, r0, #0
	beq	.L610
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L610
	ldr	r3, .L618+8
	bl	.L5
	movs	r3, #0
	lsls	r0, r0, #1
	adds	r4, r4, r0
	strh	r3, [r4, #28]
.L610:
	@ sp needed
	pop	{r4}
	pop	{r0}
	bx	r0
.L619:
	.align	2
.L618:
	.word	gBmMapUnit
	.word	GetUnit
	.word	GetUnitItemCount
	.size	REW_undoItemObtainedUnit, .-REW_undoItemObtainedUnit
	.align	1
	.p2align 2,,3
	.global	REW_undoItemRemovedUnit
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_undoItemRemovedUnit, %function
REW_undoItemRemovedUnit:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	@ sp needed
	bx	lr
	.size	REW_undoItemRemovedUnit, .-REW_undoItemRemovedUnit
	.align	1
	.p2align 2,,3
	.global	REW_undoItemObtainedSupply
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_undoItemObtainedSupply, %function
REW_undoItemObtainedSupply:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	@ sp needed
	bx	lr
	.size	REW_undoItemObtainedSupply, .-REW_undoItemObtainedSupply
	.align	1
	.p2align 2,,3
	.global	REW_undoItemRemovedSupply
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_undoItemRemovedSupply, %function
REW_undoItemRemovedSupply:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	@ sp needed
	bx	lr
	.size	REW_undoItemRemovedSupply, .-REW_undoItemRemovedSupply
	.align	1
	.p2align 2,,3
	.global	REW_redoItemObtainedUnit
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_redoItemObtainedUnit, %function
REW_redoItemObtainedUnit:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r3, #5
	ldr	r2, .L630
	ldr	r1, [r2]
	movs	r2, #4
	push	{r4, r5, r6, lr}
	ldrsb	r3, [r0, r3]
	lsls	r3, r3, #2
	ldr	r3, [r3, r1]
	ldrsb	r2, [r0, r2]
	movs	r5, r0
	ldrsb	r0, [r3, r2]
	ldr	r3, .L630+4
	bl	.L5
	subs	r4, r0, #0
	beq	.L623
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L623
	ldr	r3, .L630+8
	bl	.L5
	cmp	r0, #4
	bgt	.L623
	adds	r0, r0, #12
	ldrh	r3, [r5, #6]
	lsls	r0, r0, #1
	adds	r4, r4, r0
	strh	r3, [r4, #6]
.L623:
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L631:
	.align	2
.L630:
	.word	gBmMapUnit
	.word	GetUnit
	.word	GetUnitItemCount
	.size	REW_redoItemObtainedUnit, .-REW_redoItemObtainedUnit
	.align	1
	.p2align 2,,3
	.global	REW_redoItemRemovedUnit
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_redoItemRemovedUnit, %function
REW_redoItemRemovedUnit:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	@ sp needed
	bx	lr
	.size	REW_redoItemRemovedUnit, .-REW_redoItemRemovedUnit
	.align	1
	.p2align 2,,3
	.global	REW_redoItemObtainedSupply
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_redoItemObtainedSupply, %function
REW_redoItemObtainedSupply:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	@ sp needed
	bx	lr
	.size	REW_redoItemObtainedSupply, .-REW_redoItemObtainedSupply
	.align	1
	.p2align 2,,3
	.global	REW_redoItemRemovedSupply
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_redoItemRemovedSupply, %function
REW_redoItemRemovedSupply:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	@ sp needed
	bx	lr
	.size	REW_redoItemRemovedSupply, .-REW_redoItemRemovedSupply
	.align	1
	.p2align 2,,3
	.global	REW_conseqEquipItem
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_conseqEquipItem, %function
REW_conseqEquipItem:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	movs	r5, r0
	subs	r4, r1, #0
	ble	.L635
	movs	r0, #11
	ldr	r3, .L655
	ldrsb	r0, [r5, r0]
	bl	.L5
	cmp	r5, r0
	beq	.L653
.L635:
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L653:
	ldr	r3, .L655+4
	ldr	r1, [r3]
	ldrh	r2, [r1, #2]
	subs	r3, r2, #0
	beq	.L654
.L640:
	ldr	r0, .L655+8
	ldrh	r5, [r0]
	adds	r3, r1, r3
	strb	r5, [r3, #4]
	ldrh	r0, [r0, #2]
	strb	r0, [r3, #5]
	movs	r0, #70
	adds	r0, r0, #255
	strh	r0, [r3]
	cmp	r4, #1
	beq	.L642
	movs	r5, #24
	ldrb	r0, [r3, #1]
	bics	r0, r5
	movs	r5, #8
	orrs	r0, r5
	strb	r0, [r3, #1]
	cmp	r4, #2
	beq	.L642
	movs	r5, #96
	lsls	r0, r0, #24
	lsrs	r0, r0, #24
	bics	r0, r5
	movs	r5, #32
	orrs	r0, r5
	strb	r0, [r3, #1]
	cmp	r4, #3
	beq	.L642
	lsls	r4, r0, #24
	movs	r0, #128
	lsrs	r4, r4, #24
	rsbs	r0, r0, #0
	orrs	r0, r4
	strb	r0, [r3, #1]
.L642:
	movs	r0, #6
	strh	r0, [r3, #2]
	subs	r0, r0, #3
	movs	r4, r0
	adds	r3, r2, #6
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r1, #2]
	ands	r4, r3
	tst	r0, r3
	beq	.L635
	adds	r2, r2, #10
	subs	r2, r2, r4
	strh	r2, [r1, #2]
	b	.L635
.L654:
	movs	r3, #4
	movs	r2, #4
	strh	r3, [r1, #2]
	b	.L640
.L656:
	.align	2
.L655:
	.word	GetUnit
	.word	REW_curSequence
	.word	gActiveUnitMoveOrigin
	.size	REW_conseqEquipItem, .-REW_conseqEquipItem
	.align	1
	.p2align 2,,3
	.global	REW_conseqItemObtainedUnit
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_conseqItemObtainedUnit, %function
REW_conseqItemObtainedUnit:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	movs	r5, r0
	movs	r4, r2
	ldr	r3, .L670
	sub	sp, sp, #12
	movs	r0, #0
	movs	r6, r1
	rsbs	r2, r4, #0
	adcs	r4, r4, r2
	bl	.L5
	rsbs	r3, r5, #0
	adcs	r3, r3, r5
	orrs	r3, r4
	bne	.L657
	cmp	r0, #0
	bne	.L657
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.L657
	ldr	r3, .L670+4
	ldr	r0, [r3]
	ldrh	r3, [r0, #2]
	cmp	r3, #0
	beq	.L662
	movs	r4, #3
	movs	r1, r3
	movs	r2, r4
	movs	r5, #70
	adds	r1, r1, #8
	lsls	r1, r1, #16
	lsrs	r1, r1, #16
	ands	r2, r1
	mov	ip, r2
	adds	r2, r0, r3
	strb	r5, [r2]
	ldr	r5, .L670+8
	ldrh	r7, [r5]
	strb	r7, [r2, #4]
	ldrh	r5, [r5, #2]
	strb	r5, [r2, #5]
	movs	r5, #8
	strh	r6, [r2, #6]
	strh	r5, [r2, #2]
	tst	r4, r1
	beq	.L665
	mov	r2, ip
	adds	r3, r3, #12
	subs	r3, r3, r2
	strh	r3, [r0, #2]
.L657:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L662:
	movs	r2, #70
	strb	r2, [r0, #4]
	ldr	r2, .L670+8
	ldrh	r1, [r2]
	strb	r1, [r0, #8]
	ldrh	r2, [r2, #2]
	strb	r2, [r0, #9]
	movs	r2, #8
	movs	r1, #12
	strh	r6, [r0, #10]
	strh	r2, [r0, #6]
.L665:
	strh	r1, [r0, #2]
	b	.L657
.L671:
	.align	2
.L670:
	.word	PrepAtMenuExists
	.word	REW_curSequence
	.word	gActiveUnitMoveOrigin
	.size	REW_conseqItemObtainedUnit, .-REW_conseqItemObtainedUnit
	.align	1
	.p2align 2,,3
	.global	REW_findCurSequence
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_findCurSequence, %function
REW_findCurSequence:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L673
	push	{r4, lr}
	ldrh	r4, [r3, #12]
	@ sp needed
	movs	r3, #224
	lsls	r3, r3, #20
	mov	ip, r3
	ldr	r0, .L673+4
	lsls	r0, r0, #16
	ldr	r3, .L673+8
	lsrs	r0, r0, #16
	add	r4, r4, ip
	bl	.L5
	ldrh	r0, [r0]
	adds	r0, r4, r0
	pop	{r4}
	pop	{r1}
	bx	r1
.L674:
	.align	2
.L673:
	.word	gSaveBlockDecl
	.word	EMS_CHUNK_REWIND_SEQ
	.word	MS_FindSuspendSaveChunk
	.size	REW_findCurSequence, .-REW_findCurSequence
	.align	1
	.p2align 2,,3
	.global	REW_clearCurSequence
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_clearCurSequence, %function
REW_clearCurSequence:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L676
	push	{r4, r5, r6, lr}
	ldr	r5, [r3]
	@ sp needed
	movs	r3, #0
	strh	r3, [r5]
	strh	r3, [r5, #2]
	ldr	r3, .L676+4
	ldrh	r4, [r3, #12]
	movs	r3, #224
	lsls	r3, r3, #20
	mov	ip, r3
	ldr	r0, .L676+8
	lsls	r0, r0, #16
	ldr	r3, .L676+12
	lsrs	r0, r0, #16
	add	r4, r4, ip
	bl	.L5
	ldrh	r1, [r0]
	movs	r2, #4
	movs	r0, r5
	ldr	r3, .L676+16
	adds	r1, r4, r1
	bl	.L5
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L677:
	.align	2
.L676:
	.word	REW_curSequence
	.word	gSaveBlockDecl
	.word	EMS_CHUNK_REWIND_SEQ
	.word	MS_FindSuspendSaveChunk
	.word	WriteAndVerifySramFast
	.size	REW_clearCurSequence, .-REW_clearCurSequence
	.align	1
	.p2align 2,,3
	.global	REW_findRewindBuf
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_findRewindBuf, %function
REW_findRewindBuf:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L679
	push	{r4, lr}
	ldrh	r4, [r3, #12]
	@ sp needed
	movs	r3, #224
	lsls	r3, r3, #20
	mov	ip, r3
	ldr	r0, .L679+4
	lsls	r0, r0, #16
	ldr	r3, .L679+8
	lsrs	r0, r0, #16
	add	r4, r4, ip
	bl	.L5
	ldrh	r0, [r0]
	adds	r0, r4, r0
	pop	{r4}
	pop	{r1}
	bx	r1
.L680:
	.align	2
.L679:
	.word	gSaveBlockDecl
	.word	EMS_CHUNK_REWIND_BUF
	.word	MS_FindSuspendSaveChunk
	.size	REW_findRewindBuf, .-REW_findRewindBuf
	.align	1
	.p2align 2,,3
	.global	REW_clearRewindBuf
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_clearRewindBuf, %function
REW_clearRewindBuf:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r3, #0
	push	{r4, lr}
	sub	sp, sp, #8
	str	r3, [sp, #4]
	ldr	r3, .L682
	ldrh	r4, [r3, #12]
	movs	r3, #224
	lsls	r3, r3, #20
	mov	ip, r3
	ldr	r0, .L682+4
	lsls	r0, r0, #16
	ldr	r3, .L682+8
	lsrs	r0, r0, #16
	add	r4, r4, ip
	bl	.L5
	ldrh	r1, [r0]
	movs	r2, #4
	ldr	r3, .L682+12
	adds	r1, r4, r1
	add	r0, sp, #4
	bl	.L5
	add	sp, sp, #8
	@ sp needed
	pop	{r4}
	pop	{r0}
	bx	r0
.L683:
	.align	2
.L682:
	.word	gSaveBlockDecl
	.word	EMS_CHUNK_REWIND_BUF
	.word	MS_FindSuspendSaveChunk
	.word	WriteAndVerifySramFast
	.size	REW_clearRewindBuf, .-REW_clearRewindBuf
	.align	1
	.p2align 2,,3
	.global	REW_cpPhaseChangeSave
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_cpPhaseChangeSave, %function
REW_cpPhaseChangeSave:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L686
	movs	r4, r0
	ldrb	r0, [r3, #15]
	ldr	r3, .L686+4
	bl	.L5
	cmp	r0, #0
	ble	.L685
	movs	r2, #2
	ldr	r3, .L686+8
	movs	r0, #3
	strb	r2, [r3, #22]
	ldr	r3, .L686+12
	bl	.L5
.L685:
	@ sp needed
	movs	r0, r4
	ldr	r3, .L686+16
	bl	.L5
	pop	{r4}
	pop	{r0}
	bx	r0
.L687:
	.align	2
.L686:
	.word	gPlaySt
	.word	GetPhaseAbleUnitCount
	.word	gActionData
	.word	WriteSuspendSave
	.word	AiPhaseInit
	.size	REW_cpPhaseChangeSave, .-REW_cpPhaseChangeSave
	.align	1
	.p2align 2,,3
	.global	REW_loadActiveUnitMoveOrigin
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_loadActiveUnitMoveOrigin, %function
REW_loadActiveUnitMoveOrigin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L689
	sub	sp, sp, #8
	add	r4, sp, #4
	movs	r2, r1
	ldr	r3, [r3]
	movs	r1, r4
	bl	.L5
	movs	r2, #0
	ldr	r3, .L689+4
	ldrsb	r2, [r4, r2]
	strh	r2, [r3]
	movs	r2, #1
	ldrsb	r2, [r4, r2]
	strh	r2, [r3, #2]
	add	sp, sp, #8
	@ sp needed
	pop	{r4}
	pop	{r0}
	bx	r0
.L690:
	.align	2
.L689:
	.word	ReadSramFast
	.word	gActiveUnitMoveOrigin
	.size	REW_loadActiveUnitMoveOrigin, .-REW_loadActiveUnitMoveOrigin
	.align	1
	.p2align 2,,3
	.global	REW_saveActiveUnitMoveOrigin
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_saveActiveUnitMoveOrigin, %function
REW_saveActiveUnitMoveOrigin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r3, r0
	push	{r4, lr}
	movs	r2, r1
	ldr	r1, .L692
	sub	sp, sp, #8
	ldrh	r4, [r1]
	add	r0, sp, #4
	strb	r4, [r0]
	ldrh	r1, [r1, #2]
	strb	r1, [r0, #1]
	movs	r1, r3
	ldr	r3, .L692+4
	bl	.L5
	add	sp, sp, #8
	@ sp needed
	pop	{r4}
	pop	{r0}
	bx	r0
.L693:
	.align	2
.L692:
	.word	gActiveUnitMoveOrigin
	.word	WriteAndVerifySramFast
	.size	REW_saveActiveUnitMoveOrigin, .-REW_saveActiveUnitMoveOrigin
	.align	1
	.p2align 2,,3
	.global	REW_loadCurSequence
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_loadCurSequence, %function
REW_loadCurSequence:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L695
	push	{r4, lr}
	movs	r2, r1
	@ sp needed
	ldr	r1, [r3]
	ldr	r3, .L695+4
	ldr	r3, [r3]
	bl	.L5
	pop	{r4}
	pop	{r0}
	bx	r0
.L696:
	.align	2
.L695:
	.word	REW_curSequence
	.word	ReadSramFast
	.size	REW_loadCurSequence, .-REW_loadCurSequence
	.align	1
	.p2align 2,,3
	.global	REW_saveCurSequence
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_saveCurSequence, %function
REW_saveCurSequence:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r2, #8
	push	{r4, lr}
	ldr	r3, .L699
	ldrb	r3, [r3, #22]
	bics	r3, r2
	cmp	r3, #1
	bne	.L697
	ldr	r3, .L699+4
	ldr	r3, [r3]
	movs	r2, r1
	movs	r1, r0
	movs	r0, r3
	ldr	r3, .L699+8
	bl	.L5
.L697:
	@ sp needed
	pop	{r4}
	pop	{r0}
	bx	r0
.L700:
	.align	2
.L699:
	.word	gActionData
	.word	REW_curSequence
	.word	WriteAndVerifySramFast
	.size	REW_saveCurSequence, .-REW_saveCurSequence
	.align	1
	.p2align 2,,3
	.global	REW_loadRewind
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_loadRewind, %function
REW_loadRewind:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L702
	push	{r4, lr}
	movs	r2, r1
	@ sp needed
	ldr	r1, [r3]
	ldr	r3, .L702+4
	ldr	r3, [r3]
	bl	.L5
	pop	{r4}
	pop	{r0}
	bx	r0
.L703:
	.align	2
.L702:
	.word	REW_rewindBuffer
	.word	ReadSramFast
	.size	REW_loadRewind, .-REW_loadRewind
	.align	1
	.p2align 2,,3
	.global	REW_saveRewind
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_saveRewind, %function
REW_saveRewind:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	mov	r7, r8
	mov	lr, r9
	push	{r7, lr}
	ldr	r7, .L714
	ldr	r3, [r7]
	ldrh	r3, [r3, #2]
	movs	r5, r0
	movs	r6, r1
	cmp	r3, #0
	beq	.L704
	movs	r2, #8
	ldr	r3, .L714+4
	ldrb	r3, [r3, #22]
	mov	r9, r2
	bics	r3, r2
	cmp	r3, #1
	beq	.L704
	ldr	r3, .L714+8
	mov	r8, r3
	ldr	r1, [r3]
	ldr	r3, .L714+12
	movs	r2, r6
	ldr	r3, [r3]
	bl	.L5
	mov	r3, r8
	ldr	r4, [r3]
	ldr	r3, [r4]
	cmp	r3, #0
	beq	.L706
	ldr	r2, [r4, #4]
	ldrh	r2, [r2, #2]
.L707:
	adds	r4, r4, r3
	ldr	r1, [r7]
	strh	r2, [r4]
	ldrh	r2, [r1, #2]
	adds	r0, r4, #4
	strh	r2, [r4, #2]
	ldr	r3, .L714+16
	subs	r2, r2, #4
	adds	r1, r1, #4
	bl	.L5
	mov	r3, r8
	ldr	r0, [r3]
	ldrh	r2, [r4, #2]
	ldr	r3, [r0]
	adds	r3, r3, r2
	movs	r1, r5
	movs	r2, r6
	str	r3, [r0]
	str	r4, [r0, #4]
	ldr	r6, .L714+20
	bl	.L11
	movs	r3, #0
	ldr	r5, [r7]
	strh	r3, [r5, #2]
	strh	r3, [r5]
	ldr	r3, .L714+24
	ldrh	r4, [r3, #12]
	movs	r3, #224
	lsls	r3, r3, #20
	mov	ip, r3
	ldr	r0, .L714+28
	lsls	r0, r0, #16
	ldr	r3, .L714+32
	lsrs	r0, r0, #16
	add	r4, r4, ip
	bl	.L5
	ldrh	r1, [r0]
	movs	r2, #4
	movs	r0, r5
	adds	r1, r4, r1
	bl	.L11
.L704:
	@ sp needed
	pop	{r6, r7}
	mov	r9, r7
	mov	r8, r6
	pop	{r3, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L706:
	mov	r3, r9
	movs	r2, #0
	str	r3, [r4]
	movs	r3, #8
	b	.L707
.L715:
	.align	2
.L714:
	.word	REW_curSequence
	.word	gActionData
	.word	REW_rewindBuffer
	.word	ReadSramFast
	.word	MemCpy
	.word	WriteAndVerifySramFast
	.word	gSaveBlockDecl
	.word	EMS_CHUNK_REWIND_SEQ
	.word	MS_FindSuspendSaveChunk
	.size	REW_saveRewind, .-REW_saveRewind
	.align	1
	.p2align 2,,3
	.global	REW_rewindMenuUsability
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_rewindMenuUsability, %function
REW_rewindMenuUsability:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L719
	push	{r4, r5, lr}
	ldr	r5, [r3]
	ldr	r3, .L719+4
	ldrh	r4, [r3, #12]
	movs	r3, #224
	lsls	r3, r3, #20
	mov	ip, r3
	ldr	r0, .L719+8
	lsls	r0, r0, #16
	sub	sp, sp, #12
	ldr	r3, .L719+12
	lsrs	r0, r0, #16
	add	r4, r4, ip
	bl	.L5
	ldrh	r0, [r0]
	movs	r2, #4
	adds	r0, r4, r0
	add	r1, sp, #4
	bl	.L6
	ldr	r0, [sp, #4]
	rsbs	r3, r0, #0
	adcs	r0, r0, r3
	lsls	r0, r0, #1
	adds	r0, r0, #1
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.L720:
	.align	2
.L719:
	.word	ReadSramFast
	.word	gSaveBlockDecl
	.word	EMS_CHUNK_REWIND_BUF
	.word	MS_FindSuspendSaveChunk
	.size	REW_rewindMenuUsability, .-REW_rewindMenuUsability
	.align	1
	.p2align 2,,3
	.global	REW_rewindMenuEffect
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_rewindMenuEffect, %function
REW_rewindMenuEffect:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L722
	@ sp needed
	bl	.L5
	ldr	r3, .L722+4
	movs	r1, #3
	ldr	r0, .L722+8
	bl	.L5
	movs	r3, #0
	str	r3, [r0, #80]
	str	r3, [r0, #84]
	movs	r0, #23
	pop	{r4}
	pop	{r1}
	bx	r1
.L723:
	.align	2
.L722:
	.word	LockGame
	.word	Proc_Start
	.word	.LANCHOR0
	.size	REW_rewindMenuEffect, .-REW_rewindMenuEffect
	.align	1
	.p2align 2,,3
	.global	REW_displayActor
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_displayActor, %function
REW_displayActor:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	lr, r8
	push	{lr}
	ldr	r3, .L729
	movs	r6, r0
	sub	sp, sp, #80
	ldrb	r0, [r1, #1]
	movs	r5, r1
	movs	r7, r2
	mov	r8, r3
	bl	.L5
	movs	r4, r0
	ldrb	r0, [r5, #1]
	cmp	r0, #255
	beq	.L727
	movs	r3, #63
	movs	r2, r0
	bics	r2, r3
	cmp	r2, #192
	beq	.L728
.L726:
	ldr	r3, [r4, #4]
	ldrb	r5, [r3, #4]
	ldr	r3, [r4]
	ldrh	r0, [r3]
	ldr	r3, .L729+4
	bl	.L5
	ldr	r3, .L729+8
	movs	r1, r0
	movs	r0, r7
	bl	.L5
	movs	r0, r4
	ldr	r3, .L729+12
	bl	.L5
	movs	r3, #1
	movs	r2, r5
	str	r0, [sp]
	movs	r1, #0
	ldr	r4, .L729+16
	rsbs	r3, r3, #0
	movs	r0, #0
	bl	.L144
	movs	r3, #128
	movs	r2, #70
	lsls	r3, r3, #3
	str	r0, [r6, #80]
	ldr	r1, [r0, #48]
	strh	r3, [r0, r2]
	ldr	r4, .L729+20
	ldrh	r2, [r1, #34]
	ands	r2, r4
	orrs	r3, r2
	movs	r2, #76
	strh	r3, [r1, #34]
	ldrh	r3, [r0, r2]
	adds	r3, r3, #1
	adds	r3, r3, #255
	strh	r3, [r0, r2]
	adds	r2, r2, #2
	ldrh	r3, [r0, r2]
	adds	r3, r3, #129
	adds	r3, r3, #255
	strh	r3, [r0, r2]
	movs	r1, #4
	ldr	r3, .L729+24
	bl	.L5
	add	sp, sp, #80
	@ sp needed
	pop	{r7}
	mov	r8, r7
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L727:
	movs	r3, #0
	movs	r2, #0
	adds	r1, r5, #4
	add	r0, sp, #8
	bl	REW_loadUnit
	add	r4, sp, #8
	b	.L726
.L728:
	bics	r0, r2
	bl	.L10
	movs	r4, r0
	b	.L726
.L730:
	.align	2
.L729:
	.word	GetUnit
	.word	GetStringFromIndex
	.word	Text_DrawString
	.word	GetUnitSpritePalette
	.word	StartMuInternal
	.word	-3073
	.word	SetMuFacing
	.size	REW_displayActor, .-REW_displayActor
	.align	1
	.p2align 2,,3
	.global	REW_displayTarget
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_displayTarget, %function
REW_displayTarget:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	lr, r8
	push	{lr}
	movs	r4, r1
	movs	r7, r0
	ldr	r6, .L743
	ldrb	r0, [r1, #1]
	sub	sp, sp, #80
	mov	r8, r2
	bl	.L11
	ldrb	r3, [r4]
	movs	r5, r0
	cmp	r3, #2
	beq	.L738
	cmp	r3, #65
	beq	.L739
.L731:
	add	sp, sp, #80
	@ sp needed
	pop	{r7}
	mov	r8, r7
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L739:
	ldrb	r3, [r4, #1]
	lsls	r3, r3, #31
	bmi	.L740
	movs	r0, #27
	ldr	r3, .L743+4
	bl	.L5
	movs	r1, r0
.L737:
	mov	r0, r8
	ldr	r3, .L743+8
	bl	.L5
	b	.L731
.L738:
	ldrb	r0, [r4, #1]
	cmp	r0, #255
	beq	.L741
	movs	r3, #63
	movs	r2, r0
	bics	r2, r3
	cmp	r2, #192
	beq	.L742
.L734:
	ldr	r3, [r5, #4]
	ldrb	r6, [r3, #4]
	ldr	r3, [r5]
	ldrh	r0, [r3]
	ldr	r3, .L743+12
	bl	.L5
	ldr	r3, .L743+8
	movs	r1, r0
	mov	r0, r8
	bl	.L5
	mov	r0, r8
	ldr	r3, .L743+16
	bl	.L5
	ldr	r3, .L743+20
	movs	r4, r0
	movs	r0, r5
	bl	.L5
	movs	r3, #1
	movs	r2, r6
	str	r0, [sp]
	movs	r1, #0
	ldr	r5, .L743+24
	rsbs	r3, r3, #0
	movs	r0, #0
	bl	.L6
	movs	r3, #128
	movs	r2, #70
	lsls	r3, r3, #3
	str	r0, [r7, #84]
	ldr	r1, [r0, #48]
	strh	r3, [r0, r2]
	ldr	r5, .L743+28
	ldrh	r2, [r1, #34]
	ands	r2, r5
	orrs	r3, r2
	movs	r2, #76
	strh	r3, [r1, #34]
	ldrh	r3, [r0, r2]
	adds	r4, r4, #43
	adds	r3, r3, #128
	lsls	r4, r4, #4
	adds	r4, r4, r3
	strh	r4, [r0, r2]
	adds	r2, r2, #2
	ldrh	r3, [r0, r2]
	adds	r3, r3, #129
	adds	r3, r3, #255
	strh	r3, [r0, r2]
	movs	r1, #4
	ldr	r3, .L743+32
	bl	.L5
	b	.L731
.L740:
	movs	r0, #51
	ldr	r3, .L743+4
	bl	.L5
	movs	r1, r0
	b	.L737
.L741:
	movs	r3, #0
	movs	r2, #0
	adds	r1, r4, #4
	add	r0, sp, #8
	bl	REW_loadUnit
	add	r5, sp, #8
	b	.L734
.L742:
	bics	r0, r2
	bl	.L11
	movs	r5, r0
	b	.L734
.L744:
	.align	2
.L743:
	.word	GetUnit
	.word	GetTerrainName
	.word	Text_DrawString
	.word	GetStringFromIndex
	.word	Text_GetCursor
	.word	GetUnitSpritePalette
	.word	StartMuInternal
	.word	-3073
	.word	SetMuFacing
	.size	REW_displayTarget, .-REW_displayTarget
	.align	1
	.p2align 2,,3
	.global	REW_displayCombatVerb
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_displayCombatVerb, %function
REW_displayCombatVerb:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	movs	r5, r2
	movs	r2, #3
	movs	r6, r2
	ldr	r4, .L756
	ldrh	r3, [r1, #2]
	lsls	r4, r4, #16
	lsrs	r4, r4, #16
	ands	r6, r3
	tst	r2, r3
	beq	.L746
	adds	r3, r3, #4
	subs	r3, r3, r6
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
.L746:
	ldrh	r2, [r0, #2]
	adds	r3, r1, r3
	adds	r0, r0, r2
	cmp	r3, r0
	bcs	.L747
	ldrb	r2, [r3]
	cmp	r2, #65
	beq	.L755
.L750:
	@ sp needed
	movs	r0, r4
	ldr	r3, .L756+4
	bl	.L5
	ldr	r3, .L756+8
	movs	r1, r0
	movs	r0, r5
	bl	.L5
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L755:
	ldrb	r2, [r3, #6]
	ldrb	r1, [r3, #5]
	ldrb	r0, [r3, #4]
	ldr	r3, .L756+12
	bl	.L5
	cmp	r0, #0
	bne	.L750
	ldr	r4, .L756+16
	lsls	r4, r4, #16
	lsrs	r4, r4, #16
	b	.L750
.L747:
	movs	r3, #0
	ldrb	r3, [r3]
	.inst	0xdeff
.L757:
	.align	2
.L756:
	.word	REW_combat
	.word	GetStringFromIndex
	.word	Text_DrawString
	.word	GetTypedTrapAt
	.word	REW_obstacleDestroyed
	.size	REW_displayCombatVerb, .-REW_displayCombatVerb
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC231:
	.ascii	".\000"
	.text
	.align	1
	.p2align 2,,3
	.global	REW_refreshUI
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_refreshUI, %function
REW_refreshUI:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r3, #41
	push	{r4, r5, r6, r7, lr}
	ldrb	r3, [r0, r3]
	movs	r4, r0
	sub	sp, sp, #20
	lsls	r2, r3, #30
	bpl	.LCB5252
	b	.L810	@long jump
.LCB5252:
	ldr	r6, .L825
	ldr	r5, .L825+4
.L759:
	lsls	r2, r3, #31
	bpl	.L764
	ldr	r2, .L825+8
	ldrb	r2, [r2, #15]
	cmp	r2, #64
	bne	.LCB5266
	b	.L787	@long jump
.LCB5266:
	subs	r2, r2, #128
	rsbs	r1, r2, #0
	adcs	r2, r2, r1
	lsls	r2, r2, #12
.L765:
	ldr	r1, [r4, #88]
	ldr	r0, [r1, #80]
	ldrh	r1, [r0, #34]
	lsls	r1, r1, #20
	lsrs	r1, r1, #20
	orrs	r2, r1
	strh	r2, [r0, #34]
	movs	r2, #1
	bics	r3, r2
	adds	r2, r2, #40
	strb	r3, [r4, r2]
.L764:
	movs	r2, #4
	movs	r7, r2
	ldr	r0, [r4, #92]
	ands	r7, r3
	tst	r2, r3
	bne	.LCB5295
	b	.L766	@long jump
.LCB5295:
	cmp	r0, #0
	bne	.LCB5297
	b	.L817	@long jump
.LCB5297:
.L767:
	movs	r2, #8
	movs	r7, r2
	ldr	r0, [r4, #96]
	ands	r7, r3
	tst	r2, r3
	bne	.LCB5306
	b	.L768	@long jump
.LCB5306:
.L824:
	cmp	r0, #0
	bne	.LCB5309
	b	.L818	@long jump
.LCB5309:
.L769:
	ldr	r3, .L825+12
	bl	.L5
	movs	r3, #0
	str	r3, [r4, #80]
	str	r3, [r4, #84]
	movs	r3, #166
	ldr	r0, .L825+16
	lsls	r3, r3, #3
	movs	r2, r0
	mov	ip, r3
	movs	r1, #0
	adds	r2, r2, #48
	add	r0, r0, ip
.L770:
	movs	r3, r2
	subs	r3, r3, #48
.L771:
	strh	r1, [r3]
	adds	r3, r3, #2
	cmp	r3, r2
	bne	.L771
	adds	r3, r3, #64
	movs	r2, r3
	cmp	r3, r0
	bne	.L770
	movs	r3, #41
	movs	r7, r4
	ldrb	r3, [r4, r3]
	adds	r7, r7, #48
	lsls	r2, r3, #27
	bpl	.L774
	adds	r7, r7, #8
.L774:
	movs	r2, #16
	eors	r3, r2
	movs	r2, #41
	movs	r0, r7
	strb	r3, [r4, r2]
	bl	.L11
	ldr	r3, .L825+20
	movs	r1, #2
	movs	r0, r7
	bl	.L5
	ldr	r2, [r4, #44]
	ldrb	r3, [r2, #4]
	adds	r6, r2, #4
	cmp	r3, #2
	beq	.L784
.L819:
	cmp	r3, #64
	beq	.L785
	movs	r1, #3
	movs	r0, r1
	ldrh	r3, [r6, #2]
	ands	r0, r3
	tst	r1, r3
	beq	.L782
	adds	r3, r3, #4
	subs	r3, r3, r0
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
.L782:
	adds	r6, r6, r3
	ldrh	r3, [r2, #2]
	adds	r3, r2, r3
	cmp	r6, r3
	sbcs	r3, r3, r3
	rsbs	r3, r3, #0
	rsbs	r3, r3, #0
	ands	r6, r3
	ldrb	r3, [r6]
	cmp	r3, #2
	bne	.L819
.L784:
	movs	r2, r7
	movs	r1, r6
	movs	r0, r4
	bl	REW_displayActor
	movs	r2, r7
	movs	r1, r6
	ldr	r0, [r4, #44]
	bl	REW_displayCombatVerb
	movs	r1, #3
	movs	r0, r1
	ldrh	r3, [r6, #2]
	ldr	r2, [r4, #44]
	ands	r0, r3
	tst	r1, r3
	bne	.L820
.L776:
	adds	r1, r6, r3
	ldrh	r3, [r2, #2]
	adds	r2, r2, r3
	cmp	r1, r2
	sbcs	r2, r2, r2
	movs	r0, r4
	ands	r1, r2
	movs	r2, r7
	bl	REW_displayTarget
	ldr	r1, .L825+24
	movs	r0, r7
	ldr	r3, .L825+28
	bl	.L5
	movs	r0, r7
	ldr	r1, .L825+32
	bl	.L6
.L778:
	movs	r0, #0
	ldr	r3, .L825+36
	bl	.L5
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L785:
	ldr	r3, .L825+8
	ldrb	r3, [r3, #15]
	cmp	r3, #0
	beq	.L779
	cmp	r3, #128
	bne	.L821
	movs	r0, r7
	movs	r1, #1
	ldr	r3, .L825+40
	bl	.L5
	ldr	r0, .L825+44
.L816:
	lsls	r0, r0, #16
	ldr	r3, .L825+48
	lsrs	r0, r0, #16
	bl	.L5
	ldr	r3, .L825+52
	movs	r1, r0
	movs	r0, r7
	bl	.L5
	movs	r0, r7
	ldr	r1, .L825+56
	bl	.L6
	b	.L778
.L810:
	movs	r5, r0
	ldr	r3, .L825+8
	ldrh	r7, [r3, #16]
	adds	r5, r5, #64
	lsls	r3, r7, #31
	bpl	.L761
	adds	r5, r5, #8
.L761:
	movs	r0, r5
	ldr	r6, .L825
	bl	.L11
	movs	r1, #2
	movs	r0, r5
	ldr	r3, .L825+60
	bl	.L5
	cmp	r7, #9
	ble	.L822
	cmp	r7, #99
	ble	.L823
.L763:
	movs	r0, r5
	ldr	r1, .L825+64
	ldr	r5, .L825+4
	bl	.L6
	movs	r2, #41
	movs	r1, #2
	ldrb	r3, [r4, r2]
	bics	r3, r1
	strb	r3, [r4, r2]
	b	.L759
.L820:
	adds	r3, r3, #4
	subs	r3, r3, r0
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	b	.L776
.L766:
	cmp	r0, #0
	bne	.LCB5526
	b	.L767	@long jump
.LCB5526:
	ldr	r3, .L825+68
	bl	.L5
	movs	r2, #8
	movs	r3, #41
	str	r7, [r4, #92]
	movs	r7, r2
	ldrb	r3, [r4, r3]
	ldr	r0, [r4, #96]
	ands	r7, r3
	tst	r2, r3
	beq	.LCB5537
	b	.L824	@long jump
.LCB5537:
.L768:
	cmp	r0, #0
	bne	.LCB5540
	b	.L769	@long jump
.LCB5540:
	ldr	r3, .L825+68
	bl	.L5
	str	r7, [r4, #96]
	b	.L769
.L821:
	movs	r0, r7
	movs	r1, #4
	ldr	r3, .L825+40
	bl	.L5
	ldr	r0, .L825+72
	b	.L816
.L822:
	movs	r0, r5
	movs	r1, #6
	ldr	r3, .L825+40
	bl	.L5
	movs	r1, r7
	movs	r0, r5
	ldr	r3, .L825+76
	bl	.L5
	b	.L763
.L787:
	movs	r2, #128
	lsls	r2, r2, #6
	b	.L765
.L779:
	ldr	r0, .L825+80
	b	.L816
.L818:
	ldr	r7, .L825+84
	str	r0, [sp, #4]
	str	r0, [sp]
	movs	r3, #0
	movs	r0, r7
	movs	r2, #0
	movs	r1, #0
	ldr	r7, .L825+88
	bl	.L7
	str	r0, [r4, #96]
	b	.L769
.L817:
	ldr	r7, .L825+92
	movs	r3, #0
	str	r0, [sp, #4]
	str	r0, [sp]
	movs	r2, #0
	movs	r0, r7
	movs	r1, #0
	ldr	r7, .L825+88
	bl	.L7
	movs	r3, #41
	str	r0, [r4, #92]
	ldrb	r3, [r4, r3]
	b	.L767
.L823:
	ldr	r3, .L825+96
	movs	r1, #10
	movs	r0, r7
	bl	.L5
	ldr	r3, .L825+76
	movs	r1, r0
	movs	r0, r5
	str	r3, [sp, #12]
	bl	.L5
	movs	r0, r5
	movs	r1, #16
	ldr	r3, .L825+40
	bl	.L5
	movs	r0, r7
	ldr	r3, .L825+100
	movs	r1, #10
	bl	.L5
	movs	r0, r5
	ldr	r3, [sp, #12]
	bl	.L5
	b	.L763
.L826:
	.align	2
.L825:
	.word	ClearText
	.word	PutText
	.word	gPlaySt
	.word	EndAllMus
	.word	gBG0TilemapBuffer
	.word	Text_SetCursor
	.word	.LC231
	.word	Text_DrawCharacter
	.word	gBG0TilemapBuffer+138
	.word	BG_EnableSync
	.word	Text_Skip
	.word	REW_phaseRed
	.word	GetStringFromIndex
	.word	Text_DrawString
	.word	gBG0TilemapBuffer+140
	.word	Text_SetColor
	.word	gBG0TilemapBuffer+118
	.word	Proc_End
	.word	REW_phaseGreen
	.word	Text_DrawNumber
	.word	REW_phaseBlue
	.word	REW_downArrowAPDef
	.word	APProc_Create
	.word	REW_upArrowAPDef
	.word	__aeabi_idiv
	.word	__aeabi_idivmod
	.size	REW_refreshUI, .-REW_refreshUI
	.align	1
	.p2align 2,,3
	.global	REW_undo
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_undo, %function
REW_undo:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r2, #3
	push	{r4, r5, r6, lr}
	movs	r1, r2
	movs	r5, r0
	adds	r4, r0, #4
	ldrh	r3, [r4, #2]
	ldrh	r0, [r0, #2]
	ands	r1, r3
	adds	r0, r5, r0
	tst	r2, r3
	beq	.L828
.L855:
	adds	r3, r3, #4
	subs	r3, r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
.L828:
	adds	r3, r4, r3
	cmp	r3, r0
	bcs	.L829
.L856:
	cmp	r3, #0
	beq	.L829
	movs	r4, r3
	movs	r1, r2
	ldrh	r3, [r4, #2]
	ands	r1, r3
	tst	r2, r3
	bne	.L855
	adds	r3, r4, r3
	cmp	r3, r0
	bcc	.L856
.L829:
	ldr	r6, .L857
.L839:
	ldrb	r3, [r4]
	cmp	r3, #2
	beq	.L831
	movs	r2, r3
	subs	r2, r2, #64
	lsls	r2, r2, #24
	lsrs	r2, r2, #24
	cmp	r2, #6
	bhi	.L832
	subs	r3, r3, #65
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	cmp	r3, #5
	bhi	.L833
	lsls	r3, r3, #2
	ldr	r3, [r6, r3]
	mov	pc, r3
	.section	.rodata
	.align	2
.L835:
	.word	.L838
	.word	.L831
	.word	.L837
	.word	.L837
	.word	.L836
	.word	.L834
	.text
.L837:
	ldrb	r0, [r4, #1]
	ldr	r3, .L857+4
	bl	.L5
	cmp	r0, #0
	beq	.L832
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L832
	ldr	r3, .L857+8
	bl	.L5
.L832:
	movs	r1, r4
	movs	r0, r5
	bl	REW_prevEntry
	subs	r4, r0, #0
	bne	.L839
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L838:
	movs	r0, r4
	bl	REW_undoObstacleCombat
	b	.L832
.L836:
	movs	r1, #1
	movs	r0, r4
	bl	REW_doInventoryReorder
	b	.L832
.L834:
	movs	r0, r4
	bl	REW_undoItemObtainedUnit
	b	.L832
.L831:
	movs	r0, r4
	bl	REW_undoCombat
	b	.L832
.L833:
	movs	r0, r4
	bl	REW_undoPhaseChange
	b	.L832
.L858:
	.align	2
.L857:
	.word	.L835
	.word	GetUnit
	.word	ClearUnit
	.size	REW_undo, .-REW_undo
	.align	1
	.p2align 2,,3
	.global	REW_redo
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_redo, %function
REW_redo:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	lr, r8
	ldr	r3, .L878
	movs	r5, r0
	mov	r8, r3
	movs	r6, #3
	push	{lr}
	ldr	r7, .L878+4
	adds	r4, r0, #4
.L870:
	ldrb	r3, [r4]
	cmp	r3, #2
	beq	.L860
	movs	r2, r3
	subs	r2, r2, #64
	lsls	r2, r2, #24
	lsrs	r2, r2, #24
	cmp	r2, #6
	bhi	.L861
	subs	r3, r3, #65
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	cmp	r3, #5
	bhi	.L862
	lsls	r3, r3, #2
	ldr	r3, [r7, r3]
	mov	pc, r3
	.section	.rodata
	.align	2
.L864:
	.word	.L867
	.word	.L860
	.word	.L866
	.word	.L866
	.word	.L865
	.word	.L863
	.text
.L866:
	adds	r0, r4, #4
	bl	.L10
.L861:
	movs	r2, r6
	ldrh	r3, [r4, #2]
	ands	r2, r3
	tst	r6, r3
	beq	.L868
	adds	r3, r3, #4
	subs	r3, r3, r2
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
.L868:
	adds	r4, r4, r3
	ldrh	r3, [r5, #2]
	adds	r3, r5, r3
	cmp	r4, r3
	bcs	.L859
	cmp	r4, #0
	bne	.L870
.L859:
	@ sp needed
	pop	{r7}
	mov	r8, r7
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L867:
	movs	r0, r4
	bl	REW_redoObstacleCombat
	b	.L861
.L865:
	movs	r1, #0
	movs	r0, r4
	bl	REW_doInventoryReorder
	b	.L861
.L863:
	movs	r0, r4
	bl	REW_redoItemObtainedUnit
	b	.L861
.L860:
	movs	r0, r4
	bl	REW_redoCombat
	b	.L861
.L862:
	movs	r0, r4
	bl	REW_redoPhaseChange
	b	.L861
.L879:
	.align	2
.L878:
	.word	LoadUnit
	.word	.L864
	.size	REW_redo, .-REW_redo
	.align	1
	.p2align 2,,3
	.global	REW_handleInput
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_handleInput, %function
REW_handleInput:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	ldr	r3, .L914
	ldr	r3, [r3]
	ldr	r5, .L914+4
	ldrh	r3, [r3, #6]
	movs	r4, r0
	ldrb	r7, [r5, #15]
	ldrh	r6, [r5, #16]
	lsls	r2, r3, #25
	bpl	.L881
	movs	r2, #41
	ldrb	r2, [r0, r2]
	lsls	r2, r2, #29
	bpl	.L881
	movs	r3, #65
	ldrb	r3, [r5, r3]
	lsls	r3, r3, #30
	bpl	.L910
.L882:
	ldr	r0, [r4, #44]
	bl	REW_undo
	movs	r3, #41
	ldrb	r2, [r5, #15]
	ldrb	r3, [r4, r3]
	cmp	r2, r7
	beq	.L883
	movs	r2, #1
	orrs	r3, r2
.L883:
	ldrh	r2, [r5, #16]
	cmp	r2, r6
	beq	.L884
	movs	r2, #2
	orrs	r3, r2
.L884:
	ldr	r2, [r4, #44]
	ldrh	r1, [r2]
	subs	r2, r2, r1
	str	r2, [r4, #44]
	ldrh	r2, [r2]
	cmp	r2, #0
	beq	.L911
.L885:
	movs	r2, #8
.L909:
	orrs	r3, r2
	movs	r2, #41
	movs	r0, r4
	strb	r3, [r4, r2]
	bl	REW_refreshUI
	ldr	r3, .L914+8
	bl	.L5
	ldr	r3, .L914+12
	bl	.L5
.L880:
	@ sp needed
	pop	{r3, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L881:
	lsls	r3, r3, #24
	bpl	.L880
	movs	r3, #41
	ldrb	r3, [r4, r3]
	lsls	r3, r3, #28
	bpl	.L880
	movs	r3, #65
	ldrb	r3, [r5, r3]
	lsls	r3, r3, #30
	bpl	.L912
.L887:
	ldr	r0, [r4, #44]
	ldrh	r3, [r0, #2]
	adds	r0, r0, r3
	str	r0, [r4, #44]
	bl	REW_redo
	movs	r3, #41
	ldrb	r2, [r5, #15]
	ldrb	r3, [r4, r3]
	cmp	r2, r7
	beq	.L888
	movs	r2, #1
	orrs	r3, r2
.L888:
	ldrh	r2, [r5, #16]
	cmp	r2, r6
	beq	.L889
	movs	r2, #2
	orrs	r3, r2
.L889:
	ldr	r2, .L914+16
	ldr	r2, [r2]
	ldr	r1, [r4, #44]
	ldr	r2, [r2, #4]
	cmp	r1, r2
	bcs	.L913
	movs	r2, #4
	b	.L909
.L911:
	adds	r2, r2, #4
	bics	r3, r2
	b	.L885
.L910:
	movs	r0, #102
	ldr	r3, .L914+20
	bl	.L5
	b	.L882
.L913:
	movs	r2, #8
	bics	r3, r2
	movs	r2, #4
	b	.L909
.L912:
	movs	r0, #102
	ldr	r3, .L914+20
	bl	.L5
	b	.L887
.L915:
	.align	2
.L914:
	.word	gKeyStatusPtr
	.word	gPlaySt
	.word	RefreshEntityBmMaps
	.word	RefreshUnitSprites
	.word	REW_rewindBuffer
	.word	m4aSongNumStart
	.size	REW_handleInput, .-REW_handleInput
	.global	REW_procScr
	.section	.rodata.str1.4
	.align	2
.LC258:
	.ascii	"REW_proc\000"
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
	.type	REW_procScr, %object
	.size	REW_procScr, 96
REW_procScr:
	.short	1
	.short	0
	.word	.LC258
	.short	14
	.short	0
	.word	0
	.short	2
	.short	0
	.word	ResetText
	.short	2
	.short	0
	.word	REW_initProc
	.short	2
	.short	0
	.word	REW_initUI
	.short	2
	.short	0
	.word	REW_refreshUI
	.short	11
	.short	1
	.word	0
	.short	3
	.short	0
	.word	REW_handleInput
	.short	11
	.short	2
	.word	0
	.short	11
	.short	3
	.word	0
	.short	2
	.short	0
	.word	REW_procEnd
	.short	0
	.short	0
	.word	0
	.global	__aeabi_idivmod
	.global	__aeabi_idiv
	.ident	"GCC: (devkitARM release 65) 14.2.0"
	.text
	.code 16
	.align	1
.L5:
	bx	r3
.L144:
	bx	r4
.L6:
	bx	r5
.L11:
	bx	r6
.L7:
	bx	r7
.L10:
	bx	r8
.L9:
	bx	r9
.L8:
	bx	r10
.L192:
	bx	fp
