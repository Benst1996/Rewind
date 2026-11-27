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
	.global	REW_deleteRewindEntry
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_deleteRewindEntry, %function
REW_deleteRewindEntry:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 784
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r3, #3
	push	{r4, r5, r6, r7, lr}
	mov	r5, r8
	mov	lr, fp
	mov	r7, r10
	mov	r6, r9
	movs	r2, r3
	push	{r5, r6, r7, lr}
	ldr	r4, .L98
	add	sp, sp, r4
	str	r1, [sp, #12]
	mov	r8, r0
	ldrh	r0, [r1, #2]
	ands	r2, r0
	str	r2, [sp, #8]
	tst	r3, r0
	bne	.L55
	mov	r2, r8
	adds	r3, r1, r0
	mov	r1, r8
	ldrh	r2, [r2, #2]
	adds	r1, r2, r1
	movs	r4, r3
	cmp	r3, r1
	bcs	.L92
	cmp	r3, #0
	bne	.L57
.L92:
	subs	r3, r2, r0
	mov	r2, r8
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2, #2]
	cmp	r3, #4
	bne	.L54
.L65:
	movs	r3, #0
	mov	r2, r8
	strh	r3, [r2, #2]
	b	.L54
.L55:
	ldr	r2, [sp, #8]
	adds	r3, r0, #4
	subs	r3, r3, r2
	ldr	r2, [sp, #12]
	mov	ip, r2
	mov	r2, r8
	mov	r1, r8
	ldrh	r2, [r2, #2]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	add	r3, r3, ip
	adds	r1, r2, r1
	movs	r4, r3
	cmp	r3, r1
	bcs	.L60
	cmp	r3, #0
	beq	.L60
.L57:
	add	r3, sp, #16
	mov	r10, r3
	ldr	r3, .L98+4
	mov	r9, r3
	movs	r3, #128
	lsls	r3, r3, #19
	movs	r7, #0
	movs	r6, #3
	mov	fp, r3
	str	r0, [sp, #4]
	b	.L64
.L97:
	cmp	r4, #0
	beq	.L93
.L64:
	movs	r3, r6
	ldrh	r5, [r4, #2]
	ands	r3, r5
	tst	r6, r5
	beq	.L61
	movs	r2, #4
	subs	r3, r2, r3
	adds	r5, r5, r3
.L61:
	mov	r3, fp
	asrs	r2, r5, #2
	orrs	r2, r3
	mov	r3, r10
	movs	r0, r4
	adds	r1, r3, r7
	bl	.L9
	movs	r2, r6
	ldrh	r3, [r4, #2]
	adds	r7, r7, r5
	ands	r2, r3
	tst	r6, r3
	beq	.L62
	adds	r3, r3, #4
	subs	r3, r3, r2
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
.L62:
	adds	r4, r4, r3
	mov	r3, r8
	mov	r2, r8
	ldrh	r3, [r3, #2]
	adds	r2, r2, r3
	cmp	r4, r2
	bcc	.L97
.L93:
	ldr	r2, [sp, #8]
	ldr	r0, [sp, #4]
	cmp	r2, #0
	beq	.L68
	subs	r2, r0, r2
	adds	r2, r2, #4
	lsls	r2, r2, #16
	lsrs	r0, r2, #16
.L68:
	mov	r2, r8
	subs	r3, r3, r0
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2, #2]
	cmp	r3, #4
	beq	.L65
	cmp	r7, #0
	ble	.L54
	movs	r2, #128
	lsls	r7, r7, #9
	lsrs	r7, r7, #11
	lsls	r2, r2, #19
	mov	r0, r10
	ldr	r1, [sp, #12]
	orrs	r2, r7
	bl	.L9
.L54:
	movs	r3, #197
	lsls	r3, r3, #2
	add	sp, sp, r3
	@ sp needed
	pop	{r4, r5, r6, r7}
	mov	fp, r7
	mov	r10, r6
	mov	r9, r5
	mov	r8, r4
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L60:
	ldr	r3, [sp, #8]
	subs	r0, r0, r3
	adds	r0, r0, #4
	b	.L92
.L99:
	.align	2
.L98:
	.word	-788
	.word	CpuSet
	.size	REW_deleteRewindEntry, .-REW_deleteRewindEntry
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
	ldr	r2, .L108
	ldr	r4, [r2]
	ldr	r2, .L108+4
	ldrh	r1, [r4, #2]
	movs	r3, r0
	cmp	r1, r2
	beq	.L101
	ldr	r2, .L108+8
	adds	r0, r1, #4
	lsls	r2, r2, #16
	adds	r0, r0, r3
	lsrs	r2, r2, #16
	cmp	r0, r2
	bgt	.L106
	subs	r0, r1, #0
	beq	.L107
.L104:
	adds	r3, r3, #4
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	adds	r0, r4, r0
	strh	r3, [r0, #2]
	adds	r3, r3, r1
	strh	r3, [r4, #2]
.L100:
	@ sp needed
	pop	{r4}
	pop	{r1}
	bx	r1
.L107:
	movs	r0, #4
	movs	r1, #4
	b	.L104
.L106:
	movs	r3, #1
	rsbs	r3, r3, #0
	strh	r3, [r4, #2]
.L101:
	movs	r0, #0
	b	.L100
.L109:
	.align	2
.L108:
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
	ldr	r3, .L115
	ldr	r4, [r3]
	ldr	r2, .L115+4
	ldrh	r3, [r4, #2]
	cmp	r3, r2
	beq	.L111
	ldr	r2, .L115+8
	adds	r3, r3, r1
	lsls	r2, r2, #16
	lsrs	r2, r2, #16
	cmp	r3, r2
	bgt	.L114
	strh	r3, [r4, #2]
	ldrh	r3, [r0, #2]
	adds	r1, r1, r3
	strh	r1, [r0, #2]
	movs	r0, #1
.L113:
	@ sp needed
	pop	{r4}
	pop	{r1}
	bx	r1
.L114:
	movs	r3, #1
	rsbs	r3, r3, #0
	strh	r3, [r4, #2]
.L111:
	movs	r0, #0
	b	.L113
.L116:
	.align	2
.L115:
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
	ldr	r3, .L126
	ldr	r5, [r3]
	ldr	r2, .L126+4
	ldrh	r3, [r5, #2]
	cmp	r3, r2
	beq	.L117
	movs	r4, #3
	movs	r6, #0
	ldr	r1, .L126+8
	ands	r4, r3
	subs	r0, r3, r4
	adds	r0, r0, #4
	lsls	r1, r1, #16
	lsrs	r1, r1, #16
	lsrs	r2, r0, #31
	cmp	r1, r0
	adcs	r2, r2, r6
	lsls	r2, r2, #24
	beq	.L117
	cmp	r4, #0
	bne	.L125
.L117:
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L125:
	adds	r3, r3, #4
	subs	r3, r3, r4
	strh	r3, [r5, #2]
	b	.L117
.L127:
	.align	2
.L126:
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
	ldr	r3, .L131
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	cmp	r3, r0
	beq	.L130
	ldrh	r3, [r0, #2]
	adds	r0, r0, r3
.L129:
	@ sp needed
	bx	lr
.L130:
	movs	r0, #0
	b	.L129
.L132:
	.align	2
.L131:
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
	ldr	r3, .L137
	ldr	r3, [r3]
	adds	r3, r3, #8
	cmp	r0, r3
	beq	.L136
	ldrh	r3, [r0]
	cmp	r3, #0
	beq	.L136
	subs	r0, r0, r3
.L133:
	@ sp needed
	bx	lr
.L136:
	movs	r0, #0
	b	.L133
.L138:
	.align	2
.L137:
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
	beq	.L140
	adds	r2, r2, #4
	subs	r2, r2, r4
	lsls	r2, r2, #16
	lsrs	r2, r2, #16
.L140:
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
	beq	.L147
	adds	r0, r0, #4
	subs	r0, r0, r5
	lsls	r0, r0, #16
	lsrs	r0, r0, #16
.L147:
	ldrh	r4, [r2, #2]
	adds	r0, r3, r0
	adds	r2, r2, r4
	cmp	r0, r2
	sbcs	r4, r4, r4
	ands	r0, r4
	cmp	r3, r1
	beq	.L154
	cmp	r1, r0
	beq	.L155
	movs	r4, #3
	b	.L152
.L156:
	movs	r0, r3
.L152:
	movs	r5, r4
	ldrh	r3, [r0, #2]
	ands	r5, r3
	tst	r4, r3
	beq	.L150
	adds	r3, r3, #4
	subs	r3, r3, r5
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
.L150:
	adds	r3, r0, r3
	cmp	r3, r2
	sbcs	r5, r5, r5
	ands	r3, r5
	cmp	r1, r3
	bne	.L156
.L146:
	@ sp needed
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.L155:
	movs	r0, r3
	b	.L146
.L154:
	movs	r0, #0
	b	.L146
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
	movs	r1, r0
	push	{r4, lr}
	ldrh	r3, [r1, #2]
	adds	r0, r0, #4
	cmp	r3, #0
	beq	.L167
	movs	r2, #3
	movs	r4, r2
	adds	r1, r1, r3
	ldrh	r3, [r0, #2]
	ands	r4, r3
	tst	r2, r3
	beq	.L165
.L173:
	adds	r3, r3, #4
	subs	r3, r3, r4
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
.L165:
	adds	r3, r0, r3
	cmp	r3, r1
	bcs	.L163
.L174:
	cmp	r3, #0
	beq	.L163
	movs	r0, r3
	movs	r4, r2
	ldrh	r3, [r0, #2]
	ands	r4, r3
	tst	r2, r3
	bne	.L173
	adds	r3, r0, r3
	cmp	r3, r1
	bcc	.L174
.L163:
	@ sp needed
	pop	{r4}
	pop	{r1}
	bx	r1
.L167:
	movs	r0, #0
	b	.L163
	.size	REW_lastEntry, .-REW_lastEntry
	.align	1
	.p2align 2,,3
	.global	REW_findEntry
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_findEntry, %function
REW_findEntry:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	ldrh	r5, [r0, #2]
	cmp	r5, #0
	beq	.L181
	movs	r4, #3
	adds	r5, r0, r5
.L177:
	subs	r0, r1, #0
	beq	.L175
.L180:
	ldrb	r3, [r0]
	cmp	r3, r2
	beq	.L175
	movs	r1, r4
	ldrh	r3, [r0, #2]
	ands	r1, r3
	tst	r4, r3
	beq	.L178
	adds	r3, r3, #4
	subs	r3, r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
.L178:
	adds	r0, r0, r3
	movs	r1, #0
	cmp	r0, r5
	bcs	.L177
	cmp	r0, #0
	bne	.L180
.L175:
	@ sp needed
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.L181:
	movs	r0, #0
	b	.L175
	.size	REW_findEntry, .-REW_findEntry
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
	ldr	r3, .L189
	@ sp needed
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	cmp	r0, r3
	sbcs	r0, r0, r0
	rsbs	r0, r0, #0
	bx	lr
.L190:
	.align	2
.L189:
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
	beq	.L191
	movs	r7, #0
	movs	r6, #0
	b	.L198
.L194:
	cmp	r5, #17
	beq	.L196
	movs	r5, r6
	ands	r5, r7
.L195:
	cmp	r5, #0
	bne	.L191
	adds	r4, r4, #2
	adds	r0, r0, #2
	cmp	r1, r4
	ble	.L191
.L198:
	ldrb	r5, [r0]
	cmp	r5, #16
	bne	.L194
	ldrb	r5, [r0, #1]
	strb	r5, [r2]
	ldrb	r5, [r0]
	cmp	r5, #17
	beq	.L201
	movs	r5, r7
	movs	r6, #1
	b	.L195
.L196:
	ldrb	r5, [r0, #1]
	movs	r7, #1
	strb	r5, [r3]
	movs	r5, r6
	b	.L195
.L201:
	ldrb	r2, [r0, #1]
	strb	r2, [r3]
.L191:
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
	beq	.L206
	movs	r0, #0
	cmp	r2, #1
	beq	.L207
.L204:
	@ sp needed
	pop	{r4}
	pop	{r1}
	bx	r1
.L206:
	bl	REW_getUnitID.part.0
	b	.L204
.L207:
	movs	r2, #1
	ldr	r1, .L208
	ldrsb	r2, [r3, r2]
	ldr	r1, [r1]
	ldrb	r3, [r3]
	lsls	r2, r2, #2
	ldr	r2, [r2, r1]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	ldrb	r0, [r2, r3]
	b	.L204
.L209:
	.align	2
.L208:
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
	ldr	r5, .L220
	ldr	r6, .L220+4
.L212:
	movs	r0, r4
	bl	.L6
	cmp	r0, #0
	beq	.L211
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L211
	movs	r3, #17
	movs	r2, #16
	ldrsb	r3, [r0, r3]
	ldr	r1, [r6]
	lsls	r3, r3, #2
	ldrsb	r2, [r0, r2]
	ldr	r3, [r3, r1]
	ldrb	r3, [r3, r2]
	cmp	r3, #34
	bne	.L211
	ldr	r3, [r0, #12]
	orrs	r3, r7
	str	r3, [r0, #12]
.L211:
	adds	r4, r4, #1
	cmp	r4, #192
	bne	.L212
	@ sp needed
	pop	{r3, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L221:
	.align	2
.L220:
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
	ldr	r2, .L223
	ldr	r3, .L223+4
	bl	.L5
	movs	r1, r4
	movs	r0, r5
	ldr	r3, .L223+8
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
.L224:
	.align	2
.L223:
	.word	83886098
	.word	CpuSet
	.word	UnitInitFromDefinition
	.size	REW_loadUnit, .-REW_loadUnit
	.align	1
	.p2align 2,,3
	.global	REW_removeItemFromSupply
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_removeItemFromSupply, %function
REW_removeItemFromSupply:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L231
	movs	r4, r0
	bl	.L5
	movs	r2, r0
	adds	r2, r2, #200
	b	.L228
.L226:
	adds	r0, r0, #2
	cmp	r2, r0
	beq	.L230
.L228:
	ldrh	r3, [r0]
	cmp	r3, r4
	bne	.L226
	movs	r3, #0
	strh	r3, [r0]
	movs	r0, #0
.L225:
	@ sp needed
	pop	{r4}
	pop	{r1}
	bx	r1
.L230:
	movs	r0, #1
	rsbs	r0, r0, #0
	b	.L225
.L232:
	.align	2
.L231:
	.word	GetConvoyItemArray
	.size	REW_removeItemFromSupply, .-REW_removeItemFromSupply
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
	ldr	r3, .L236
	movs	r4, r0
	ldrb	r2, [r0, #6]
	ldrb	r1, [r0, #5]
	ldrb	r0, [r0, #4]
	bl	.L5
	cmp	r0, #0
	beq	.L234
	ldrb	r3, [r0, #3]
	ldrb	r2, [r4, #7]
	subs	r3, r3, r2
	strb	r3, [r0, #3]
.L233:
	@ sp needed
	pop	{r4}
	pop	{r0}
	bx	r0
.L234:
	ldrb	r1, [r4, #5]
	ldrb	r0, [r4, #4]
	ldr	r3, .L236+4
	bl	.L5
	lsls	r0, r0, #16
	movs	r2, #0
	movs	r1, #0
	ldr	r3, .L236+8
	lsrs	r0, r0, #16
	bl	.L5
	ldrb	r3, [r4, #7]
	ldrb	r2, [r4, #6]
	ldrb	r1, [r4, #5]
	ldrb	r0, [r4, #4]
	rsbs	r3, r3, #0
	ldr	r4, .L236+12
	bl	.L238
	b	.L233
.L237:
	.align	2
.L236:
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
	ldr	r3, .L242
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
	beq	.L241
.L239:
	@ sp needed
	pop	{r4}
	pop	{r0}
	bx	r0
.L241:
	ldr	r3, .L242+4
	bl	.L5
	ldrb	r1, [r4, #5]
	ldrb	r0, [r4, #4]
	ldr	r3, .L242+8
	bl	.L5
	lsls	r0, r0, #16
	movs	r2, #0
	movs	r1, #0
	ldr	r3, .L242+12
	lsrs	r0, r0, #16
	bl	.L5
	b	.L239
.L243:
	.align	2
.L242:
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
	bne	.LCB1494
	b	.L277	@long jump
.LCB1494:
	movs	r3, #63
	mov	r2, r9
	bics	r2, r3
	cmp	r2, #192
	beq	.L278
	subs	r7, r7, #4
	adds	r5, r0, #4
	lsls	r1, r7, #16
	lsrs	r1, r1, #16
	movs	r0, r5
	bl	REW_getUnitID.part.0
	ldr	r3, .L283
	bl	.L5
	subs	r4, r0, #0
	beq	.L244
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L244
.L246:
	mov	r3, r8
	lsrs	r7, r3, #31
	add	r7, r7, r8
	movs	r6, #0
	asrs	r7, r7, #1
	adds	r5, r5, #2
	cmp	r3, #1
	ble	.L260
	ldr	r3, .L283+4
	mov	r8, r3
	b	.L259
.L280:
	cmp	r3, #28
	beq	.L279
.L256:
	ldrb	r2, [r4, r3]
	ldrb	r1, [r5, #1]
	subs	r2, r2, r1
	strb	r2, [r4, r3]
.L257:
	adds	r6, r6, #1
	adds	r5, r5, #2
	cmp	r7, r6
	ble	.L260
.L259:
	ldrb	r3, [r5]
	cmp	r3, #71
	bls	.L280
	cmp	r3, #87
	bls	.L281
	cmp	r3, #88
	bne	.L257
	ldr	r3, .L283+8
	ldrb	r0, [r4, #28]
	bl	.L5
	ldrb	r2, [r5, #1]
	ldrb	r3, [r0, #6]
	adds	r6, r6, #1
	subs	r3, r3, r2
	strb	r3, [r0, #6]
	adds	r5, r5, #2
	cmp	r7, r6
	bgt	.L259
.L260:
	movs	r3, #17
	ldr	r2, .L283+12
	ldr	r1, [r2]
	movs	r2, #16
	ldrsb	r3, [r4, r3]
	lsls	r3, r3, #2
	ldr	r3, [r3, r1]
	ldrsb	r2, [r4, r2]
	ldrb	r1, [r4, #11]
	strb	r1, [r3, r2]
.L244:
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
.L281:
	ldr	r3, [r4]
	ldrb	r0, [r3, #4]
	bl	.L10
	ldrb	r3, [r5]
	subs	r3, r3, #72
	ldrb	r2, [r0, r3]
	ldrb	r1, [r5, #1]
	subs	r2, r2, r1
	strb	r2, [r0, r3]
	b	.L257
.L279:
	movs	r3, #0
	ldrb	r0, [r5, #1]
	rsbs	r0, r0, #0
	lsls	r0, r0, #24
	strb	r3, [r4, #28]
	lsrs	r0, r0, #24
	ldr	r3, .L283+8
	bl	.L5
	mov	r9, r0
	ldr	r3, .L283+16
	bl	.L5
	mov	r2, r9
	ldrb	r3, [r4, #16]
	strb	r3, [r2]
	ldrb	r3, [r4, #17]
	strb	r3, [r2, #1]
	ldrb	r3, [r5]
	b	.L256
.L278:
	mov	r0, r9
	ldr	r3, .L283
	bics	r0, r2
	bl	.L5
	subs	r4, r0, #0
	beq	.L244
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L244
	ldr	r3, .L283+20
	bl	.L5
	mov	r9, r0
	cmp	r0, #0
	ble	.L282
	ldr	r3, .L283+24
	mov	r10, r3
	ldr	r3, .L283+28
	mov	fp, r3
	movs	r3, #50
	mov	ip, r3
	add	ip, ip, r4
	mov	r3, ip
	movs	r7, #0
	str	r3, [sp, #4]
	adds	r6, r6, #4
.L251:
	movs	r1, r7
	movs	r0, r4
	bl	.L8
	subs	r5, r0, #0
	beq	.L252
	ldr	r3, [r4]
	ldrb	r1, [r3, #4]
	bl	.L285
	ldrb	r3, [r6, r7]
	ldr	r2, [sp, #4]
	adds	r5, r5, r0
	adds	r5, r5, #50
	strb	r3, [r5]
	strb	r3, [r2, r7]
.L252:
	adds	r7, r7, #1
	cmp	r9, r7
	bne	.L251
.L253:
	mov	r3, r9
	adds	r5, r6, r3
	ldrb	r3, [r6, r3]
	strb	r3, [r4, #16]
	ldrb	r3, [r5, #1]
	mov	r2, r9
	strb	r3, [r4, #17]
	mov	r3, r8
	subs	r3, r3, r2
	mov	r8, r3
	b	.L246
.L277:
	ldrb	r0, [r0, #6]
	lsls	r0, r0, #29
	lsrs	r0, r0, #30
	ldr	r3, .L283+32
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
	b	.L246
.L282:
	adds	r6, r6, #4
	b	.L253
.L284:
	.align	2
.L283:
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
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	mov	r7, r8
	mov	lr, r9
	push	{r7, lr}
	movs	r5, r0
	ldrh	r7, [r0, #2]
	ldrb	r0, [r0, #1]
	subs	r4, r7, #6
	cmp	r0, #255
	bne	.LCB1755
	b	.L312	@long jump
.LCB1755:
	movs	r3, #63
	movs	r2, r0
	bics	r2, r3
	cmp	r2, #192
	beq	.L313
	movs	r3, #5
	ldr	r2, .L318
	ldr	r1, [r2]
	movs	r2, #4
	ldrsb	r3, [r5, r3]
	lsls	r3, r3, #2
	ldr	r3, [r3, r1]
	ldrsb	r2, [r5, r2]
	ldrb	r0, [r3, r2]
	ldr	r3, .L318+4
	bl	.L5
	subs	r6, r0, #0
	beq	.L286
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L286
	adds	r3, r5, #4
	mov	r8, r3
.L289:
	lsrs	r7, r4, #31
	adds	r7, r7, r4
	asrs	r7, r7, #1
	cmp	r4, #1
	ble	.L286
	mov	r4, r8
	ldr	r3, .L318+8
	movs	r5, #0
	mov	r8, r3
	adds	r4, r4, #2
	b	.L298
.L315:
	cmp	r3, #28
	beq	.L314
.L294:
	ldrb	r2, [r6, r3]
	ldrb	r1, [r4, #1]
	adds	r2, r2, r1
	strb	r2, [r6, r3]
.L296:
	adds	r5, r5, #1
	adds	r4, r4, #2
	cmp	r7, r5
	ble	.L286
.L298:
	ldrb	r3, [r4]
	cmp	r3, #71
	bls	.L315
	cmp	r3, #87
	bls	.L316
	cmp	r3, #88
	bne	.L296
	ldr	r3, .L318+12
	ldrb	r0, [r6, #28]
	bl	.L5
	ldrb	r2, [r4, #1]
	ldrb	r3, [r0, #6]
	adds	r5, r5, #1
	adds	r3, r3, r2
	strb	r3, [r0, #6]
	adds	r4, r4, #2
	cmp	r7, r5
	bgt	.L298
.L286:
	@ sp needed
	pop	{r6, r7}
	mov	r9, r7
	mov	r8, r6
	pop	{r3, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L316:
	ldr	r3, [r6]
	ldrb	r0, [r3, #4]
	bl	.L10
	ldrb	r3, [r4]
	subs	r3, r3, #72
	ldrb	r2, [r0, r3]
	ldrb	r1, [r4, #1]
	adds	r2, r2, r1
	strb	r2, [r0, r3]
	b	.L296
.L314:
	ldr	r3, .L318+12
	ldrb	r0, [r6, #28]
	bl	.L5
	ldr	r3, .L318+16
	mov	r9, r0
	movs	r0, r6
	bl	.L5
	cmp	r0, #0
	beq	.L317
.L295:
	mov	r2, r9
	ldrb	r3, [r6, #16]
	strb	r3, [r2]
	ldrb	r3, [r6, #17]
	strb	r3, [r2, #1]
	ldrb	r3, [r4]
	b	.L294
.L313:
	ldr	r3, .L318+4
	bics	r0, r2
	bl	.L5
	subs	r6, r0, #0
	beq	.L286
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L286
	ldr	r3, .L318+20
	bl	.L5
	adds	r5, r5, #4
	ldr	r3, .L318+24
	movs	r0, r6
	bl	.L5
	mov	r8, r5
	add	r8, r8, r0
	mov	r3, r8
	ldr	r2, .L318
	ldrb	r3, [r3, #1]
	ldr	r1, [r2]
	mov	r2, r8
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	lsls	r3, r3, #2
	ldr	r3, [r3, r1]
	movs	r1, #0
	ldrb	r2, [r2]
	lsls	r2, r2, #24
	asrs	r2, r2, #24
	strb	r1, [r3, r2]
	subs	r4, r4, r0
	b	.L289
.L312:
	movs	r3, #1
	ldr	r2, .L318
	ldr	r1, [r2]
	mov	r9, r2
	movs	r2, #7
	adds	r4, r5, #7
	ldrsb	r3, [r4, r3]
	lsls	r3, r3, #2
	ldr	r3, [r3, r1]
	ldrsb	r2, [r5, r2]
	ldrb	r0, [r3, r2]
	ldr	r3, .L318+4
	bl	.L5
	mov	r8, r4
	subs	r6, r0, #0
	beq	.L288
	movs	r3, #0
	str	r3, [r0]
.L288:
	movs	r3, #1
	mov	r2, r9
	ldrsb	r3, [r4, r3]
	ldr	r1, [r2]
	movs	r2, #7
	lsls	r3, r3, #2
	ldr	r3, [r3, r1]
	movs	r4, r7
	movs	r1, #0
	ldrsb	r2, [r5, r2]
	subs	r4, r4, #9
	strb	r1, [r3, r2]
	b	.L289
.L317:
	mov	r0, r9
	ldr	r3, .L318+28
	bl	.L5
	b	.L295
.L319:
	.align	2
.L318:
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
	ldr	r3, .L370
	movs	r6, r1
	bl	.L5
	mov	r4, sp
	cmp	r0, #0
	beq	.L322
	movs	r2, #8
	mov	r1, sp
	ldr	r3, .L370+4
	bl	.L5
	movs	r2, #11
	ldr	r7, .L370+8
	ldrsb	r2, [r7, r2]
	cmp	r2, #0
	beq	.L322
	movs	r3, #110
	ldrsb	r1, [r6, r3]
	cmp	r1, #0
	beq	.L323
	ldr	r3, [sp, #8]
	lsls	r3, r3, #8
	lsrs	r3, r3, #20
	adds	r3, r3, r1
	movs	r1, #250
	lsls	r1, r1, #4
	cmp	r3, r1
	bgt	.L364
.L324:
	ldr	r1, [r4, #8]
	ldr	r0, .L370+12
	lsls	r3, r3, #20
	lsrs	r3, r3, #8
	ands	r1, r0
	orrs	r3, r1
	str	r3, [r4, #8]
.L323:
	movs	r1, #11
	movs	r3, #192
	ldrsb	r1, [r6, r1]
	tst	r3, r1
	beq	.L325
	ldr	r3, .L370+16
	mov	r8, r3
	ldrb	r3, [r3, #11]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	cmp	r3, r1
	beq	.L326
	cmp	r2, r1
	bne	.LCB2038
	b	.L363	@long jump
.LCB2038:
.L322:
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
.L325:
	movs	r0, #250
	ldrh	r3, [r4, #12]
	lsls	r3, r3, #18
	lsrs	r3, r3, #20
	adds	r3, r3, #1
	lsls	r0, r0, #4
	cmp	r3, r0
	bgt	.L365
.L329:
	lsls	r3, r3, #20
	lsrs	r3, r3, #18
	mov	r8, r3
	ldrh	r0, [r4, #12]
	ldr	r3, .L370+20
	ands	r0, r3
	mov	r3, r8
	orrs	r3, r0
	strh	r3, [r4, #12]
	ldr	r3, .L370+16
	mov	r8, r3
	ldrb	r3, [r3, #11]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	cmp	r3, r1
	beq	.L326
	cmp	r2, r1
	beq	.L363
.L337:
	mov	r3, r8
	ldrb	r3, [r3, #11]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	cmp	r3, r1
	bne	.LCB2096
	b	.L366	@long jump
.LCB2096:
.L338:
	movs	r3, #11
	ldrsb	r3, [r7, r3]
	cmp	r3, r1
	bne	.L322
	mov	r0, r8
	ldr	r3, .L370+24
	bl	.L5
	cmp	r0, #0
	bne	.L322
.L341:
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
	bcs	.L322
	adds	r3, r3, #1
	strb	r3, [r4, #11]
	lsrs	r3, r3, #8
	ands	r3, r1
	bics	r2, r1
	orrs	r2, r3
	strb	r2, [r4, #12]
	b	.L322
.L364:
	movs	r3, r1
	b	.L324
.L365:
	movs	r3, r0
	b	.L329
.L326:
	ldr	r3, .L370+24
	mov	r0, r8
	mov	r9, r3
	bl	.L5
	cmp	r0, #0
	bne	.L367
.L331:
	ldr	r3, .L370+28
	bl	.L5
	cmp	r0, #2
	beq	.L368
	movs	r2, #63
	ldr	r3, .L370+32
	ldrb	r1, [r3, #14]
	ands	r2, r1
	movs	r1, #0
.L334:
	ldrh	r3, [r3, #16]
	lsls	r3, r3, #22
	lsls	r2, r2, #8
	lsrs	r3, r3, #8
	orrs	r3, r2
	ldr	r0, .L370+36
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
	beq	.L369
	mov	r3, r8
	ldr	r3, [r3]
	ldrb	r0, [r3, #4]
.L336:
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
.L332:
	movs	r3, #192
	tst	r3, r1
	beq	.LCB2243
	b	.L322	@long jump
.LCB2243:
	b	.L337
.L363:
	ldr	r3, .L370+24
	mov	r9, r3
.L327:
	movs	r0, r7
	bl	.L9
	cmp	r0, #0
	beq	.L331
	movs	r1, #11
	ldrsb	r1, [r6, r1]
	b	.L332
.L367:
	movs	r1, #11
	movs	r3, #11
	ldrsb	r1, [r6, r1]
	ldrsb	r3, [r7, r3]
	cmp	r3, r1
	bne	.L332
	b	.L327
.L366:
	movs	r0, r7
	ldr	r3, .L370+24
	bl	.L5
	cmp	r0, #0
	bne	.LCB2278
	b	.L341	@long jump
.LCB2278:
	movs	r1, #11
	ldrsb	r1, [r6, r1]
	b	.L338
.L369:
	ldr	r3, [r7]
	ldrb	r0, [r3, #4]
	b	.L336
.L368:
	movs	r2, #63
	ldr	r3, .L370+40
	ldrb	r3, [r3, #17]
	movs	r1, #1
	ands	r2, r3
	ldr	r3, .L370+32
	b	.L334
.L371:
	.align	2
.L370:
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
	@ args = 4, pretend = 0, frame = 96
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r7, r10
	mov	lr, fp
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7, lr}
	movs	r7, r1
	mov	r10, r0
	sub	sp, sp, #100
	ldrb	r3, [r0, #11]
	ldr	r4, [sp, #136]
	add	r6, sp, #24
	movs	r1, r6
	strb	r3, [r4, #1]
	movs	r5, r2
	ldr	r3, .L423
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
	beq	.L373
	movs	r3, #81
	movs	r2, #72
	ldrb	r3, [r7, r3]
	adds	r3, r3, #12
	ldrh	r2, [r7, r2]
	lsls	r3, r3, #1
	adds	r3, r6, r3
	strh	r2, [r3, #6]
.L373:
	movs	r3, #111
	ldrsb	r1, [r7, r3]
	cmp	r1, #0
	blt	.L374
	movs	r0, r6
	ldr	r3, .L423+4
	bl	.L5
.L374:
	movs	r2, #115
	ldr	r0, [sp, #44]
	ldrb	r2, [r7, r2]
	ldrb	r3, [r6, #18]
	adds	r3, r3, r2
	movs	r2, r0
	strb	r3, [r6, #18]
	ldr	r1, .L423+8
	ldr	r3, [r7, #116]
	ands	r2, r1
	ands	r1, r3
	adds	r2, r2, r1
	ldr	r1, .L423+12
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
	ldr	r3, .L423+16
	bl	.L5
	movs	r0, r7
	ldr	r3, .L423+20
	bl	.L5
	cmp	r0, #0
	ble	.L375
	movs	r3, #80
	ldrb	r3, [r7, r3]
	adds	r3, r6, r3
	adds	r3, r3, #40
	strb	r0, [r3]
.L375:
	movs	r0, r6
	ldr	r3, .L423+24
	bl	.L5
	ldr	r3, [r6, #12]
	orrs	r3, r5
	str	r3, [r6, #12]
	ldr	r3, .L423+28
	ldr	r0, [r3]
	mov	r9, r3
	ldr	r2, .L423+32
	ldrh	r3, [r0, #2]
	mov	ip, r2
	cmp	r3, r2
	bne	.LCB2439
	b	.L372	@long jump
.LCB2439:
	ldr	r2, .L423+36
	lsls	r2, r2, #16
	lsrs	r2, r2, #16
	adds	r3, r3, #2
	mov	r8, r2
	cmp	r3, r2
	ble	.LCB2446
	b	.L418	@long jump
.LCB2446:
	strh	r3, [r0, #2]
	ldrh	r3, [r4, #2]
	adds	r3, r3, #2
	strh	r3, [r4, #2]
	mov	r3, r10
	ldrb	r3, [r3, #16]
	strb	r3, [r4, #4]
	mov	r3, r10
	ldrb	r3, [r3, #17]
	str	r4, [sp, #136]
	strb	r3, [r4, #5]
	movs	r1, r6
	mov	r4, r10
	movs	r5, #0
	mov	r10, r7
	movs	r2, #0
	str	r0, [sp]
	ldr	r7, [sp, #136]
	b	.L381
.L379:
	adds	r2, r2, #1
	adds	r1, r1, #1
	cmp	r2, #72
	beq	.L419
.L381:
	ldrb	r0, [r4, r2]
	ldrb	r3, [r1]
	subs	r3, r3, r0
	lsls	r3, r3, #24
	lsrs	r0, r3, #24
	mov	fp, r0
	cmp	r3, #0
	beq	.L379
	ldr	r3, [sp]
	ldrh	r3, [r3, #2]
	cmp	r3, ip
	bne	.LCB2485
	b	.L372	@long jump
.LCB2485:
	adds	r3, r3, #2
	ldr	r0, [sp]
	cmp	r8, r3
	blt	.L418
	strh	r3, [r0, #2]
	mov	r0, fp
	ldrh	r3, [r7, #2]
	adds	r3, r3, #2
	strh	r3, [r7, #2]
	lsls	r3, r5, #1
	adds	r3, r7, r3
	strb	r2, [r3, #6]
	adds	r2, r2, #1
	strb	r0, [r3, #7]
	adds	r5, r5, #1
	adds	r1, r1, #1
	cmp	r2, #72
	bne	.L381
.L419:
	movs	r4, r7
	mov	r7, r10
	ldr	r3, [r7]
	ldrb	r0, [r3, #4]
	ldr	r3, .L423+40
	bl	.L5
	mov	r10, r0
	cmp	r0, #0
	beq	.L382
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
	ldr	r2, .L423+32
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
	b	.L385
.L383:
	adds	r3, r3, #1
	cmp	r3, #17
	beq	.L420
.L385:
	mov	r2, ip
	ldrb	r1, [r0, r3]
	ldrb	r2, [r2, r3]
	subs	r2, r2, r1
	lsls	r2, r2, #24
	lsrs	r1, r2, #24
	cmp	r2, #0
	beq	.L383
	ldrh	r2, [r7, #2]
	cmp	r2, r10
	beq	.L372
	adds	r2, r2, #2
	cmp	r8, r2
	blt	.L421
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
	adds	r3, r3, #1
	adds	r2, r2, #1
	str	r2, [sp]
	cmp	r3, #17
	bne	.L385
.L420:
	ldr	r3, [sp, #4]
	mov	r7, fp
	mov	r9, r3
	ldr	r5, [sp]
.L382:
	ldrb	r3, [r6, #28]
	cmp	r3, #0
	beq	.L388
	movs	r3, #72
	ldrh	r0, [r7, r3]
	cmp	r0, #0
	bne	.L422
.L388:
	mov	r3, r9
	ldr	r0, [r3]
.L387:
	ldrh	r3, [r0, #2]
	ldr	r2, .L423+32
	cmp	r3, r2
	beq	.L372
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
	beq	.L372
	cmp	r1, #0
	beq	.L372
	adds	r3, r3, #4
	subs	r3, r3, r1
	strh	r3, [r0, #2]
	b	.L372
.L418:
	movs	r3, #1
	rsbs	r3, r3, #0
	strh	r3, [r0, #2]
.L372:
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
.L421:
	movs	r3, #1
	rsbs	r3, r3, #0
	strh	r3, [r7, #2]
	b	.L372
.L422:
	ldr	r3, .L423+44
	bl	.L5
	ldr	r3, .L423+48
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
	beq	.L387
	ldrh	r3, [r0, #2]
	ldr	r1, .L423+32
	cmp	r3, r1
	beq	.L372
	adds	r3, r3, #2
	cmp	r8, r3
	blt	.L418
	strh	r3, [r0, #2]
	ldrh	r3, [r4, #2]
	adds	r3, r3, #2
	strh	r3, [r4, #2]
	movs	r3, #88
	lsls	r5, r5, #1
	adds	r4, r4, r5
	strb	r3, [r4, #6]
	strb	r2, [r4, #7]
	b	.L387
.L424:
	.align	2
.L423:
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
	@ args = 4, pretend = 0, frame = 104
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r5, r8
	mov	r7, r10
	mov	lr, fp
	mov	r6, r9
	push	{r5, r6, r7, lr}
	sub	sp, sp, #108
	ldr	r5, [sp, #144]
	adds	r3, r5, #4
	mov	r8, r3
	movs	r3, #192
	str	r1, [sp, #4]
	movs	r1, #11
	movs	r7, r3
	str	r2, [sp, #8]
	ldrsb	r1, [r0, r1]
	movs	r4, r0
	ands	r7, r1
	tst	r3, r1
	bne	.L426
	ldr	r3, [r0, #4]
	ldrb	r3, [r3, #4]
	cmp	r3, #81
	beq	.LCB2740
	b	.L479	@long jump
.LCB2740:
.L426:
	movs	r3, #255
	ldr	r6, .L486
	strb	r3, [r5, #1]
	ldr	r0, [r6]
	mov	r9, r3
	ldr	r2, .L486+4
	ldrh	r3, [r0, #2]
	cmp	r3, r2
	bne	.LCB2750
	b	.L425	@long jump
.LCB2750:
	ldr	r2, .L486+8
	adds	r3, r3, #5
	mov	fp, r2
	lsls	r2, r2, #16
	lsrs	r2, r2, #16
	cmp	r3, r2
	ble	.LCB2757
	b	.L480	@long jump
.LCB2757:
	strh	r3, [r0, #2]
	ldrh	r3, [r5, #2]
	adds	r3, r3, #5
	strh	r3, [r5, #2]
	mov	r3, r8
	movs	r2, #16
	adds	r0, r3, #3
	str	r0, [sp]
	ldrsb	r2, [r4, r2]
	strb	r2, [r3, #3]
	movs	r3, #17
	ldrsb	r3, [r4, r3]
	strb	r3, [r0, #1]
	ldr	r0, [r4]
	ldrb	r0, [r0, #4]
	strb	r0, [r5, #4]
	ldr	r0, [r4, #4]
	ldrb	r0, [r0, #4]
	strb	r0, [r5, #5]
	movs	r0, #6
	asrs	r1, r1, #5
	ands	r1, r0
	ldr	r0, [r4, #12]
	lsls	r0, r0, #19
	lsrs	r0, r0, #31
	orrs	r1, r0
	ldrb	r0, [r4, #8]
	lsls	r0, r0, #3
	orrs	r1, r0
	add	r7, sp, #32
	strb	r1, [r5, #6]
	movs	r0, r7
	mov	r1, r8
	bl	REW_loadUnit
	mov	r3, r9
	strb	r3, [r7, #9]
	ldrb	r3, [r4, #11]
	strb	r3, [r7, #11]
	ldr	r3, [r4, #60]
	str	r3, [sp, #92]
.L431:
	ldr	r3, .L486+4
	mov	ip, r3
	mov	r3, fp
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	mov	r9, r3
	ldr	r3, [sp]
	movs	r0, r7
	movs	r2, #0
	movs	r7, #0
	mov	r10, r3
	mov	r8, r6
	ldr	r1, [r6]
	b	.L437
.L435:
	adds	r2, r2, #1
	adds	r0, r0, #1
	cmp	r2, #72
	beq	.L481
.L437:
	ldrb	r6, [r4, r2]
	ldrb	r3, [r0]
	subs	r3, r3, r6
	lsls	r3, r3, #24
	lsrs	r6, r3, #24
	cmp	r3, #0
	beq	.L435
	ldrh	r3, [r1, #2]
	cmp	r3, ip
	beq	.L425
	adds	r3, r3, #2
	cmp	r3, r9
	bgt	.L478
	strh	r3, [r1, #2]
	ldrh	r3, [r5, #2]
	adds	r3, r3, #2
	strh	r3, [r5, #2]
	lsls	r3, r7, #1
	add	r3, r3, r10
	strb	r2, [r3, #2]
	adds	r2, r2, #1
	strb	r6, [r3, #3]
	adds	r7, r7, #1
	adds	r0, r0, #1
	cmp	r2, #72
	bne	.L437
.L481:
	ldr	r3, [r4]
	ldrb	r0, [r3, #4]
	ldr	r3, .L486+12
	bl	.L5
	mov	r6, r8
	mov	r9, r0
	cmp	r0, #0
	bne	.LCB2858
	b	.L438	@long jump
.LCB2858:
	ldr	r1, [sp, #4]
	add	r0, sp, #16
	bl	REW_applyBWLChanges
	movs	r2, #1
	add	r1, sp, #16
	mov	ip, r1
	rsbs	r2, r2, #0
	add	r2, r2, ip
	mov	ip, r2
	ldr	r2, .L486+4
	mov	r0, r9
	ldr	r3, [r6]
	mov	r9, r2
	mov	r2, fp
	mov	r10, r3
	lsls	r2, r2, #16
	lsrs	r2, r2, #16
	str	r4, [sp, #12]
	movs	r3, #1
	mov	r4, r10
	str	r2, [sp, #8]
	mov	r10, r8
	subs	r0, r0, #1
	b	.L441
.L439:
	adds	r3, r3, #1
	cmp	r3, #17
	bne	.LCB2888
	b	.L482	@long jump
.LCB2888:
.L441:
	mov	r2, ip
	ldrb	r1, [r0, r3]
	ldrb	r2, [r2, r3]
	subs	r2, r2, r1
	lsls	r2, r2, #24
	lsrs	r1, r2, #24
	cmp	r2, #0
	beq	.L439
	ldrh	r2, [r4, #2]
	cmp	r2, r9
	beq	.L425
	ldr	r6, [sp, #8]
	adds	r2, r2, #2
	cmp	r2, r6
	ble	.LCB2905
	b	.L483	@long jump
.LCB2905:
	ldr	r6, [sp]
	mov	r8, r6
	movs	r6, r3
	strh	r2, [r4, #2]
	ldrh	r2, [r5, #2]
	adds	r2, r2, #2
	strh	r2, [r5, #2]
	lsls	r2, r7, #1
	add	r2, r2, r8
	adds	r6, r6, #71
	strb	r6, [r2, #2]
	strb	r1, [r2, #3]
	adds	r7, r7, #1
	b	.L439
.L478:
	movs	r3, #1
	rsbs	r3, r3, #0
	strh	r3, [r1, #2]
.L425:
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
.L479:
	movs	r3, #64
	rsbs	r3, r3, #0
	orrs	r3, r1
	strb	r3, [r5, #1]
	ldr	r3, .L486+16
	bl	.L5
	movs	r3, r0
	ldr	r6, .L486
	ldr	r2, [r6]
	mov	r9, r0
	adds	r3, r3, #2
	ldrh	r1, [r2, #2]
	ldr	r0, .L486+4
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	cmp	r1, r0
	beq	.L425
	ldr	r0, .L486+8
	adds	r1, r1, r3
	mov	fp, r0
	lsls	r0, r0, #16
	lsrs	r0, r0, #16
	cmp	r1, r0
	bgt	.L484
	strh	r1, [r2, #2]
	ldrh	r1, [r5, #2]
	adds	r3, r3, r1
	strh	r3, [r5, #2]
	mov	r3, r9
	cmp	r3, #0
	ble	.L433
	ldr	r3, .L486+20
	mov	r10, r3
	ldr	r3, .L486+24
	str	r3, [sp]
	movs	r3, r6
	mov	r6, r9
	mov	r9, r3
	str	r5, [sp, #144]
.L430:
	movs	r1, r7
	movs	r0, r4
	bl	.L8
	subs	r5, r0, #0
	beq	.L432
	ldr	r3, [r4]
	ldrb	r1, [r3, #4]
	ldr	r3, [sp]
	bl	.L5
	mov	r2, r8
	adds	r5, r5, r0
	adds	r5, r5, #50
	ldrb	r3, [r5]
	strb	r3, [r2, r7]
.L432:
	adds	r7, r7, #1
	cmp	r6, r7
	bne	.L430
	mov	r3, r9
	mov	r9, r6
	movs	r6, r3
	ldr	r5, [sp, #144]
.L433:
	mov	r2, r8
	add	r2, r2, r9
	str	r2, [sp]
	ldrb	r3, [r4, #16]
	strb	r3, [r2]
	ldrb	r3, [r4, #17]
	add	r7, sp, #32
	strb	r3, [r2, #1]
	movs	r1, r7
	ldr	r2, .L486+28
	ldr	r3, .L486+32
	movs	r0, r4
	bl	.L5
	ldr	r3, [r7, #12]
	ldr	r2, [sp, #8]
	orrs	r2, r3
	movs	r3, r2
	ldr	r2, .L486+36
	ands	r3, r2
	str	r3, [r7, #12]
	movs	r3, #0
	strb	r3, [r7, #28]
	b	.L431
.L482:
	mov	r6, r10
	ldr	r4, [sp, #12]
.L438:
	ldrb	r3, [r4, #28]
	cmp	r3, #0
	beq	.L444
	movs	r3, #72
	ldr	r2, [sp, #4]
	ldrh	r0, [r2, r3]
	cmp	r0, #0
	bne	.L485
.L444:
	ldr	r1, [r6]
.L443:
	ldrh	r2, [r1, #2]
	ldr	r3, .L486+4
	cmp	r2, r3
	bne	.LCB3059
	b	.L425	@long jump
.LCB3059:
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
	bne	.LCB3076
	b	.L425	@long jump
.LCB3076:
	cmp	r4, #0
	bne	.LCB3081
	b	.L425	@long jump
.LCB3081:
	adds	r2, r2, #4
	subs	r2, r2, r4
	strh	r2, [r1, #2]
	b	.L425
.L480:
	movs	r3, #1
	rsbs	r3, r3, #0
	strh	r3, [r0, #2]
	b	.L425
.L484:
	movs	r3, #1
	rsbs	r3, r3, #0
	strh	r3, [r2, #2]
	b	.L425
.L483:
	movs	r3, #1
	rsbs	r3, r3, #0
	strh	r3, [r4, #2]
	b	.L425
.L485:
	ldr	r3, .L486+40
	bl	.L5
	mov	r9, r0
	ldr	r3, .L486+44
	ldrb	r0, [r4, #28]
	bl	.L5
	mov	r2, r9
	ldrb	r3, [r0, #6]
	subs	r3, r2, r3
	lsls	r3, r3, #24
	ldr	r1, [r6]
	lsrs	r2, r3, #24
	cmp	r3, #0
	beq	.L443
	ldrh	r3, [r1, #2]
	ldr	r0, .L486+4
	cmp	r3, r0
	bne	.LCB3128
	b	.L425	@long jump
.LCB3128:
	mov	r0, fp
	adds	r3, r3, #2
	lsls	r0, r0, #16
	lsrs	r0, r0, #16
	cmp	r3, r0
	ble	.LCB3134
	b	.L478	@long jump
.LCB3134:
	strh	r3, [r1, #2]
	ldrh	r3, [r5, #2]
	ldr	r0, [sp]
	adds	r3, r3, #2
	strh	r3, [r5, #2]
	lsls	r3, r7, #1
	adds	r7, r0, r3
	movs	r3, #88
	strb	r2, [r7, #3]
	strb	r3, [r7, #2]
	b	.L443
.L487:
	.align	2
.L486:
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
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	lr, fp
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	movs	r0, #11
	push	{r5, r6, r7, lr}
	ldr	r7, .L512
	ldr	r3, [r7]
	mov	r10, r3
	ldr	r3, .L512+4
	ldr	r4, .L512+8
	ldrsb	r0, [r3, r0]
	sub	sp, sp, #12
	mov	r8, r3
	bl	.L238
	movs	r5, r0
	movs	r0, #11
	ldr	r3, .L512+12
	ldrsb	r0, [r3, r0]
	mov	r9, r3
	bl	.L238
	ldr	r1, [r7]
	ldr	r2, .L512+16
	ldrh	r3, [r1, #2]
	movs	r6, r0
	cmp	r3, r2
	beq	.L488
	ldr	r4, .L512+20
	adds	r2, r3, #4
	lsls	r4, r4, #16
	lsrs	r4, r4, #16
	cmp	r2, r4
	bgt	.L510
	cmp	r3, #0
	beq	.L501
	lsls	r2, r2, #16
	lsrs	r2, r2, #16
.L492:
	movs	r0, #4
	adds	r3, r1, r3
	strh	r0, [r3, #2]
	strh	r2, [r1, #2]
	movs	r2, #2
	strb	r2, [r3]
	mov	r2, r8
	ldrb	r2, [r2, #19]
	lsls	r2, r2, #24
	asrs	r2, r2, #24
	bne	.L493
	movs	r1, #1
	mov	fp, r1
	ldr	r2, [r5, #12]
	bics	r2, r1
	str	r2, [r5, #12]
	mov	r1, r8
	movs	r2, #7
	str	r3, [sp]
	movs	r0, r5
	mov	r3, r10
	bl	REW_storeCombatDataDead
	mov	r2, fp
	ldr	r3, [r5, #12]
	orrs	r3, r2
	str	r3, [r5, #12]
.L494:
	ldr	r1, [r7]
	ldr	r2, .L512+16
	ldrh	r3, [r1, #2]
	cmp	r3, r2
	beq	.L488
	adds	r2, r3, #4
	cmp	r4, r2
	blt	.L510
	cmp	r3, #0
	beq	.L502
	adds	r5, r1, r3
	movs	r3, #4
	lsls	r2, r2, #16
	lsrs	r2, r2, #16
	strh	r3, [r5, #2]
	mov	r8, r3
	strh	r2, [r1, #2]
	cmp	r6, #0
	beq	.L498
.L511:
	subs	r3, r3, #2
	strb	r3, [r5]
	mov	r3, r9
	ldrb	r3, [r3, #19]
	lsls	r3, r3, #24
	str	r5, [sp]
	asrs	r3, r3, #24
	beq	.LCB3266
	b	.L499	@long jump
.LCB3266:
	mov	r3, r10
	movs	r2, #5
	mov	r1, r9
	movs	r0, r6
	bl	REW_storeCombatDataDead
.L488:
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
.L501:
	movs	r2, #8
	movs	r3, #4
	b	.L492
.L493:
	str	r3, [sp]
	movs	r2, #3
	mov	r3, r10
	mov	r1, r8
	movs	r0, r5
	bl	REW_storeCombatData
	b	.L494
.L510:
	movs	r3, #1
	rsbs	r3, r3, #0
	strh	r3, [r1, #2]
	b	.L488
.L502:
	movs	r3, #4
	movs	r2, #8
	adds	r5, r1, r3
	movs	r3, #4
	strh	r3, [r5, #2]
	mov	r8, r3
	strh	r2, [r1, #2]
	cmp	r6, #0
	bne	.L511
.L498:
	mov	r3, r9
	movs	r1, #17
	movs	r0, #16
	ldrsb	r1, [r3, r1]
	ldrsb	r0, [r3, r0]
	ldr	r3, .L512+24
	bl	.L5
	movs	r3, #65
	strh	r3, [r5]
	mov	r3, r9
	ldr	r2, .L512+28
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
	ldr	r3, .L512+16
	ldrh	r2, [r1, #2]
	mov	fp, r3
	cmp	r2, r3
	beq	.L488
	adds	r7, r2, #4
	cmp	r4, r7
	blt	.L510
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
	beq	.L488
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
	beq	.L488
	cmp	r5, #0
	beq	.L488
	adds	r2, r2, #8
	subs	r2, r2, r5
	strh	r2, [r1, #2]
	b	.L488
.L499:
	mov	r3, r10
	movs	r2, #0
	mov	r1, r9
	movs	r0, r6
	bl	REW_storeCombatData
	b	.L488
.L513:
	.align	2
.L512:
	.word	REW_curSequence
	.word	gBattleActor
	.word	GetUnit
	.word	gBattleTarget
	.word	65535
	.word	REW_curSequenceMaxSize
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
	ldr	r2, .L530
	lsls	r1, r3, #6
	movs	r5, r0
	strb	r1, [r2, #15]
	lsls	r3, r3, #27
	bpl	.L515
	ldrh	r3, [r2, #16]
	subs	r3, r3, #1
	strh	r3, [r2, #16]
.L515:
	ldrh	r3, [r5, #2]
	cmp	r3, #4
	bls	.L514
	movs	r3, #2
	movs	r4, #0
	mov	r8, r3
	ldr	r6, .L530+4
	adds	r7, r5, #4
.L518:
	ldrb	r0, [r7, r4]
	bl	.L11
	cmp	r0, #0
	beq	.L517
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L517
	mov	r2, r8
	ldr	r3, [r0, #12]
	orrs	r3, r2
	str	r3, [r0, #12]
.L517:
	ldrh	r3, [r5, #2]
	adds	r4, r4, #1
	subs	r3, r3, #4
	cmp	r3, r4
	bgt	.L518
.L514:
	@ sp needed
	pop	{r7}
	mov	r8, r7
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L531:
	.align	2
.L530:
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
	ldr	r1, .L548
	lsls	r2, r3, #4
	bics	r2, r0
	strb	r2, [r1, #15]
	lsls	r3, r3, #27
	bpl	.L533
	ldrh	r3, [r1, #16]
	adds	r3, r3, #1
	strh	r3, [r1, #16]
.L533:
	ldrh	r3, [r5, #2]
	cmp	r3, #4
	bls	.L532
	movs	r3, #66
	movs	r4, #0
	mov	r8, r3
	ldr	r6, .L548+4
	adds	r7, r5, #4
.L536:
	ldrb	r0, [r7, r4]
	bl	.L11
	cmp	r0, #0
	beq	.L535
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L535
	mov	r2, r8
	ldr	r3, [r0, #12]
	bics	r3, r2
	str	r3, [r0, #12]
.L535:
	ldrh	r3, [r5, #2]
	adds	r4, r4, #1
	subs	r3, r3, #4
	cmp	r3, r4
	bgt	.L536
.L532:
	@ sp needed
	pop	{r7}
	mov	r8, r7
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L549:
	.align	2
.L548:
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
	beq	.L553
	cmp	r0, #128
	bne	.L555
	movs	r0, #64
	movs	r5, #64
.L551:
	ldr	r3, .L556
	bl	.L5
	cmp	r0, #0
	bne	.L552
	movs	r3, #1
	strb	r3, [r4]
.L552:
	@ sp needed
	movs	r0, r5
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L555:
	ldrb	r3, [r1]
	adds	r3, r3, #1
	movs	r0, #0
	movs	r5, #0
	strb	r3, [r1]
	b	.L551
.L553:
	movs	r0, #128
	movs	r5, #128
	b	.L551
.L557:
	.align	2
.L556:
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
	ldr	r6, .L594
	ldrb	r5, [r6, #15]
	sub	sp, sp, #12
	cmp	r5, #0
	bne	.LCB3634
	b	.L571	@long jump
.LCB3634:
	cmp	r5, #128
	beq	.LCB3636
	b	.L590	@long jump
.LCB3636:
	movs	r0, #64
	movs	r5, #0
	movs	r7, #64
.L559:
	ldr	r3, .L594+4
	bl	.L5
	ldr	r3, .L594+8
	ldr	r1, [r3]
	mov	fp, r3
	ldr	r2, .L594+12
	ldrh	r3, [r1, #2]
	cmp	r3, r2
	beq	.L558
	ldr	r2, .L594+16
	lsls	r2, r2, #16
	lsrs	r2, r2, #16
	movs	r4, r2
	str	r2, [sp, #4]
	adds	r2, r3, #4
	cmp	r2, r4
	ble	.LCB3658
	b	.L591	@long jump
.LCB3658:
	cmp	r3, #0
	bne	.LCB3660
	b	.L573	@long jump
.LCB3660:
	lsls	r2, r2, #16
	lsrs	r2, r2, #16
.L563:
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
	bne	.L564
	ldrb	r3, [r2, #1]
	movs	r2, #32
	orrs	r3, r2
	mov	r2, r8
	strb	r3, [r2, #1]
.L564:
	movs	r3, #0
	mov	r10, r3
	adds	r3, r3, #2
	movs	r5, #1
	mov	r9, r3
	ldr	r7, .L594+20
	b	.L570
.L565:
	adds	r5, r5, #1
	cmp	r5, #64
	beq	.L592
.L568:
	ldrb	r4, [r6, #15]
.L570:
	adds	r4, r4, r5
	movs	r0, r4
	bl	.L7
	cmp	r0, #0
	beq	.L565
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L565
	mov	r2, r9
	ldr	r3, [r0, #12]
	tst	r3, r2
	beq	.L565
	mov	r3, fp
	ldr	r2, [r3]
	ldr	r1, .L594+12
	ldrh	r3, [r2, #2]
	cmp	r3, r1
	beq	.L558
	ldr	r1, [sp, #4]
	cmp	r1, r3
	ble	.L593
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
	bne	.L568
.L592:
	mov	r3, fp
	ldr	r4, [r3]
	ldr	r2, .L594+12
	ldrh	r3, [r4, #2]
	cmp	r3, r2
	beq	.L558
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
	beq	.L558
	cmp	r1, #0
	beq	.L558
	adds	r3, r3, #4
	subs	r3, r3, r1
	strh	r3, [r4, #2]
	b	.L558
.L590:
	movs	r0, #0
	movs	r5, #1
	movs	r7, #0
	b	.L559
.L593:
	movs	r3, #1
	rsbs	r3, r3, #0
	strh	r3, [r2, #2]
.L558:
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
.L573:
	movs	r2, #8
	movs	r3, #4
	b	.L563
.L571:
	movs	r0, #128
	movs	r7, #128
	b	.L559
.L591:
	movs	r3, #1
	rsbs	r3, r3, #0
	strh	r3, [r1, #2]
	b	.L558
.L595:
	.align	2
.L594:
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
	ldr	r3, .L643
	ldrh	r2, [r3, #16]
	sub	sp, sp, #52
	cmp	r2, #1
	bne	.LCB3853
	b	.L596	@long jump
.LCB3853:
	ldrb	r3, [r3, #20]
	cmp	r3, #127
	bls	.LCB3856
	b	.L596	@long jump
.LCB3856:
	movs	r3, #0
	str	r3, [sp, #12]
	adds	r3, r3, #1
	mov	fp, r3
	ldr	r3, .L643+4
	mov	r9, r3
	ldr	r3, .L643+8
	str	r3, [sp, #36]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	mov	r6, fp
	mov	r10, r9
	str	r3, [sp, #44]
	str	r3, [sp, #40]
	b	.L617
.L614:
	adds	r6, r6, #1
	cmp	r6, #64
	bne	.LCB3877
	b	.L596	@long jump
.LCB3877:
.L617:
	movs	r0, r6
	bl	.L8
	subs	r4, r0, #0
	beq	.L614
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L614
	ldr	r3, [r0, #12]
	ldr	r7, .L643+12
	tst	r3, r7
	bne	.L614
	ldr	r3, .L643+16
	str	r3, [sp, #8]
	bl	.L5
	cmp	r0, #4
	bgt	.L614
	movs	r0, r4
	ldr	r3, .L643+20
	bl	.L5
	mov	fp, r0
	cmp	r0, #0
	bgt	.LCB3903
	b	.L601	@long jump
.LCB3903:
	movs	r3, #0
	str	r3, [sp, #16]
	ldr	r3, .L643+24
	mov	r8, r3
	movs	r3, #192
	mov	r9, r3
	ldr	r3, .L643+28
	str	r6, [sp, #24]
	movs	r5, #0
	mov	r6, r8
	str	r3, [sp, #20]
	b	.L613
.L641:
	cmp	r3, #1
	bne	.L604
	ldr	r3, [r4, #12]
	orrs	r1, r3
	lsls	r1, r1, #26
	bpl	.L607
.L604:
	adds	r5, r5, #1
	cmp	fp, r5
	bne	.LCB3930
	b	.L640	@long jump
.LCB3930:
.L613:
	movs	r1, r5
	movs	r0, r4
	bl	.L11
	cmp	r0, #0
	beq	.L604
	ldr	r1, [r0, #12]
	tst	r1, r7
	bne	.L604
	movs	r3, #11
	ldrsb	r3, [r0, r3]
	mov	ip, r3
	mov	r3, r9
	mov	r2, ip
	tst	r3, r2
	bne	.L604
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
	bne	.L641
	ldrb	r3, [r4, #27]
	cmp	ip, r3
	bne	.L604
.L607:
	ldr	r3, [sp, #8]
	bl	.L5
	cmp	r0, #4
	bgt	.L604
	movs	r3, #50
	mov	r8, r3
	add	r8, r8, r4
	mov	r3, r8
	ldrb	r3, [r3, r5]
	ldr	r2, [sp, #20]
	movs	r1, r5
	movs	r0, r4
	str	r3, [sp, #4]
	bl	.L645
	mov	r2, r8
	ldrb	r3, [r2, r5]
	mov	r8, r3
	ldr	r3, [sp, #4]
	cmp	r3, r8
	beq	.L604
	ldr	r3, .L643+32
	ldr	r0, [sp, #12]
	ldr	r1, [r3]
	ldrh	r3, [r1, #2]
	cmp	r0, #0
	bne	.L608
	ldr	r0, .L643+36
	cmp	r3, r0
	beq	.L596
	adds	r2, r3, #6
	mov	ip, r2
	ldr	r2, [sp, #40]
	ldr	r0, [sp, #36]
	cmp	ip, r2
	bgt	.L639
	cmp	r3, #0
	beq	.L642
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
.L608:
	ldr	r0, .L643+36
	cmp	r3, r0
	beq	.L596
	ldr	r0, .L643+8
.L611:
	lsls	r0, r0, #16
	adds	r3, r3, #2
	lsrs	r0, r0, #16
	cmp	r3, r0
	bgt	.L639
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
	beq	.LCB4065
	b	.L613	@long jump
.LCB4065:
.L640:
	ldr	r6, [sp, #24]
.L601:
	ldr	r3, [sp, #12]
	cmp	r3, #0
	bne	.LCB4072
	b	.L614	@long jump
.LCB4072:
	movs	r3, #66
	ldr	r2, [sp, #28]
	strb	r3, [r2]
	strb	r6, [r2, #1]
	ldr	r2, [sp, #32]
	ldrb	r3, [r4, #16]
	strb	r3, [r2]
	ldrb	r3, [r4, #17]
	strb	r3, [r2, #1]
	ldr	r3, .L643+32
	ldr	r1, [r3]
	ldr	r2, .L643+36
	ldrh	r3, [r1, #2]
	cmp	r3, r2
	bne	.LCB4087
	b	.L614	@long jump
.LCB4087:
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
	bne	.LCB4102
	b	.L614	@long jump
.LCB4102:
	cmp	r0, #0
	bne	.LCB4107
	b	.L614	@long jump
.LCB4107:
	adds	r3, r3, #4
	subs	r3, r3, r0
	adds	r6, r6, #1
	strh	r3, [r1, #2]
	cmp	r6, #64
	beq	.LCB4113
	b	.L617	@long jump
.LCB4113:
.L596:
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
.L639:
	movs	r3, #1
	rsbs	r3, r3, #0
	strh	r3, [r1, #2]
	b	.L596
.L642:
	adds	r3, r1, #4
	movs	r2, r3
	str	r3, [sp, #28]
	movs	r3, #6
	strh	r3, [r2, #2]
	adds	r3, r2, #4
	str	r3, [sp, #32]
	movs	r3, #10
	b	.L611
.L644:
	.align	2
.L643:
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
	ldr	r3, .L657
	ldr	r4, [r3]
	movs	r3, #0
	push	{r6, r7, lr}
	ldr	r5, .L657+4
	sub	sp, sp, #8
	ldrb	r6, [r5, #15]
	movs	r1, r4
	str	r3, [sp, #4]
	ldr	r2, .L657+8
	ldr	r3, .L657+12
	add	r0, sp, #4
	bl	.L5
	ldrb	r5, [r5, #15]
	adds	r6, r6, #64
	adds	r5, r5, #1
	cmp	r6, r5
	ble	.L647
	lsls	r3, r5, #3
	adds	r4, r4, r3
	ldr	r3, .L657+16
	mov	r9, r3
	movs	r3, #19
	mov	r10, r3
	adds	r3, r3, #29
	mov	r8, r3
	movs	r7, #49
.L649:
	movs	r0, r5
	bl	.L9
	cmp	r0, #0
	beq	.L648
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L648
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
.L648:
	adds	r5, r5, #1
	adds	r4, r4, #8
	cmp	r6, r5
	bgt	.L649
.L647:
	ldr	r3, .L657+20
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
.L658:
	.align	2
.L657:
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
	ldr	r3, .L693
	ldr	r3, [r3]
	sub	sp, sp, #36
	str	r3, [sp, #24]
	ldr	r3, .L693+4
	ldrb	r7, [r3, #15]
	ldr	r3, .L693+8
	str	r3, [sp, #12]
	ldr	r3, .L693+12
	str	r3, [sp, #20]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	str	r3, [sp, #16]
	str	r3, [sp, #28]
	adds	r7, r7, #1
.L673:
	movs	r0, r7
	ldr	r3, [sp, #12]
	bl	.L5
	cmp	r0, #0
	beq	.L660
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L660
	ldr	r3, .L693+16
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
	ldr	r2, .L693+20
	mov	fp, r2
	ldr	r2, .L693+12
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
.L670:
	mov	r1, ip
	ldrb	r2, [r3]
	ldrb	r4, [r3, #1]
	ldrb	r1, [r1, r2]
	cmp	r1, r4
	beq	.L661
	ldrh	r2, [r7, #2]
	cmp	r0, #0
	bne	.L662
	cmp	r2, fp
	beq	.L659
	ldr	r0, [sp, #20]
	str	r0, [sp, #4]
	ldr	r0, [sp, #16]
	adds	r5, r2, #6
	cmp	r5, r0
	bgt	.L691
	cmp	r2, #0
	bne	.L666
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
	bgt	.L691
.L669:
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
.L661:
	ldr	r2, [sp]
	adds	r3, r3, #2
	cmp	r2, r3
	bne	.L670
	movs	r3, r7
	mov	r7, r8
	mov	r8, r0
	mov	r0, ip
	mov	ip, r3
	mov	r3, r8
	mov	r4, r9
	mov	r6, r10
	cmp	r3, #0
	bne	.L692
.L660:
	subs	r6, r6, #1
	adds	r7, r7, #1
	cmp	r6, #0
	bne	.L673
.L659:
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
.L666:
	movs	r0, r2
	lsls	r5, r5, #16
	lsrs	r2, r5, #16
	adds	r5, r7, r0
	movs	r0, #6
	strh	r0, [r5, #2]
	adds	r0, r5, #4
	mov	r9, r0
	strh	r2, [r7, #2]
.L662:
	cmp	r2, fp
	beq	.L659
	ldr	r0, [sp, #8]
	str	r0, [sp, #4]
	ldr	r0, [sp, #4]
	adds	r2, r2, #2
	lsls	r0, r0, #16
	lsrs	r0, r0, #16
	cmp	r2, r0
	ble	.L669
.L691:
	movs	r3, #1
	rsbs	r3, r3, #0
	strh	r3, [r7, #2]
	b	.L659
.L692:
	movs	r3, #66
	strb	r7, [r5, #1]
	strb	r3, [r5]
	ldrb	r3, [r0, #16]
	strb	r3, [r4]
	ldrb	r3, [r0, #17]
	strb	r3, [r4, #1]
	mov	r3, ip
	ldr	r2, .L693+20
	ldrh	r3, [r3, #2]
	mov	fp, r3
	cmp	r3, r2
	beq	.L660
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
	beq	.L660
	mov	r3, r9
	cmp	r3, #0
	beq	.L660
	mov	r3, fp
	mov	r2, r9
	adds	r3, r3, #4
	subs	r3, r3, r2
	mov	r2, ip
	strh	r3, [r2, #2]
	b	.L660
.L694:
	.align	2
.L693:
	.word	REW_rewindBuffer
	.word	gPlaySt
	.word	GetUnit
	.word	REW_curSequenceMaxSize
	.word	REW_curSequence
	.word	65535
	.size	REW_actionPhaseChangeRecordStatus, .-REW_actionPhaseChangeRecordStatus
	.align	1
	.p2align 2,,3
	.global	REW_undoChestOpened
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_undoChestOpened, %function
REW_undoChestOpened:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r3, #5
	ldr	r2, .L698
	ldr	r1, [r2]
	movs	r2, #4
	push	{r4, r5, r6, lr}
	ldrsb	r3, [r0, r3]
	lsls	r3, r3, #2
	ldrsb	r2, [r0, r2]
	ldr	r3, [r3, r1]
	movs	r4, r0
	ldrb	r0, [r3, r2]
	ldr	r3, .L698+4
	bl	.L5
	movs	r2, #2
	ldr	r3, [r0, #12]
	bics	r3, r2
	str	r3, [r0, #12]
	ldrb	r3, [r4, #1]
	adds	r3, r3, #12
	lsls	r3, r3, #1
	adds	r3, r0, r3
	movs	r5, r0
	ldrh	r0, [r3, #6]
	ldr	r3, .L698+8
	bl	.L5
	lsls	r0, r0, #28
	bmi	.L696
	ldrb	r3, [r4, #1]
	lsls	r3, r3, #1
	adds	r5, r5, r3
	ldrh	r3, [r5, #30]
	adds	r3, r3, #1
	adds	r3, r3, #255
	strh	r3, [r5, #30]
.L696:
	@ sp needed
	movs	r1, #5
	movs	r0, #4
	ldrsb	r1, [r4, r1]
	ldrsb	r0, [r4, r0]
	ldr	r3, .L698+12
	bl	.L5
	lsls	r0, r0, #16
	movs	r2, #0
	movs	r1, #0
	ldr	r3, .L698+16
	lsrs	r0, r0, #16
	bl	.L5
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L699:
	.align	2
.L698:
	.word	gBmMapUnit
	.word	GetUnit
	.word	GetItemAttributes
	.word	GetMapChangeIdAt
	.word	UntriggerMapChange
	.size	REW_undoChestOpened, .-REW_undoChestOpened
	.align	1
	.p2align 2,,3
	.global	REW_redoChestOpened
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_redoChestOpened, %function
REW_redoChestOpened:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r3, #5
	ldr	r2, .L703
	ldr	r1, [r2]
	movs	r2, #4
	push	{r4, r5, r6, lr}
	ldrsb	r3, [r0, r3]
	lsls	r3, r3, #2
	ldrsb	r2, [r0, r2]
	ldr	r3, [r3, r1]
	movs	r4, r0
	ldrb	r0, [r3, r2]
	ldr	r3, .L703+4
	bl	.L5
	movs	r2, #2
	ldr	r3, [r0, #12]
	orrs	r3, r2
	str	r3, [r0, #12]
	ldrb	r3, [r4, #1]
	adds	r3, r3, #12
	lsls	r3, r3, #1
	adds	r3, r0, r3
	movs	r5, r0
	ldrh	r0, [r3, #6]
	ldr	r3, .L703+8
	bl	.L5
	lsls	r0, r0, #28
	bmi	.L701
	ldrb	r3, [r4, #1]
	lsls	r3, r3, #1
	adds	r5, r5, r3
	ldrh	r3, [r5, #30]
	subs	r3, r3, #1
	subs	r3, r3, #255
	strh	r3, [r5, #30]
.L701:
	@ sp needed
	movs	r1, #5
	movs	r0, #4
	ldrsb	r1, [r4, r1]
	ldrsb	r0, [r4, r0]
	ldr	r3, .L703+12
	bl	.L5
	lsls	r0, r0, #16
	movs	r2, #0
	movs	r1, #0
	ldr	r3, .L703+16
	lsrs	r0, r0, #16
	bl	.L5
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L704:
	.align	2
.L703:
	.word	gBmMapUnit
	.word	GetUnit
	.word	GetItemAttributes
	.word	GetMapChangeIdAt
	.word	TriggerMapChanges
	.size	REW_redoChestOpened, .-REW_redoChestOpened
	.align	1
	.p2align 2,,3
	.global	REW_actionOpenChest
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_actionOpenChest, %function
REW_actionOpenChest:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r3, #0
	movs	r2, #4
	cmp	r2, r0
	adcs	r3, r3, r3
	push	{r4, r5, r6, r7, lr}
	rsbs	r3, r3, #0
	ands	r0, r3
	ldr	r3, .L722
	ldr	r4, [r3]
	ldr	r6, .L722+4
	ldrh	r1, [r4, #2]
	cmp	r1, r6
	beq	.L705
	ldr	r3, .L722+8
	adds	r2, r1, #6
	lsls	r3, r3, #16
	lsrs	r5, r3, #16
	cmp	r2, r5
	bgt	.L720
	cmp	r1, #0
	beq	.L710
	movs	r7, #6
	lsls	r2, r2, #16
	lsrs	r3, r2, #16
	adds	r2, r4, r1
	strh	r7, [r2, #2]
	adds	r7, r7, #14
	strh	r3, [r4, #2]
	strb	r0, [r2, #1]
	strb	r7, [r2]
	ldr	r0, .L722+12
	ldr	r0, [r0]
	ldrh	r0, [r0, #16]
	strh	r0, [r2, #4]
	cmp	r3, r6
	beq	.L705
.L712:
	movs	r0, #3
	ands	r0, r3
	subs	r2, r3, r0
	adds	r2, r2, #4
	asrs	r3, r5, #31
	lsrs	r6, r2, #31
	cmp	r5, r2
	adcs	r3, r3, r6
	lsls	r3, r3, #24
	beq	.L705
	cmp	r0, #0
	bne	.L721
.L705:
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L710:
	movs	r2, #6
	strh	r2, [r4, #6]
	adds	r2, r2, #4
	strh	r2, [r4, #2]
	adds	r2, r2, #10
	strb	r2, [r4, #4]
	strb	r0, [r4, #5]
	ldr	r2, .L722+12
	ldr	r2, [r2]
	ldrh	r2, [r2, #16]
	movs	r3, #10
	movs	r1, #4
	strh	r2, [r4, #8]
	b	.L712
.L721:
	adds	r1, r1, #10
	subs	r1, r1, r0
	strh	r1, [r4, #2]
	b	.L705
.L720:
	movs	r3, #1
	rsbs	r3, r3, #0
	strh	r3, [r4, #2]
	b	.L705
.L723:
	.align	2
.L722:
	.word	REW_curSequence
	.word	65535
	.word	REW_curSequenceMaxSize
	.word	gActiveUnit
	.size	REW_actionOpenChest, .-REW_actionOpenChest
	.align	1
	.p2align 2,,3
	.global	REW_undoWait
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_undoWait, %function
REW_undoWait:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	@ sp needed
	bx	lr
	.size	REW_undoWait, .-REW_undoWait
	.align	1
	.p2align 2,,3
	.global	REW_redoWait
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_redoWait, %function
REW_redoWait:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	@ sp needed
	bx	lr
	.size	REW_redoWait, .-REW_redoWait
	.align	1
	.p2align 2,,3
	.global	REW_actionWait
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_actionWait, %function
REW_actionWait:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	@ sp needed
	bx	lr
	.size	REW_actionWait, .-REW_actionWait
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
	ldr	r3, .L735
	ldrb	r0, [r0, #1]
	bl	.L5
	cmp	r0, #0
	beq	.L727
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L727
	ldr	r3, .L735+4
	bl	.L5
.L727:
	@ sp needed
	pop	{r4}
	pop	{r0}
	bx	r0
.L736:
	.align	2
.L735:
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
	ldr	r3, .L738
	@ sp needed
	adds	r0, r0, #4
	bl	.L5
	pop	{r4}
	pop	{r0}
	bx	r0
.L739:
	.align	2
.L738:
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
	ldr	r7, .L753
	ldr	r2, [r7]
	movs	r4, r0
	ldrh	r5, [r2, #2]
	movs	r0, r1
	cmp	r4, #0
	beq	.L740
	cmp	r5, #0
	beq	.L740
	ldr	r1, [r4]
	cmp	r1, #0
	beq	.L740
	ldr	r3, .L753+4
	adds	r1, r5, r3
	cmp	r1, #0
	beq	.L740
	movs	r1, r5
	ldr	r6, .L753+8
	adds	r1, r1, #24
	lsls	r6, r6, #16
	lsrs	r6, r6, #16
	cmp	r1, r6
	bgt	.L752
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
	ldr	r3, .L753+12
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
	ldr	r2, .L753+16
	ldrh	r3, [r4, #2]
	cmp	r3, r2
	beq	.L740
	movs	r0, #3
	ands	r0, r3
	subs	r1, r3, r0
	adds	r1, r1, #4
	asrs	r2, r6, #31
	lsrs	r5, r1, #31
	cmp	r6, r1
	adcs	r2, r2, r5
	lsls	r2, r2, #24
	beq	.L740
	cmp	r0, #0
	beq	.L740
	adds	r3, r3, #4
	subs	r3, r3, r0
	strh	r3, [r4, #2]
.L740:
	@ sp needed
	pop	{r3, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L752:
	movs	r3, #1
	rsbs	r3, r3, #0
	strh	r3, [r2, #2]
	b	.L740
.L754:
	.align	2
.L753:
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
	ldr	r6, .L799
	ldr	r1, [r6]
	ldrh	r0, [r1, #2]
	cmp	r0, #0
	bne	.L797
.L755:
	@ sp needed
	pop	{r3, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L797:
	movs	r2, #3
	adds	r3, r1, #4
	adds	r1, r1, r0
.L757:
	movs	r4, r3
.L760:
	cmp	r4, #0
	beq	.L755
	ldrb	r3, [r4]
	cmp	r3, #67
	beq	.L798
	movs	r0, r2
	ldrh	r3, [r4, #2]
	ands	r0, r3
	tst	r2, r3
	beq	.L759
	adds	r3, r3, #4
	subs	r3, r3, r0
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
.L759:
	adds	r4, r4, r3
	movs	r3, #0
	cmp	r4, r1
	bcc	.L760
	b	.L757
.L798:
	movs	r5, #3
	ldr	r7, .L799+4
.L758:
	ldrb	r0, [r4, #1]
	bl	.L7
	cmp	r0, #0
	beq	.L762
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L762
	movs	r3, #68
	movs	r2, #63
	strb	r3, [r4]
	ldrb	r3, [r0, #17]
	ldrb	r1, [r0, #16]
	ands	r3, r2
	lsls	r3, r3, #6
	ands	r2, r1
	orrs	r3, r2
	ldr	r1, .L799+8
	ldr	r2, [r4, #8]
	ands	r2, r1
	orrs	r3, r2
	str	r3, [r4, #8]
	movs	r3, #0
	str	r3, [r4, #12]
.L762:
	movs	r2, r5
	ldrh	r3, [r4, #2]
	ldr	r1, [r6]
	ands	r2, r3
	tst	r5, r3
	beq	.L763
	adds	r3, r3, #4
	subs	r3, r3, r2
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
.L763:
	ldrh	r2, [r1, #2]
	adds	r3, r4, r3
	adds	r1, r1, r2
	cmp	r3, r1
	sbcs	r0, r0, r0
	ands	r3, r0
	cmp	r2, #0
	beq	.L755
.L765:
	movs	r4, r3
.L767:
	cmp	r4, #0
	beq	.L755
	ldrb	r3, [r4]
	cmp	r3, #67
	beq	.L758
	movs	r2, r5
	ldrh	r3, [r4, #2]
	ands	r2, r3
	tst	r5, r3
	beq	.L766
	adds	r3, r3, #4
	subs	r3, r3, r2
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
.L766:
	adds	r4, r4, r3
	movs	r3, #0
	cmp	r1, r4
	bhi	.L767
	b	.L765
.L800:
	.align	2
.L799:
	.word	REW_curSequence
	.word	GetUnit
	.word	16773120
	.size	REW_conseqFinalizeUnits, .-REW_conseqFinalizeUnits
	.align	1
	.p2align 2,,3
	.global	REW_undoUnitMove
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_undoUnitMove, %function
REW_undoUnitMove:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r3, #7
	movs	r2, #6
	push	{r4, r5, r6, lr}
	ldr	r5, .L809
	ldrsb	r3, [r0, r3]
	ldr	r1, [r5]
	lsls	r3, r3, #2
	ldrsb	r2, [r0, r2]
	ldr	r3, [r3, r1]
	ldrb	r6, [r3, r2]
	movs	r4, r0
	lsls	r0, r6, #24
	ldr	r3, .L809+4
	asrs	r0, r0, #24
	bl	.L5
	cmp	r0, #0
	beq	.L801
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L801
	ldrb	r3, [r4, #4]
	strb	r3, [r0, #16]
	ldrb	r3, [r4, #5]
	strb	r3, [r0, #17]
	movs	r3, #7
	ldrsb	r3, [r4, r3]
	ldr	r1, [r5]
	movs	r2, #6
	lsls	r3, r3, #2
	ldr	r3, [r3, r1]
	movs	r1, #0
	ldrsb	r2, [r4, r2]
	strb	r1, [r3, r2]
	movs	r3, #5
	movs	r2, #4
	ldrsb	r3, [r4, r3]
	ldr	r1, [r5]
	lsls	r3, r3, #2
	ldr	r3, [r3, r1]
	ldrsb	r2, [r4, r2]
	strb	r6, [r3, r2]
	ldr	r3, .L809+8
	bl	.L5
.L801:
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L810:
	.align	2
.L809:
	.word	gBmMapUnit
	.word	GetUnit
	.word	UnitFinalizeMovement
	.size	REW_undoUnitMove, .-REW_undoUnitMove
	.align	1
	.p2align 2,,3
	.global	REW_redoUnitMove
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_redoUnitMove, %function
REW_redoUnitMove:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r3, #5
	movs	r2, #4
	push	{r4, r5, r6, lr}
	ldr	r5, .L819
	ldrsb	r3, [r0, r3]
	ldr	r1, [r5]
	lsls	r3, r3, #2
	ldrsb	r2, [r0, r2]
	ldr	r3, [r3, r1]
	ldrb	r6, [r3, r2]
	movs	r4, r0
	lsls	r0, r6, #24
	ldr	r3, .L819+4
	asrs	r0, r0, #24
	bl	.L5
	cmp	r0, #0
	beq	.L811
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L811
	ldrb	r3, [r4, #6]
	strb	r3, [r0, #16]
	ldrb	r3, [r4, #7]
	strb	r3, [r0, #17]
	movs	r3, #5
	ldrsb	r3, [r4, r3]
	ldr	r1, [r5]
	movs	r2, #4
	lsls	r3, r3, #2
	ldr	r3, [r3, r1]
	movs	r1, #0
	ldrsb	r2, [r4, r2]
	strb	r1, [r3, r2]
	movs	r3, #7
	movs	r2, #6
	ldrsb	r3, [r4, r3]
	ldr	r1, [r5]
	lsls	r3, r3, #2
	ldr	r3, [r3, r1]
	ldrsb	r2, [r4, r2]
	strb	r6, [r3, r2]
	ldr	r3, .L819+8
	bl	.L5
.L811:
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L820:
	.align	2
.L819:
	.word	gBmMapUnit
	.word	GetUnit
	.word	UnitFinalizeMovement
	.size	REW_redoUnitMove, .-REW_redoUnitMove
	.align	1
	.p2align 2,,3
	.global	REW_conseqUnitMove
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_conseqUnitMove, %function
REW_conseqUnitMove:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	lr, r10
	mov	r7, r9
	mov	r6, r8
	mov	r10, r3
	push	{r6, r7, lr}
	cmp	r0, r2
	bne	.L822
	cmp	r1, r3
	bne	.L822
.L821:
	@ sp needed
	pop	{r5, r6, r7}
	mov	r10, r7
	mov	r9, r6
	mov	r8, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L822:
	ldr	r4, .L856
	ldr	r3, [r4]
	mov	ip, r3
	ldrh	r3, [r3, #2]
	mov	r8, r3
	cmp	r3, #0
	bne	.L854
	ldr	r4, .L856+4
	ldr	r5, .L856+8
	tst	r4, r5
	beq	.L830
	mov	r3, ip
	movs	r5, #8
	strh	r5, [r3, #6]
	adds	r5, r5, #4
	strh	r5, [r3, #2]
	adds	r5, r5, #63
	strb	r5, [r3, #4]
	strb	r0, [r3, #8]
	strb	r1, [r3, #9]
	strb	r2, [r3, #10]
	adds	r4, r3, #4
	mov	r3, r10
	strb	r3, [r4, #7]
	b	.L821
.L854:
	mov	r3, ip
	mov	r7, ip
	movs	r6, #3
	adds	r4, r3, #4
	add	r7, r7, r8
.L825:
	subs	r5, r4, #0
	beq	.L855
.L829:
	ldrb	r4, [r5]
	cmp	r4, #75
	beq	.L821
	movs	r3, r6
	ldrh	r4, [r5, #2]
	ands	r3, r4
	tst	r6, r4
	beq	.L827
	adds	r4, r4, #4
	subs	r4, r4, r3
	lsls	r4, r4, #16
	lsrs	r4, r4, #16
.L827:
	adds	r5, r5, r4
	movs	r4, #0
	cmp	r5, r7
	bcs	.L825
	cmp	r5, #0
	bne	.L829
.L855:
	ldr	r7, .L856+12
	cmp	r8, r7
	beq	.L821
	mov	r4, r8
	ldr	r6, .L856+4
	adds	r4, r4, #8
	lsls	r6, r6, #16
	lsrs	r6, r6, #16
	cmp	r6, r4
	blt	.L830
	lsls	r4, r4, #16
	lsrs	r5, r4, #16
	mov	r4, ip
	movs	r3, #8
	add	r4, r4, r8
	strh	r3, [r4, #2]
	mov	r3, ip
	strh	r5, [r3, #2]
	movs	r3, #75
	strb	r3, [r4]
	mov	r3, r10
	strb	r0, [r4, #4]
	strb	r1, [r4, #5]
	strb	r2, [r4, #6]
	strb	r3, [r4, #7]
	cmp	r5, r7
	beq	.L821
	movs	r3, #3
	movs	r2, r5
	bics	r5, r3
	ands	r2, r3
	movs	r3, #0
	adds	r5, r5, #4
	asrs	r1, r6, #31
	cmp	r6, r5
	adcs	r3, r3, r1
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	beq	.L821
	cmp	r2, #0
	beq	.L821
	mov	r3, r8
	adds	r3, r3, #12
	subs	r3, r3, r2
	mov	r2, ip
	strh	r3, [r2, #2]
	b	.L821
.L830:
	movs	r3, #1
	mov	r2, ip
	rsbs	r3, r3, #0
	strh	r3, [r2, #2]
	b	.L821
.L857:
	.align	2
.L856:
	.word	REW_curSequence
	.word	REW_curSequenceMaxSize
	.word	65528
	.word	65535
	.size	REW_conseqUnitMove, .-REW_conseqUnitMove
	.align	1
	.p2align 2,,3
	.global	REW_cancelUnitMove
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_cancelUnitMove, %function
REW_cancelUnitMove:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	lr, r8
	push	{lr}
	mov	r8, r1
	ldr	r1, .L931
	movs	r4, r0
	ldr	r0, [r1]
	ldrh	r1, [r0, #2]
	mov	ip, r1
	cmp	r1, #0
	beq	.L858
	cmp	r4, r2
	bne	.L894
	cmp	r8, r3
	bne	.L894
.L858:
	@ sp needed
	pop	{r7}
	mov	r8, r7
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L894:
	mov	r1, ip
	movs	r2, #3
	adds	r3, r0, #4
	adds	r7, r0, r1
.L861:
	movs	r1, r3
.L864:
	cmp	r1, #0
	beq	.L858
	ldrb	r3, [r1]
	cmp	r3, #75
	beq	.L891
	movs	r6, r2
	ldrh	r3, [r1, #2]
	ands	r6, r3
	tst	r2, r3
	beq	.L863
	adds	r3, r3, #4
	subs	r3, r3, r6
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
.L863:
	adds	r1, r1, r3
	movs	r3, #0
	cmp	r1, r7
	bcc	.L864
	b	.L861
.L891:
	mov	r2, ip
	movs	r3, r1
	movs	r6, #3
	adds	r7, r0, r2
.L862:
	movs	r2, r3
.L868:
	cmp	r2, #0
	beq	.L878
	ldrb	r3, [r2]
	cmp	r3, #69
	beq	.L866
	movs	r5, r6
	ldrh	r3, [r2, #2]
	ands	r5, r3
	tst	r6, r3
	beq	.L867
	adds	r3, r3, #4
	subs	r3, r3, r5
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
.L867:
	adds	r2, r2, r3
	movs	r3, #0
	cmp	r2, r7
	bcc	.L868
	b	.L862
.L878:
	mov	r2, ip
	movs	r3, r1
	movs	r6, #3
	adds	r7, r0, r2
.L870:
	movs	r2, r3
.L881:
	cmp	r2, #0
	beq	.L890
	ldrb	r3, [r2]
	cmp	r3, #71
	beq	.L879
	movs	r5, r6
	ldrh	r3, [r2, #2]
	ands	r5, r3
	tst	r6, r3
	beq	.L880
	adds	r3, r3, #4
	subs	r3, r3, r5
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
.L880:
	adds	r2, r2, r3
	movs	r3, #0
	cmp	r2, r7
	bcc	.L881
	b	.L870
.L890:
	bl	REW_deleteRewindEntry
	b	.L858
.L879:
	mov	r3, ip
	movs	r6, #3
	adds	r7, r0, r3
.L886:
	mov	r3, r8
	movs	r5, r6
	strb	r3, [r2, #5]
	ldrh	r3, [r2, #2]
	strb	r4, [r2, #4]
	ands	r5, r3
	tst	r6, r3
	beq	.L883
	adds	r3, r3, #4
	subs	r3, r3, r5
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
.L883:
	adds	r3, r2, r3
	cmp	r3, r7
	sbcs	r2, r2, r2
	ands	r3, r2
.L885:
	movs	r2, r3
.L888:
	cmp	r2, #0
	beq	.L890
	ldrb	r3, [r2]
	cmp	r3, #71
	beq	.L886
	movs	r5, r6
	ldrh	r3, [r2, #2]
	ands	r5, r3
	tst	r6, r3
	beq	.L887
	adds	r3, r3, #4
	subs	r3, r3, r5
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
.L887:
	adds	r2, r2, r3
	movs	r3, #0
	cmp	r2, r7
	bcc	.L888
	b	.L885
.L866:
	mov	r3, ip
	movs	r6, #3
	adds	r7, r0, r3
.L874:
	mov	r3, r8
	movs	r5, r6
	strb	r3, [r2, #5]
	ldrh	r3, [r2, #2]
	strb	r4, [r2, #4]
	ands	r5, r3
	tst	r6, r3
	beq	.L871
	adds	r3, r3, #4
	subs	r3, r3, r5
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
.L871:
	adds	r3, r2, r3
	cmp	r3, r7
	sbcs	r2, r2, r2
	ands	r3, r2
.L873:
	movs	r2, r3
.L876:
	cmp	r2, #0
	beq	.L878
	ldrb	r3, [r2]
	cmp	r3, #69
	beq	.L874
	movs	r5, r6
	ldrh	r3, [r2, #2]
	ands	r5, r3
	tst	r6, r3
	beq	.L875
	adds	r3, r3, #4
	subs	r3, r3, r5
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
.L875:
	adds	r2, r2, r3
	movs	r3, #0
	cmp	r2, r7
	bcc	.L876
	b	.L873
.L932:
	.align	2
.L931:
	.word	REW_curSequence
	.size	REW_cancelUnitMove, .-REW_cancelUnitMove
	.align	1
	.p2align 2,,3
	.global	REW_createReorderPositions
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_createReorderPositions, %function
REW_createReorderPositions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r6, r9
	mov	r5, r8
	mov	lr, fp
	mov	r7, r10
	ldrh	r2, [r1, #2]
	push	{r5, r6, r7, lr}
	ldrh	r3, [r1]
	lsls	r2, r2, #16
	orrs	r2, r3
	ldrh	r3, [r1, #6]
	ldrh	r4, [r1, #4]
	lsls	r3, r3, #16
	sub	sp, sp, #28
	orrs	r3, r4
	str	r3, [sp, #12]
	ldrh	r3, [r1, #8]
	add	r5, sp, #8
	strh	r3, [r5, #8]
	movs	r3, #0
	movs	r6, #0
	mov	fp, r3
	mov	r8, r3
	mov	r9, r3
	mov	ip, r3
	movs	r1, #0
	str	r2, [sp, #8]
.L934:
	lsls	r3, r6, #1
	ldrh	r7, [r0, r3]
	movs	r2, r5
	movs	r3, #0
.L944:
	ldrh	r4, [r2]
	cmp	r4, r7
	beq	.L949
	adds	r3, r3, #1
	adds	r2, r2, #2
	cmp	r3, #5
	bne	.L944
	movs	r0, #0
.L945:
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7}
	mov	fp, r7
	mov	r10, r6
	mov	r9, r5
	mov	r8, r4
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L949:
	movs	r7, #0
	cmp	r3, #0
	beq	.L936
	movs	r2, #1
	str	r1, [sp, #4]
	movs	r4, #0
	mov	r1, ip
	mov	r10, r2
	mov	ip, r0
.L938:
	movs	r2, r1
	mov	r0, r10
	asrs	r2, r2, r4
	ands	r2, r0
	rsbs	r0, r2, #0
	adcs	r2, r2, r0
	adds	r4, r4, #1
	adds	r7, r7, r2
	cmp	r3, r4
	bne	.L938
	mov	r0, ip
	mov	ip, r1
	ldr	r1, [sp, #4]
.L936:
	movs	r4, #1
	lsls	r2, r3, #1
	rsbs	r4, r4, #0
	strh	r4, [r2, r5]
	cmp	r6, #0
	beq	.L950
	cmp	r6, #1
	beq	.L951
	cmp	r6, #2
	beq	.L952
	cmp	r6, #3
	beq	.L953
	mov	r3, r9
	lsls	r0, r3, #3
	mov	r3, r8
	mov	r2, fp
	lsls	r3, r3, #5
	orrs	r0, r1
	lsls	r2, r2, #7
	orrs	r0, r3
	orrs	r0, r2
	b	.L945
.L950:
	movs	r1, #7
	adds	r6, r6, #1
	ands	r1, r7
.L940:
	movs	r2, #1
	lsls	r2, r2, r3
	movs	r3, r2
	mov	r2, ip
	orrs	r2, r3
	lsls	r3, r2, #24
	lsrs	r3, r3, #24
	mov	ip, r3
	b	.L934
.L953:
	movs	r2, #1
	ands	r2, r7
	mov	fp, r2
	adds	r6, r6, #1
	b	.L940
.L952:
	movs	r2, #3
	ands	r2, r7
	mov	r8, r2
	adds	r6, r6, #1
	b	.L940
.L951:
	movs	r2, #3
	ands	r2, r7
	mov	r9, r2
	adds	r6, r6, #1
	b	.L940
	.size	REW_createReorderPositions, .-REW_createReorderPositions
	.align	1
	.p2align 2,,3
	.global	REW_reorderInventory
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_reorderInventory, %function
REW_reorderInventory:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	ip, r3
	lsls	r3, r2, #29
	sub	sp, sp, #28
	lsrs	r3, r3, #29
	str	r3, [sp, #4]
	lsls	r3, r2, #27
	lsrs	r3, r3, #30
	str	r3, [sp, #8]
	lsls	r3, r2, #25
	lsrs	r3, r3, #30
	str	r3, [sp, #12]
	movs	r3, #0
	movs	r6, r0
	movs	r7, r1
	movs	r5, #0
	movs	r0, #0
	lsls	r2, r2, #24
	lsrs	r2, r2, #31
	str	r2, [sp, #16]
	str	r3, [sp, #20]
	add	r4, sp, #4
.L960:
	movs	r2, #1
	movs	r3, #0
	ldr	r1, [r4]
	b	.L957
.L962:
	subs	r1, r1, #1
.L955:
	lsls	r2, r2, #1
	adds	r3, r3, #1
.L957:
	tst	r0, r2
	bne	.L955
	cmp	r1, #0
	bne	.L962
	orrs	r0, r2
	mov	r2, ip
	lsls	r0, r0, #24
	lsrs	r0, r0, #24
	lsls	r3, r3, #1
	cmp	r2, #1
	beq	.L963
	ldrh	r2, [r6, r5]
	strh	r2, [r7, r3]
.L959:
	adds	r5, r5, #2
	adds	r4, r4, #4
	cmp	r5, #10
	bne	.L960
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L963:
	ldrh	r3, [r6, r3]
	strh	r3, [r7, r5]
	b	.L959
	.size	REW_reorderInventory, .-REW_reorderInventory
	.align	1
	.p2align 2,,3
	.global	REW_doInventoryReorder
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_doInventoryReorder, %function
REW_doInventoryReorder:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	movs	r4, r0
	ldrb	r0, [r0, #1]
	lsls	r2, r0, #29
	movs	r6, r1
	sub	sp, sp, #16
	lsrs	r2, r2, #29
	cmp	r2, #4
	bhi	.L964
	movs	r2, #96
	ands	r2, r0
	cmp	r2, #96
	beq	.L964
	movs	r3, #5
	ldr	r2, .L976
	ldr	r1, [r2]
	movs	r2, #4
	ldrsb	r3, [r4, r3]
	lsls	r3, r3, #2
	ldr	r3, [r3, r1]
	ldrsb	r2, [r4, r2]
	ldrsb	r0, [r3, r2]
	ldr	r3, .L976+4
	bl	.L5
	subs	r5, r0, #0
	beq	.L964
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L964
	ldrb	r2, [r4, #1]
	mov	r4, sp
	movs	r3, r6
	mov	r1, sp
	adds	r0, r0, #30
	bl	REW_reorderInventory
	ldrh	r3, [r4]
	strh	r3, [r5, #30]
	ldrh	r3, [r4, #2]
	strh	r3, [r5, #32]
	ldrh	r3, [r4, #4]
	strh	r3, [r5, #34]
	ldrh	r3, [r4, #6]
	strh	r3, [r5, #36]
	ldrh	r3, [r4, #8]
	strh	r3, [r5, #38]
.L964:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L977:
	.align	2
.L976:
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
	ldr	r2, .L986
	ldr	r1, [r2]
	movs	r2, #4
	push	{r4, lr}
	ldrsb	r3, [r0, r3]
	lsls	r3, r3, #2
	ldr	r3, [r3, r1]
	ldrsb	r2, [r0, r2]
	ldrsb	r0, [r3, r2]
	ldr	r3, .L986+4
	bl	.L5
	subs	r4, r0, #0
	beq	.L978
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L978
	ldr	r3, .L986+8
	bl	.L5
	movs	r3, #0
	lsls	r0, r0, #1
	adds	r4, r4, r0
	strh	r3, [r4, #28]
.L978:
	@ sp needed
	pop	{r4}
	pop	{r0}
	bx	r0
.L987:
	.align	2
.L986:
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
	ldr	r2, .L998
	ldr	r1, [r2]
	movs	r2, #4
	push	{r4, r5, r6, lr}
	ldrsb	r3, [r0, r3]
	lsls	r3, r3, #2
	ldr	r3, [r3, r1]
	ldrsb	r2, [r0, r2]
	movs	r5, r0
	ldrsb	r0, [r3, r2]
	ldr	r3, .L998+4
	bl	.L5
	subs	r4, r0, #0
	beq	.L991
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L991
	ldr	r3, .L998+8
	bl	.L5
	cmp	r0, #4
	bgt	.L991
	adds	r0, r0, #12
	ldrh	r3, [r5, #6]
	lsls	r0, r0, #1
	adds	r4, r4, r0
	strh	r3, [r4, #6]
.L991:
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L999:
	.align	2
.L998:
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
	.global	REW_undoUnitSupplyExchange
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_undoUnitSupplyExchange, %function
REW_undoUnitSupplyExchange:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	lr, r10
	mov	r7, r9
	mov	r6, r8
	push	{r6, r7, lr}
	sub	sp, sp, #24
	movs	r7, r0
	movs	r2, #10
	movs	r1, #0
	ldr	r5, .L1041
	mov	r0, sp
	bl	.L6
	movs	r2, #10
	movs	r1, #0
	add	r0, sp, #12
	bl	.L6
	movs	r3, #5
	ldr	r2, .L1041+4
	ldr	r1, [r2]
	movs	r2, #4
	ldrsb	r3, [r7, r3]
	lsls	r3, r3, #2
	ldrsb	r2, [r7, r2]
	ldr	r3, [r3, r1]
	ldrsb	r0, [r3, r2]
	ldr	r3, .L1041+8
	bl	.L5
	subs	r2, r0, #0
	beq	.L1003
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L1003
	movs	r1, #16
	add	r5, sp, #12
	mov	r8, r1
	mov	r6, sp
	movs	r4, r5
	mov	r1, sp
	adds	r3, r7, #6
	adds	r2, r2, #30
	add	r8, r8, r7
.L1006:
	ldrh	r0, [r3]
	ldrh	r7, [r3, #10]
	adds	r3, r3, #2
	strh	r0, [r1]
	strh	r7, [r4]
	strh	r0, [r2]
	adds	r1, r1, #2
	adds	r4, r4, #2
	adds	r2, r2, #2
	cmp	r3, r8
	bne	.L1006
	movs	r2, #10
	mov	ip, r2
	add	r3, sp, #12
	add	r3, r3, ip
	mov	r8, r3
	add	r3, sp, #12
.L1010:
	ldrh	r0, [r3]
	cmp	r0, #0
	bne	.L1037
.L1007:
	adds	r3, r3, #2
	cmp	r3, r8
	bne	.L1010
	ldr	r3, .L1041+12
	mov	r9, r3
	movs	r3, #0
	movs	r7, #10
	mov	r10, r3
	add	r7, r7, sp
.L1015:
	ldrh	r4, [r6]
	cmp	r4, #0
	bne	.L1038
.L1013:
	adds	r6, r6, #2
	cmp	r6, r7
	bne	.L1015
	ldr	r3, .L1041+16
	bl	.L5
	ldr	r4, .L1041+20
.L1017:
	ldrh	r0, [r5]
	cmp	r0, #0
	bne	.L1039
.L1016:
	adds	r5, r5, #2
	cmp	r5, r8
	bne	.L1017
.L1003:
	add	sp, sp, #24
	@ sp needed
	pop	{r5, r6, r7}
	mov	r10, r7
	mov	r9, r6
	mov	r8, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L1038:
	bl	.L9
	movs	r2, r0
	adds	r2, r2, #200
	b	.L1014
.L1012:
	adds	r0, r0, #2
	cmp	r0, r2
	beq	.L1013
.L1014:
	ldrh	r3, [r0]
	cmp	r3, r4
	bne	.L1012
	mov	r3, r10
	strh	r3, [r0]
	b	.L1013
.L1039:
	bl	.L238
	b	.L1016
.L1037:
	mov	r1, sp
	ldrh	r4, [r1]
	movs	r2, #0
	cmp	r4, r0
	beq	.L1040
.L1008:
	adds	r2, r2, #1
	adds	r1, r1, #2
	cmp	r2, #5
	beq	.L1007
	ldrh	r4, [r1]
	cmp	r4, r0
	bne	.L1008
.L1040:
	movs	r1, #0
	mov	r0, sp
	lsls	r2, r2, #1
	strh	r1, [r3]
	strh	r1, [r0, r2]
	b	.L1007
.L1042:
	.align	2
.L1041:
	.word	memset
	.word	gBmMapUnit
	.word	GetUnit
	.word	GetConvoyItemArray
	.word	ShrinkConvoyItemList
	.word	AddItemToConvoy
	.size	REW_undoUnitSupplyExchange, .-REW_undoUnitSupplyExchange
	.align	1
	.p2align 2,,3
	.global	REW_redoUnitSupplyExchange
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_redoUnitSupplyExchange, %function
REW_redoUnitSupplyExchange:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	lr, r9
	mov	r7, r8
	push	{r7, lr}
	sub	sp, sp, #28
	movs	r7, r0
	movs	r2, #10
	movs	r1, #0
	ldr	r5, .L1081
	mov	r0, sp
	bl	.L6
	movs	r2, #10
	movs	r1, #0
	add	r0, sp, #12
	bl	.L6
	movs	r3, #5
	ldr	r2, .L1081+4
	ldr	r1, [r2]
	movs	r2, #4
	ldrsb	r3, [r7, r3]
	lsls	r3, r3, #2
	ldrsb	r2, [r7, r2]
	ldr	r3, [r3, r1]
	ldrsb	r0, [r3, r2]
	ldr	r3, .L1081+8
	bl	.L5
	subs	r2, r0, #0
	beq	.L1043
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L1043
	add	r6, sp, #12
	mov	r5, sp
	movs	r4, r6
	mov	r1, sp
	adds	r3, r7, #6
	adds	r2, r2, #30
	adds	r7, r7, #16
.L1046:
	ldrh	r0, [r3]
	strh	r0, [r1]
	ldrh	r0, [r3, #10]
	adds	r3, r3, #2
	strh	r0, [r4]
	strh	r0, [r2]
	adds	r1, r1, #2
	adds	r4, r4, #2
	adds	r2, r2, #2
	cmp	r3, r7
	bne	.L1046
	add	r7, sp, #12
	adds	r7, r7, #10
	add	r3, sp, #12
.L1050:
	ldrh	r0, [r3]
	cmp	r0, #0
	bne	.L1077
.L1047:
	adds	r3, r3, #2
	cmp	r3, r7
	bne	.L1050
	ldr	r3, .L1081+12
	mov	r8, r3
	movs	r3, #0
	mov	r9, r3
.L1055:
	ldrh	r4, [r6]
	cmp	r4, #0
	bne	.L1078
.L1053:
	adds	r6, r6, #2
	cmp	r6, r7
	bne	.L1055
	movs	r4, #10
	ldr	r3, .L1081+16
	bl	.L5
	ldr	r6, .L1081+20
	add	r4, r4, sp
.L1057:
	ldrh	r0, [r5]
	cmp	r0, #0
	bne	.L1079
.L1056:
	adds	r5, r5, #2
	cmp	r4, r5
	bne	.L1057
.L1043:
	add	sp, sp, #28
	@ sp needed
	pop	{r6, r7}
	mov	r9, r7
	mov	r8, r6
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L1078:
	bl	.L10
	movs	r2, r0
	adds	r2, r2, #200
	b	.L1054
.L1052:
	adds	r0, r0, #2
	cmp	r0, r2
	beq	.L1053
.L1054:
	ldrh	r3, [r0]
	cmp	r3, r4
	bne	.L1052
	mov	r3, r9
	strh	r3, [r0]
	b	.L1053
.L1079:
	bl	.L11
	b	.L1056
.L1077:
	mov	r1, sp
	ldrh	r4, [r1]
	movs	r2, #0
	cmp	r4, r0
	beq	.L1080
.L1048:
	adds	r2, r2, #1
	adds	r1, r1, #2
	cmp	r2, #5
	beq	.L1047
	ldrh	r4, [r1]
	cmp	r4, r0
	bne	.L1048
.L1080:
	movs	r1, #0
	mov	r0, sp
	lsls	r2, r2, #1
	strh	r1, [r3]
	strh	r1, [r0, r2]
	b	.L1047
.L1082:
	.align	2
.L1081:
	.word	memset
	.word	gBmMapUnit
	.word	GetUnit
	.word	GetConvoyItemArray
	.word	ShrinkConvoyItemList
	.word	AddItemToConvoy
	.size	REW_redoUnitSupplyExchange, .-REW_redoUnitSupplyExchange
	.align	1
	.p2align 2,,3
	.global	REW_conseqEquipItem
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_conseqEquipItem, %function
REW_conseqEquipItem:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r6, r9
	mov	r5, r8
	mov	lr, fp
	mov	r7, r10
	push	{r5, r6, r7, lr}
	movs	r5, r0
	movs	r6, r1
	sub	sp, sp, #36
	cmp	r1, #0
	ble	.L1083
	cmp	r0, #0
	beq	.L1083
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L1083
	movs	r0, #11
	ldr	r3, .L1133
	ldrsb	r0, [r5, r0]
	bl	.L5
	cmp	r0, r5
	beq	.L1128
.L1083:
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
.L1128:
	movs	r3, #16
	ldrsb	r3, [r0, r3]
	lsls	r7, r3, #24
	mov	r10, r3
	movs	r3, #17
	ldrsb	r3, [r0, r3]
	str	r3, [sp, #4]
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	mov	r8, r3
	ldr	r3, .L1133+4
	ldr	r3, [r3]
	mov	fp, r3
	adds	r4, r3, #4
	ldrh	r3, [r3, #2]
	mov	r0, fp
	mov	r9, r3
	movs	r2, #3
	str	r3, [sp]
	lsrs	r7, r7, #24
	add	r0, r0, r9
	cmp	r3, #0
	bne	.LCB6609
	b	.L1129	@long jump
.LCB6609:
	movs	r1, r2
	ldrh	r3, [r4, #2]
	ands	r1, r3
	tst	r2, r3
	beq	.L1088
.L1130:
	adds	r3, r3, #4
	subs	r3, r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
.L1088:
	adds	r3, r4, r3
	cmp	r0, r3
	bls	.L1126
.L1131:
	cmp	r3, #0
	beq	.L1126
	movs	r4, r3
	movs	r1, r2
	ldrh	r3, [r4, #2]
	ands	r1, r3
	tst	r2, r3
	bne	.L1130
	adds	r3, r4, r3
	cmp	r0, r3
	bhi	.L1131
.L1126:
	movs	r3, r5
	movs	r1, r4
	mov	r5, r8
	mov	r4, fp
	mov	r8, r3
	b	.L1098
.L1091:
	cmp	r3, #69
	bne	.L1093
	movs	r3, #4
	ldrsb	r3, [r1, r3]
	cmp	r3, r7
	beq	.L1132
.L1092:
	movs	r0, r4
	bl	REW_prevEntry
	subs	r1, r0, #0
	beq	.L1093
.L1098:
	ldrb	r3, [r1]
	cmp	r3, #75
	bne	.L1091
	movs	r3, #6
	ldrsb	r3, [r1, r3]
	cmp	r3, r7
	bne	.L1092
	movs	r3, #7
	ldrsb	r3, [r1, r3]
	cmp	r3, r5
	bne	.L1092
	ldrb	r7, [r1, #4]
	ldrb	r5, [r1, #5]
	b	.L1092
.L1132:
	movs	r3, #5
	ldrsb	r3, [r1, r3]
	cmp	r3, r5
	bne	.L1092
	mov	r5, r8
	movs	r3, r6
	movs	r0, r5
	adds	r3, r3, #12
	lsls	r3, r3, #1
	adds	r3, r5, r3
	ldrh	r3, [r3, #6]
	add	r7, sp, #8
	adds	r0, r0, #30
	movs	r4, r1
	strh	r3, [r7]
	movs	r1, r7
	movs	r2, r0
	movs	r3, #1
.L1096:
	cmp	r6, r3
	blt	.L1094
	ldrh	r5, [r2]
.L1095:
	adds	r3, r3, #1
	strh	r5, [r1, #2]
	adds	r2, r2, #2
	adds	r1, r1, #2
	cmp	r3, #5
	bne	.L1096
	ldrb	r2, [r4, #1]
	subs	r3, r3, #4
	add	r1, sp, #20
	bl	REW_reorderInventory
	movs	r1, r7
	add	r0, sp, #20
	bl	REW_createReorderPositions
	strb	r0, [r4, #1]
	b	.L1083
.L1093:
	ldr	r3, .L1133+8
	mov	fp, r4
	cmp	r9, r3
	bne	.LCB6730
	b	.L1083	@long jump
.LCB6730:
	mov	r3, r9
	ldr	r2, .L1133+12
	adds	r3, r3, #6
	lsls	r2, r2, #16
	lsrs	r2, r2, #16
	cmp	r3, r2
	bgt	.L1086
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
.L1087:
	movs	r4, #6
	mov	r1, fp
	ldr	r0, [sp]
	add	r0, r0, fp
	strh	r4, [r0, #2]
	strh	r3, [r1, #2]
	mov	r1, r10
	movs	r4, #70
	strb	r1, [r0, #4]
	ldr	r1, [sp, #4]
	adds	r4, r4, #255
	strb	r1, [r0, #5]
	strh	r4, [r0]
	cmp	r6, #1
	beq	.L1101
	movs	r5, #24
	ldrb	r4, [r0, #1]
	bics	r4, r5
	movs	r5, #8
	orrs	r4, r5
	strb	r4, [r0, #1]
	cmp	r6, #2
	beq	.L1101
	movs	r5, #96
	lsls	r4, r4, #24
	lsrs	r4, r4, #24
	bics	r4, r5
	movs	r5, #32
	orrs	r4, r5
	strb	r4, [r0, #1]
	cmp	r6, #3
	beq	.L1101
	lsls	r5, r4, #24
	movs	r4, #128
	lsrs	r5, r5, #24
	rsbs	r4, r4, #0
	orrs	r4, r5
	strb	r4, [r0, #1]
.L1101:
	ldr	r0, .L1133+8
	cmp	r3, r0
	bne	.LCB6784
	b	.L1083	@long jump
.LCB6784:
	movs	r4, #3
	ands	r4, r3
	subs	r3, r3, r4
	adds	r3, r3, #4
	lsrs	r5, r3, #31
	asrs	r0, r2, #31
	cmp	r2, r3
	adcs	r0, r0, r5
	lsls	r3, r0, #24
	bne	.LCB6798
	b	.L1083	@long jump
.LCB6798:
	cmp	r4, #0
	bne	.LCB6803
	b	.L1083	@long jump
.LCB6803:
	mov	r1, r9
	mov	r3, fp
	adds	r1, r1, #10
	subs	r1, r1, r4
	strh	r1, [r3, #2]
	b	.L1083
.L1094:
	ldrh	r5, [r2, #2]
	b	.L1095
.L1129:
	ldr	r2, .L1133+12
	lsls	r2, r2, #16
	lsrs	r2, r2, #16
	cmp	r2, #5
	ble	.L1086
	movs	r1, #4
	adds	r3, r3, #10
	mov	r9, r1
	str	r1, [sp]
	b	.L1087
.L1086:
	movs	r3, #1
	mov	r2, fp
	rsbs	r3, r3, #0
	strh	r3, [r2, #2]
	b	.L1083
.L1134:
	.align	2
.L1133:
	.word	GetUnit
	.word	REW_curSequence
	.word	65535
	.word	REW_curSequenceMaxSize
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
	ldr	r3, .L1155
	movs	r6, r0
	sub	sp, sp, #12
	movs	r0, #0
	movs	r5, r1
	movs	r4, r2
	bl	.L5
	cmp	r0, #0
	beq	.L1153
.L1135:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L1153:
	ldr	r3, .L1155+4
	bl	.L5
	rsbs	r1, r4, #0
	adcs	r4, r4, r1
	rsbs	r3, r6, #0
	adcs	r3, r3, r6
	orrs	r3, r4
	bne	.L1135
	cmp	r0, #0
	bne	.L1135
	ldr	r3, [r6]
	cmp	r3, #0
	beq	.L1135
	movs	r3, #19
	ldrsb	r3, [r6, r3]
	cmp	r3, #0
	beq	.L1135
	ldr	r3, .L1155+8
	ldr	r0, [r3]
	ldr	r6, .L1155+12
	ldrh	r4, [r0, #2]
	cmp	r4, r6
	beq	.L1135
	ldr	r2, .L1155+16
	lsls	r2, r2, #16
	lsrs	r3, r2, #16
	movs	r2, r4
	adds	r2, r2, #8
	cmp	r2, r3
	bgt	.L1154
	cmp	r4, #0
	beq	.L1140
	movs	r7, #8
	adds	r1, r0, r4
	lsls	r2, r2, #16
	strh	r7, [r1, #2]
	lsrs	r2, r2, #16
	adds	r7, r7, #62
	strh	r2, [r0, #2]
	strb	r7, [r1]
	ldr	r7, .L1155+20
	ldr	r7, [r7]
	ldrh	r7, [r7, #16]
	strh	r5, [r1, #6]
	strh	r7, [r1, #4]
	cmp	r2, r6
	beq	.L1135
	movs	r5, #3
	ands	r5, r2
	subs	r2, r2, r5
	adds	r2, r2, #4
	asrs	r1, r3, #31
	lsrs	r6, r2, #31
	cmp	r3, r2
	adcs	r1, r1, r6
	lsls	r3, r1, #24
	beq	.L1135
	cmp	r5, #0
	beq	.L1135
	adds	r4, r4, #12
	subs	r3, r4, r5
	strh	r3, [r0, #2]
	b	.L1135
.L1140:
	movs	r2, #8
	strh	r2, [r0, #6]
	adds	r2, r2, #4
	strh	r2, [r0, #2]
	adds	r2, r2, #58
	strb	r2, [r0, #4]
	ldr	r2, .L1155+20
	ldr	r2, [r2]
	ldrh	r2, [r2, #16]
	strh	r5, [r0, #10]
	strh	r2, [r0, #8]
	b	.L1135
.L1154:
	movs	r3, #1
	rsbs	r3, r3, #0
	strh	r3, [r0, #2]
	b	.L1135
.L1156:
	.align	2
.L1155:
	.word	PrepAtMenuExists
	.word	WM_Exists
	.word	REW_curSequence
	.word	65535
	.word	REW_curSequenceMaxSize
	.word	gActiveUnit
	.size	REW_conseqItemObtainedUnit, .-REW_conseqItemObtainedUnit
	.align	1
	.p2align 2,,3
	.global	REW_conseqItemRemovedUnit
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_conseqItemRemovedUnit, %function
REW_conseqItemRemovedUnit:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	movs	r4, r0
	ldr	r3, .L1177
	movs	r0, #0
	movs	r5, r1
	bl	.L5
	cmp	r0, #0
	beq	.L1175
.L1157:
	@ sp needed
	pop	{r3, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L1175:
	ldr	r3, .L1177+4
	bl	.L5
	cmp	r0, #0
	bne	.L1157
	cmp	r4, #0
	beq	.L1157
	ldr	r3, [r4]
	cmp	r3, #0
	beq	.L1157
	movs	r3, #19
	ldrsb	r3, [r4, r3]
	cmp	r3, #0
	beq	.L1157
	ldr	r3, .L1177+8
	ldr	r0, [r3]
	ldr	r6, .L1177+12
	ldrh	r4, [r0, #2]
	cmp	r4, r6
	beq	.L1157
	ldr	r2, .L1177+16
	lsls	r2, r2, #16
	lsrs	r3, r2, #16
	movs	r2, r4
	adds	r2, r2, #8
	cmp	r2, r3
	bgt	.L1176
	cmp	r4, #0
	beq	.L1162
	movs	r7, #8
	adds	r1, r0, r4
	lsls	r2, r2, #16
	strh	r7, [r1, #2]
	lsrs	r2, r2, #16
	adds	r7, r7, #63
	strh	r2, [r0, #2]
	strb	r7, [r1]
	ldr	r7, .L1177+20
	ldr	r7, [r7]
	ldrh	r7, [r7, #16]
	strh	r5, [r1, #6]
	strh	r7, [r1, #4]
	cmp	r2, r6
	beq	.L1157
	movs	r5, #3
	ands	r5, r2
	subs	r2, r2, r5
	adds	r2, r2, #4
	asrs	r1, r3, #31
	lsrs	r6, r2, #31
	cmp	r3, r2
	adcs	r1, r1, r6
	lsls	r3, r1, #24
	beq	.L1157
	cmp	r5, #0
	beq	.L1157
	adds	r4, r4, #12
	subs	r3, r4, r5
	strh	r3, [r0, #2]
	b	.L1157
.L1162:
	movs	r2, #8
	strh	r2, [r0, #6]
	adds	r2, r2, #4
	strh	r2, [r0, #2]
	adds	r2, r2, #59
	strb	r2, [r0, #4]
	ldr	r2, .L1177+20
	ldr	r2, [r2]
	ldrh	r2, [r2, #16]
	strh	r5, [r0, #10]
	strh	r2, [r0, #8]
	b	.L1157
.L1176:
	movs	r3, #1
	rsbs	r3, r3, #0
	strh	r3, [r0, #2]
	b	.L1157
.L1178:
	.align	2
.L1177:
	.word	PrepAtMenuExists
	.word	WM_Exists
	.word	REW_curSequence
	.word	65535
	.word	REW_curSequenceMaxSize
	.word	gActiveUnit
	.size	REW_conseqItemRemovedUnit, .-REW_conseqItemRemovedUnit
	.align	1
	.p2align 2,,3
	.global	REW_conseqItemObtainedSupply
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_conseqItemObtainedSupply, %function
REW_conseqItemObtainedSupply:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L1194
	movs	r4, r0
	movs	r0, #0
	bl	.L5
	cmp	r0, #0
	beq	.L1192
.L1179:
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L1192:
	ldr	r3, .L1194+4
	bl	.L5
	cmp	r0, #0
	bne	.L1179
	ldr	r3, .L1194+8
	ldr	r0, [r3]
	ldr	r2, .L1194+12
	ldrh	r3, [r0, #2]
	cmp	r3, r2
	beq	.L1179
	ldr	r2, .L1194+16
	adds	r1, r3, #6
	lsls	r2, r2, #16
	lsrs	r2, r2, #16
	cmp	r1, r2
	bgt	.L1193
	cmp	r3, #0
	beq	.L1185
	lsls	r1, r1, #16
	lsrs	r1, r1, #16
.L1184:
	movs	r5, #6
	adds	r3, r0, r3
	strh	r5, [r3, #2]
	strh	r1, [r0, #2]
	movs	r1, #72
	strh	r4, [r3, #4]
	strb	r1, [r3]
	ldr	r1, .L1194+12
	ldrh	r3, [r0, #2]
	cmp	r3, r1
	beq	.L1179
	subs	r5, r5, #3
	ands	r5, r3
	subs	r4, r3, r5
	adds	r4, r4, #4
	asrs	r1, r2, #31
	lsrs	r6, r4, #31
	cmp	r2, r4
	adcs	r1, r1, r6
	lsls	r2, r1, #24
	beq	.L1179
	cmp	r5, #0
	beq	.L1179
	adds	r3, r3, #4
	subs	r3, r3, r5
	strh	r3, [r0, #2]
	b	.L1179
.L1185:
	movs	r1, #10
	movs	r3, #4
	b	.L1184
.L1193:
	movs	r3, #1
	rsbs	r3, r3, #0
	strh	r3, [r0, #2]
	b	.L1179
.L1195:
	.align	2
.L1194:
	.word	PrepAtMenuExists
	.word	WM_Exists
	.word	REW_curSequence
	.word	65535
	.word	REW_curSequenceMaxSize
	.size	REW_conseqItemObtainedSupply, .-REW_conseqItemObtainedSupply
	.align	1
	.p2align 2,,3
	.global	REW_conseqItemRemovedSupply
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_conseqItemRemovedSupply, %function
REW_conseqItemRemovedSupply:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L1211
	movs	r4, r0
	movs	r0, #0
	bl	.L5
	cmp	r0, #0
	beq	.L1209
.L1196:
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L1209:
	ldr	r3, .L1211+4
	bl	.L5
	cmp	r0, #0
	bne	.L1196
	ldr	r3, .L1211+8
	ldr	r0, [r3]
	ldr	r2, .L1211+12
	ldrh	r3, [r0, #2]
	cmp	r3, r2
	beq	.L1196
	ldr	r2, .L1211+16
	adds	r1, r3, #6
	lsls	r2, r2, #16
	lsrs	r2, r2, #16
	cmp	r1, r2
	bgt	.L1210
	cmp	r3, #0
	beq	.L1202
	lsls	r1, r1, #16
	lsrs	r1, r1, #16
.L1201:
	movs	r5, #6
	adds	r3, r0, r3
	strh	r5, [r3, #2]
	strh	r1, [r0, #2]
	movs	r1, #73
	strh	r4, [r3, #4]
	strb	r1, [r3]
	ldr	r1, .L1211+12
	ldrh	r3, [r0, #2]
	cmp	r3, r1
	beq	.L1196
	subs	r5, r5, #3
	ands	r5, r3
	subs	r4, r3, r5
	adds	r4, r4, #4
	asrs	r1, r2, #31
	lsrs	r6, r4, #31
	cmp	r2, r4
	adcs	r1, r1, r6
	lsls	r2, r1, #24
	beq	.L1196
	cmp	r5, #0
	beq	.L1196
	adds	r3, r3, #4
	subs	r3, r3, r5
	strh	r3, [r0, #2]
	b	.L1196
.L1202:
	movs	r1, #10
	movs	r3, #4
	b	.L1201
.L1210:
	movs	r3, #1
	rsbs	r3, r3, #0
	strh	r3, [r0, #2]
	b	.L1196
.L1212:
	.align	2
.L1211:
	.word	PrepAtMenuExists
	.word	WM_Exists
	.word	REW_curSequence
	.word	65535
	.word	REW_curSequenceMaxSize
	.size	REW_conseqItemRemovedSupply, .-REW_conseqItemRemovedSupply
	.align	1
	.p2align 2,,3
	.global	REW_conseqSupplyWriteInventorySnapshot
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_conseqSupplyWriteInventorySnapshot, %function
REW_conseqSupplyWriteInventorySnapshot:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r3, #0
	adds	r0, r0, #30
.L1214:
	ldrh	r2, [r0, r3]
	strh	r2, [r1, r3]
	adds	r3, r3, #2
	cmp	r3, #10
	bne	.L1214
	@ sp needed
	bx	lr
	.size	REW_conseqSupplyWriteInventorySnapshot, .-REW_conseqSupplyWriteInventorySnapshot
	.align	1
	.p2align 2,,3
	.global	REW_conseqSupplyTrackInventoryChanges
	.syntax unified
	.code	16
	.thumb_func
	.type	REW_conseqSupplyTrackInventoryChanges, %function
REW_conseqSupplyTrackInventoryChanges:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	mov	lr, r9
	mov	r7, r8
	movs	r5, r0
	push	{r7, lr}
	movs	r0, #0
	ldr	r3, .L1251
	movs	r4, r1
	bl	.L5
	cmp	r0, #0
	beq	.L1246
.L1216:
	@ sp needed
	pop	{r6, r7}
	mov	r9, r7
	mov	r8, r6
	pop	{r3, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L1246:
	ldr	r3, .L1251+4
	bl	.L5
	cmp	r0, #0
	bne	.L1216
	movs	r1, r5
	movs	r3, #0
	adds	r1, r1, #30
.L1221:
	ldrh	r0, [r1, r3]
	ldrh	r2, [r4, r3]
	cmp	r0, r2
	bne	.L1220
	adds	r3, r3, #2
	cmp	r3, #10
	bne	.L1221
	b	.L1216
.L1220:
	ldr	r3, .L1251+8
	ldr	r6, [r3]
	ldrh	r3, [r6, #2]
	mov	r9, r3
	cmp	r3, #0
	beq	.L1247
	mov	r3, r9
	adds	r2, r6, r3
	movs	r3, #3
	mov	ip, r3
	mov	r0, ip
	ldrh	r3, [r6, #6]
	ands	r0, r3
	mov	r8, r0
	mov	r0, ip
	adds	r7, r6, #4
	tst	r0, r3
	beq	.L1222
.L1248:
	mov	r0, r8
	adds	r3, r3, #4
	subs	r3, r3, r0
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
.L1222:
	adds	r3, r7, r3
	cmp	r3, r2
	bcs	.L1223
.L1249:
	cmp	r3, #0
	beq	.L1223
	movs	r7, r3
	mov	r0, ip
	ldrh	r3, [r7, #2]
	ands	r0, r3
	mov	r8, r0
	mov	r0, ip
	tst	r0, r3
	bne	.L1248
	adds	r3, r7, r3
	cmp	r3, r2
	bcc	.L1249
.L1223:
	ldrb	r3, [r7]
	cmp	r3, #74
	beq	.L1250
	ldr	r3, .L1251+12
	cmp	r9, r3
	beq	.L1216
	mov	r0, r9
	ldr	r3, .L1251+16
	adds	r0, r0, #24
	mov	ip, r3
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	cmp	r3, r0
	blt	.L1226
	lsls	r5, r0, #16
	lsrs	r5, r5, #16
	b	.L1227
.L1247:
	ldr	r3, .L1251+16
	mov	ip, r3
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	cmp	r3, #23
	ble	.L1226
	movs	r3, #4
	movs	r5, #28
	mov	r9, r3
	adds	r2, r6, #4
.L1227:
	movs	r3, #24
	strh	r3, [r2, #2]
	adds	r3, r3, #50
	strh	r5, [r6, #2]
	strb	r3, [r2]
	ldr	r3, .L1251+20
	ldr	r3, [r3]
	ldrh	r3, [r3, #16]
	adds	r0, r2, #6
	strh	r3, [r2, #4]
	mov	r8, r0
	movs	r3, #0
	adds	r2, r2, #16
.L1229:
	mov	r0, r8
	ldrh	r7, [r4, r3]
	strh	r7, [r0, r3]
	ldrh	r7, [r1, r3]
	strh	r7, [r2, r3]
	adds	r3, r3, #2
	cmp	r3, #10
	bne	.L1229
	ldr	r3, .L1251+12
	cmp	r5, r3
	bne	.LCB7499
	b	.L1216	@long jump
.LCB7499:
	movs	r1, #3
	mov	r3, ip
	movs	r4, #0
	ands	r1, r5
	subs	r5, r5, r1
	adds	r5, r5, #4
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsrs	r2, r5, #31
	cmp	r3, r5
	adcs	r2, r2, r4
	lsls	r3, r2, #24
	bne	.LCB7516
	b	.L1216	@long jump
.LCB7516:
	cmp	r1, #0
	bne	.LCB7521
	b	.L1216	@long jump
.LCB7521:
	mov	r0, r9
	adds	r0, r0, #28
	subs	r0, r0, r1
	strh	r0, [r6, #2]
	b	.L1216
.L1226:
	movs	r3, #1
	rsbs	r3, r3, #0
	strh	r3, [r6, #2]
	b	.L1216
.L1250:
	ldrh	r3, [r5, #30]
	strh	r3, [r7, #16]
	ldrh	r3, [r5, #32]
	strh	r3, [r7, #18]
	ldrh	r3, [r5, #34]
	strh	r3, [r7, #20]
	ldrh	r3, [r5, #36]
	strh	r3, [r7, #22]
	ldrh	r3, [r5, #38]
	strh	r3, [r7, #24]
	b	.L1216
.L1252:
	.align	2
.L1251:
	.word	PrepAtMenuExists
	.word	WM_Exists
	.word	REW_curSequence
	.word	65535
	.word	REW_curSequenceMaxSize
	.word	gActiveUnit
	.size	REW_conseqSupplyTrackInventoryChanges, .-REW_conseqSupplyTrackInventoryChanges
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
	ldr	r3, .L1254
	push	{r4, lr}
	ldrh	r4, [r3, #12]
	@ sp needed
	movs	r3, #224
	lsls	r3, r3, #20
	mov	ip, r3
	ldr	r0, .L1254+4
	lsls	r0, r0, #16
	ldr	r3, .L1254+8
	lsrs	r0, r0, #16
	add	r4, r4, ip
	bl	.L5
	ldrh	r0, [r0]
	adds	r0, r4, r0
	pop	{r4}
	pop	{r1}
	bx	r1
.L1255:
	.align	2
.L1254:
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
	ldr	r3, .L1257
	push	{r4, r5, r6, lr}
	ldr	r5, [r3]
	@ sp needed
	movs	r3, #0
	strh	r3, [r5]
	strh	r3, [r5, #2]
	ldr	r3, .L1257+4
	ldrh	r4, [r3, #12]
	movs	r3, #224
	lsls	r3, r3, #20
	mov	ip, r3
	ldr	r0, .L1257+8
	lsls	r0, r0, #16
	ldr	r3, .L1257+12
	lsrs	r0, r0, #16
	add	r4, r4, ip
	bl	.L5
	ldrh	r1, [r0]
	movs	r2, #4
	movs	r0, r5
	ldr	r3, .L1257+16
	adds	r1, r4, r1
	bl	.L5
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L1258:
	.align	2
.L1257:
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
	ldr	r3, .L1260
	push	{r4, lr}
	ldrh	r4, [r3, #12]
	@ sp needed
	movs	r3, #224
	lsls	r3, r3, #20
	mov	ip, r3
	ldr	r0, .L1260+4
	lsls	r0, r0, #16
	ldr	r3, .L1260+8
	lsrs	r0, r0, #16
	add	r4, r4, ip
	bl	.L5
	ldrh	r0, [r0]
	adds	r0, r4, r0
	pop	{r4}
	pop	{r1}
	bx	r1
.L1261:
	.align	2
.L1260:
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
	ldr	r3, .L1263
	ldrh	r4, [r3, #12]
	movs	r3, #224
	lsls	r3, r3, #20
	mov	ip, r3
	ldr	r0, .L1263+4
	lsls	r0, r0, #16
	ldr	r3, .L1263+8
	lsrs	r0, r0, #16
	add	r4, r4, ip
	bl	.L5
	ldrh	r1, [r0]
	movs	r2, #8
	mov	r0, sp
	ldr	r3, .L1263+12
	adds	r1, r4, r1
	bl	.L5
	add	sp, sp, #8
	@ sp needed
	pop	{r4}
	pop	{r0}
	bx	r0
.L1264:
	.align	2
.L1263:
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
	ldr	r3, .L1267
	movs	r4, r0
	ldrb	r0, [r3, #15]
	ldr	r3, .L1267+4
	bl	.L5
	cmp	r0, #0
	ble	.L1266
	movs	r2, #2
	ldr	r3, .L1267+8
	movs	r0, #3
	strb	r2, [r3, #22]
	ldr	r3, .L1267+12
	bl	.L5
.L1266:
	@ sp needed
	movs	r0, r4
	ldr	r3, .L1267+16
	bl	.L5
	pop	{r4}
	pop	{r0}
	bx	r0
.L1268:
	.align	2
.L1267:
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
	ldr	r3, .L1270
	sub	sp, sp, #8
	add	r4, sp, #4
	movs	r2, r1
	ldr	r3, [r3]
	movs	r1, r4
	bl	.L5
	movs	r2, #0
	ldr	r3, .L1270+4
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
.L1271:
	.align	2
.L1270:
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
	ldr	r1, .L1273
	sub	sp, sp, #8
	ldrh	r4, [r1]
	add	r0, sp, #4
	strb	r4, [r0]
	ldrh	r1, [r1, #2]
	strb	r1, [r0, #1]
	movs	r1, r3
	ldr	r3, .L1273+4
	bl	.L5
	add	sp, sp, #8
	@ sp needed
	pop	{r4}
	pop	{r0}
	bx	r0
.L1274:
	.align	2
.L1273:
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
	ldr	r3, .L1276
	push	{r4, lr}
	movs	r2, r1
	@ sp needed
	ldr	r1, [r3]
	ldr	r3, .L1276+4
	ldr	r3, [r3]
	bl	.L5
	pop	{r4}
	pop	{r0}
	bx	r0
.L1277:
	.align	2
.L1276:
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
	ldr	r3, .L1280
	ldrb	r3, [r3, #22]
	bics	r3, r2
	cmp	r3, #1
	bne	.L1278
	ldr	r3, .L1280+4
	ldr	r3, [r3]
	movs	r2, r1
	movs	r1, r0
	movs	r0, r3
	ldr	r3, .L1280+8
	bl	.L5
.L1278:
	@ sp needed
	pop	{r4}
	pop	{r0}
	bx	r0
.L1281:
	.align	2
.L1280:
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
	ldr	r3, .L1283
	push	{r4, lr}
	movs	r2, r1
	@ sp needed
	ldr	r1, [r3]
	ldr	r3, .L1283+4
	ldr	r3, [r3]
	bl	.L5
	pop	{r4}
	pop	{r0}
	bx	r0
.L1284:
	.align	2
.L1283:
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
	ldr	r7, .L1309
	ldr	r3, [r7]
	movs	r6, r0
	ldrh	r4, [r3]
	ldr	r0, .L1309+4
	movs	r2, r1
	cmp	r4, r0
	bne	.LCB7921
	b	.L1306	@long jump
.LCB7921:
	ldrh	r3, [r3, #2]
	cmp	r3, #0
	beq	.L1285
	movs	r5, #8
	ldr	r3, .L1309+8
	ldrb	r3, [r3, #22]
	bics	r3, r5
	cmp	r3, #1
	beq	.L1285
	ldr	r3, .L1309+12
	mov	r8, r3
	ldr	r1, [r3]
	ldr	r3, .L1309+16
	movs	r0, r6
	ldr	r3, [r3]
	bl	.L5
	mov	r3, r8
	ldr	r0, [r3]
	ldr	r4, [r0]
	cmp	r4, #0
	beq	.L1307
.L1288:
	movs	r3, r0
	ldr	r2, [r7]
	ldr	r1, .L1309+20
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
	cmp	r1, r2
	bcs	.L1290
.L1289:
	ldrh	r2, [r3, #2]
	subs	r4, r4, r2
	adds	r5, r5, r2
	cmp	r10, r3
	beq	.L1308
	adds	r3, r3, r2
	mov	r2, ip
	adds	r2, r4, r2
	cmp	r2, r1
	bls	.L1290
	cmp	r3, #0
	bne	.L1289
	strh	r3, [r3]
	.inst	0xdeff
.L1290:
	movs	r1, #0
	strh	r1, [r3]
	adds	r3, r0, r4
	mov	ip, r3
	mov	r3, r10
	cmp	r3, #0
	beq	.L1294
	mov	r1, r9
	ldrh	r3, [r3, #2]
	strh	r3, [r1]
.L1294:
	mov	r3, ip
	str	r3, [r0, #4]
	ldr	r3, .L1309+24
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
	ldr	r3, .L1309+28
	ldrh	r4, [r3, #12]
	movs	r3, #224
	lsls	r3, r3, #20
	mov	ip, r3
	ldr	r0, .L1309+32
	lsls	r0, r0, #16
	ldr	r3, .L1309+36
	lsrs	r0, r0, #16
	add	r4, r4, ip
	bl	.L5
	ldrh	r1, [r0]
	movs	r2, #4
	movs	r0, r5
	adds	r1, r4, r1
	bl	.L9
.L1285:
	@ sp needed
	pop	{r5, r6, r7}
	mov	r10, r7
	mov	r9, r6
	mov	r8, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L1308:
	movs	r3, #0
	strh	r3, [r3]
	.inst	0xdeff
.L1307:
	str	r5, [r0]
	adds	r4, r4, #8
	b	.L1288
.L1306:
	ldr	r3, .L1309+12
	movs	r1, r6
	movs	r2, #8
	ldr	r0, [r3]
	ldr	r6, .L1309+24
	bl	.L11
	movs	r3, #0
	ldr	r5, [r7]
	strh	r3, [r5, #2]
	strh	r3, [r5]
	ldr	r3, .L1309+28
	ldrh	r4, [r3, #12]
	movs	r3, #224
	lsls	r3, r3, #20
	mov	ip, r3
	ldr	r0, .L1309+32
	lsls	r0, r0, #16
	ldr	r3, .L1309+36
	lsrs	r0, r0, #16
	add	r4, r4, ip
	bl	.L5
	ldrh	r1, [r0]
	movs	r2, #4
	movs	r0, r5
	adds	r1, r4, r1
	bl	.L11
	b	.L1285
.L1310:
	.align	2
.L1309:
	.word	REW_curSequence
	.word	65534
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
	ldr	r3, .L1314
	push	{r4, r5, lr}
	ldr	r5, [r3]
	ldr	r3, .L1314+4
	ldrh	r4, [r3, #12]
	movs	r3, #224
	lsls	r3, r3, #20
	mov	ip, r3
	ldr	r0, .L1314+8
	lsls	r0, r0, #16
	sub	sp, sp, #12
	ldr	r3, .L1314+12
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
.L1315:
	.align	2
.L1314:
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
	ldr	r3, .L1317
	@ sp needed
	bl	.L5
	ldr	r3, .L1317+4
	movs	r1, #3
	ldr	r0, .L1317+8
	bl	.L5
	movs	r3, #0
	str	r3, [r0, #80]
	str	r3, [r0, #84]
	movs	r0, #23
	pop	{r4}
	pop	{r1}
	bx	r1
.L1318:
	.align	2
.L1317:
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
	ldrb	r3, [r1]
	movs	r5, r0
	movs	r6, r2
	sub	sp, sp, #84
	cmp	r3, #2
	bne	.L1320
	ldrb	r0, [r1, #1]
	cmp	r0, #255
	beq	.L1325
	movs	r3, #63
	movs	r2, r0
	bics	r2, r3
	cmp	r2, #192
	beq	.L1326
.L1324:
	ldr	r3, .L1327
	bl	.L5
	movs	r4, r0
.L1322:
	ldr	r3, [r4, #4]
	ldrb	r7, [r3, #4]
	ldr	r3, [r4]
	ldrh	r0, [r3]
	ldr	r3, .L1327+4
	bl	.L5
	ldr	r3, .L1327+8
	movs	r1, r0
	movs	r0, r6
	bl	.L5
	movs	r0, r4
	ldr	r3, .L1327+12
	bl	.L5
	movs	r3, #1
	movs	r2, r7
	str	r0, [sp]
	movs	r1, #0
	ldr	r4, .L1327+16
	rsbs	r3, r3, #0
	movs	r0, #0
	bl	.L238
	movs	r3, #128
	movs	r2, #70
	lsls	r3, r3, #3
	str	r0, [r5, #80]
	ldr	r1, [r0, #48]
	strh	r3, [r0, r2]
	ldr	r4, .L1327+20
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
	ldr	r3, .L1327+24
	bl	.L5
	add	sp, sp, #84
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L1320:
	ldr	r2, .L1327+28
	ldrb	r3, [r1, #5]
	ldr	r0, [r2]
	lsls	r3, r3, #2
	ldrb	r2, [r1, #4]
	ldr	r3, [r3, r0]
	ldrb	r0, [r3, r2]
	b	.L1324
.L1325:
	movs	r3, #0
	movs	r2, #0
	adds	r1, r1, #4
	add	r0, sp, #8
	bl	REW_loadUnit
	add	r4, sp, #8
	b	.L1322
.L1326:
	ldr	r3, .L1327
	bics	r0, r2
	bl	.L5
	movs	r4, r0
	b	.L1322
.L1328:
	.align	2
.L1327:
	.word	GetUnit
	.word	GetStringFromIndex
	.word	Text_DrawString
	.word	GetUnitSpritePalette
	.word	StartMuInternal
	.word	-3073
	.word	SetMuFacing
	.word	gBmMapUnit
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
	ldr	r6, .L1341
	ldrb	r0, [r1, #1]
	sub	sp, sp, #80
	mov	r8, r2
	bl	.L11
	ldrb	r3, [r4]
	movs	r5, r0
	cmp	r3, #2
	beq	.L1336
	cmp	r3, #65
	beq	.L1337
.L1329:
	add	sp, sp, #80
	@ sp needed
	pop	{r7}
	mov	r8, r7
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L1337:
	ldrb	r3, [r4, #1]
	lsls	r3, r3, #31
	bmi	.L1338
	movs	r0, #27
	ldr	r3, .L1341+4
	bl	.L5
	movs	r1, r0
.L1335:
	mov	r0, r8
	ldr	r3, .L1341+8
	bl	.L5
	b	.L1329
.L1336:
	ldrb	r0, [r4, #1]
	cmp	r0, #255
	beq	.L1339
	movs	r3, #63
	movs	r2, r0
	bics	r2, r3
	cmp	r2, #192
	beq	.L1340
.L1332:
	ldr	r3, [r5, #4]
	ldrb	r6, [r3, #4]
	ldr	r3, [r5]
	ldrh	r0, [r3]
	ldr	r3, .L1341+12
	bl	.L5
	ldr	r3, .L1341+8
	movs	r1, r0
	mov	r0, r8
	bl	.L5
	mov	r0, r8
	ldr	r3, .L1341+16
	bl	.L5
	ldr	r3, .L1341+20
	movs	r4, r0
	movs	r0, r5
	bl	.L5
	movs	r3, #1
	movs	r2, r6
	str	r0, [sp]
	movs	r1, #0
	ldr	r5, .L1341+24
	rsbs	r3, r3, #0
	movs	r0, #0
	bl	.L6
	movs	r3, #128
	movs	r2, #70
	lsls	r3, r3, #3
	str	r0, [r7, #84]
	ldr	r1, [r0, #48]
	strh	r3, [r0, r2]
	ldr	r5, .L1341+28
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
	ldr	r3, .L1341+32
	bl	.L5
	b	.L1329
.L1338:
	movs	r0, #51
	ldr	r3, .L1341+4
	bl	.L5
	movs	r1, r0
	b	.L1335
.L1339:
	movs	r3, #0
	movs	r2, #0
	adds	r1, r4, #4
	add	r0, sp, #8
	bl	REW_loadUnit
	add	r5, sp, #8
	b	.L1332
.L1340:
	bics	r0, r2
	bl	.L11
	movs	r5, r0
	b	.L1332
.L1342:
	.align	2
.L1341:
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
	ldr	r4, .L1354
	ldrh	r3, [r1, #2]
	lsls	r4, r4, #16
	lsrs	r4, r4, #16
	ands	r6, r3
	tst	r2, r3
	beq	.L1344
	adds	r3, r3, #4
	subs	r3, r3, r6
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
.L1344:
	ldrh	r2, [r0, #2]
	adds	r3, r1, r3
	adds	r0, r0, r2
	cmp	r3, r0
	bcs	.L1345
	ldrb	r2, [r3]
	cmp	r2, #65
	beq	.L1353
.L1348:
	@ sp needed
	movs	r0, r4
	ldr	r3, .L1354+4
	bl	.L5
	ldr	r3, .L1354+8
	movs	r1, r0
	movs	r0, r5
	bl	.L5
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L1353:
	ldrb	r2, [r3, #6]
	ldrb	r1, [r3, #5]
	ldrb	r0, [r3, #4]
	ldr	r3, .L1354+12
	bl	.L5
	cmp	r0, #0
	bne	.L1348
	ldr	r4, .L1354+16
	lsls	r4, r4, #16
	lsrs	r4, r4, #16
	b	.L1348
.L1345:
	movs	r3, #0
	ldrb	r3, [r3]
	.inst	0xdeff
.L1355:
	.align	2
.L1354:
	.word	REW_combat
	.word	GetStringFromIndex
	.word	Text_DrawString
	.word	GetTypedTrapAt
	.word	REW_obstacleDestroyed
	.size	REW_displayCombatVerb, .-REW_displayCombatVerb
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC319:
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
	bpl	.LCB8565
	b	.L1409	@long jump
.LCB8565:
	ldr	r6, .L1423
	ldr	r5, .L1423+4
.L1357:
	lsls	r2, r3, #31
	bpl	.L1362
	ldr	r2, .L1423+8
	ldrb	r2, [r2, #15]
	cmp	r2, #64
	bne	.LCB8579
	b	.L1386	@long jump
.LCB8579:
	subs	r2, r2, #128
	rsbs	r1, r2, #0
	adcs	r2, r2, r1
	lsls	r2, r2, #12
.L1363:
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
.L1362:
	movs	r2, #4
	movs	r7, r2
	ldr	r0, [r4, #92]
	ands	r7, r3
	tst	r2, r3
	bne	.LCB8608
	b	.L1364	@long jump
.LCB8608:
	cmp	r0, #0
	bne	.LCB8610
	b	.L1416	@long jump
.LCB8610:
.L1365:
	movs	r2, #8
	movs	r7, r2
	ldr	r0, [r4, #96]
	ands	r7, r3
	tst	r2, r3
	bne	.LCB8619
	b	.L1366	@long jump
.LCB8619:
.L1422:
	cmp	r0, #0
	bne	.LCB8622
	b	.L1417	@long jump
.LCB8622:
.L1367:
	ldr	r3, .L1423+12
	bl	.L5
	movs	r3, #0
	str	r3, [r4, #80]
	str	r3, [r4, #84]
	movs	r3, #166
	ldr	r0, .L1423+16
	lsls	r3, r3, #3
	movs	r2, r0
	mov	ip, r3
	movs	r1, #0
	adds	r2, r2, #48
	add	r0, r0, ip
.L1368:
	movs	r3, r2
	subs	r3, r3, #48
.L1369:
	strh	r1, [r3]
	adds	r3, r3, #2
	cmp	r3, r2
	bne	.L1369
	adds	r3, r3, #64
	movs	r2, r3
	cmp	r3, r0
	bne	.L1368
	movs	r3, #41
	movs	r7, r4
	ldrb	r3, [r4, r3]
	adds	r7, r7, #48
	lsls	r2, r3, #27
	bpl	.L1372
	adds	r7, r7, #8
.L1372:
	movs	r2, #16
	eors	r3, r2
	movs	r2, #41
	movs	r0, r7
	strb	r3, [r4, r2]
	bl	.L11
	ldr	r3, .L1423+20
	movs	r1, #2
	movs	r0, r7
	bl	.L5
	ldr	r2, [r4, #44]
	ldrb	r3, [r2, #4]
	adds	r6, r2, #4
	cmp	r3, #20
	beq	.L1382
.L1418:
	cmp	r3, #64
	bne	.LCB8681
	b	.L1383	@long jump
.LCB8681:
	cmp	r3, #2
	beq	.L1384
	movs	r1, #3
	movs	r0, r1
	ldrh	r3, [r6, #2]
	ands	r0, r3
	tst	r1, r3
	beq	.L1380
	adds	r3, r3, #4
	subs	r3, r3, r0
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
.L1380:
	adds	r6, r6, r3
	ldrh	r3, [r2, #2]
	adds	r3, r2, r3
	cmp	r6, r3
	sbcs	r3, r3, r3
	rsbs	r3, r3, #0
	rsbs	r3, r3, #0
	ands	r6, r3
	ldrb	r3, [r6]
	cmp	r3, #20
	bne	.L1418
.L1382:
	movs	r0, r4
	movs	r2, r7
	movs	r1, r6
	bl	REW_displayActor
	ldr	r0, .L1423+24
.L1415:
	lsls	r0, r0, #16
	ldr	r3, .L1423+28
	lsrs	r0, r0, #16
	bl	.L5
	ldr	r3, .L1423+32
	movs	r1, r0
	movs	r0, r7
	bl	.L5
	movs	r0, r7
	ldr	r1, .L1423+36
	bl	.L6
	b	.L1376
.L1409:
	movs	r5, r0
	ldr	r3, .L1423+8
	ldrh	r7, [r3, #16]
	adds	r5, r5, #64
	lsls	r3, r7, #31
	bpl	.L1359
	adds	r5, r5, #8
.L1359:
	movs	r0, r5
	ldr	r6, .L1423
	bl	.L11
	movs	r1, #2
	movs	r0, r5
	ldr	r3, .L1423+40
	bl	.L5
	cmp	r7, #9
	ble	.L1419
	cmp	r7, #99
	bgt	.LCB8756
	b	.L1420	@long jump
.LCB8756:
.L1361:
	movs	r0, r5
	ldr	r1, .L1423+44
	ldr	r5, .L1423+4
	bl	.L6
	movs	r2, #41
	movs	r1, #2
	ldrb	r3, [r4, r2]
	bics	r3, r1
	strb	r3, [r4, r2]
	b	.L1357
.L1384:
	movs	r2, r7
	movs	r1, r6
	movs	r0, r4
	bl	REW_displayActor
	movs	r2, r7
	movs	r1, r6
	ldr	r0, [r4, #44]
	bl	REW_displayCombatVerb
	movs	r2, #3
	movs	r0, r2
	ldrh	r1, [r6, #2]
	ldr	r3, [r4, #44]
	ands	r0, r1
	tst	r2, r1
	bne	.L1421
.L1374:
	ldrh	r2, [r3, #2]
	adds	r1, r6, r1
	adds	r3, r3, r2
	cmp	r1, r3
	sbcs	r3, r3, r3
	movs	r2, r7
	ands	r1, r3
	movs	r0, r4
	bl	REW_displayTarget
	ldr	r1, .L1423+48
	movs	r0, r7
	ldr	r3, .L1423+52
	bl	.L5
	movs	r0, r7
	ldr	r1, .L1423+56
	bl	.L6
.L1376:
	movs	r0, #0
	ldr	r3, .L1423+60
	bl	.L5
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L1364:
	cmp	r0, #0
	bne	.LCB8825
	b	.L1365	@long jump
.LCB8825:
	ldr	r3, .L1423+64
	bl	.L5
	movs	r2, #8
	movs	r3, #41
	str	r7, [r4, #92]
	movs	r7, r2
	ldrb	r3, [r4, r3]
	ldr	r0, [r4, #96]
	ands	r7, r3
	tst	r2, r3
	beq	.LCB8836
	b	.L1422	@long jump
.LCB8836:
.L1366:
	cmp	r0, #0
	bne	.LCB8839
	b	.L1367	@long jump
.LCB8839:
	ldr	r3, .L1423+64
	bl	.L5
	str	r7, [r4, #96]
	b	.L1367
.L1383:
	ldr	r3, .L1423+8
	ldrb	r3, [r3, #15]
	cmp	r3, #0
	beq	.L1377
	cmp	r3, #128
	beq	.L1378
	movs	r0, r7
	movs	r1, #4
	ldr	r3, .L1423+68
	bl	.L5
	ldr	r0, .L1423+72
	b	.L1415
.L1421:
	adds	r1, r1, #4
	subs	r1, r1, r0
	lsls	r1, r1, #16
	lsrs	r1, r1, #16
	b	.L1374
.L1386:
	movs	r2, #128
	lsls	r2, r2, #6
	b	.L1363
.L1419:
	movs	r0, r5
	movs	r1, #6
	ldr	r3, .L1423+68
	bl	.L5
	movs	r1, r7
	movs	r0, r5
	ldr	r3, .L1423+76
	bl	.L5
	b	.L1361
.L1416:
	ldr	r7, .L1423+80
	movs	r3, #0
	str	r0, [sp, #4]
	str	r0, [sp]
	movs	r2, #0
	movs	r0, r7
	movs	r1, #0
	ldr	r7, .L1423+84
	bl	.L7
	movs	r3, #41
	str	r0, [r4, #92]
	ldrb	r3, [r4, r3]
	b	.L1365
.L1417:
	ldr	r7, .L1423+88
	str	r0, [sp, #4]
	str	r0, [sp]
	movs	r3, #0
	movs	r0, r7
	movs	r2, #0
	movs	r1, #0
	ldr	r7, .L1423+84
	bl	.L7
	str	r0, [r4, #96]
	b	.L1367
.L1378:
	movs	r0, r7
	movs	r1, #1
	ldr	r3, .L1423+68
	bl	.L5
	ldr	r0, .L1423+92
	b	.L1415
.L1420:
	ldr	r3, .L1423+96
	movs	r1, #10
	movs	r0, r7
	bl	.L5
	ldr	r3, .L1423+76
	movs	r1, r0
	movs	r0, r5
	str	r3, [sp, #12]
	bl	.L5
	movs	r0, r5
	movs	r1, #16
	ldr	r3, .L1423+68
	bl	.L5
	movs	r0, r7
	ldr	r3, .L1423+100
	movs	r1, #10
	bl	.L5
	movs	r0, r5
	ldr	r3, [sp, #12]
	bl	.L5
	b	.L1361
.L1377:
	ldr	r0, .L1423+104
	b	.L1415
.L1424:
	.align	2
.L1423:
	.word	ClearText
	.word	PutText
	.word	gPlaySt
	.word	EndAllMus
	.word	gBG0TilemapBuffer
	.word	Text_SetCursor
	.word	REW_txtOpenedChest
	.word	GetStringFromIndex
	.word	Text_DrawString
	.word	gBG0TilemapBuffer+140
	.word	Text_SetColor
	.word	gBG0TilemapBuffer+118
	.word	.LC319
	.word	Text_DrawCharacter
	.word	gBG0TilemapBuffer+138
	.word	BG_EnableSync
	.word	Proc_End
	.word	Text_Skip
	.word	REW_phaseGreen
	.word	Text_DrawNumber
	.word	REW_upArrowAPDef
	.word	APProc_Create
	.word	REW_downArrowAPDef
	.word	REW_phaseRed
	.word	__aeabi_idiv
	.word	__aeabi_idivmod
	.word	REW_phaseBlue
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
	push	{r4, r5, r6, lr}
	ldrh	r3, [r0, #2]
	movs	r5, r0
	adds	r4, r0, #4
	movs	r2, #3
	adds	r0, r0, r3
	cmp	r3, #0
	beq	.L1425
	movs	r1, r2
	ldrh	r3, [r4, #2]
	ands	r1, r3
	tst	r2, r3
	beq	.L1427
.L1456:
	adds	r3, r3, #4
	subs	r3, r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
.L1427:
	adds	r3, r4, r3
	cmp	r3, r0
	bcs	.L1428
.L1457:
	cmp	r3, #0
	beq	.L1428
	movs	r4, r3
	movs	r1, r2
	ldrh	r3, [r4, #2]
	ands	r1, r3
	tst	r2, r3
	bne	.L1456
	adds	r3, r4, r3
	cmp	r3, r0
	bcc	.L1457
.L1428:
	ldr	r6, .L1458
.L1441:
	ldrb	r3, [r4]
	cmp	r3, #75
	bhi	.L1430
	lsls	r3, r3, #2
	ldr	r3, [r6, r3]
	mov	pc, r3
	.section	.rodata
	.align	2
.L1432:
	.word	.L1430
	.word	.L1430
	.word	.L1437
	.word	.L1430
	.word	.L1430
	.word	.L1430
	.word	.L1430
	.word	.L1430
	.word	.L1430
	.word	.L1430
	.word	.L1430
	.word	.L1430
	.word	.L1430
	.word	.L1430
	.word	.L1430
	.word	.L1430
	.word	.L1430
	.word	.L1430
	.word	.L1430
	.word	.L1430
	.word	.L1440
	.word	.L1430
	.word	.L1430
	.word	.L1430
	.word	.L1430
	.word	.L1430
	.word	.L1430
	.word	.L1430
	.word	.L1430
	.word	.L1430
	.word	.L1430
	.word	.L1430
	.word	.L1430
	.word	.L1430
	.word	.L1430
	.word	.L1430
	.word	.L1430
	.word	.L1430
	.word	.L1430
	.word	.L1430
	.word	.L1430
	.word	.L1430
	.word	.L1430
	.word	.L1430
	.word	.L1430
	.word	.L1430
	.word	.L1430
	.word	.L1430
	.word	.L1430
	.word	.L1430
	.word	.L1430
	.word	.L1430
	.word	.L1430
	.word	.L1430
	.word	.L1430
	.word	.L1430
	.word	.L1430
	.word	.L1430
	.word	.L1430
	.word	.L1430
	.word	.L1430
	.word	.L1430
	.word	.L1430
	.word	.L1430
	.word	.L1439
	.word	.L1438
	.word	.L1437
	.word	.L1436
	.word	.L1436
	.word	.L1435
	.word	.L1434
	.word	.L1430
	.word	.L1430
	.word	.L1430
	.word	.L1433
	.word	.L1431
	.text
.L1439:
	movs	r0, r4
	bl	REW_undoPhaseChange
.L1430:
	movs	r1, r4
	movs	r0, r5
	bl	REW_prevEntry
	subs	r4, r0, #0
	bne	.L1441
.L1425:
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L1436:
	ldrb	r0, [r4, #1]
	ldr	r3, .L1458+4
	bl	.L5
	cmp	r0, #0
	beq	.L1430
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L1430
	ldr	r3, .L1458+8
	bl	.L5
	movs	r1, r4
	movs	r0, r5
	bl	REW_prevEntry
	subs	r4, r0, #0
	bne	.L1441
	b	.L1425
.L1437:
	movs	r0, r4
	bl	REW_undoCombat
	movs	r1, r4
	movs	r0, r5
	bl	REW_prevEntry
	subs	r4, r0, #0
	bne	.L1441
	b	.L1425
.L1440:
	movs	r0, r4
	bl	REW_undoChestOpened
	movs	r1, r4
	movs	r0, r5
	bl	REW_prevEntry
	subs	r4, r0, #0
	bne	.L1441
	b	.L1425
.L1438:
	movs	r0, r4
	bl	REW_undoObstacleCombat
	movs	r1, r4
	movs	r0, r5
	bl	REW_prevEntry
	subs	r4, r0, #0
	bne	.L1441
	b	.L1425
.L1431:
	movs	r0, r4
	bl	REW_undoUnitMove
	movs	r1, r4
	movs	r0, r5
	bl	REW_prevEntry
	subs	r4, r0, #0
	bne	.L1441
	b	.L1425
.L1435:
	movs	r0, r4
	movs	r1, #1
	bl	REW_doInventoryReorder
	movs	r1, r4
	movs	r0, r5
	bl	REW_prevEntry
	subs	r4, r0, #0
	bne	.L1441
	b	.L1425
.L1433:
	movs	r0, r4
	bl	REW_undoUnitSupplyExchange
	movs	r1, r4
	movs	r0, r5
	bl	REW_prevEntry
	subs	r4, r0, #0
	bne	.L1441
	b	.L1425
.L1434:
	movs	r0, r4
	bl	REW_undoItemObtainedUnit
	movs	r1, r4
	movs	r0, r5
	bl	REW_prevEntry
	subs	r4, r0, #0
	beq	.LCB9172
	b	.L1441	@long jump
.LCB9172:
	b	.L1425
.L1459:
	.align	2
.L1458:
	.word	.L1432
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
	push	{r3, r4, r5, r6, r7, lr}
	movs	r5, r0
	movs	r6, #3
	ldr	r7, .L1479
	adds	r4, r0, #4
.L1474:
	ldrb	r3, [r4]
	cmp	r3, #75
	bhi	.L1461
	lsls	r3, r3, #2
	ldr	r3, [r7, r3]
	mov	pc, r3
	.section	.rodata
	.align	2
.L1463:
	.word	.L1461
	.word	.L1461
	.word	.L1468
	.word	.L1461
	.word	.L1461
	.word	.L1461
	.word	.L1461
	.word	.L1461
	.word	.L1461
	.word	.L1461
	.word	.L1461
	.word	.L1461
	.word	.L1461
	.word	.L1461
	.word	.L1461
	.word	.L1461
	.word	.L1461
	.word	.L1461
	.word	.L1461
	.word	.L1461
	.word	.L1471
	.word	.L1461
	.word	.L1461
	.word	.L1461
	.word	.L1461
	.word	.L1461
	.word	.L1461
	.word	.L1461
	.word	.L1461
	.word	.L1461
	.word	.L1461
	.word	.L1461
	.word	.L1461
	.word	.L1461
	.word	.L1461
	.word	.L1461
	.word	.L1461
	.word	.L1461
	.word	.L1461
	.word	.L1461
	.word	.L1461
	.word	.L1461
	.word	.L1461
	.word	.L1461
	.word	.L1461
	.word	.L1461
	.word	.L1461
	.word	.L1461
	.word	.L1461
	.word	.L1461
	.word	.L1461
	.word	.L1461
	.word	.L1461
	.word	.L1461
	.word	.L1461
	.word	.L1461
	.word	.L1461
	.word	.L1461
	.word	.L1461
	.word	.L1461
	.word	.L1461
	.word	.L1461
	.word	.L1461
	.word	.L1461
	.word	.L1470
	.word	.L1469
	.word	.L1468
	.word	.L1467
	.word	.L1467
	.word	.L1466
	.word	.L1465
	.word	.L1461
	.word	.L1461
	.word	.L1461
	.word	.L1464
	.word	.L1462
	.text
.L1470:
	movs	r0, r4
	bl	REW_redoPhaseChange
.L1461:
	movs	r2, r6
	ldrh	r3, [r4, #2]
	ands	r2, r3
	tst	r6, r3
	beq	.L1472
	adds	r3, r3, #4
	subs	r3, r3, r2
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
.L1472:
	adds	r4, r4, r3
	ldrh	r3, [r5, #2]
	adds	r3, r5, r3
	cmp	r4, r3
	bcs	.L1460
	cmp	r4, #0
	bne	.L1474
.L1460:
	@ sp needed
	pop	{r3, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L1467:
	ldr	r3, .L1479+4
	adds	r0, r4, #4
	bl	.L5
	b	.L1461
.L1468:
	movs	r0, r4
	bl	REW_redoCombat
	b	.L1461
.L1471:
	movs	r0, r4
	bl	REW_redoChestOpened
	b	.L1461
.L1469:
	movs	r0, r4
	bl	REW_redoObstacleCombat
	b	.L1461
.L1462:
	movs	r0, r4
	bl	REW_redoUnitMove
	b	.L1461
.L1466:
	movs	r1, #0
	movs	r0, r4
	bl	REW_doInventoryReorder
	b	.L1461
.L1464:
	movs	r0, r4
	bl	REW_redoUnitSupplyExchange
	b	.L1461
.L1465:
	movs	r0, r4
	bl	REW_redoItemObtainedUnit
	b	.L1461
.L1480:
	.align	2
.L1479:
	.word	.L1463
	.word	LoadUnit
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
	ldr	r5, .L1548
	ldrb	r3, [r5, #15]
	mov	r8, r3
	ldr	r3, .L1548+4
	ldr	r3, [r3]
	ldrh	r3, [r3, #6]
	movs	r4, r0
	ldrh	r7, [r5, #16]
	lsls	r2, r3, #25
	bpl	.L1482
	movs	r2, #41
	ldrb	r2, [r0, r2]
	lsls	r2, r2, #29
	bpl	.L1482
	movs	r3, #65
	ldrb	r3, [r5, r3]
	lsls	r3, r3, #30
	bmi	.LCB9337
	b	.L1540	@long jump
.LCB9337:
.L1483:
	ldr	r3, .L1548+8
	ldr	r3, [r3]
	ldrh	r2, [r3, #2]
	ldr	r0, [r4, #44]
	ldr	r6, .L1548+12
	cmp	r2, #0
	beq	.L1484
	ldr	r2, [r6]
	ldr	r2, [r2, #4]
	cmp	r2, r0
	bne	.LCB9349
	b	.L1541	@long jump
.LCB9349:
.L1484:
	bl	REW_undo
	ldrb	r3, [r5, #15]
	cmp	r3, r8
	beq	.L1485
	movs	r2, #41
	movs	r1, #1
	ldrb	r3, [r4, r2]
	orrs	r3, r1
	strb	r3, [r4, r2]
.L1485:
	ldrh	r3, [r5, #16]
	cmp	r3, r7
	beq	.L1486
	movs	r2, #41
	movs	r1, #2
	ldrb	r3, [r4, r2]
	orrs	r3, r1
	strb	r3, [r4, r2]
.L1486:
	ldr	r2, [r6]
	ldr	r3, [r4, #44]
	adds	r2, r2, #8
	cmp	r3, r2
	bne	.LCB9376
	b	.L1487	@long jump
.LCB9376:
	ldrh	r2, [r3]
	cmp	r2, #0
	bne	.LCB9379
	b	.L1487	@long jump
.LCB9379:
	subs	r3, r3, r2
	movs	r2, #41
	str	r3, [r4, #44]
	ldrh	r3, [r3]
	ldrb	r2, [r4, r2]
	cmp	r3, #0
	bne	.LCB9386
	b	.L1542	@long jump
.LCB9386:
.L1488:
	movs	r3, #8
	orrs	r2, r3
	movs	r3, #41
	strb	r2, [r4, r3]
.L1539:
	movs	r0, r4
	bl	REW_refreshUI
	ldr	r3, .L1548+16
	bl	.L5
	ldr	r3, .L1548+20
	bl	.L5
	b	.L1481
.L1482:
	lsls	r2, r3, #24
	bpl	.L1490
	movs	r2, #41
	ldrb	r2, [r4, r2]
	lsls	r2, r2, #28
	bpl	.L1490
	movs	r3, #65
	ldrb	r3, [r5, r3]
	lsls	r3, r3, #30
	bmi	.LCB9425
	b	.L1543	@long jump
.LCB9425:
.L1491:
	ldr	r6, .L1548+12
	ldr	r3, [r6]
	ldr	r0, [r4, #44]
	ldr	r3, [r3, #4]
	cmp	r0, r3
	bne	.LCB9432
	b	.L1509	@long jump
.LCB9432:
	ldrh	r3, [r0, #2]
	adds	r0, r0, r3
.L1492:
	str	r0, [r4, #44]
	bl	REW_redo
	ldr	r3, .L1548+8
	ldr	r0, [r3]
	ldr	r3, [r6]
	ldr	r1, [r3, #4]
	ldrh	r3, [r0, #2]
	ldr	r2, [r4, #44]
	cmp	r3, #0
	bne	.LCB9446
	b	.L1493	@long jump
.LCB9446:
	cmp	r2, r1
	bcc	.LCB9448
	b	.L1494	@long jump
.LCB9448:
	movs	r3, #41
	ldrb	r0, [r5, #15]
	ldrb	r3, [r4, r3]
	cmp	r0, r8
	bne	.LCB9453
	b	.L1544	@long jump
.LCB9453:
.L1495:
	movs	r0, #1
	orrs	r3, r0
.L1498:
	ldrh	r0, [r5, #16]
	cmp	r0, r7
	beq	.L1499
.L1496:
	movs	r0, #2
	orrs	r3, r0
.L1499:
	cmp	r1, r2
	bhi	.L1497
	movs	r2, #8
	bics	r3, r2
.L1497:
	movs	r2, #4
	orrs	r3, r2
	movs	r2, #41
	strb	r3, [r4, r2]
	b	.L1539
.L1490:
	movs	r2, #2
	tst	r2, r3
	beq	.L1500
	movs	r3, #65
	ldrb	r3, [r5, r3]
	tst	r2, r3
	beq	.L1545
.L1501:
	ldr	r6, .L1548+12
	ldr	r3, [r6]
	ldr	r0, [r4, #44]
	ldr	r3, [r3, #4]
	cmp	r0, r3
	bcs	.L1505
.L1502:
	ldrh	r3, [r0, #2]
	adds	r0, r0, r3
	str	r0, [r4, #44]
	bl	REW_redo
	ldr	r3, [r6]
	ldr	r0, [r4, #44]
	ldr	r3, [r3, #4]
	cmp	r0, r3
	bcc	.L1502
.L1505:
	ldr	r3, .L1548+8
	ldr	r0, [r3]
	ldrh	r3, [r0, #2]
	cmp	r3, #0
	bne	.L1546
.L1504:
	ldr	r3, .L1548+16
	bl	.L5
	ldr	r3, .L1548+20
	bl	.L5
	movs	r1, #3
	movs	r0, r4
	ldr	r3, .L1548+24
	bl	.L5
.L1481:
	@ sp needed
	pop	{r7}
	mov	r8, r7
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L1500:
	lsls	r3, r3, #31
	bpl	.L1481
	movs	r3, #65
	ldrb	r3, [r5, r3]
	tst	r2, r3
	beq	.L1547
.L1507:
	movs	r1, #3
	ldr	r3, .L1548+24
	movs	r0, r4
	bl	.L5
	ldr	r2, .L1548+12
	ldr	r2, [r2]
	ldr	r3, [r4, #44]
	ldr	r1, [r2, #4]
	cmp	r3, r1
	bcs	.L1481
	movs	r0, #2
	ldr	r1, .L1548+8
	ldr	r1, [r1]
	rsbs	r0, r0, #0
	strh	r0, [r1]
	str	r3, [r2, #4]
	ldrh	r1, [r3, #2]
	subs	r3, r3, r2
	adds	r3, r1, r3
	str	r3, [r2]
	ldr	r3, .L1548+28
	bl	.L5
	b	.L1481
.L1545:
	movs	r0, #107
	ldr	r3, .L1548+32
	bl	.L5
	b	.L1501
.L1546:
	bl	REW_redo
	b	.L1504
.L1540:
	movs	r0, #102
	ldr	r3, .L1548+32
	bl	.L5
	b	.L1483
.L1542:
	adds	r3, r3, #4
	bics	r2, r3
	b	.L1488
.L1494:
	bl	REW_redo
	ldr	r3, [r6]
	ldr	r2, [r4, #44]
	ldr	r1, [r3, #4]
.L1493:
	movs	r3, #41
	ldrb	r0, [r5, #15]
	ldrb	r3, [r4, r3]
	cmp	r0, r8
	beq	.LCB9622
	b	.L1495	@long jump
.LCB9622:
	b	.L1498
.L1543:
	movs	r0, #102
	ldr	r3, .L1548+32
	bl	.L5
	b	.L1491
.L1541:
	movs	r0, r3
	bl	REW_undo
	ldr	r0, [r4, #44]
	b	.L1484
.L1544:
	ldrh	r0, [r5, #16]
	cmp	r0, r7
	beq	.LCB9643
	b	.L1496	@long jump
.LCB9643:
	b	.L1497
.L1547:
	movs	r0, #106
	ldr	r3, .L1548+32
	bl	.L5
	b	.L1507
.L1509:
	movs	r0, #0
	b	.L1492
.L1487:
	movs	r3, #0
	str	r3, [r4, #44]
	ldrh	r3, [r3]
	.inst	0xdeff
.L1549:
	.align	2
.L1548:
	.word	gPlaySt
	.word	gKeyStatusPtr
	.word	REW_curSequence
	.word	REW_rewindBuffer
	.word	RefreshEntityBmMaps
	.word	RefreshUnitSprites
	.word	Proc_Goto
	.word	PlayerPhase_Suspend
	.word	m4aSongNumStart
	.size	REW_handleInput, .-REW_handleInput
	.global	REW_procScr
	.section	.rodata.str1.4
	.align	2
.LC351:
	.ascii	"REW_proc\000"
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
	.type	REW_procScr, %object
	.size	REW_procScr, 96
REW_procScr:
	.short	1
	.short	0
	.word	.LC351
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
.L645:
	bx	r2
.L5:
	bx	r3
.L238:
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
.L285:
	bx	fp
