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
	.word	REW_rewindMaxSize
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
	.global	REW_mallocNewRewindEntry
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_mallocNewRewindEntry, %function
REW_mallocNewRewindEntry:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r2, .L62
	ldr	r4, [r2]
	ldr	r2, .L62+4
	ldrh	r1, [r4, #2]
	movs	r3, r0
	cmp	r1, r2
	beq	.L55
	ldr	r2, .L62+8
	adds	r0, r1, #4
	lsls	r2, r2, #16
	adds	r0, r0, r3
	lsrs	r2, r2, #16
	cmp	r0, r2
	bgt	.L60
	subs	r0, r1, #0
	beq	.L61
.L58:
	adds	r3, r3, #4
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	adds	r0, r4, r0
	strh	r3, [r0, #2]
	adds	r3, r3, r1
	strh	r3, [r4, #2]
.L54:
	@ sp needed
	pop	{r4}
	pop	{r1}
	bx	r1
.L61:
	movs	r0, #4
	movs	r1, #4
	b	.L58
.L60:
	movs	r3, #1
	rsbs	r3, r3, #0
	strh	r3, [r4, #2]
.L55:
	movs	r0, #0
	b	.L54
.L63:
	.align	2
.L62:
	.word	REW_curSequence
	.word	65535
	.word	REW_curSequenceMaxSize
	.size	REW_mallocNewRewindEntry, .-REW_mallocNewRewindEntry
	.align	1
	.p2align 2,,3
	.global	REW_mallocSize
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_mallocSize, %function
REW_mallocSize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L69
	ldr	r4, [r3]
	ldr	r2, .L69+4
	ldrh	r3, [r4, #2]
	cmp	r3, r2
	beq	.L65
	ldr	r2, .L69+8
	adds	r3, r3, r1
	lsls	r2, r2, #16
	lsrs	r2, r2, #16
	cmp	r3, r2
	bgt	.L68
	strh	r3, [r4, #2]
	ldrh	r3, [r0, #2]
	adds	r1, r1, r3
	strh	r1, [r0, #2]
	movs	r0, #1
.L67:
	@ sp needed
	pop	{r4}
	pop	{r1}
	bx	r1
.L68:
	movs	r3, #1
	rsbs	r3, r3, #0
	strh	r3, [r4, #2]
.L65:
	movs	r0, #0
	b	.L67
.L70:
	.align	2
.L69:
	.word	REW_curSequence
	.word	65535
	.word	REW_curSequenceMaxSize
	.size	REW_mallocSize, .-REW_mallocSize
	.align	1
	.p2align 2,,3
	.global	REW_alignEntry
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_alignEntry, %function
REW_alignEntry:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L80
	ldr	r5, [r3]
	ldr	r2, .L80+4
	ldrh	r3, [r5, #2]
	cmp	r3, r2
	beq	.L71
	movs	r4, #3
	movs	r6, #0
	ldr	r1, .L80+8
	ands	r4, r3
	subs	r0, r3, r4
	adds	r0, r0, #4
	lsls	r1, r1, #16
	lsrs	r1, r1, #16
	lsrs	r2, r0, #31
	cmp	r1, r0
	adcs	r2, r2, r6
	lsls	r2, r2, #24
	beq	.L71
	cmp	r4, #0
	bne	.L79
.L71:
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L79:
	adds	r3, r3, #4
	subs	r3, r3, r4
	strh	r3, [r5, #2]
	b	.L71
.L81:
	.align	2
.L80:
	.word	REW_curSequence
	.word	65535
	.word	REW_curSequenceMaxSize
	.size	REW_alignEntry, .-REW_alignEntry
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
	ldr	r3, .L85
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	cmp	r3, r0
	beq	.L84
	ldrh	r3, [r0, #2]
	adds	r0, r0, r3
.L83:
	@ sp needed
	bx	lr
.L84:
	movs	r0, #0
	b	.L83
.L86:
	.align	2
.L85:
	.word	REW_rewindBuffer
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
	ldr	r3, .L91
	ldr	r3, [r3]
	adds	r3, r3, #8
	cmp	r0, r3
	beq	.L90
	ldrh	r3, [r0]
	cmp	r3, #0
	beq	.L90
	subs	r0, r0, r3
.L87:
	@ sp needed
	bx	lr
.L90:
	movs	r0, #0
	b	.L87
.L92:
	.align	2
.L91:
	.word	REW_rewindBuffer
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
	beq	.L94
	adds	r2, r2, #4
	subs	r2, r2, r4
	lsls	r2, r2, #16
	lsrs	r2, r2, #16
.L94:
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
	beq	.L101
	adds	r0, r0, #4
	subs	r0, r0, r5
	lsls	r0, r0, #16
	lsrs	r0, r0, #16
.L101:
	ldrh	r4, [r2, #2]
	adds	r0, r3, r0
	adds	r2, r2, r4
	cmp	r0, r2
	sbcs	r4, r4, r4
	ands	r0, r4
	cmp	r3, r1
	beq	.L108
	cmp	r1, r0
	beq	.L109
	movs	r4, #3
	b	.L106
.L110:
	movs	r0, r3
.L106:
	movs	r5, r4
	ldrh	r3, [r0, #2]
	ands	r5, r3
	tst	r4, r3
	beq	.L104
	adds	r3, r3, #4
	subs	r3, r3, r5
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
.L104:
	adds	r3, r0, r3
	cmp	r3, r2
	sbcs	r5, r5, r5
	ands	r3, r5
	cmp	r1, r3
	bne	.L110
.L100:
	@ sp needed
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.L109:
	movs	r0, r3
	b	.L100
.L108:
	movs	r0, #0
	b	.L100
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
	beq	.L118
.L126:
	adds	r3, r3, #4
	subs	r3, r3, r4
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
.L118:
	adds	r3, r0, r3
	cmp	r3, r1
	bcs	.L117
.L127:
	cmp	r3, #0
	beq	.L117
	movs	r0, r3
	movs	r4, r2
	ldrh	r3, [r0, #2]
	ands	r4, r3
	tst	r2, r3
	bne	.L126
	adds	r3, r0, r3
	cmp	r3, r1
	bcc	.L127
.L117:
	@ sp needed
	pop	{r4}
	pop	{r1}
	bx	r1
	.size	REW_lastEntry, .-REW_lastEntry
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
	ldr	r3, .L130
	@ sp needed
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	cmp	r0, r3
	sbcs	r0, r0, r0
	rsbs	r0, r0, #0
	bx	lr
.L131:
	.align	2
.L130:
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
	beq	.L132
	movs	r7, #0
	movs	r6, #0
	b	.L139
.L135:
	cmp	r5, #17
	beq	.L137
	movs	r5, r6
	ands	r5, r7
.L136:
	cmp	r5, #0
	bne	.L132
	adds	r4, r4, #2
	adds	r0, r0, #2
	cmp	r1, r4
	ble	.L132
.L139:
	ldrb	r5, [r0]
	cmp	r5, #16
	bne	.L135
	ldrb	r5, [r0, #1]
	strb	r5, [r2]
	ldrb	r5, [r0]
	cmp	r5, #17
	beq	.L142
	movs	r5, r7
	movs	r6, #1
	b	.L136
.L137:
	ldrb	r5, [r0, #1]
	movs	r7, #1
	strb	r5, [r3]
	movs	r5, r6
	b	.L136
.L142:
	ldrb	r2, [r0, #1]
	strb	r2, [r3]
.L132:
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
	beq	.L147
	movs	r0, #0
	cmp	r2, #1
	beq	.L148
.L145:
	@ sp needed
	pop	{r4}
	pop	{r1}
	bx	r1
.L147:
	bl	REW_getUnitID.part.0
	b	.L145
.L148:
	movs	r2, #1
	ldr	r1, .L149
	ldrsb	r2, [r3, r2]
	ldr	r1, [r1]
	ldrb	r3, [r3]
	lsls	r2, r2, #2
	ldr	r2, [r2, r1]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	ldrb	r0, [r2, r3]
	b	.L145
.L150:
	.align	2
.L149:
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
	ldr	r5, .L161
	ldr	r6, .L161+4
.L153:
	movs	r0, r4
	bl	.L6
	cmp	r0, #0
	beq	.L152
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L152
	movs	r3, #17
	movs	r2, #16
	ldrsb	r3, [r0, r3]
	ldr	r1, [r6]
	lsls	r3, r3, #2
	ldrsb	r2, [r0, r2]
	ldr	r3, [r3, r1]
	ldrb	r3, [r3, r2]
	cmp	r3, #34
	bne	.L152
	ldr	r3, [r0, #12]
	orrs	r3, r7
	str	r3, [r0, #12]
.L152:
	adds	r4, r4, #1
	cmp	r4, #192
	bne	.L153
	@ sp needed
	pop	{r3, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L162:
	.align	2
.L161:
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
	ldr	r2, .L164
	ldr	r3, .L164+4
	bl	.L5
	movs	r1, r4
	movs	r0, r5
	ldr	r3, .L164+8
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
.L165:
	.align	2
.L164:
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
	ldr	r3, .L169
	movs	r4, r0
	ldrb	r2, [r0, #6]
	ldrb	r1, [r0, #5]
	ldrb	r0, [r0, #4]
	bl	.L5
	cmp	r0, #0
	beq	.L167
	ldrb	r3, [r0, #3]
	ldrb	r2, [r4, #7]
	subs	r3, r3, r2
	strb	r3, [r0, #3]
.L166:
	@ sp needed
	pop	{r4}
	pop	{r0}
	bx	r0
.L167:
	ldrb	r1, [r4, #5]
	ldrb	r0, [r4, #4]
	ldr	r3, .L169+4
	bl	.L5
	lsls	r0, r0, #16
	movs	r2, #0
	movs	r1, #0
	ldr	r3, .L169+8
	lsrs	r0, r0, #16
	bl	.L5
	ldrb	r3, [r4, #7]
	ldrb	r2, [r4, #6]
	ldrb	r1, [r4, #5]
	ldrb	r0, [r4, #4]
	rsbs	r3, r3, #0
	ldr	r4, .L169+12
	bl	.L171
	b	.L166
.L170:
	.align	2
.L169:
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
	ldr	r3, .L175
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
	beq	.L174
.L172:
	@ sp needed
	pop	{r4}
	pop	{r0}
	bx	r0
.L174:
	ldr	r3, .L175+4
	bl	.L5
	ldrb	r1, [r4, #5]
	ldrb	r0, [r4, #4]
	ldr	r3, .L175+8
	bl	.L5
	lsls	r0, r0, #16
	movs	r2, #0
	movs	r1, #0
	ldr	r3, .L175+12
	lsrs	r0, r0, #16
	bl	.L5
	b	.L172
.L176:
	.align	2
.L175:
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
	bne	.LCB1196
	b	.L211	@long jump
.LCB1196:
	movs	r3, #63
	mov	r2, r9
	bics	r2, r3
	cmp	r2, #192
	bne	.LCB1203
	b	.L212	@long jump
.LCB1203:
	subs	r7, r7, #4
	adds	r5, r0, #4
	lsls	r1, r7, #16
	lsrs	r1, r1, #16
	movs	r0, r5
	bl	REW_getUnitID.part.0
	ldr	r3, .L217
	bl	.L5
	subs	r4, r0, #0
	beq	.L177
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L177
.L210:
	movs	r3, #17
	ldrsb	r3, [r4, r3]
	str	r3, [sp, #4]
	movs	r3, #16
	ldrsb	r3, [r4, r3]
	mov	r10, r3
.L179:
	mov	r3, r8
	lsrs	r3, r3, #31
	add	r3, r3, r8
	asrs	r7, r3, #1
	mov	r3, r8
	movs	r6, #0
	adds	r5, r5, #2
	cmp	r3, #1
	ble	.L193
	ldr	r3, .L217+4
	mov	r8, r3
	b	.L192
.L214:
	cmp	r3, #28
	beq	.L213
.L189:
	ldrb	r2, [r4, r3]
	ldrb	r1, [r5, #1]
	subs	r2, r2, r1
	strb	r2, [r4, r3]
.L190:
	adds	r6, r6, #1
	adds	r5, r5, #2
	cmp	r7, r6
	ble	.L193
.L192:
	ldrb	r3, [r5]
	cmp	r3, #71
	bls	.L214
	cmp	r3, #87
	bls	.L215
	cmp	r3, #88
	bne	.L190
	ldr	r3, .L217+8
	ldrb	r0, [r4, #28]
	bl	.L5
	ldrb	r2, [r5, #1]
	ldrb	r3, [r0, #6]
	adds	r6, r6, #1
	subs	r3, r3, r2
	strb	r3, [r0, #6]
	adds	r5, r5, #2
	cmp	r7, r6
	bgt	.L192
.L193:
	ldr	r1, [sp, #4]
	mov	r0, r10
	lsls	r7, r1, #2
	movs	r1, #0
	ldr	r2, .L217+12
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
.L177:
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
.L215:
	ldr	r3, [r4]
	ldrb	r0, [r3, #4]
	bl	.L10
	ldrb	r3, [r5]
	subs	r3, r3, #72
	ldrb	r2, [r0, r3]
	ldrb	r1, [r5, #1]
	subs	r2, r2, r1
	strb	r2, [r0, r3]
	b	.L190
.L213:
	movs	r3, #0
	ldrb	r0, [r5, #1]
	rsbs	r0, r0, #0
	lsls	r0, r0, #24
	strb	r3, [r4, #28]
	lsrs	r0, r0, #24
	ldr	r3, .L217+8
	bl	.L5
	mov	fp, r0
	ldr	r3, .L217+16
	bl	.L5
	mov	r2, fp
	ldrb	r3, [r4, #16]
	strb	r3, [r2]
	ldrb	r3, [r4, #17]
	strb	r3, [r2, #1]
	ldrb	r3, [r5]
	b	.L189
.L212:
	mov	r0, r9
	ldr	r3, .L217
	bics	r0, r2
	bl	.L5
	subs	r4, r0, #0
	beq	.L177
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L177
	ldr	r3, .L217+20
	bl	.L5
	mov	r9, r0
	cmp	r0, #0
	ble	.L216
	ldr	r3, .L217+24
	mov	r10, r3
	ldr	r3, .L217+28
	mov	fp, r3
	movs	r3, #50
	mov	ip, r3
	add	ip, ip, r4
	mov	r3, ip
	movs	r7, #0
	str	r3, [sp, #4]
	adds	r6, r6, #4
.L184:
	movs	r1, r7
	movs	r0, r4
	bl	.L8
	subs	r5, r0, #0
	beq	.L185
	ldr	r3, [r4]
	ldrb	r1, [r3, #4]
	bl	.L219
	ldrb	r3, [r6, r7]
	ldr	r2, [sp, #4]
	adds	r5, r5, r0
	adds	r5, r5, #50
	strb	r3, [r5]
	strb	r3, [r2, r7]
.L185:
	adds	r7, r7, #1
	cmp	r9, r7
	bne	.L184
.L186:
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
	b	.L179
.L211:
	ldrb	r0, [r0, #6]
	lsls	r0, r0, #29
	lsrs	r0, r0, #30
	ldr	r3, .L217+32
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
	b	.L210
.L216:
	adds	r6, r6, #4
	b	.L186
.L218:
	.align	2
.L217:
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
	bne	.LCB1479
	b	.L249	@long jump
.LCB1479:
	movs	r3, #63
	movs	r2, r0
	bics	r2, r3
	cmp	r2, #192
	bne	.LCB1486
	b	.L250	@long jump
.LCB1486:
	movs	r3, #5
	ldr	r2, .L256
	ldr	r1, [r2]
	mov	r9, r2
	movs	r2, #4
	ldrsb	r3, [r5, r3]
	lsls	r3, r3, #2
	ldr	r3, [r3, r1]
	ldrsb	r2, [r5, r2]
	ldrb	r0, [r3, r2]
	ldr	r3, .L256+4
	bl	.L5
	subs	r6, r0, #0
	beq	.L220
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L220
	adds	r3, r5, #4
	mov	r8, r3
.L223:
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
	bgt	.LCB1519
	b	.L235	@long jump
.LCB1519:
	mov	r4, r8
	ldr	r3, .L256+8
	movs	r5, #0
	mov	fp, r3
	adds	r4, r4, #2
	b	.L234
.L253:
	cmp	r3, #28
	beq	.L251
.L230:
	ldrb	r2, [r6, r3]
	ldrb	r1, [r4, #1]
	adds	r2, r2, r1
	strb	r2, [r6, r3]
.L232:
	adds	r5, r5, #1
	adds	r4, r4, #2
	cmp	r7, r5
	ble	.L252
.L234:
	ldrb	r3, [r4]
	cmp	r3, #71
	bls	.L253
	cmp	r3, #87
	bls	.L254
	cmp	r3, #88
	bne	.L232
	ldr	r3, .L256+12
	ldrb	r0, [r6, #28]
	bl	.L5
	ldrb	r2, [r4, #1]
	ldrb	r3, [r0, #6]
	adds	r5, r5, #1
	adds	r3, r3, r2
	strb	r3, [r0, #6]
	adds	r4, r4, #2
	cmp	r7, r5
	bgt	.L234
.L252:
	movs	r3, #17
	movs	r1, #16
	ldrsb	r3, [r6, r3]
	ldrsb	r1, [r6, r1]
.L228:
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
.L220:
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
.L254:
	ldr	r3, [r6]
	ldrb	r0, [r3, #4]
	bl	.L219
	ldrb	r3, [r4]
	subs	r3, r3, #72
	ldrb	r2, [r0, r3]
	ldrb	r1, [r4, #1]
	adds	r2, r2, r1
	strb	r2, [r0, r3]
	b	.L232
.L251:
	ldr	r3, .L256+12
	ldrb	r0, [r6, #28]
	bl	.L5
	ldr	r3, .L256+16
	mov	r8, r0
	movs	r0, r6
	bl	.L5
	cmp	r0, #0
	beq	.L255
.L231:
	mov	r2, r8
	ldrb	r3, [r6, #16]
	strb	r3, [r2]
	ldrb	r3, [r6, #17]
	strb	r3, [r2, #1]
	ldrb	r3, [r4]
	b	.L230
.L250:
	ldr	r3, .L256+4
	bics	r0, r2
	bl	.L5
	subs	r6, r0, #0
	beq	.L220
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L220
	ldr	r3, .L256+20
	bl	.L5
	adds	r5, r5, #4
	ldr	r3, .L256+24
	movs	r0, r6
	bl	.L5
	mov	r8, r5
	ldr	r3, .L256
	add	r8, r8, r0
	mov	r9, r3
	subs	r4, r4, r0
	b	.L223
.L249:
	adds	r3, r5, #7
	mov	r8, r3
	movs	r3, #8
	ldr	r2, .L256
	ldr	r1, [r2]
	mov	r9, r2
	movs	r2, #7
	ldrsb	r3, [r5, r3]
	lsls	r3, r3, #2
	ldr	r3, [r3, r1]
	ldrsb	r2, [r5, r2]
	ldrb	r0, [r3, r2]
	ldr	r3, .L256+4
	bl	.L5
	subs	r6, r0, #0
	beq	.L222
	movs	r3, #0
	str	r3, [r0]
.L222:
	movs	r4, r7
	subs	r4, r4, #9
	b	.L223
.L255:
	mov	r0, r8
	ldr	r3, .L256+28
	bl	.L5
	b	.L231
.L235:
	ldr	r1, [sp, #4]
	b	.L228
.L257:
	.align	2
.L256:
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
	ldr	r3, .L308
	movs	r6, r1
	bl	.L5
	mov	r4, sp
	cmp	r0, #0
	beq	.L260
	movs	r2, #8
	mov	r1, sp
	ldr	r3, .L308+4
	bl	.L5
	movs	r2, #11
	ldr	r7, .L308+8
	ldrsb	r2, [r7, r2]
	cmp	r2, #0
	beq	.L260
	movs	r3, #110
	ldrsb	r1, [r6, r3]
	cmp	r1, #0
	beq	.L261
	ldr	r3, [sp, #8]
	lsls	r3, r3, #8
	lsrs	r3, r3, #20
	adds	r3, r3, r1
	movs	r1, #250
	lsls	r1, r1, #4
	cmp	r3, r1
	bgt	.L302
.L262:
	ldr	r1, [r4, #8]
	ldr	r0, .L308+12
	lsls	r3, r3, #20
	lsrs	r3, r3, #8
	ands	r1, r0
	orrs	r3, r1
	str	r3, [r4, #8]
.L261:
	movs	r1, #11
	movs	r3, #192
	ldrsb	r1, [r6, r1]
	tst	r3, r1
	beq	.L263
	ldr	r3, .L308+16
	mov	r8, r3
	ldrb	r3, [r3, #11]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	cmp	r3, r1
	beq	.L264
	cmp	r2, r1
	bne	.LCB1778
	b	.L301	@long jump
.LCB1778:
.L260:
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
.L263:
	movs	r0, #250
	ldrh	r3, [r4, #12]
	lsls	r3, r3, #18
	lsrs	r3, r3, #20
	adds	r3, r3, #1
	lsls	r0, r0, #4
	cmp	r3, r0
	bgt	.L303
.L267:
	lsls	r3, r3, #20
	lsrs	r3, r3, #18
	mov	r8, r3
	ldrh	r0, [r4, #12]
	ldr	r3, .L308+20
	ands	r0, r3
	mov	r3, r8
	orrs	r3, r0
	strh	r3, [r4, #12]
	ldr	r3, .L308+16
	mov	r8, r3
	ldrb	r3, [r3, #11]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	cmp	r3, r1
	beq	.L264
	cmp	r2, r1
	beq	.L301
.L275:
	mov	r3, r8
	ldrb	r3, [r3, #11]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	cmp	r3, r1
	bne	.LCB1836
	b	.L304	@long jump
.LCB1836:
.L276:
	movs	r3, #11
	ldrsb	r3, [r7, r3]
	cmp	r3, r1
	bne	.L260
	mov	r0, r8
	ldr	r3, .L308+24
	bl	.L5
	cmp	r0, #0
	bne	.L260
.L279:
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
	bcs	.L260
	adds	r3, r3, #1
	strb	r3, [r4, #11]
	lsrs	r3, r3, #8
	ands	r3, r1
	bics	r2, r1
	orrs	r2, r3
	strb	r2, [r4, #12]
	b	.L260
.L302:
	movs	r3, r1
	b	.L262
.L303:
	movs	r3, r0
	b	.L267
.L264:
	ldr	r3, .L308+24
	mov	r0, r8
	mov	r9, r3
	bl	.L5
	cmp	r0, #0
	bne	.L305
.L269:
	ldr	r3, .L308+28
	bl	.L5
	cmp	r0, #2
	beq	.L306
	movs	r2, #63
	ldr	r3, .L308+32
	ldrb	r1, [r3, #14]
	ands	r2, r1
	movs	r1, #0
.L272:
	ldrh	r3, [r3, #16]
	lsls	r3, r3, #22
	lsls	r2, r2, #8
	lsrs	r3, r3, #8
	orrs	r3, r2
	ldr	r0, .L308+36
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
	beq	.L307
	mov	r3, r8
	ldr	r3, [r3]
	ldrb	r0, [r3, #4]
.L274:
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
.L270:
	movs	r3, #192
	tst	r3, r1
	beq	.LCB1983
	b	.L260	@long jump
.LCB1983:
	b	.L275
.L301:
	ldr	r3, .L308+24
	mov	r9, r3
.L265:
	movs	r0, r7
	bl	.L9
	cmp	r0, #0
	beq	.L269
	movs	r1, #11
	ldrsb	r1, [r6, r1]
	b	.L270
.L305:
	movs	r1, #11
	movs	r3, #11
	ldrsb	r1, [r6, r1]
	ldrsb	r3, [r7, r3]
	cmp	r3, r1
	bne	.L270
	b	.L265
.L304:
	movs	r0, r7
	ldr	r3, .L308+24
	bl	.L5
	cmp	r0, #0
	bne	.LCB2018
	b	.L279	@long jump
.LCB2018:
	movs	r1, #11
	ldrsb	r1, [r6, r1]
	b	.L276
.L307:
	ldr	r3, [r7]
	ldrb	r0, [r3, #4]
	b	.L274
.L306:
	movs	r2, #63
	ldr	r3, .L308+40
	ldrb	r3, [r3, #17]
	movs	r1, #1
	ands	r2, r3
	ldr	r3, .L308+32
	b	.L272
.L309:
	.align	2
.L308:
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
	@ args = 12, pretend = 0, frame = 96
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	lr, fp
	mov	r7, r10
	mov	r5, r8
	mov	r6, r9
	push	{r5, r6, r7, lr}
	movs	r7, r1
	mov	r10, r0
	sub	sp, sp, #100
	movs	r5, r3
	add	r3, sp, #136
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	ldr	r4, [sp, #144]
	mov	fp, r3
	ldrb	r3, [r0, #11]
	add	r6, sp, #24
	movs	r1, r6
	strb	r3, [r4, #1]
	mov	r8, r2
	ldr	r3, .L374
	movs	r2, #36
	movs	r0, r7
	bl	.L5
	mov	r3, r10
	mov	r1, r10
	ldr	r2, [r3, #4]
	ldrb	r1, [r1, #26]
	ldrb	r3, [r7, #26]
	subs	r3, r3, r1
	ldrb	r1, [r2, #17]
	subs	r3, r3, r1
	mov	r1, r10
	ldr	r1, [r1]
	ldrb	r1, [r1, #19]
	subs	r3, r3, r1
	mov	r1, r10
	strb	r3, [r6, #26]
	ldrb	r3, [r7, #29]
	ldrb	r1, [r1, #29]
	ldrb	r2, [r2, #18]
	subs	r3, r3, r1
	subs	r3, r3, r2
	strb	r3, [r6, #29]
	movs	r3, #82
	ldrsb	r3, [r7, r3]
	cmp	r3, #0
	beq	.L311
	movs	r3, #81
	movs	r2, #72
	ldrb	r3, [r7, r3]
	adds	r3, r3, #12
	ldrh	r2, [r7, r2]
	lsls	r3, r3, #1
	adds	r3, r6, r3
	strh	r2, [r3, #6]
.L311:
	movs	r3, #111
	ldrsb	r1, [r7, r3]
	cmp	r1, #0
	blt	.L312
	movs	r0, r6
	ldr	r3, .L374+4
	bl	.L5
.L312:
	movs	r2, #115
	ldr	r0, [sp, #44]
	ldrb	r2, [r7, r2]
	ldrb	r3, [r6, #18]
	adds	r3, r3, r2
	movs	r2, r0
	strb	r3, [r6, #18]
	ldr	r1, .L374+8
	ldr	r3, [r7, #116]
	ands	r2, r1
	ands	r1, r3
	adds	r2, r2, r1
	ldr	r1, .L374+12
	eors	r3, r0
	ands	r3, r1
	eors	r3, r2
	movs	r2, #120
	str	r3, [sp, #44]
	ldrb	r2, [r7, r2]
	ldrb	r3, [r6, #24]
	adds	r3, r3, r2
	movs	r2, #121
	strb	r3, [r6, #24]
	ldrb	r3, [r6, #25]
	ldrb	r2, [r7, r2]
	adds	r3, r3, r2
	movs	r0, r6
	strb	r3, [r6, #25]
	ldr	r3, .L374+16
	bl	.L5
	movs	r0, r7
	ldr	r3, .L374+20
	bl	.L5
	cmp	r0, #0
	ble	.L313
	movs	r3, #80
	ldrb	r3, [r7, r3]
	adds	r3, r6, r3
	adds	r3, r3, #40
	strb	r0, [r3]
.L313:
	movs	r0, r6
	ldr	r3, .L374+24
	bl	.L5
	mov	r2, r8
	ldr	r3, [r6, #12]
	orrs	r3, r2
	str	r3, [r6, #12]
	ldr	r3, .L374+28
	mov	r9, r3
	ldr	r3, [r3]
	ldr	r2, .L374+32
	ldrh	r0, [r3, #2]
	mov	ip, r2
	cmp	r0, r2
	bne	.LCB2186
	b	.L310	@long jump
.LCB2186:
	ldr	r2, .L374+36
	lsls	r2, r2, #16
	lsrs	r2, r2, #16
	mov	r8, r2
	adds	r2, r0, #2
	cmp	r2, r8
	ble	.LCB2193
	b	.L366	@long jump
.LCB2193:
	lsls	r2, r2, #16
	lsrs	r2, r2, #16
	strh	r2, [r3, #2]
	ldrh	r1, [r4, #2]
	str	r1, [sp, #4]
	adds	r1, r1, #2
	strh	r1, [r4, #2]
	mov	r1, fp
	strb	r5, [r4, #4]
	strb	r1, [r4, #5]
	ldrb	r1, [r6, #16]
	subs	r1, r1, r5
	lsls	r1, r1, #24
	lsrs	r5, r1, #24
	str	r5, [sp]
	movs	r5, #0
	cmp	r1, #0
	beq	.LCB2211
	b	.L367	@long jump
.LCB2211:
	mov	r1, fp
	ldrb	r2, [r6, #17]
	subs	r2, r2, r1
	lsls	r2, r2, #24
	lsrs	r1, r2, #24
	cmp	r2, #0
	beq	.LCB2218
	b	.L368	@long jump
.LCB2218:
.L319:
	ldr	r2, .L374+32
	str	r4, [sp, #144]
	movs	r0, r6
	mov	r4, r10
	movs	r1, #0
	mov	r10, r7
	mov	ip, r2
	str	r3, [sp]
	ldr	r7, [sp, #144]
	b	.L323
.L321:
	adds	r1, r1, #1
	adds	r0, r0, #1
	cmp	r1, #72
	beq	.L369
.L323:
	ldrb	r3, [r4, r1]
	ldrb	r2, [r0]
	subs	r2, r2, r3
	lsls	r2, r2, #24
	lsrs	r3, r2, #24
	mov	fp, r3
	cmp	r2, #0
	beq	.L321
	ldr	r3, [sp]
	ldrh	r2, [r3, #2]
	cmp	r2, ip
	beq	.L310
	adds	r2, r2, #2
	cmp	r8, r2
	blt	.L366
	ldr	r3, [sp]
	strh	r2, [r3, #2]
	mov	r3, fp
	ldrh	r2, [r7, #2]
	adds	r2, r2, #2
	strh	r2, [r7, #2]
	lsls	r2, r5, #1
	adds	r2, r7, r2
	strb	r1, [r2, #6]
	adds	r1, r1, #1
	strb	r3, [r2, #7]
	adds	r5, r5, #1
	adds	r0, r0, #1
	cmp	r1, #72
	bne	.L323
.L369:
	movs	r4, r7
	mov	r7, r10
	ldr	r3, [r7]
	ldrb	r0, [r3, #4]
	ldr	r3, .L374+40
	bl	.L5
	mov	r10, r0
	cmp	r0, #0
	bne	.LCB2277
	b	.L324	@long jump
.LCB2277:
	movs	r1, r7
	add	r0, sp, #8
	bl	REW_applyBWLChanges
	add	r1, sp, #8
	movs	r2, #1
	mov	ip, r1
	mov	r3, r9
	rsbs	r2, r2, #0
	add	r2, r2, ip
	ldr	r3, [r3]
	mov	ip, r2
	ldr	r2, .L374+32
	mov	fp, r3
	mov	r0, r10
	mov	r1, r9
	mov	r10, r2
	movs	r2, r7
	movs	r3, #1
	mov	r7, fp
	str	r5, [sp]
	mov	fp, r2
	str	r1, [sp, #4]
	subs	r0, r0, #1
	b	.L327
.L325:
	adds	r3, r3, #1
	cmp	r3, #17
	beq	.L370
.L327:
	mov	r2, ip
	ldrb	r1, [r0, r3]
	ldrb	r2, [r2, r3]
	subs	r2, r2, r1
	lsls	r2, r2, #24
	lsrs	r1, r2, #24
	cmp	r2, #0
	beq	.L325
	ldrh	r2, [r7, #2]
	cmp	r2, r10
	beq	.L310
	adds	r2, r2, #2
	cmp	r8, r2
	blt	.L371
	movs	r5, #71
	mov	r9, r5
	add	r9, r9, r3
	mov	r5, r9
	strh	r2, [r7, #2]
	ldrh	r2, [r4, #2]
	adds	r2, r2, #2
	strh	r2, [r4, #2]
	ldr	r2, [sp]
	lsls	r2, r2, #1
	adds	r2, r4, r2
	strb	r5, [r2, #6]
	strb	r1, [r2, #7]
	ldr	r2, [sp]
	adds	r2, r2, #1
	str	r2, [sp]
	b	.L325
.L366:
	movs	r2, #1
	rsbs	r2, r2, #0
	strh	r2, [r3, #2]
.L310:
	add	sp, sp, #100
	@ sp needed
	pop	{r4, r5, r6, r7}
	mov	fp, r7
	mov	r10, r6
	mov	r9, r5
	mov	r8, r4
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L367:
	cmp	r2, ip
	beq	.L310
	adds	r0, r0, #4
	cmp	r8, r0
	blt	.L366
	ldr	r2, [sp, #4]
	adds	r2, r2, #4
	strh	r0, [r3, #2]
	strh	r2, [r4, #2]
	movs	r2, #16
	mov	r1, fp
	strb	r2, [r4, #6]
	ldr	r2, [sp]
	strb	r2, [r4, #7]
	ldrb	r2, [r6, #17]
	subs	r2, r2, r1
	lsls	r2, r2, #24
	movs	r5, #1
	lsrs	r1, r2, #24
	cmp	r2, #0
	bne	.LCB2388
	b	.L319	@long jump
.LCB2388:
.L368:
	ldrh	r2, [r3, #2]
	ldr	r0, .L374+32
	cmp	r2, r0
	beq	.L310
	adds	r2, r2, #2
	cmp	r8, r2
	blt	.L366
	movs	r0, #17
	strh	r2, [r3, #2]
	ldrh	r2, [r4, #2]
	adds	r2, r2, #2
	strh	r2, [r4, #2]
	lsls	r2, r5, #1
	adds	r2, r4, r2
	strb	r0, [r2, #6]
	strb	r1, [r2, #7]
	adds	r5, r5, #1
	b	.L319
.L370:
	ldr	r3, [sp, #4]
	mov	r7, fp
	mov	r9, r3
	ldr	r5, [sp]
.L324:
	ldrb	r3, [r6, #28]
	cmp	r3, #0
	beq	.L330
	movs	r3, #72
	ldrh	r0, [r7, r3]
	cmp	r0, #0
	bne	.L372
.L330:
	mov	r3, r9
	ldr	r0, [r3]
.L329:
	ldrh	r3, [r0, #2]
	ldr	r2, .L374+32
	cmp	r3, r2
	beq	.L310
	movs	r1, #3
	mov	r2, r8
	mov	r6, r8
	ands	r1, r3
	subs	r4, r3, r1
	adds	r4, r4, #4
	asrs	r2, r2, #31
	lsrs	r5, r4, #31
	cmp	r6, r4
	adcs	r2, r2, r5
	lsls	r2, r2, #24
	beq	.L310
	cmp	r1, #0
	beq	.L310
	adds	r3, r3, #4
	subs	r3, r3, r1
	strh	r3, [r0, #2]
	b	.L310
.L371:
	movs	r3, #1
	rsbs	r3, r3, #0
	strh	r3, [r7, #2]
	b	.L310
.L372:
	ldr	r3, .L374+44
	bl	.L5
	ldr	r3, .L374+48
	movs	r7, r0
	ldrb	r0, [r6, #28]
	bl	.L5
	mov	r1, r9
	ldrb	r3, [r0, #6]
	subs	r3, r7, r3
	lsls	r3, r3, #24
	ldr	r0, [r1]
	lsrs	r2, r3, #24
	cmp	r3, #0
	beq	.L329
	ldrh	r3, [r0, #2]
	ldr	r1, .L374+32
	cmp	r3, r1
	bne	.LCB2486
	b	.L310	@long jump
.LCB2486:
	adds	r3, r3, #2
	cmp	r8, r3
	blt	.L373
	strh	r3, [r0, #2]
	ldrh	r3, [r4, #2]
	adds	r3, r3, #2
	strh	r3, [r4, #2]
	movs	r3, #88
	lsls	r5, r5, #1
	adds	r4, r4, r5
	strb	r3, [r4, #6]
	strb	r2, [r4, #7]
	b	.L329
.L373:
	movs	r3, #1
	rsbs	r3, r3, #0
	strh	r3, [r0, #2]
	b	.L310
.L375:
	.align	2
.L374:
	.word	CpuSet
	.word	SetUnitStatus
	.word	2139062143
	.word	-2139062144
	.word	UnitCheckStatCaps
	.word	GetBattleUnitUpdatedWeaponExp
	.word	UnitRemoveInvalidItems
	.word	REW_curSequence
	.word	65535
	.word	REW_curSequenceMaxSize
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
	@ args = 12, pretend = 0, frame = 112
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r5, r8
	mov	r7, r10
	mov	lr, fp
	mov	r6, r9
	push	{r5, r6, r7, lr}
	sub	sp, sp, #116
	str	r2, [sp, #20]
	movs	r2, #192
	str	r3, [sp, #4]
	add	r3, sp, #152
	ldrb	r3, [r3]
	ldr	r5, [sp, #160]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	str	r3, [sp, #8]
	adds	r3, r5, #4
	mov	r8, r3
	movs	r3, #11
	movs	r7, r2
	str	r1, [sp, #16]
	ldrsb	r3, [r0, r3]
	movs	r4, r0
	ands	r7, r3
	tst	r2, r3
	bne	.L377
	ldr	r2, [r0, #4]
	ldrb	r2, [r2, #4]
	cmp	r2, #81
	beq	.LCB2560
	b	.L430	@long jump
.LCB2560:
.L377:
	movs	r7, #255
	ldr	r2, .L437
	strb	r7, [r5, #1]
	ldr	r0, [r2]
	mov	r9, r2
	ldr	r1, .L437+4
	ldrh	r2, [r0, #2]
	cmp	r2, r1
	bne	.LCB2570
	b	.L376	@long jump
.LCB2570:
	ldr	r1, .L437+8
	adds	r2, r2, #5
	mov	fp, r1
	lsls	r1, r1, #16
	lsrs	r1, r1, #16
	cmp	r2, r1
	ble	.LCB2577
	b	.L429	@long jump
.LCB2577:
	strh	r2, [r0, #2]
	ldrh	r2, [r5, #2]
	mov	r1, r8
	adds	r2, r2, #5
	strh	r2, [r5, #2]
	mov	r2, r8
	ldr	r0, [sp, #4]
	strb	r0, [r1, #3]
	ldr	r1, [sp, #8]
	strb	r1, [r2, #4]
	adds	r2, r2, #3
	str	r2, [sp]
	ldr	r2, [r4]
	ldrb	r2, [r2, #4]
	strb	r2, [r5, #4]
	ldr	r2, [r4, #4]
	ldrb	r2, [r2, #4]
	strb	r2, [r5, #5]
	movs	r2, #6
	asrs	r3, r3, #5
	ands	r3, r2
	ldr	r2, [r4, #12]
	lsls	r2, r2, #19
	lsrs	r2, r2, #31
	orrs	r3, r2
	ldrb	r2, [r4, #8]
	lsls	r2, r2, #3
	orrs	r3, r2
	add	r1, sp, #40
	mov	r10, r1
	strb	r3, [r5, #6]
	movs	r2, #16
	movs	r3, #17
	ldrsb	r2, [r4, r2]
	ldrsb	r3, [r4, r3]
	mov	r1, r8
	mov	r0, r10
	bl	REW_loadUnit
	mov	r3, r10
	mov	r2, r10
	strb	r7, [r3, #9]
	ldrb	r3, [r4, #11]
	strb	r3, [r2, #11]
	ldr	r3, [r4, #60]
	str	r3, [r2, #60]
.L382:
	mov	r3, r9
	ldr	r0, [r3]
	ldr	r3, .L437+4
	mov	ip, r3
	mov	r3, fp
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	mov	r8, r3
	ldr	r3, [sp]
	mov	r1, r10
	movs	r7, #0
	movs	r2, #0
	mov	r10, r3
	b	.L388
.L386:
	adds	r2, r2, #1
	adds	r1, r1, #1
	cmp	r2, #72
	beq	.L431
.L388:
	ldrb	r6, [r4, r2]
	ldrb	r3, [r1]
	subs	r3, r3, r6
	lsls	r3, r3, #24
	lsrs	r6, r3, #24
	cmp	r3, #0
	beq	.L386
	ldrh	r3, [r0, #2]
	cmp	r3, ip
	beq	.L376
	adds	r3, r3, #2
	cmp	r3, r8
	bgt	.L429
	strh	r3, [r0, #2]
	ldrh	r3, [r5, #2]
	adds	r3, r3, #2
	strh	r3, [r5, #2]
	lsls	r3, r7, #1
	add	r3, r3, r10
	strb	r2, [r3, #2]
	adds	r2, r2, #1
	strb	r6, [r3, #3]
	adds	r7, r7, #1
	adds	r1, r1, #1
	cmp	r2, #72
	bne	.L388
.L431:
	ldr	r3, [r4]
	ldrb	r0, [r3, #4]
	ldr	r3, .L437+12
	bl	.L5
	mov	r8, r0
	cmp	r0, #0
	bne	.LCB2682
	b	.L389	@long jump
.LCB2682:
	ldr	r1, [sp, #16]
	add	r0, sp, #24
	bl	REW_applyBWLChanges
	add	r1, sp, #24
	movs	r2, #1
	mov	ip, r1
	rsbs	r2, r2, #0
	add	r2, r2, ip
	mov	ip, r2
	ldr	r2, .L437+4
	mov	r3, r9
	mov	r0, r8
	mov	r8, r2
	mov	r2, fp
	ldr	r3, [r3]
	lsls	r2, r2, #16
	mov	r10, r3
	lsrs	r6, r2, #16
	mov	r1, r9
	movs	r2, r4
	movs	r3, #1
	mov	r4, r10
	str	r1, [sp, #8]
	mov	r10, r2
	str	r6, [sp, #4]
	subs	r0, r0, #1
	b	.L392
.L390:
	adds	r3, r3, #1
	cmp	r3, #17
	bne	.LCB2716
	b	.L432	@long jump
.LCB2716:
.L392:
	mov	r2, ip
	ldrb	r1, [r0, r3]
	ldrb	r2, [r2, r3]
	subs	r2, r2, r1
	lsls	r2, r2, #24
	lsrs	r1, r2, #24
	cmp	r2, #0
	beq	.L390
	ldrh	r2, [r4, #2]
	cmp	r2, r8
	beq	.L376
	ldr	r6, [sp, #4]
	adds	r2, r2, #2
	cmp	r2, r6
	ble	.LCB2733
	b	.L433	@long jump
.LCB2733:
	ldr	r6, [sp]
	mov	r9, r6
	movs	r6, r3
	strh	r2, [r4, #2]
	ldrh	r2, [r5, #2]
	adds	r2, r2, #2
	strh	r2, [r5, #2]
	lsls	r2, r7, #1
	add	r2, r2, r9
	adds	r6, r6, #71
	strb	r6, [r2, #2]
	strb	r1, [r2, #3]
	adds	r7, r7, #1
	b	.L390
.L429:
	movs	r3, #1
	rsbs	r3, r3, #0
	strh	r3, [r0, #2]
.L376:
	add	sp, sp, #116
	@ sp needed
	pop	{r4, r5, r6, r7}
	mov	fp, r7
	mov	r10, r6
	mov	r9, r5
	mov	r8, r4
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L430:
	movs	r2, #64
	rsbs	r2, r2, #0
	orrs	r3, r2
	strb	r3, [r5, #1]
	ldr	r3, .L437+16
	bl	.L5
	ldr	r3, .L437
	ldr	r6, [r3]
	adds	r2, r0, #2
	mov	r10, r0
	ldrh	r1, [r6, #2]
	ldr	r0, .L437+4
	lsls	r2, r2, #16
	mov	r9, r3
	lsrs	r2, r2, #16
	cmp	r1, r0
	beq	.L376
	ldr	r3, .L437+8
	adds	r1, r1, r2
	lsls	r0, r3, #16
	mov	fp, r3
	lsrs	r0, r0, #16
	cmp	r1, r0
	bgt	.L434
	mov	r3, r10
	strh	r1, [r6, #2]
	ldrh	r1, [r5, #2]
	adds	r2, r2, r1
	strh	r2, [r5, #2]
	cmp	r3, #0
	ble	.L384
	ldr	r3, .L437+20
	str	r3, [sp]
	ldr	r3, .L437+24
	str	r5, [sp, #160]
	str	r3, [sp, #12]
	ldr	r3, [sp, #160]
	mov	r5, r10
	mov	r10, r3
.L381:
	movs	r1, r7
	movs	r0, r4
	ldr	r3, [sp]
	bl	.L5
	subs	r6, r0, #0
	beq	.L383
	ldr	r3, [r4]
	ldrb	r1, [r3, #4]
	ldr	r3, [sp, #12]
	bl	.L5
	mov	r2, r8
	adds	r6, r6, r0
	adds	r6, r6, #50
	ldrb	r3, [r6]
	strb	r3, [r2, r7]
.L383:
	adds	r7, r7, #1
	cmp	r5, r7
	bne	.L381
	mov	r3, r10
	mov	r10, r5
	movs	r5, r3
	str	r3, [sp, #160]
.L384:
	mov	r3, r8
	ldr	r2, [sp, #4]
	add	r3, r3, r10
	strb	r2, [r3]
	ldr	r2, [sp, #8]
	str	r3, [sp]
	strb	r2, [r3, #1]
	add	r3, sp, #40
	mov	r10, r3
	movs	r1, r3
	ldr	r2, .L437+28
	ldr	r3, .L437+32
	movs	r0, r4
	bl	.L5
	mov	r3, r10
	ldr	r2, [sp, #20]
	ldr	r3, [r3, #12]
	orrs	r2, r3
	movs	r3, r2
	ldr	r2, .L437+36
	ands	r3, r2
	mov	r2, r10
	str	r3, [r2, #12]
	movs	r3, #0
	strb	r3, [r2, #28]
	b	.L382
.L432:
	ldr	r3, [sp, #8]
	mov	r4, r10
	mov	r9, r3
.L389:
	ldrb	r3, [r4, #28]
	cmp	r3, #0
	beq	.L395
	movs	r3, #72
	ldr	r2, [sp, #16]
	ldrh	r0, [r2, r3]
	cmp	r0, #0
	bne	.L435
.L395:
	mov	r3, r9
	ldr	r1, [r3]
.L394:
	ldrh	r2, [r1, #2]
	ldr	r3, .L437+4
	cmp	r2, r3
	bne	.LCB2891
	b	.L376	@long jump
.LCB2891:
	movs	r4, #3
	mov	r3, fp
	movs	r6, #0
	ands	r4, r2
	subs	r5, r2, r4
	adds	r5, r5, #4
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsrs	r0, r5, #31
	cmp	r3, r5
	adcs	r0, r0, r6
	lsls	r3, r0, #24
	bne	.LCB2908
	b	.L376	@long jump
.LCB2908:
	cmp	r4, #0
	bne	.LCB2913
	b	.L376	@long jump
.LCB2913:
	adds	r2, r2, #4
	subs	r2, r2, r4
	strh	r2, [r1, #2]
	b	.L376
.L434:
	movs	r3, #1
	rsbs	r3, r3, #0
	strh	r3, [r6, #2]
	b	.L376
.L433:
	movs	r3, #1
	rsbs	r3, r3, #0
	strh	r3, [r4, #2]
	b	.L376
.L435:
	ldr	r3, .L437+40
	bl	.L5
	mov	r8, r0
	ldr	r3, .L437+44
	ldrb	r0, [r4, #28]
	bl	.L5
	mov	r2, r8
	mov	r1, r9
	ldrb	r3, [r0, #6]
	subs	r3, r2, r3
	lsls	r3, r3, #24
	ldr	r1, [r1]
	lsrs	r2, r3, #24
	cmp	r3, #0
	beq	.L394
	ldrh	r3, [r1, #2]
	ldr	r0, .L437+4
	cmp	r3, r0
	bne	.LCB2954
	b	.L376	@long jump
.LCB2954:
	mov	r0, fp
	adds	r3, r3, #2
	lsls	r0, r0, #16
	lsrs	r0, r0, #16
	cmp	r3, r0
	bgt	.L436
	strh	r3, [r1, #2]
	ldrh	r3, [r5, #2]
	adds	r3, r3, #2
	strh	r3, [r5, #2]
	ldr	r3, [sp]
	lsls	r7, r7, #1
	adds	r6, r3, r7
	movs	r3, #88
	strb	r2, [r6, #3]
	strb	r3, [r6, #2]
	b	.L394
.L436:
	movs	r3, #1
	rsbs	r3, r3, #0
	strh	r3, [r1, #2]
	b	.L376
.L438:
	.align	2
.L437:
	.word	REW_curSequence
	.word	65535
	.word	REW_curSequenceMaxSize
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
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	lr, fp
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	movs	r0, #11
	push	{r5, r6, r7, lr}
	ldr	r7, .L463
	ldr	r3, [r7]
	mov	r10, r3
	ldr	r3, .L463+4
	ldr	r4, .L463+8
	ldrsb	r0, [r3, r0]
	sub	sp, sp, #28
	mov	r8, r3
	bl	.L171
	movs	r5, r0
	movs	r0, #11
	ldr	r3, .L463+12
	ldrsb	r0, [r3, r0]
	mov	r9, r3
	bl	.L171
	movs	r6, r0
	ldr	r0, [r7]
	ldr	r2, .L463+16
	ldrh	r3, [r0, #2]
	cmp	r3, r2
	beq	.L439
	ldr	r4, .L463+20
	adds	r2, r3, #4
	lsls	r4, r4, #16
	lsrs	r4, r4, #16
	cmp	r2, r4
	ble	.LCB3035
	b	.L461	@long jump
.LCB3035:
	cmp	r3, #0
	beq	.L452
	lsls	r2, r2, #16
	lsrs	r1, r2, #16
.L443:
	adds	r2, r0, r3
	movs	r3, #4
	strh	r3, [r2, #2]
	subs	r3, r3, #2
	strh	r1, [r0, #2]
	strb	r3, [r2]
	movs	r3, #0
	movs	r0, #2
	ldr	r1, .L463+24
	ldrsb	r3, [r1, r3]
	str	r3, [sp, #20]
	ldrsb	r0, [r1, r0]
	mov	r1, r8
	ldrb	r1, [r1, #19]
	lsls	r1, r1, #24
	asrs	r1, r1, #24
	bne	.L444
	ldr	r3, [r5, #12]
	adds	r1, r1, #1
	bics	r3, r1
	str	r3, [r5, #12]
	str	r2, [sp, #8]
	mov	r2, r10
	mov	fp, r1
	str	r2, [sp, #4]
	str	r0, [sp]
	movs	r2, #7
	ldr	r3, [sp, #20]
	mov	r1, r8
	movs	r0, r5
	bl	REW_storeCombatDataDead
	mov	r2, fp
	ldr	r3, [r5, #12]
	orrs	r3, r2
	str	r3, [r5, #12]
.L445:
	ldr	r1, [r7]
	ldr	r2, .L463+16
	ldrh	r3, [r1, #2]
	cmp	r3, r2
	beq	.L439
	adds	r2, r3, #4
	cmp	r4, r2
	bge	.LCB3091
	b	.L460	@long jump
.LCB3091:
	cmp	r3, #0
	beq	.L453
	adds	r5, r1, r3
	movs	r3, #4
	lsls	r2, r2, #16
	lsrs	r2, r2, #16
	strh	r3, [r5, #2]
	mov	r8, r3
	strh	r2, [r1, #2]
	cmp	r6, #0
	beq	.L449
.L462:
	mov	r1, r9
	subs	r3, r3, #2
	strb	r3, [r5]
	movs	r2, #17
	movs	r3, #16
	ldrb	r1, [r1, #19]
	lsls	r1, r1, #24
	ldrsb	r3, [r6, r3]
	ldrsb	r2, [r6, r2]
	asrs	r1, r1, #24
	str	r5, [sp, #8]
	beq	.LCB3116
	b	.L450	@long jump
.LCB3116:
	mov	r1, r10
	str	r2, [sp]
	str	r1, [sp, #4]
	movs	r2, #5
	mov	r1, r9
	movs	r0, r6
	bl	REW_storeCombatDataDead
.L439:
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7}
	mov	fp, r7
	mov	r10, r6
	mov	r9, r5
	mov	r8, r4
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L452:
	movs	r1, #8
	movs	r3, #4
	b	.L443
.L444:
	str	r2, [sp, #8]
	mov	r2, r10
	str	r0, [sp]
	str	r2, [sp, #4]
	mov	r1, r8
	movs	r2, #3
	movs	r0, r5
	ldr	r3, [sp, #20]
	bl	REW_storeCombatData
	b	.L445
.L453:
	movs	r3, #4
	movs	r2, #8
	adds	r5, r1, r3
	movs	r3, #4
	strh	r3, [r5, #2]
	mov	r8, r3
	strh	r2, [r1, #2]
	cmp	r6, #0
	bne	.L462
.L449:
	mov	r3, r9
	movs	r1, #17
	movs	r0, #16
	ldrsb	r1, [r3, r1]
	ldrsb	r0, [r3, r0]
	ldr	r3, .L463+28
	bl	.L5
	movs	r3, #65
	strh	r3, [r5]
	mov	r3, r9
	ldr	r2, .L463+32
	ldr	r1, [r2]
	mov	r2, r9
	ldrb	r3, [r3, #17]
	lsls	r3, r3, #24
	ldrb	r2, [r2, #16]
	asrs	r3, r3, #24
	lsls	r3, r3, #2
	ldr	r3, [r3, r1]
	lsls	r2, r2, #24
	asrs	r2, r2, #24
	ldrb	r3, [r3, r2]
	subs	r3, r3, #51
	rsbs	r2, r3, #0
	adcs	r3, r3, r2
	strb	r3, [r5, #1]
	ldr	r1, [r7]
	ldr	r3, .L463+16
	ldrh	r2, [r1, #2]
	mov	fp, r3
	cmp	r2, r3
	beq	.L439
	adds	r7, r2, #4
	cmp	r4, r7
	blt	.L460
	lsls	r3, r7, #16
	lsrs	r3, r3, #16
	strh	r3, [r1, #2]
	ldrh	r6, [r5, #2]
	mov	ip, r6
	movs	r6, #4
	mov	r10, r6
	add	ip, ip, r10
	mov	r6, ip
	strh	r6, [r5, #2]
	ldrb	r6, [r0]
	strb	r6, [r5, #4]
	ldrb	r6, [r0, #1]
	strb	r6, [r5, #5]
	ldrb	r6, [r0, #2]
	strb	r6, [r5, #6]
	mov	r6, r9
	ldrb	r0, [r0, #3]
	ldrb	r6, [r6, #19]
	subs	r0, r6, r0
	strb	r0, [r5, #7]
	cmp	r3, fp
	beq	.L439
	movs	r5, #3
	ands	r5, r3
	mov	r3, r8
	subs	r3, r3, r5
	adds	r3, r3, r7
	lsrs	r6, r3, #31
	asrs	r0, r4, #31
	cmp	r4, r3
	adcs	r0, r0, r6
	lsls	r3, r0, #24
	beq	.L439
	cmp	r5, #0
	beq	.L439
	adds	r2, r2, #8
	subs	r2, r2, r5
	strh	r2, [r1, #2]
	b	.L439
.L450:
	mov	r1, r10
	str	r2, [sp]
	str	r1, [sp, #4]
	movs	r2, #0
	mov	r1, r9
	movs	r0, r6
	bl	REW_storeCombatData
	b	.L439
.L460:
	movs	r3, #1
	rsbs	r3, r3, #0
	strh	r3, [r1, #2]
	b	.L439
.L461:
	movs	r3, #1
	rsbs	r3, r3, #0
	strh	r3, [r0, #2]
	b	.L439
.L464:
	.align	2
.L463:
	.word	REW_curSequence
	.word	gBattleActor
	.word	GetUnit
	.word	gBattleTarget
	.word	65535
	.word	REW_curSequenceMaxSize
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
	ldr	r2, .L481
	lsls	r1, r3, #6
	movs	r5, r0
	strb	r1, [r2, #15]
	lsls	r3, r3, #27
	bpl	.L466
	ldrh	r3, [r2, #16]
	subs	r3, r3, #1
	strh	r3, [r2, #16]
.L466:
	ldrh	r3, [r5, #2]
	cmp	r3, #4
	bls	.L465
	movs	r3, #2
	movs	r4, #0
	mov	r8, r3
	ldr	r6, .L481+4
	adds	r7, r5, #4
.L469:
	ldrb	r0, [r7, r4]
	bl	.L11
	cmp	r0, #0
	beq	.L468
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L468
	mov	r2, r8
	ldr	r3, [r0, #12]
	orrs	r3, r2
	str	r3, [r0, #12]
.L468:
	ldrh	r3, [r5, #2]
	adds	r4, r4, #1
	subs	r3, r3, #4
	cmp	r3, r4
	bgt	.L469
.L465:
	@ sp needed
	pop	{r7}
	mov	r8, r7
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L482:
	.align	2
.L481:
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
	ldr	r1, .L499
	lsls	r2, r3, #4
	bics	r2, r0
	strb	r2, [r1, #15]
	lsls	r3, r3, #27
	bpl	.L484
	ldrh	r3, [r1, #16]
	adds	r3, r3, #1
	strh	r3, [r1, #16]
.L484:
	ldrh	r3, [r5, #2]
	cmp	r3, #4
	bls	.L483
	movs	r3, #66
	movs	r4, #0
	mov	r8, r3
	ldr	r6, .L499+4
	adds	r7, r5, #4
.L487:
	ldrb	r0, [r7, r4]
	bl	.L11
	cmp	r0, #0
	beq	.L486
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L486
	mov	r2, r8
	ldr	r3, [r0, #12]
	bics	r3, r2
	str	r3, [r0, #12]
.L486:
	ldrh	r3, [r5, #2]
	adds	r4, r4, #1
	subs	r3, r3, #4
	cmp	r3, r4
	bgt	.L487
.L483:
	@ sp needed
	pop	{r7}
	mov	r8, r7
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L500:
	.align	2
.L499:
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
	beq	.L504
	cmp	r0, #128
	bne	.L506
	movs	r0, #64
	movs	r5, #64
.L502:
	ldr	r3, .L507
	bl	.L5
	cmp	r0, #0
	bne	.L503
	movs	r3, #1
	strb	r3, [r4]
.L503:
	@ sp needed
	movs	r0, r5
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L506:
	ldrb	r3, [r1]
	adds	r3, r3, #1
	movs	r0, #0
	movs	r5, #0
	strb	r3, [r1]
	b	.L502
.L504:
	movs	r0, #128
	movs	r5, #128
	b	.L502
.L508:
	.align	2
.L507:
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
	ldr	r6, .L545
	ldrb	r5, [r6, #15]
	sub	sp, sp, #12
	cmp	r5, #0
	bne	.LCB3499
	b	.L522	@long jump
.LCB3499:
	cmp	r5, #128
	beq	.LCB3501
	b	.L541	@long jump
.LCB3501:
	movs	r0, #64
	movs	r5, #0
	movs	r7, #64
.L510:
	ldr	r3, .L545+4
	bl	.L5
	ldr	r3, .L545+8
	ldr	r1, [r3]
	mov	fp, r3
	ldr	r2, .L545+12
	ldrh	r3, [r1, #2]
	cmp	r3, r2
	beq	.L509
	ldr	r2, .L545+16
	lsls	r2, r2, #16
	lsrs	r2, r2, #16
	movs	r4, r2
	str	r2, [sp, #4]
	adds	r2, r3, #4
	cmp	r2, r4
	ble	.LCB3523
	b	.L542	@long jump
.LCB3523:
	cmp	r3, #0
	bne	.LCB3525
	b	.L524	@long jump
.LCB3525:
	lsls	r2, r2, #16
	lsrs	r2, r2, #16
.L514:
	mov	r8, r3
	add	r8, r8, r1
	mov	r4, r8
	movs	r3, #4
	strh	r3, [r4, #2]
	strh	r2, [r1, #2]
	movs	r2, #16
	adds	r3, r3, #60
	strb	r3, [r4]
	ldrb	r4, [r6, #15]
	lsrs	r7, r7, #4
	lsrs	r3, r4, #6
	rsbs	r5, r5, #0
	ands	r2, r5
	orrs	r3, r7
	orrs	r3, r2
	mov	r2, r8
	strb	r3, [r2, #1]
	cmp	r0, #0
	bne	.L515
	ldrb	r3, [r2, #1]
	movs	r2, #32
	orrs	r3, r2
	mov	r2, r8
	strb	r3, [r2, #1]
.L515:
	movs	r3, #0
	mov	r10, r3
	adds	r3, r3, #2
	movs	r5, #1
	mov	r9, r3
	ldr	r7, .L545+20
	b	.L521
.L516:
	adds	r5, r5, #1
	cmp	r5, #64
	beq	.L543
.L519:
	ldrb	r4, [r6, #15]
.L521:
	adds	r4, r4, r5
	movs	r0, r4
	bl	.L7
	cmp	r0, #0
	beq	.L516
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L516
	mov	r2, r9
	ldr	r3, [r0, #12]
	tst	r3, r2
	beq	.L516
	mov	r3, fp
	ldr	r2, [r3]
	ldr	r1, .L545+12
	ldrh	r3, [r2, #2]
	cmp	r3, r1
	beq	.L509
	ldr	r1, [sp, #4]
	cmp	r1, r3
	ble	.L544
	adds	r3, r3, #1
	strh	r3, [r2, #2]
	mov	r3, r8
	mov	r2, r8
	ldrh	r3, [r3, #2]
	adds	r3, r3, #1
	strh	r3, [r2, #2]
	mov	r3, r8
	add	r3, r3, r10
	strb	r4, [r3, #4]
	movs	r3, #1
	mov	ip, r3
	adds	r5, r5, #1
	add	r10, r10, ip
	cmp	r5, #64
	bne	.L519
.L543:
	mov	r3, fp
	ldr	r4, [r3]
	ldr	r2, .L545+12
	ldrh	r3, [r4, #2]
	cmp	r3, r2
	beq	.L509
	movs	r1, #3
	ands	r1, r3
	ldr	r6, [sp, #4]
	subs	r0, r3, r1
	adds	r0, r0, #4
	asrs	r2, r6, #31
	lsrs	r5, r0, #31
	cmp	r6, r0
	adcs	r2, r2, r5
	lsls	r2, r2, #24
	beq	.L509
	cmp	r1, #0
	beq	.L509
	adds	r3, r3, #4
	subs	r3, r3, r1
	strh	r3, [r4, #2]
	b	.L509
.L541:
	movs	r0, #0
	movs	r5, #1
	movs	r7, #0
	b	.L510
.L544:
	movs	r3, #1
	rsbs	r3, r3, #0
	strh	r3, [r2, #2]
.L509:
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
.L524:
	movs	r2, #8
	movs	r3, #4
	b	.L514
.L522:
	movs	r0, #128
	movs	r7, #128
	b	.L510
.L542:
	movs	r3, #1
	rsbs	r3, r3, #0
	strh	r3, [r1, #2]
	b	.L509
.L546:
	.align	2
.L545:
	.word	gPlaySt
	.word	GetPhaseAbleUnitCount
	.word	REW_curSequence
	.word	65535
	.word	REW_curSequenceMaxSize
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
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	lr, fp
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7, lr}
	ldr	r3, .L594
	ldrh	r2, [r3, #16]
	sub	sp, sp, #52
	cmp	r2, #1
	bne	.LCB3718
	b	.L547	@long jump
.LCB3718:
	ldrb	r3, [r3, #20]
	cmp	r3, #127
	bls	.LCB3721
	b	.L547	@long jump
.LCB3721:
	movs	r3, #0
	str	r3, [sp, #12]
	adds	r3, r3, #1
	mov	fp, r3
	ldr	r3, .L594+4
	mov	r9, r3
	ldr	r3, .L594+8
	str	r3, [sp, #36]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	mov	r6, fp
	mov	r10, r9
	str	r3, [sp, #44]
	str	r3, [sp, #40]
	b	.L568
.L565:
	adds	r6, r6, #1
	cmp	r6, #64
	bne	.LCB3742
	b	.L547	@long jump
.LCB3742:
.L568:
	movs	r0, r6
	bl	.L8
	subs	r4, r0, #0
	beq	.L565
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L565
	ldr	r3, [r0, #12]
	ldr	r7, .L594+12
	tst	r3, r7
	bne	.L565
	ldr	r3, .L594+16
	str	r3, [sp, #8]
	bl	.L5
	cmp	r0, #4
	bgt	.L565
	movs	r0, r4
	ldr	r3, .L594+20
	bl	.L5
	mov	fp, r0
	cmp	r0, #0
	bgt	.LCB3768
	b	.L552	@long jump
.LCB3768:
	movs	r3, #0
	str	r3, [sp, #16]
	ldr	r3, .L594+24
	mov	r8, r3
	movs	r3, #192
	mov	r9, r3
	ldr	r3, .L594+28
	str	r6, [sp, #24]
	movs	r5, #0
	mov	r6, r8
	str	r3, [sp, #20]
	b	.L564
.L592:
	cmp	r3, #1
	bne	.L555
	ldr	r3, [r4, #12]
	orrs	r1, r3
	lsls	r1, r1, #26
	bpl	.L558
.L555:
	adds	r5, r5, #1
	cmp	fp, r5
	bne	.LCB3795
	b	.L591	@long jump
.LCB3795:
.L564:
	movs	r1, r5
	movs	r0, r4
	bl	.L11
	cmp	r0, #0
	beq	.L555
	ldr	r1, [r0, #12]
	tst	r1, r7
	bne	.L555
	movs	r3, #11
	ldrsb	r3, [r0, r3]
	mov	ip, r3
	mov	r3, r9
	mov	r2, ip
	tst	r3, r2
	bne	.L555
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
	mov	r8, r2
	movs	r2, #17
	mov	r3, r8
	ldrsb	r2, [r0, r2]
	subs	r2, r3, r2
	asrs	r3, r2, #31
	adds	r2, r2, r3
	eors	r2, r3
	ldr	r3, [sp, #4]
	adds	r3, r3, r2
	cmp	r3, #0
	bne	.L592
	ldrb	r3, [r4, #27]
	cmp	ip, r3
	bne	.L555
.L558:
	ldr	r3, [sp, #8]
	bl	.L5
	cmp	r0, #4
	bgt	.L555
	movs	r3, #50
	mov	r8, r3
	add	r8, r8, r4
	mov	r3, r8
	ldrb	r3, [r3, r5]
	ldr	r2, [sp, #20]
	movs	r1, r5
	movs	r0, r4
	str	r3, [sp, #4]
	bl	.L596
	mov	r2, r8
	ldrb	r3, [r2, r5]
	mov	r8, r3
	ldr	r3, [sp, #4]
	cmp	r3, r8
	beq	.L555
	ldr	r3, .L594+32
	ldr	r0, [sp, #12]
	ldr	r1, [r3]
	ldrh	r3, [r1, #2]
	cmp	r0, #0
	bne	.L559
	ldr	r0, .L594+36
	cmp	r3, r0
	beq	.L547
	adds	r2, r3, #6
	mov	ip, r2
	ldr	r2, [sp, #40]
	ldr	r0, [sp, #36]
	cmp	ip, r2
	bgt	.L590
	cmp	r3, #0
	beq	.L593
	movs	r0, r3
	mov	r3, ip
	adds	r0, r1, r0
	movs	r2, r0
	str	r0, [sp, #28]
	movs	r0, #6
	lsls	r3, r3, #16
	strh	r0, [r2, #2]
	lsrs	r3, r3, #16
	adds	r2, r2, #4
	strh	r3, [r1, #2]
	str	r2, [sp, #32]
.L559:
	ldr	r0, .L594+36
	cmp	r3, r0
	beq	.L547
	ldr	r0, .L594+8
.L562:
	lsls	r0, r0, #16
	adds	r3, r3, #2
	lsrs	r0, r0, #16
	cmp	r3, r0
	bgt	.L590
	strh	r3, [r1, #2]
	ldr	r1, [sp, #28]
	ldrh	r3, [r1, #2]
	adds	r3, r3, #2
	strh	r3, [r1, #2]
	ldr	r1, [sp, #32]
	mov	ip, r1
	movs	r1, r5
	mov	r2, r8
	ldr	r0, [sp, #16]
	lsls	r3, r0, #1
	add	r3, r3, ip
	adds	r1, r1, #50
	strb	r1, [r3, #2]
	ldr	r1, [sp, #4]
	subs	r2, r2, r1
	strb	r2, [r3, #3]
	adds	r3, r0, #1
	str	r3, [sp, #16]
	movs	r3, #1
	adds	r5, r5, #1
	str	r3, [sp, #12]
	cmp	fp, r5
	beq	.LCB3930
	b	.L564	@long jump
.LCB3930:
.L591:
	ldr	r6, [sp, #24]
.L552:
	ldr	r3, [sp, #12]
	cmp	r3, #0
	bne	.LCB3937
	b	.L565	@long jump
.LCB3937:
	movs	r3, #66
	ldr	r2, [sp, #28]
	strb	r3, [r2]
	strb	r6, [r2, #1]
	ldr	r2, [sp, #32]
	ldrb	r3, [r4, #16]
	strb	r3, [r2]
	ldrb	r3, [r4, #17]
	strb	r3, [r2, #1]
	ldr	r3, .L594+32
	ldr	r1, [r3]
	ldr	r2, .L594+36
	ldrh	r3, [r1, #2]
	cmp	r3, r2
	bne	.LCB3952
	b	.L565	@long jump
.LCB3952:
	movs	r0, #3
	ands	r0, r3
	ldr	r7, [sp, #44]
	subs	r4, r3, r0
	adds	r4, r4, #4
	lsrs	r2, r4, #31
	asrs	r5, r7, #31
	cmp	r7, r4
	adcs	r2, r2, r5
	lsls	r2, r2, #24
	bne	.LCB3967
	b	.L565	@long jump
.LCB3967:
	cmp	r0, #0
	bne	.LCB3972
	b	.L565	@long jump
.LCB3972:
	adds	r3, r3, #4
	subs	r3, r3, r0
	adds	r6, r6, #1
	strh	r3, [r1, #2]
	cmp	r6, #64
	beq	.LCB3978
	b	.L568	@long jump
.LCB3978:
.L547:
	add	sp, sp, #52
	@ sp needed
	pop	{r4, r5, r6, r7}
	mov	fp, r7
	mov	r10, r6
	mov	r9, r5
	mov	r8, r4
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L590:
	movs	r3, #1
	rsbs	r3, r3, #0
	strh	r3, [r1, #2]
	b	.L547
.L593:
	adds	r3, r1, #4
	movs	r2, r3
	str	r3, [sp, #28]
	movs	r3, #6
	strh	r3, [r2, #2]
	adds	r3, r2, #4
	str	r3, [sp, #32]
	movs	r3, #10
	b	.L562
.L595:
	.align	2
.L594:
	.word	gPlaySt
	.word	GetUnit
	.word	REW_curSequenceMaxSize
	.word	65548
	.word	GetUnitTotalSupportLevel
	.word	GetUnitSupporterCount
	.word	GetUnitSupporterUnit
	.word	UnitGainSupportExp
	.word	REW_curSequence
	.word	65535
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
	ldr	r3, .L608
	ldr	r4, [r3]
	movs	r3, #0
	push	{r6, r7, lr}
	ldr	r5, .L608+4
	sub	sp, sp, #8
	ldrb	r6, [r5, #15]
	movs	r1, r4
	str	r3, [sp, #4]
	ldr	r2, .L608+8
	ldr	r3, .L608+12
	add	r0, sp, #4
	bl	.L5
	ldrb	r5, [r5, #15]
	adds	r6, r6, #64
	adds	r5, r5, #1
	cmp	r6, r5
	ble	.L598
	lsls	r3, r5, #3
	adds	r4, r4, r3
	ldr	r3, .L608+16
	mov	r9, r3
	movs	r3, #19
	mov	r10, r3
	adds	r3, r3, #29
	mov	r8, r3
	movs	r7, #49
.L600:
	movs	r0, r5
	bl	.L9
	cmp	r0, #0
	beq	.L599
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L599
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
.L599:
	adds	r5, r5, #1
	adds	r4, r4, #8
	cmp	r6, r5
	bgt	.L600
.L598:
	ldr	r3, .L608+20
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
.L609:
	.align	2
.L608:
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
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	lr, fp
	mov	r5, r8
	mov	r4, fp
	push	{r5, r6, r7, lr}
	movs	r6, #63
	ldr	r3, .L644
	ldr	r3, [r3]
	sub	sp, sp, #36
	str	r3, [sp, #24]
	ldr	r3, .L644+4
	ldrb	r7, [r3, #15]
	ldr	r3, .L644+8
	str	r3, [sp, #12]
	ldr	r3, .L644+12
	str	r3, [sp, #20]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	str	r3, [sp, #16]
	str	r3, [sp, #28]
	adds	r7, r7, #1
.L624:
	movs	r0, r7
	ldr	r3, [sp, #12]
	bl	.L5
	cmp	r0, #0
	beq	.L611
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L611
	ldr	r3, .L644+16
	ldr	r1, [sp, #24]
	ldr	r3, [r3]
	lsls	r2, r7, #3
	mov	ip, r3
	adds	r3, r1, r2
	adds	r1, r1, #8
	mov	r10, r1
	add	r10, r10, r2
	movs	r2, #0
	mov	r8, r2
	mov	r9, r2
	ldr	r2, .L644+20
	mov	fp, r2
	ldr	r2, .L644+12
	str	r2, [sp, #8]
	mov	r2, ip
	mov	r1, r10
	mov	ip, r0
	mov	r10, r6
	mov	r0, r8
	mov	r6, r9
	mov	r8, r7
	mov	r9, r4
	movs	r7, r2
	str	r1, [sp]
.L621:
	mov	r1, ip
	ldrb	r2, [r3]
	ldrb	r4, [r3, #1]
	ldrb	r1, [r1, r2]
	cmp	r1, r4
	beq	.L612
	ldrh	r2, [r7, #2]
	cmp	r0, #0
	bne	.L613
	cmp	r2, fp
	beq	.L610
	ldr	r0, [sp, #20]
	str	r0, [sp, #4]
	ldr	r0, [sp, #16]
	adds	r5, r2, #6
	cmp	r5, r0
	bgt	.L642
	cmp	r2, #0
	bne	.L617
	adds	r5, r7, #4
	adds	r2, r2, #6
	strh	r2, [r5, #2]
	adds	r2, r5, #4
	mov	r9, r2
	movs	r2, #10
	ldr	r0, [sp, #4]
	adds	r2, r2, #2
	lsls	r0, r0, #16
	lsrs	r0, r0, #16
	cmp	r2, r0
	bgt	.L642
.L620:
	strh	r2, [r7, #2]
	ldrh	r2, [r5, #2]
	adds	r2, r2, #2
	strh	r2, [r5, #2]
	lsls	r2, r6, #1
	ldrb	r0, [r3]
	add	r2, r2, r9
	strb	r0, [r2, #2]
	movs	r0, #1
	subs	r1, r1, r4
	strb	r1, [r2, #3]
	adds	r6, r6, #1
.L612:
	ldr	r2, [sp]
	adds	r3, r3, #2
	cmp	r2, r3
	bne	.L621
	movs	r3, r7
	mov	r7, r8
	mov	r8, r0
	mov	r0, ip
	mov	ip, r3
	mov	r3, r8
	mov	r4, r9
	mov	r6, r10
	cmp	r3, #0
	bne	.L643
.L611:
	subs	r6, r6, #1
	adds	r7, r7, #1
	cmp	r6, #0
	bne	.L624
.L610:
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
.L617:
	movs	r0, r2
	lsls	r5, r5, #16
	lsrs	r2, r5, #16
	adds	r5, r7, r0
	movs	r0, #6
	strh	r0, [r5, #2]
	adds	r0, r5, #4
	mov	r9, r0
	strh	r2, [r7, #2]
.L613:
	cmp	r2, fp
	beq	.L610
	ldr	r0, [sp, #8]
	str	r0, [sp, #4]
	ldr	r0, [sp, #4]
	adds	r2, r2, #2
	lsls	r0, r0, #16
	lsrs	r0, r0, #16
	cmp	r2, r0
	ble	.L620
.L642:
	movs	r3, #1
	rsbs	r3, r3, #0
	strh	r3, [r7, #2]
	b	.L610
.L643:
	movs	r3, #66
	strb	r7, [r5, #1]
	strb	r3, [r5]
	ldrb	r3, [r0, #16]
	strb	r3, [r4]
	ldrb	r3, [r0, #17]
	strb	r3, [r4, #1]
	mov	r3, ip
	ldr	r2, .L644+20
	ldrh	r3, [r3, #2]
	mov	fp, r3
	cmp	r3, r2
	beq	.L611
	movs	r0, #3
	ands	r0, r3
	subs	r1, r3, r0
	ldr	r2, [sp, #16]
	adds	r1, r1, #4
	mov	r9, r0
	ldr	r0, [sp, #28]
	asrs	r2, r2, #31
	lsrs	r3, r1, #31
	cmp	r0, r1
	adcs	r3, r3, r2
	lsls	r2, r3, #24
	beq	.L611
	mov	r3, r9
	cmp	r3, #0
	beq	.L611
	mov	r3, fp
	mov	r2, r9
	adds	r3, r3, #4
	subs	r3, r3, r2
	mov	r2, ip
	strh	r3, [r2, #2]
	b	.L611
.L645:
	.align	2
.L644:
	.word	REW_rewindBuffer
	.word	gPlaySt
	.word	GetUnit
	.word	REW_curSequenceMaxSize
	.word	REW_curSequence
	.word	65535
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
	ldr	r3, .L654
	ldrb	r0, [r0, #1]
	bl	.L5
	cmp	r0, #0
	beq	.L646
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L646
	ldr	r3, .L654+4
	bl	.L5
.L646:
	@ sp needed
	pop	{r4}
	pop	{r0}
	bx	r0
.L655:
	.align	2
.L654:
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
	ldr	r3, .L657
	@ sp needed
	adds	r0, r0, #4
	bl	.L5
	pop	{r4}
	pop	{r0}
	bx	r0
.L658:
	.align	2
.L657:
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
	push	{r3, r4, r5, r6, r7, lr}
	ldr	r7, .L672
	ldr	r2, [r7]
	movs	r4, r0
	ldrh	r5, [r2, #2]
	movs	r0, r1
	cmp	r4, #0
	beq	.L659
	cmp	r5, #0
	beq	.L659
	ldr	r1, [r4]
	cmp	r1, #0
	beq	.L659
	ldr	r3, .L672+4
	adds	r1, r5, r3
	cmp	r1, #0
	beq	.L659
	movs	r1, r5
	ldr	r6, .L672+8
	adds	r1, r1, #24
	lsls	r6, r6, #16
	lsrs	r6, r6, #16
	cmp	r1, r6
	bgt	.L671
	movs	r3, #24
	adds	r5, r2, r5
	strh	r3, [r5, #2]
	adds	r3, r3, #43
	strh	r1, [r2, #2]
	strb	r3, [r5]
	ldrb	r3, [r4, #11]
	movs	r2, #10
	strb	r3, [r5, #1]
	adds	r1, r5, #4
	ldr	r3, .L672+12
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
	ldr	r4, [r7]
	ldr	r2, .L672+16
	ldrh	r3, [r4, #2]
	cmp	r3, r2
	beq	.L659
	movs	r0, #3
	ands	r0, r3
	subs	r1, r3, r0
	adds	r1, r1, #4
	asrs	r2, r6, #31
	lsrs	r5, r1, #31
	cmp	r6, r1
	adcs	r2, r2, r5
	lsls	r2, r2, #24
	beq	.L659
	cmp	r0, #0
	beq	.L659
	adds	r3, r3, #4
	subs	r3, r3, r0
	strh	r3, [r4, #2]
.L659:
	@ sp needed
	pop	{r3, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L671:
	movs	r3, #1
	rsbs	r3, r3, #0
	strh	r3, [r2, #2]
	b	.L659
.L673:
	.align	2
.L672:
	.word	REW_curSequence
	.word	-65535
	.word	REW_curSequenceMaxSize
	.word	CpuSet
	.word	65535
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
	ldr	r6, .L695
	ldr	r4, [r6]
	ldrh	r3, [r4, #2]
	cmp	r3, #0
	beq	.L674
	movs	r5, #3
	ldr	r7, .L695+4
	adds	r4, r4, #4
.L680:
	ldrb	r3, [r4]
	cmp	r3, #67
	beq	.L694
.L677:
	movs	r1, r5
	ldrh	r3, [r4, #2]
	ldr	r2, [r6]
	ands	r1, r3
	tst	r5, r3
	beq	.L679
	adds	r3, r3, #4
	subs	r3, r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
.L679:
	adds	r4, r4, r3
	ldrh	r3, [r2, #2]
	adds	r2, r2, r3
	cmp	r4, r2
	bcs	.L674
	cmp	r4, #0
	bne	.L680
.L674:
	@ sp needed
	pop	{r3, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L694:
	ldrb	r0, [r4, #1]
	bl	.L7
	cmp	r0, #0
	beq	.L677
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L677
	movs	r3, #68
	movs	r2, #63
	strb	r3, [r4]
	ldrb	r3, [r0, #17]
	ldrb	r1, [r0, #16]
	ands	r3, r2
	lsls	r3, r3, #6
	ands	r2, r1
	orrs	r3, r2
	ldr	r1, .L695+8
	ldr	r2, [r4, #8]
	ands	r2, r1
	orrs	r3, r2
	str	r3, [r4, #8]
	movs	r3, #0
	str	r3, [r4, #12]
	b	.L677
.L696:
	.align	2
.L695:
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
	bhi	.L697
	movs	r3, #96
	ands	r3, r2
	cmp	r3, #96
	beq	.L697
	movs	r3, #5
	ldr	r2, .L717
	ldr	r1, [r2]
	movs	r2, #4
	ldrsb	r3, [r0, r3]
	lsls	r3, r3, #2
	ldr	r3, [r3, r1]
	ldrsb	r2, [r0, r2]
	ldrsb	r0, [r3, r2]
	ldr	r3, .L717+4
	bl	.L5
	subs	r6, r0, #0
	beq	.L697
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L697
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
.L704:
	movs	r3, #1
	movs	r2, #0
	ldr	r7, [r4]
	b	.L701
.L716:
	subs	r7, r7, #1
.L699:
	lsls	r3, r3, #1
	adds	r2, r2, #1
.L701:
	tst	r5, r3
	bne	.L699
	cmp	r7, #0
	bne	.L716
	orrs	r3, r5
	lsls	r3, r3, #24
	lsrs	r5, r3, #24
	mov	r3, r8
	cmp	r3, #0
	beq	.L702
	adds	r2, r2, #12
	lsls	r3, r2, #1
	adds	r3, r6, r3
	ldrh	r3, [r3, #6]
	strh	r3, [r0]
.L703:
	adds	r1, r1, #2
	adds	r4, r4, #4
	adds	r0, r0, #2
	cmp	ip, r1
	bne	.L704
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
.L697:
	add	sp, sp, #36
	@ sp needed
	pop	{r6, r7}
	mov	r9, r7
	mov	r8, r6
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L702:
	mov	r7, r9
	ldrh	r3, [r1]
	lsls	r2, r2, #1
	strh	r3, [r7, r2]
	b	.L703
.L718:
	.align	2
.L717:
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
	ldr	r2, .L727
	ldr	r1, [r2]
	movs	r2, #4
	push	{r4, lr}
	ldrsb	r3, [r0, r3]
	lsls	r3, r3, #2
	ldr	r3, [r3, r1]
	ldrsb	r2, [r0, r2]
	ldrsb	r0, [r3, r2]
	ldr	r3, .L727+4
	bl	.L5
	subs	r4, r0, #0
	beq	.L719
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L719
	ldr	r3, .L727+8
	bl	.L5
	movs	r3, #0
	lsls	r0, r0, #1
	adds	r4, r4, r0
	strh	r3, [r4, #28]
.L719:
	@ sp needed
	pop	{r4}
	pop	{r0}
	bx	r0
.L728:
	.align	2
.L727:
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
	ldr	r2, .L739
	ldr	r1, [r2]
	movs	r2, #4
	push	{r4, r5, r6, lr}
	ldrsb	r3, [r0, r3]
	lsls	r3, r3, #2
	ldr	r3, [r3, r1]
	ldrsb	r2, [r0, r2]
	movs	r5, r0
	ldrsb	r0, [r3, r2]
	ldr	r3, .L739+4
	bl	.L5
	subs	r4, r0, #0
	beq	.L732
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L732
	ldr	r3, .L739+8
	bl	.L5
	cmp	r0, #4
	bgt	.L732
	adds	r0, r0, #12
	ldrh	r3, [r5, #6]
	lsls	r0, r0, #1
	adds	r4, r4, r0
	strh	r3, [r4, #6]
.L732:
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L740:
	.align	2
.L739:
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
	push	{r3, r4, r5, r6, r7, lr}
	movs	r4, r0
	movs	r5, r1
	cmp	r0, #0
	beq	.L744
	cmp	r1, #0
	ble	.L744
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L744
	movs	r0, #11
	ldr	r3, .L772
	ldrsb	r0, [r4, r0]
	bl	.L5
	cmp	r4, r0
	beq	.L770
.L744:
	@ sp needed
	pop	{r3, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L770:
	ldr	r3, .L772+4
	ldr	r0, [r3]
	ldr	r3, .L772+8
	ldrh	r4, [r0, #2]
	cmp	r4, r3
	beq	.L744
	ldr	r1, .L772+12
	adds	r3, r4, #6
	lsls	r1, r1, #16
	lsrs	r1, r1, #16
	cmp	r3, r1
	bgt	.L771
	cmp	r4, #0
	beq	.L754
	movs	r2, r4
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
.L750:
	movs	r6, #6
	adds	r2, r0, r2
	strh	r6, [r2, #2]
	ldr	r6, .L772+16
	ldrh	r7, [r6]
	strh	r3, [r0, #2]
	strb	r7, [r2, #4]
	ldrh	r6, [r6, #2]
	strb	r6, [r2, #5]
	movs	r6, #70
	adds	r6, r6, #255
	strh	r6, [r2]
	cmp	r5, #1
	beq	.L752
	movs	r7, #24
	ldrb	r6, [r2, #1]
	bics	r6, r7
	movs	r7, #8
	orrs	r6, r7
	strb	r6, [r2, #1]
	cmp	r5, #2
	beq	.L752
	movs	r7, #96
	lsls	r6, r6, #24
	lsrs	r6, r6, #24
	bics	r6, r7
	movs	r7, #32
	orrs	r6, r7
	strb	r6, [r2, #1]
	cmp	r5, #3
	beq	.L752
	movs	r5, #128
	lsls	r6, r6, #24
	lsrs	r6, r6, #24
	rsbs	r5, r5, #0
	orrs	r5, r6
	strb	r5, [r2, #1]
.L752:
	ldr	r2, .L772+8
	cmp	r3, r2
	beq	.L744
	movs	r5, #3
	ands	r5, r3
	subs	r3, r3, r5
	adds	r3, r3, #4
	asrs	r2, r1, #31
	lsrs	r6, r3, #31
	cmp	r1, r3
	adcs	r2, r2, r6
	lsls	r2, r2, #24
	beq	.L744
	cmp	r5, #0
	beq	.L744
	adds	r4, r4, #10
	subs	r3, r4, r5
	strh	r3, [r0, #2]
	b	.L744
.L754:
	movs	r3, #10
	movs	r2, #4
	movs	r4, #4
	b	.L750
.L771:
	movs	r3, #1
	rsbs	r3, r3, #0
	strh	r3, [r0, #2]
	b	.L744
.L773:
	.align	2
.L772:
	.word	GetUnit
	.word	REW_curSequence
	.word	65535
	.word	REW_curSequenceMaxSize
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
	mov	lr, r8
	movs	r5, r0
	movs	r4, r2
	push	{lr}
	ldr	r3, .L795
	sub	sp, sp, #8
	movs	r0, #0
	movs	r6, r1
	rsbs	r2, r4, #0
	adcs	r4, r4, r2
	bl	.L5
	rsbs	r3, r5, #0
	adcs	r3, r3, r5
	orrs	r3, r4
	bne	.L774
	cmp	r0, #0
	bne	.L774
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.L774
	movs	r3, #19
	ldrsb	r3, [r5, r3]
	cmp	r3, #0
	bne	.L793
.L774:
	add	sp, sp, #8
	@ sp needed
	pop	{r7}
	mov	r8, r7
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L793:
	ldr	r3, .L795+4
	ldr	r0, [r3]
	ldr	r3, .L795+8
	ldrh	r4, [r0, #2]
	mov	r8, r3
	cmp	r4, r3
	beq	.L774
	ldr	r2, .L795+12
	lsls	r2, r2, #16
	lsrs	r3, r2, #16
	movs	r2, r4
	adds	r2, r2, #8
	cmp	r2, r3
	bgt	.L794
	cmp	r4, #0
	beq	.L780
	movs	r7, #8
	lsls	r2, r2, #16
	lsrs	r1, r2, #16
	adds	r2, r0, r4
	strh	r7, [r2, #2]
	adds	r7, r7, #62
	strh	r1, [r0, #2]
	strb	r7, [r2]
	ldr	r7, .L795+16
	ldrh	r5, [r7]
	strb	r5, [r2, #4]
	ldrh	r7, [r7, #2]
	strh	r6, [r2, #6]
	strb	r7, [r2, #5]
	cmp	r1, r8
	beq	.L774
	movs	r5, #3
	ands	r5, r1
	subs	r1, r1, r5
	adds	r1, r1, #4
	asrs	r2, r3, #31
	lsrs	r6, r1, #31
	cmp	r3, r1
	adcs	r2, r2, r6
	lsls	r3, r2, #24
	beq	.L774
	cmp	r5, #0
	beq	.L774
	adds	r4, r4, #12
	subs	r3, r4, r5
	strh	r3, [r0, #2]
	b	.L774
.L780:
	movs	r2, #8
	strh	r2, [r0, #6]
	adds	r2, r2, #4
	strh	r2, [r0, #2]
	adds	r2, r2, #58
	strb	r2, [r0, #4]
	ldr	r2, .L795+16
	ldrh	r1, [r2]
	strb	r1, [r0, #8]
	ldrh	r2, [r2, #2]
	strh	r6, [r0, #10]
	strb	r2, [r0, #9]
	b	.L774
.L794:
	movs	r3, #1
	rsbs	r3, r3, #0
	strh	r3, [r0, #2]
	b	.L774
.L796:
	.align	2
.L795:
	.word	PrepAtMenuExists
	.word	REW_curSequence
	.word	65535
	.word	REW_curSequenceMaxSize
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
	ldr	r3, .L798
	push	{r4, lr}
	ldrh	r4, [r3, #12]
	@ sp needed
	movs	r3, #224
	lsls	r3, r3, #20
	mov	ip, r3
	ldr	r0, .L798+4
	lsls	r0, r0, #16
	ldr	r3, .L798+8
	lsrs	r0, r0, #16
	add	r4, r4, ip
	bl	.L5
	ldrh	r0, [r0]
	adds	r0, r4, r0
	pop	{r4}
	pop	{r1}
	bx	r1
.L799:
	.align	2
.L798:
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
	ldr	r3, .L801
	push	{r4, r5, r6, lr}
	ldr	r5, [r3]
	@ sp needed
	movs	r3, #0
	strh	r3, [r5]
	strh	r3, [r5, #2]
	ldr	r3, .L801+4
	ldrh	r4, [r3, #12]
	movs	r3, #224
	lsls	r3, r3, #20
	mov	ip, r3
	ldr	r0, .L801+8
	lsls	r0, r0, #16
	ldr	r3, .L801+12
	lsrs	r0, r0, #16
	add	r4, r4, ip
	bl	.L5
	ldrh	r1, [r0]
	movs	r2, #4
	movs	r0, r5
	ldr	r3, .L801+16
	adds	r1, r4, r1
	bl	.L5
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L802:
	.align	2
.L801:
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
	ldr	r3, .L804
	push	{r4, lr}
	ldrh	r4, [r3, #12]
	@ sp needed
	movs	r3, #224
	lsls	r3, r3, #20
	mov	ip, r3
	ldr	r0, .L804+4
	lsls	r0, r0, #16
	ldr	r3, .L804+8
	lsrs	r0, r0, #16
	add	r4, r4, ip
	bl	.L5
	ldrh	r0, [r0]
	adds	r0, r4, r0
	pop	{r4}
	pop	{r1}
	bx	r1
.L805:
	.align	2
.L804:
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
	movs	r2, #0
	movs	r3, #0
	push	{r4, lr}
	sub	sp, sp, #8
	str	r2, [sp]
	str	r3, [sp, #4]
	ldr	r3, .L807
	ldrh	r4, [r3, #12]
	movs	r3, #224
	lsls	r3, r3, #20
	mov	ip, r3
	ldr	r0, .L807+4
	lsls	r0, r0, #16
	ldr	r3, .L807+8
	lsrs	r0, r0, #16
	add	r4, r4, ip
	bl	.L5
	ldrh	r1, [r0]
	movs	r2, #8
	mov	r0, sp
	ldr	r3, .L807+12
	adds	r1, r4, r1
	bl	.L5
	add	sp, sp, #8
	@ sp needed
	pop	{r4}
	pop	{r0}
	bx	r0
.L808:
	.align	2
.L807:
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
	ldr	r3, .L811
	movs	r4, r0
	ldrb	r0, [r3, #15]
	ldr	r3, .L811+4
	bl	.L5
	cmp	r0, #0
	ble	.L810
	movs	r2, #2
	ldr	r3, .L811+8
	movs	r0, #3
	strb	r2, [r3, #22]
	ldr	r3, .L811+12
	bl	.L5
.L810:
	@ sp needed
	movs	r0, r4
	ldr	r3, .L811+16
	bl	.L5
	pop	{r4}
	pop	{r0}
	bx	r0
.L812:
	.align	2
.L811:
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
	ldr	r3, .L814
	sub	sp, sp, #8
	add	r4, sp, #4
	movs	r2, r1
	ldr	r3, [r3]
	movs	r1, r4
	bl	.L5
	movs	r2, #0
	ldr	r3, .L814+4
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
.L815:
	.align	2
.L814:
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
	ldr	r1, .L817
	sub	sp, sp, #8
	ldrh	r4, [r1]
	add	r0, sp, #4
	strb	r4, [r0]
	ldrh	r1, [r1, #2]
	strb	r1, [r0, #1]
	movs	r1, r3
	ldr	r3, .L817+4
	bl	.L5
	add	sp, sp, #8
	@ sp needed
	pop	{r4}
	pop	{r0}
	bx	r0
.L818:
	.align	2
.L817:
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
	ldr	r3, .L820
	push	{r4, lr}
	movs	r2, r1
	@ sp needed
	ldr	r1, [r3]
	ldr	r3, .L820+4
	ldr	r3, [r3]
	bl	.L5
	pop	{r4}
	pop	{r0}
	bx	r0
.L821:
	.align	2
.L820:
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
	ldr	r3, .L824
	ldrb	r3, [r3, #22]
	bics	r3, r2
	cmp	r3, #1
	bne	.L822
	ldr	r3, .L824+4
	ldr	r3, [r3]
	movs	r2, r1
	movs	r1, r0
	movs	r0, r3
	ldr	r3, .L824+8
	bl	.L5
.L822:
	@ sp needed
	pop	{r4}
	pop	{r0}
	bx	r0
.L825:
	.align	2
.L824:
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
	ldr	r3, .L827
	push	{r4, lr}
	movs	r2, r1
	@ sp needed
	ldr	r1, [r3]
	ldr	r3, .L827+4
	ldr	r3, [r3]
	bl	.L5
	pop	{r4}
	pop	{r0}
	bx	r0
.L828:
	.align	2
.L827:
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
	push	{r4, r5, r6, r7, lr}
	mov	r7, r9
	mov	r6, r8
	mov	lr, r10
	push	{r6, r7, lr}
	ldr	r7, .L850
	ldr	r3, [r7]
	ldrh	r3, [r3, #2]
	movs	r6, r0
	movs	r2, r1
	cmp	r3, #0
	beq	.L829
	movs	r5, #8
	ldr	r3, .L850+4
	ldrb	r3, [r3, #22]
	bics	r3, r5
	cmp	r3, #1
	beq	.L829
	ldr	r3, .L850+8
	mov	r8, r3
	ldr	r1, [r3]
	ldr	r3, .L850+12
	ldr	r3, [r3]
	bl	.L5
	mov	r3, r8
	ldr	r0, [r3]
	ldr	r4, [r0]
	cmp	r4, #0
	bne	.L831
	str	r5, [r0]
	adds	r4, r4, #8
.L831:
	movs	r3, r0
	ldr	r2, [r7]
	ldr	r1, .L850+16
	mov	r9, r2
	ldrh	r2, [r2, #2]
	ldr	r5, [r0, #4]
	mov	ip, r2
	lsls	r1, r1, #16
	adds	r2, r2, r4
	mov	r10, r5
	adds	r3, r3, #8
	movs	r5, #0
	lsrs	r1, r1, #16
	cmp	r2, r1
	bls	.L833
.L832:
	ldrh	r2, [r3, #2]
	subs	r4, r4, r2
	adds	r5, r5, r2
	cmp	r10, r3
	beq	.L849
	adds	r3, r3, r2
	mov	r2, ip
	adds	r2, r4, r2
	cmp	r2, r1
	bls	.L833
	cmp	r3, #0
	bne	.L832
	strh	r3, [r3]
	.inst	0xdeff
.L833:
	movs	r1, #0
	strh	r1, [r3]
	adds	r3, r0, r4
	mov	ip, r3
	mov	r3, r10
	cmp	r3, #0
	beq	.L837
	mov	r1, r9
	ldrh	r3, [r3, #2]
	strh	r3, [r1]
.L837:
	mov	r3, ip
	str	r3, [r0, #4]
	ldr	r3, .L850+20
	movs	r1, r6
	str	r2, [r0]
	movs	r2, #8
	mov	r9, r3
	bl	.L5
	mov	r3, r8
	movs	r2, r4
	movs	r1, r6
	ldr	r0, [r3]
	adds	r0, r0, #8
	subs	r2, r2, #8
	adds	r1, r1, #8
	adds	r0, r0, r5
	bl	.L9
	ldr	r0, [r7]
	adds	r1, r6, r4
	ldrh	r2, [r0, #2]
	bl	.L9
	movs	r3, #0
	ldr	r5, [r7]
	strh	r3, [r5, #2]
	strh	r3, [r5]
	ldr	r3, .L850+24
	ldrh	r4, [r3, #12]
	movs	r3, #224
	lsls	r3, r3, #20
	mov	ip, r3
	ldr	r0, .L850+28
	lsls	r0, r0, #16
	ldr	r3, .L850+32
	lsrs	r0, r0, #16
	add	r4, r4, ip
	bl	.L5
	ldrh	r1, [r0]
	movs	r2, #4
	movs	r0, r5
	adds	r1, r4, r1
	bl	.L9
.L829:
	@ sp needed
	pop	{r5, r6, r7}
	mov	r10, r7
	mov	r9, r6
	mov	r8, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L849:
	movs	r3, #0
	strh	r3, [r3]
	.inst	0xdeff
.L851:
	.align	2
.L850:
	.word	REW_curSequence
	.word	gActionData
	.word	REW_rewindBuffer
	.word	ReadSramFast
	.word	REW_rewindMaxSize
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
	ldr	r3, .L855
	push	{r4, r5, lr}
	ldr	r5, [r3]
	ldr	r3, .L855+4
	ldrh	r4, [r3, #12]
	movs	r3, #224
	lsls	r3, r3, #20
	mov	ip, r3
	ldr	r0, .L855+8
	lsls	r0, r0, #16
	sub	sp, sp, #12
	ldr	r3, .L855+12
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
.L856:
	.align	2
.L855:
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
	ldr	r3, .L858
	@ sp needed
	bl	.L5
	ldr	r3, .L858+4
	movs	r1, #3
	ldr	r0, .L858+8
	bl	.L5
	movs	r3, #0
	str	r3, [r0, #80]
	str	r3, [r0, #84]
	movs	r0, #23
	pop	{r4}
	pop	{r1}
	bx	r1
.L859:
	.align	2
.L858:
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
	ldr	r3, .L865
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
	beq	.L863
	movs	r3, #63
	movs	r2, r0
	bics	r2, r3
	cmp	r2, #192
	beq	.L864
.L862:
	ldr	r3, [r4, #4]
	ldrb	r5, [r3, #4]
	ldr	r3, [r4]
	ldrh	r0, [r3]
	ldr	r3, .L865+4
	bl	.L5
	ldr	r3, .L865+8
	movs	r1, r0
	movs	r0, r7
	bl	.L5
	movs	r0, r4
	ldr	r3, .L865+12
	bl	.L5
	movs	r3, #1
	movs	r2, r5
	str	r0, [sp]
	movs	r1, #0
	ldr	r4, .L865+16
	rsbs	r3, r3, #0
	movs	r0, #0
	bl	.L171
	movs	r3, #128
	movs	r2, #70
	lsls	r3, r3, #3
	str	r0, [r6, #80]
	ldr	r1, [r0, #48]
	strh	r3, [r0, r2]
	ldr	r4, .L865+20
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
	ldr	r3, .L865+24
	bl	.L5
	add	sp, sp, #80
	@ sp needed
	pop	{r7}
	mov	r8, r7
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L863:
	movs	r3, #0
	movs	r2, #0
	adds	r1, r5, #4
	add	r0, sp, #8
	bl	REW_loadUnit
	add	r4, sp, #8
	b	.L862
.L864:
	bics	r0, r2
	bl	.L10
	movs	r4, r0
	b	.L862
.L866:
	.align	2
.L865:
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
	ldr	r6, .L879
	ldrb	r0, [r1, #1]
	sub	sp, sp, #80
	mov	r8, r2
	bl	.L11
	ldrb	r3, [r4]
	movs	r5, r0
	cmp	r3, #2
	beq	.L874
	cmp	r3, #65
	beq	.L875
.L867:
	add	sp, sp, #80
	@ sp needed
	pop	{r7}
	mov	r8, r7
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L875:
	ldrb	r3, [r4, #1]
	lsls	r3, r3, #31
	bmi	.L876
	movs	r0, #27
	ldr	r3, .L879+4
	bl	.L5
	movs	r1, r0
.L873:
	mov	r0, r8
	ldr	r3, .L879+8
	bl	.L5
	b	.L867
.L874:
	ldrb	r0, [r4, #1]
	cmp	r0, #255
	beq	.L877
	movs	r3, #63
	movs	r2, r0
	bics	r2, r3
	cmp	r2, #192
	beq	.L878
.L870:
	ldr	r3, [r5, #4]
	ldrb	r6, [r3, #4]
	ldr	r3, [r5]
	ldrh	r0, [r3]
	ldr	r3, .L879+12
	bl	.L5
	ldr	r3, .L879+8
	movs	r1, r0
	mov	r0, r8
	bl	.L5
	mov	r0, r8
	ldr	r3, .L879+16
	bl	.L5
	ldr	r3, .L879+20
	movs	r4, r0
	movs	r0, r5
	bl	.L5
	movs	r3, #1
	movs	r2, r6
	str	r0, [sp]
	movs	r1, #0
	ldr	r5, .L879+24
	rsbs	r3, r3, #0
	movs	r0, #0
	bl	.L6
	movs	r3, #128
	movs	r2, #70
	lsls	r3, r3, #3
	str	r0, [r7, #84]
	ldr	r1, [r0, #48]
	strh	r3, [r0, r2]
	ldr	r5, .L879+28
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
	ldr	r3, .L879+32
	bl	.L5
	b	.L867
.L876:
	movs	r0, #51
	ldr	r3, .L879+4
	bl	.L5
	movs	r1, r0
	b	.L873
.L877:
	movs	r3, #0
	movs	r2, #0
	adds	r1, r4, #4
	add	r0, sp, #8
	bl	REW_loadUnit
	add	r5, sp, #8
	b	.L870
.L878:
	bics	r0, r2
	bl	.L11
	movs	r5, r0
	b	.L870
.L880:
	.align	2
.L879:
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
	ldr	r4, .L892
	ldrh	r3, [r1, #2]
	lsls	r4, r4, #16
	lsrs	r4, r4, #16
	ands	r6, r3
	tst	r2, r3
	beq	.L882
	adds	r3, r3, #4
	subs	r3, r3, r6
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
.L882:
	ldrh	r2, [r0, #2]
	adds	r3, r1, r3
	adds	r0, r0, r2
	cmp	r3, r0
	bcs	.L883
	ldrb	r2, [r3]
	cmp	r2, #65
	beq	.L891
.L886:
	@ sp needed
	movs	r0, r4
	ldr	r3, .L892+4
	bl	.L5
	ldr	r3, .L892+8
	movs	r1, r0
	movs	r0, r5
	bl	.L5
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L891:
	ldrb	r2, [r3, #6]
	ldrb	r1, [r3, #5]
	ldrb	r0, [r3, #4]
	ldr	r3, .L892+12
	bl	.L5
	cmp	r0, #0
	bne	.L886
	ldr	r4, .L892+16
	lsls	r4, r4, #16
	lsrs	r4, r4, #16
	b	.L886
.L883:
	movs	r3, #0
	ldrb	r3, [r3]
	.inst	0xdeff
.L893:
	.align	2
.L892:
	.word	REW_combat
	.word	GetStringFromIndex
	.word	Text_DrawString
	.word	GetTypedTrapAt
	.word	REW_obstacleDestroyed
	.size	REW_displayCombatVerb, .-REW_displayCombatVerb
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC260:
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
	bpl	.LCB6175
	b	.L946	@long jump
.LCB6175:
	ldr	r6, .L961
	ldr	r5, .L961+4
.L895:
	lsls	r2, r3, #31
	bpl	.L900
	ldr	r2, .L961+8
	ldrb	r2, [r2, #15]
	cmp	r2, #64
	bne	.LCB6189
	b	.L923	@long jump
.LCB6189:
	subs	r2, r2, #128
	rsbs	r1, r2, #0
	adcs	r2, r2, r1
	lsls	r2, r2, #12
.L901:
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
.L900:
	movs	r2, #4
	movs	r7, r2
	ldr	r0, [r4, #92]
	ands	r7, r3
	tst	r2, r3
	bne	.LCB6218
	b	.L902	@long jump
.LCB6218:
	cmp	r0, #0
	bne	.LCB6220
	b	.L953	@long jump
.LCB6220:
.L903:
	movs	r2, #8
	movs	r7, r2
	ldr	r0, [r4, #96]
	ands	r7, r3
	tst	r2, r3
	bne	.LCB6229
	b	.L904	@long jump
.LCB6229:
.L960:
	cmp	r0, #0
	bne	.LCB6232
	b	.L954	@long jump
.LCB6232:
.L905:
	ldr	r3, .L961+12
	bl	.L5
	movs	r3, #0
	str	r3, [r4, #80]
	str	r3, [r4, #84]
	movs	r3, #166
	ldr	r0, .L961+16
	lsls	r3, r3, #3
	movs	r2, r0
	mov	ip, r3
	movs	r1, #0
	adds	r2, r2, #48
	add	r0, r0, ip
.L906:
	movs	r3, r2
	subs	r3, r3, #48
.L907:
	strh	r1, [r3]
	adds	r3, r3, #2
	cmp	r3, r2
	bne	.L907
	adds	r3, r3, #64
	movs	r2, r3
	cmp	r3, r0
	bne	.L906
	movs	r3, #41
	movs	r7, r4
	ldrb	r3, [r4, r3]
	adds	r7, r7, #48
	lsls	r2, r3, #27
	bpl	.L910
	adds	r7, r7, #8
.L910:
	movs	r2, #16
	eors	r3, r2
	movs	r2, #41
	movs	r0, r7
	strb	r3, [r4, r2]
	bl	.L11
	ldr	r3, .L961+20
	movs	r1, #2
	movs	r0, r7
	bl	.L5
	ldr	r2, [r4, #44]
	ldrb	r3, [r2, #4]
	adds	r6, r2, #4
	cmp	r3, #2
	beq	.L920
.L955:
	cmp	r3, #64
	beq	.L921
	movs	r1, #3
	movs	r0, r1
	ldrh	r3, [r6, #2]
	ands	r0, r3
	tst	r1, r3
	beq	.L918
	adds	r3, r3, #4
	subs	r3, r3, r0
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
.L918:
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
	bne	.L955
.L920:
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
	bne	.L956
.L912:
	adds	r1, r6, r3
	ldrh	r3, [r2, #2]
	adds	r2, r2, r3
	cmp	r1, r2
	sbcs	r2, r2, r2
	movs	r0, r4
	ands	r1, r2
	movs	r2, r7
	bl	REW_displayTarget
	ldr	r1, .L961+24
	movs	r0, r7
	ldr	r3, .L961+28
	bl	.L5
	movs	r0, r7
	ldr	r1, .L961+32
	bl	.L6
.L914:
	movs	r0, #0
	ldr	r3, .L961+36
	bl	.L5
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L921:
	ldr	r3, .L961+8
	ldrb	r3, [r3, #15]
	cmp	r3, #0
	beq	.L915
	cmp	r3, #128
	bne	.L957
	movs	r0, r7
	movs	r1, #1
	ldr	r3, .L961+40
	bl	.L5
	ldr	r0, .L961+44
.L952:
	lsls	r0, r0, #16
	ldr	r3, .L961+48
	lsrs	r0, r0, #16
	bl	.L5
	ldr	r3, .L961+52
	movs	r1, r0
	movs	r0, r7
	bl	.L5
	movs	r0, r7
	ldr	r1, .L961+56
	bl	.L6
	b	.L914
.L946:
	movs	r5, r0
	ldr	r3, .L961+8
	ldrh	r7, [r3, #16]
	adds	r5, r5, #64
	lsls	r3, r7, #31
	bpl	.L897
	adds	r5, r5, #8
.L897:
	movs	r0, r5
	ldr	r6, .L961
	bl	.L11
	movs	r1, #2
	movs	r0, r5
	ldr	r3, .L961+60
	bl	.L5
	cmp	r7, #9
	ble	.L958
	cmp	r7, #99
	ble	.L959
.L899:
	movs	r0, r5
	ldr	r1, .L961+64
	ldr	r5, .L961+4
	bl	.L6
	movs	r2, #41
	movs	r1, #2
	ldrb	r3, [r4, r2]
	bics	r3, r1
	strb	r3, [r4, r2]
	b	.L895
.L956:
	adds	r3, r3, #4
	subs	r3, r3, r0
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	b	.L912
.L902:
	cmp	r0, #0
	bne	.LCB6449
	b	.L903	@long jump
.LCB6449:
	ldr	r3, .L961+68
	bl	.L5
	movs	r2, #8
	movs	r3, #41
	str	r7, [r4, #92]
	movs	r7, r2
	ldrb	r3, [r4, r3]
	ldr	r0, [r4, #96]
	ands	r7, r3
	tst	r2, r3
	beq	.LCB6460
	b	.L960	@long jump
.LCB6460:
.L904:
	cmp	r0, #0
	bne	.LCB6463
	b	.L905	@long jump
.LCB6463:
	ldr	r3, .L961+68
	bl	.L5
	str	r7, [r4, #96]
	b	.L905
.L957:
	movs	r0, r7
	movs	r1, #4
	ldr	r3, .L961+40
	bl	.L5
	ldr	r0, .L961+72
	b	.L952
.L958:
	movs	r0, r5
	movs	r1, #6
	ldr	r3, .L961+40
	bl	.L5
	movs	r1, r7
	movs	r0, r5
	ldr	r3, .L961+76
	bl	.L5
	b	.L899
.L923:
	movs	r2, #128
	lsls	r2, r2, #6
	b	.L901
.L915:
	ldr	r0, .L961+80
	b	.L952
.L954:
	ldr	r7, .L961+84
	str	r0, [sp, #4]
	str	r0, [sp]
	movs	r3, #0
	movs	r0, r7
	movs	r2, #0
	movs	r1, #0
	ldr	r7, .L961+88
	bl	.L7
	str	r0, [r4, #96]
	b	.L905
.L953:
	ldr	r7, .L961+92
	movs	r3, #0
	str	r0, [sp, #4]
	str	r0, [sp]
	movs	r2, #0
	movs	r0, r7
	movs	r1, #0
	ldr	r7, .L961+88
	bl	.L7
	movs	r3, #41
	str	r0, [r4, #92]
	ldrb	r3, [r4, r3]
	b	.L903
.L959:
	ldr	r3, .L961+96
	movs	r1, #10
	movs	r0, r7
	bl	.L5
	ldr	r3, .L961+76
	movs	r1, r0
	movs	r0, r5
	str	r3, [sp, #12]
	bl	.L5
	movs	r0, r5
	movs	r1, #16
	ldr	r3, .L961+40
	bl	.L5
	movs	r0, r7
	ldr	r3, .L961+100
	movs	r1, #10
	bl	.L5
	movs	r0, r5
	ldr	r3, [sp, #12]
	bl	.L5
	b	.L899
.L962:
	.align	2
.L961:
	.word	ClearText
	.word	PutText
	.word	gPlaySt
	.word	EndAllMus
	.word	gBG0TilemapBuffer
	.word	Text_SetCursor
	.word	.LC260
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
	beq	.L964
.L991:
	adds	r3, r3, #4
	subs	r3, r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
.L964:
	adds	r3, r4, r3
	cmp	r3, r0
	bcs	.L965
.L992:
	cmp	r3, #0
	beq	.L965
	movs	r4, r3
	movs	r1, r2
	ldrh	r3, [r4, #2]
	ands	r1, r3
	tst	r2, r3
	bne	.L991
	adds	r3, r4, r3
	cmp	r3, r0
	bcc	.L992
.L965:
	ldr	r6, .L993
.L975:
	ldrb	r3, [r4]
	cmp	r3, #2
	beq	.L967
	movs	r2, r3
	subs	r2, r2, #64
	lsls	r2, r2, #24
	lsrs	r2, r2, #24
	cmp	r2, #6
	bhi	.L968
	subs	r3, r3, #65
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	cmp	r3, #5
	bhi	.L969
	lsls	r3, r3, #2
	ldr	r3, [r6, r3]
	mov	pc, r3
	.section	.rodata
	.align	2
.L971:
	.word	.L974
	.word	.L967
	.word	.L973
	.word	.L973
	.word	.L972
	.word	.L970
	.text
.L973:
	ldrb	r0, [r4, #1]
	ldr	r3, .L993+4
	bl	.L5
	cmp	r0, #0
	beq	.L968
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L968
	ldr	r3, .L993+8
	bl	.L5
.L968:
	movs	r1, r4
	movs	r0, r5
	bl	REW_prevEntry
	subs	r4, r0, #0
	bne	.L975
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L974:
	movs	r0, r4
	bl	REW_undoObstacleCombat
	b	.L968
.L972:
	movs	r1, #1
	movs	r0, r4
	bl	REW_doInventoryReorder
	b	.L968
.L970:
	movs	r0, r4
	bl	REW_undoItemObtainedUnit
	b	.L968
.L967:
	movs	r0, r4
	bl	REW_undoCombat
	b	.L968
.L969:
	movs	r0, r4
	bl	REW_undoPhaseChange
	b	.L968
.L994:
	.align	2
.L993:
	.word	.L971
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
	ldr	r3, .L1014
	movs	r5, r0
	mov	r8, r3
	movs	r6, #3
	push	{lr}
	ldr	r7, .L1014+4
	adds	r4, r0, #4
.L1006:
	ldrb	r3, [r4]
	cmp	r3, #2
	beq	.L996
	movs	r2, r3
	subs	r2, r2, #64
	lsls	r2, r2, #24
	lsrs	r2, r2, #24
	cmp	r2, #6
	bhi	.L997
	subs	r3, r3, #65
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	cmp	r3, #5
	bhi	.L998
	lsls	r3, r3, #2
	ldr	r3, [r7, r3]
	mov	pc, r3
	.section	.rodata
	.align	2
.L1000:
	.word	.L1003
	.word	.L996
	.word	.L1002
	.word	.L1002
	.word	.L1001
	.word	.L999
	.text
.L1002:
	adds	r0, r4, #4
	bl	.L10
.L997:
	movs	r2, r6
	ldrh	r3, [r4, #2]
	ands	r2, r3
	tst	r6, r3
	beq	.L1004
	adds	r3, r3, #4
	subs	r3, r3, r2
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
.L1004:
	adds	r4, r4, r3
	ldrh	r3, [r5, #2]
	adds	r3, r5, r3
	cmp	r4, r3
	bcs	.L995
	cmp	r4, #0
	bne	.L1006
.L995:
	@ sp needed
	pop	{r7}
	mov	r8, r7
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L1003:
	movs	r0, r4
	bl	REW_redoObstacleCombat
	b	.L997
.L1001:
	movs	r1, #0
	movs	r0, r4
	bl	REW_doInventoryReorder
	b	.L997
.L999:
	movs	r0, r4
	bl	REW_redoItemObtainedUnit
	b	.L997
.L996:
	movs	r0, r4
	bl	REW_redoCombat
	b	.L997
.L998:
	movs	r0, r4
	bl	REW_redoPhaseChange
	b	.L997
.L1015:
	.align	2
.L1014:
	.word	LoadUnit
	.word	.L1000
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
	push	{r4, r5, r6, r7, lr}
	mov	lr, r8
	push	{lr}
	ldr	r3, .L1055
	ldr	r3, [r3]
	ldr	r5, .L1055+4
	ldrh	r3, [r3, #6]
	movs	r4, r0
	ldrb	r7, [r5, #15]
	ldrh	r6, [r5, #16]
	lsls	r2, r3, #25
	bpl	.L1017
	movs	r2, #41
	ldrb	r2, [r0, r2]
	lsls	r2, r2, #29
	bpl	.L1017
	movs	r3, #65
	ldrb	r3, [r5, r3]
	lsls	r3, r3, #30
	bpl	.L1052
.L1018:
	ldr	r0, [r4, #44]
	bl	REW_undo
	ldrb	r3, [r5, #15]
	cmp	r3, r7
	beq	.L1019
	movs	r2, #41
	movs	r1, #1
	ldrb	r3, [r4, r2]
	orrs	r3, r1
	strb	r3, [r4, r2]
.L1019:
	ldrh	r3, [r5, #16]
	cmp	r3, r6
	beq	.L1020
	movs	r2, #41
	movs	r1, #2
	ldrb	r3, [r4, r2]
	orrs	r3, r1
	strb	r3, [r4, r2]
.L1020:
	ldr	r2, .L1055+8
	ldr	r2, [r2]
	ldr	r3, [r4, #44]
	adds	r2, r2, #8
	cmp	r3, r2
	beq	.L1021
	ldrh	r2, [r3]
	cmp	r2, #0
	beq	.L1021
	subs	r3, r3, r2
	movs	r2, #41
	str	r3, [r4, #44]
	ldrh	r3, [r3]
	ldrb	r2, [r4, r2]
	cmp	r3, #0
	beq	.L1053
.L1022:
	movs	r3, #8
	orrs	r2, r3
	movs	r3, #41
	strb	r2, [r4, r3]
.L1051:
	movs	r0, r4
	bl	REW_refreshUI
	ldr	r3, .L1055+12
	bl	.L5
	ldr	r3, .L1055+16
	bl	.L5
.L1016:
	@ sp needed
	pop	{r7}
	mov	r8, r7
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L1017:
	lsls	r3, r3, #24
	bpl	.L1016
	movs	r3, #41
	ldrb	r3, [r4, r3]
	lsls	r3, r3, #28
	bpl	.L1016
	movs	r3, #65
	ldrb	r3, [r5, r3]
	lsls	r3, r3, #30
	bpl	.L1054
.L1024:
	ldr	r3, .L1055+8
	mov	r8, r3
	ldr	r3, [r3]
	ldr	r0, [r4, #44]
	ldr	r3, [r3, #4]
	cmp	r0, r3
	beq	.L1029
	ldrh	r3, [r0, #2]
	adds	r0, r0, r3
.L1025:
	str	r0, [r4, #44]
	bl	REW_redo
	movs	r3, #41
	ldrb	r2, [r5, #15]
	ldrb	r3, [r4, r3]
	cmp	r2, r7
	beq	.L1026
	movs	r2, #1
	orrs	r3, r2
.L1026:
	ldrh	r2, [r5, #16]
	cmp	r2, r6
	beq	.L1027
	movs	r2, #2
	orrs	r3, r2
.L1027:
	mov	r2, r8
	ldr	r2, [r2]
	ldr	r1, [r4, #44]
	ldr	r2, [r2, #4]
	cmp	r1, r2
	bcc	.L1028
	movs	r2, #8
	bics	r3, r2
.L1028:
	movs	r2, #4
	orrs	r3, r2
	movs	r2, #41
	strb	r3, [r4, r2]
	b	.L1051
.L1052:
	movs	r0, #102
	ldr	r3, .L1055+20
	bl	.L5
	b	.L1018
.L1053:
	adds	r3, r3, #4
	bics	r2, r3
	b	.L1022
.L1054:
	movs	r0, #102
	ldr	r3, .L1055+20
	bl	.L5
	b	.L1024
.L1029:
	movs	r0, #0
	b	.L1025
.L1021:
	movs	r3, #0
	str	r3, [r4, #44]
	ldrh	r3, [r3]
	.inst	0xdeff
.L1056:
	.align	2
.L1055:
	.word	gKeyStatusPtr
	.word	gPlaySt
	.word	REW_rewindBuffer
	.word	RefreshEntityBmMaps
	.word	RefreshUnitSprites
	.word	m4aSongNumStart
	.size	REW_handleInput, .-REW_handleInput
	.global	REW_procScr
	.section	.rodata.str1.4
	.align	2
.LC287:
	.ascii	"REW_proc\000"
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
	.type	REW_procScr, %object
	.size	REW_procScr, 96
REW_procScr:
	.short	1
	.short	0
	.word	.LC287
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
.L596:
	bx	r2
.L5:
	bx	r3
.L171:
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
.L219:
	bx	fp
