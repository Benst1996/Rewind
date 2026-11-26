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
	ldr	r4, .L81
	add	sp, sp, r4
	str	r1, [sp, #4]
	ldrh	r5, [r1, #2]
	ands	r2, r5
	mov	r8, r0
	movs	r4, r5
	str	r2, [sp, #12]
	tst	r3, r5
	beq	.L55
	adds	r4, r5, #4
	subs	r4, r4, r2
	lsls	r4, r4, #16
	lsrs	r4, r4, #16
.L55:
	ldr	r3, [sp, #4]
	mov	ip, r3
	mov	r3, r8
	ldrh	r3, [r3, #2]
	add	r4, r4, ip
	add	r3, r3, r8
	cmp	r4, r3
	bcs	.L54
	cmp	r4, #0
	beq	.L54
	add	r3, sp, #16
	mov	r10, r3
	ldr	r3, .L81+4
	mov	r9, r3
	movs	r3, #128
	lsls	r3, r3, #19
	movs	r7, #0
	movs	r6, #3
	mov	fp, r3
	str	r5, [sp, #8]
	b	.L62
.L79:
	cmp	r4, #0
	beq	.L61
.L62:
	movs	r3, r6
	ldrh	r5, [r4, #2]
	ands	r3, r5
	tst	r6, r5
	beq	.L59
	movs	r2, #4
	subs	r3, r2, r3
	adds	r5, r5, r3
.L59:
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
	beq	.L60
	adds	r3, r3, #4
	subs	r3, r3, r2
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
.L60:
	adds	r4, r4, r3
	mov	r3, r8
	ldrh	r3, [r3, #2]
	add	r3, r3, r8
	cmp	r4, r3
	bcc	.L79
.L61:
	ldr	r5, [sp, #8]
	cmp	r7, #0
	ble	.L54
	movs	r2, #128
	lsls	r7, r7, #9
	lsrs	r7, r7, #11
	lsls	r2, r2, #19
	mov	r0, r10
	ldr	r1, [sp, #4]
	orrs	r2, r7
	bl	.L9
	ldr	r3, [sp, #12]
	cmp	r3, #0
	bne	.L80
.L63:
	mov	r3, r8
	mov	r2, r8
	ldrh	r3, [r3, #2]
	subs	r3, r3, r5
	strh	r3, [r2, #2]
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
.L80:
	subs	r3, r5, r3
	adds	r3, r3, #4
	lsls	r3, r3, #16
	lsrs	r5, r3, #16
	b	.L63
.L82:
	.align	2
.L81:
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
	ldr	r2, .L91
	ldr	r4, [r2]
	ldr	r2, .L91+4
	ldrh	r1, [r4, #2]
	movs	r3, r0
	cmp	r1, r2
	beq	.L84
	ldr	r2, .L91+8
	adds	r0, r1, #4
	lsls	r2, r2, #16
	adds	r0, r0, r3
	lsrs	r2, r2, #16
	cmp	r0, r2
	bgt	.L89
	subs	r0, r1, #0
	beq	.L90
.L87:
	adds	r3, r3, #4
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	adds	r0, r4, r0
	strh	r3, [r0, #2]
	adds	r3, r3, r1
	strh	r3, [r4, #2]
.L83:
	@ sp needed
	pop	{r4}
	pop	{r1}
	bx	r1
.L90:
	movs	r0, #4
	movs	r1, #4
	b	.L87
.L89:
	movs	r3, #1
	rsbs	r3, r3, #0
	strh	r3, [r4, #2]
.L84:
	movs	r0, #0
	b	.L83
.L92:
	.align	2
.L91:
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
	ldr	r3, .L98
	ldr	r4, [r3]
	ldr	r2, .L98+4
	ldrh	r3, [r4, #2]
	cmp	r3, r2
	beq	.L94
	ldr	r2, .L98+8
	adds	r3, r3, r1
	lsls	r2, r2, #16
	lsrs	r2, r2, #16
	cmp	r3, r2
	bgt	.L97
	strh	r3, [r4, #2]
	ldrh	r3, [r0, #2]
	adds	r1, r1, r3
	strh	r1, [r0, #2]
	movs	r0, #1
.L96:
	@ sp needed
	pop	{r4}
	pop	{r1}
	bx	r1
.L97:
	movs	r3, #1
	rsbs	r3, r3, #0
	strh	r3, [r4, #2]
.L94:
	movs	r0, #0
	b	.L96
.L99:
	.align	2
.L98:
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
	ldr	r3, .L109
	ldr	r5, [r3]
	ldr	r2, .L109+4
	ldrh	r3, [r5, #2]
	cmp	r3, r2
	beq	.L100
	movs	r4, #3
	movs	r6, #0
	ldr	r1, .L109+8
	ands	r4, r3
	subs	r0, r3, r4
	adds	r0, r0, #4
	lsls	r1, r1, #16
	lsrs	r1, r1, #16
	lsrs	r2, r0, #31
	cmp	r1, r0
	adcs	r2, r2, r6
	lsls	r2, r2, #24
	beq	.L100
	cmp	r4, #0
	bne	.L108
.L100:
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L108:
	adds	r3, r3, #4
	subs	r3, r3, r4
	strh	r3, [r5, #2]
	b	.L100
.L110:
	.align	2
.L109:
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
	ldr	r3, .L114
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	cmp	r3, r0
	beq	.L113
	ldrh	r3, [r0, #2]
	adds	r0, r0, r3
.L112:
	@ sp needed
	bx	lr
.L113:
	movs	r0, #0
	b	.L112
.L115:
	.align	2
.L114:
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
	ldr	r3, .L120
	ldr	r3, [r3]
	adds	r3, r3, #8
	cmp	r0, r3
	beq	.L119
	ldrh	r3, [r0]
	cmp	r3, #0
	beq	.L119
	subs	r0, r0, r3
.L116:
	@ sp needed
	bx	lr
.L119:
	movs	r0, #0
	b	.L116
.L121:
	.align	2
.L120:
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
	beq	.L123
	adds	r2, r2, #4
	subs	r2, r2, r4
	lsls	r2, r2, #16
	lsrs	r2, r2, #16
.L123:
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
	beq	.L130
	adds	r0, r0, #4
	subs	r0, r0, r5
	lsls	r0, r0, #16
	lsrs	r0, r0, #16
.L130:
	ldrh	r4, [r2, #2]
	adds	r0, r3, r0
	adds	r2, r2, r4
	cmp	r0, r2
	sbcs	r4, r4, r4
	ands	r0, r4
	cmp	r3, r1
	beq	.L137
	cmp	r1, r0
	beq	.L138
	movs	r4, #3
	b	.L135
.L139:
	movs	r0, r3
.L135:
	movs	r5, r4
	ldrh	r3, [r0, #2]
	ands	r5, r3
	tst	r4, r3
	beq	.L133
	adds	r3, r3, #4
	subs	r3, r3, r5
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
.L133:
	adds	r3, r0, r3
	cmp	r3, r2
	sbcs	r5, r5, r5
	ands	r3, r5
	cmp	r1, r3
	bne	.L139
.L129:
	@ sp needed
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.L138:
	movs	r0, r3
	b	.L129
.L137:
	movs	r0, #0
	b	.L129
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
	beq	.L147
.L155:
	adds	r3, r3, #4
	subs	r3, r3, r4
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
.L147:
	adds	r3, r0, r3
	cmp	r3, r1
	bcs	.L146
.L156:
	cmp	r3, #0
	beq	.L146
	movs	r0, r3
	movs	r4, r2
	ldrh	r3, [r0, #2]
	ands	r4, r3
	tst	r2, r3
	bne	.L155
	adds	r3, r0, r3
	cmp	r3, r1
	bcc	.L156
.L146:
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
	ldr	r3, .L159
	@ sp needed
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	cmp	r0, r3
	sbcs	r0, r0, r0
	rsbs	r0, r0, #0
	bx	lr
.L160:
	.align	2
.L159:
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
	beq	.L161
	movs	r7, #0
	movs	r6, #0
	b	.L168
.L164:
	cmp	r5, #17
	beq	.L166
	movs	r5, r6
	ands	r5, r7
.L165:
	cmp	r5, #0
	bne	.L161
	adds	r4, r4, #2
	adds	r0, r0, #2
	cmp	r1, r4
	ble	.L161
.L168:
	ldrb	r5, [r0]
	cmp	r5, #16
	bne	.L164
	ldrb	r5, [r0, #1]
	strb	r5, [r2]
	ldrb	r5, [r0]
	cmp	r5, #17
	beq	.L171
	movs	r5, r7
	movs	r6, #1
	b	.L165
.L166:
	ldrb	r5, [r0, #1]
	movs	r7, #1
	strb	r5, [r3]
	movs	r5, r6
	b	.L165
.L171:
	ldrb	r2, [r0, #1]
	strb	r2, [r3]
.L161:
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
	beq	.L176
	movs	r0, #0
	cmp	r2, #1
	beq	.L177
.L174:
	@ sp needed
	pop	{r4}
	pop	{r1}
	bx	r1
.L176:
	bl	REW_getUnitID.part.0
	b	.L174
.L177:
	movs	r2, #1
	ldr	r1, .L178
	ldrsb	r2, [r3, r2]
	ldr	r1, [r1]
	ldrb	r3, [r3]
	lsls	r2, r2, #2
	ldr	r2, [r2, r1]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	ldrb	r0, [r2, r3]
	b	.L174
.L179:
	.align	2
.L178:
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
	ldr	r5, .L190
	ldr	r6, .L190+4
.L182:
	movs	r0, r4
	bl	.L6
	cmp	r0, #0
	beq	.L181
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L181
	movs	r3, #17
	movs	r2, #16
	ldrsb	r3, [r0, r3]
	ldr	r1, [r6]
	lsls	r3, r3, #2
	ldrsb	r2, [r0, r2]
	ldr	r3, [r3, r1]
	ldrb	r3, [r3, r2]
	cmp	r3, #34
	bne	.L181
	ldr	r3, [r0, #12]
	orrs	r3, r7
	str	r3, [r0, #12]
.L181:
	adds	r4, r4, #1
	cmp	r4, #192
	bne	.L182
	@ sp needed
	pop	{r3, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L191:
	.align	2
.L190:
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
	ldr	r2, .L193
	ldr	r3, .L193+4
	bl	.L5
	movs	r1, r4
	movs	r0, r5
	ldr	r3, .L193+8
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
.L194:
	.align	2
.L193:
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
	ldr	r3, .L201
	movs	r4, r0
	bl	.L5
	movs	r2, r0
	adds	r2, r2, #200
	b	.L198
.L196:
	adds	r0, r0, #2
	cmp	r2, r0
	beq	.L200
.L198:
	ldrh	r3, [r0]
	cmp	r3, r4
	bne	.L196
	movs	r3, #0
	strh	r3, [r0]
	movs	r0, #0
.L195:
	@ sp needed
	pop	{r4}
	pop	{r1}
	bx	r1
.L200:
	movs	r0, #1
	rsbs	r0, r0, #0
	b	.L195
.L202:
	.align	2
.L201:
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
	ldr	r3, .L206
	movs	r4, r0
	ldrb	r2, [r0, #6]
	ldrb	r1, [r0, #5]
	ldrb	r0, [r0, #4]
	bl	.L5
	cmp	r0, #0
	beq	.L204
	ldrb	r3, [r0, #3]
	ldrb	r2, [r4, #7]
	subs	r3, r3, r2
	strb	r3, [r0, #3]
.L203:
	@ sp needed
	pop	{r4}
	pop	{r0}
	bx	r0
.L204:
	ldrb	r1, [r4, #5]
	ldrb	r0, [r4, #4]
	ldr	r3, .L206+4
	bl	.L5
	lsls	r0, r0, #16
	movs	r2, #0
	movs	r1, #0
	ldr	r3, .L206+8
	lsrs	r0, r0, #16
	bl	.L5
	ldrb	r3, [r4, #7]
	ldrb	r2, [r4, #6]
	ldrb	r1, [r4, #5]
	ldrb	r0, [r4, #4]
	rsbs	r3, r3, #0
	ldr	r4, .L206+12
	bl	.L208
	b	.L203
.L207:
	.align	2
.L206:
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
	ldr	r3, .L212
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
	beq	.L211
.L209:
	@ sp needed
	pop	{r4}
	pop	{r0}
	bx	r0
.L211:
	ldr	r3, .L212+4
	bl	.L5
	ldrb	r1, [r4, #5]
	ldrb	r0, [r4, #4]
	ldr	r3, .L212+8
	bl	.L5
	lsls	r0, r0, #16
	movs	r2, #0
	movs	r1, #0
	ldr	r3, .L212+12
	lsrs	r0, r0, #16
	bl	.L5
	b	.L209
.L213:
	.align	2
.L212:
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
	bne	.LCB1397
	b	.L247	@long jump
.LCB1397:
	movs	r3, #63
	mov	r2, r9
	bics	r2, r3
	cmp	r2, #192
	beq	.L248
	subs	r7, r7, #4
	adds	r5, r0, #4
	lsls	r1, r7, #16
	lsrs	r1, r1, #16
	movs	r0, r5
	bl	REW_getUnitID.part.0
	ldr	r3, .L253
	bl	.L5
	subs	r4, r0, #0
	beq	.L214
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L214
.L216:
	mov	r3, r8
	lsrs	r7, r3, #31
	add	r7, r7, r8
	movs	r6, #0
	asrs	r7, r7, #1
	adds	r5, r5, #2
	cmp	r3, #1
	ble	.L230
	ldr	r3, .L253+4
	mov	r8, r3
	b	.L229
.L250:
	cmp	r3, #28
	beq	.L249
.L226:
	ldrb	r2, [r4, r3]
	ldrb	r1, [r5, #1]
	subs	r2, r2, r1
	strb	r2, [r4, r3]
.L227:
	adds	r6, r6, #1
	adds	r5, r5, #2
	cmp	r7, r6
	ble	.L230
.L229:
	ldrb	r3, [r5]
	cmp	r3, #71
	bls	.L250
	cmp	r3, #87
	bls	.L251
	cmp	r3, #88
	bne	.L227
	ldr	r3, .L253+8
	ldrb	r0, [r4, #28]
	bl	.L5
	ldrb	r2, [r5, #1]
	ldrb	r3, [r0, #6]
	adds	r6, r6, #1
	subs	r3, r3, r2
	strb	r3, [r0, #6]
	adds	r5, r5, #2
	cmp	r7, r6
	bgt	.L229
.L230:
	movs	r3, #17
	ldr	r2, .L253+12
	ldr	r1, [r2]
	movs	r2, #16
	ldrsb	r3, [r4, r3]
	lsls	r3, r3, #2
	ldr	r3, [r3, r1]
	ldrsb	r2, [r4, r2]
	ldrb	r1, [r4, #11]
	strb	r1, [r3, r2]
.L214:
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
.L251:
	ldr	r3, [r4]
	ldrb	r0, [r3, #4]
	bl	.L10
	ldrb	r3, [r5]
	subs	r3, r3, #72
	ldrb	r2, [r0, r3]
	ldrb	r1, [r5, #1]
	subs	r2, r2, r1
	strb	r2, [r0, r3]
	b	.L227
.L249:
	movs	r3, #0
	ldrb	r0, [r5, #1]
	rsbs	r0, r0, #0
	lsls	r0, r0, #24
	strb	r3, [r4, #28]
	lsrs	r0, r0, #24
	ldr	r3, .L253+8
	bl	.L5
	mov	r9, r0
	ldr	r3, .L253+16
	bl	.L5
	mov	r2, r9
	ldrb	r3, [r4, #16]
	strb	r3, [r2]
	ldrb	r3, [r4, #17]
	strb	r3, [r2, #1]
	ldrb	r3, [r5]
	b	.L226
.L248:
	mov	r0, r9
	ldr	r3, .L253
	bics	r0, r2
	bl	.L5
	subs	r4, r0, #0
	beq	.L214
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L214
	ldr	r3, .L253+20
	bl	.L5
	mov	r9, r0
	cmp	r0, #0
	ble	.L252
	ldr	r3, .L253+24
	mov	r10, r3
	ldr	r3, .L253+28
	mov	fp, r3
	movs	r3, #50
	mov	ip, r3
	add	ip, ip, r4
	mov	r3, ip
	movs	r7, #0
	str	r3, [sp, #4]
	adds	r6, r6, #4
.L221:
	movs	r1, r7
	movs	r0, r4
	bl	.L8
	subs	r5, r0, #0
	beq	.L222
	ldr	r3, [r4]
	ldrb	r1, [r3, #4]
	bl	.L255
	ldrb	r3, [r6, r7]
	ldr	r2, [sp, #4]
	adds	r5, r5, r0
	adds	r5, r5, #50
	strb	r3, [r5]
	strb	r3, [r2, r7]
.L222:
	adds	r7, r7, #1
	cmp	r9, r7
	bne	.L221
.L223:
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
	b	.L216
.L247:
	ldrb	r0, [r0, #6]
	lsls	r0, r0, #29
	lsrs	r0, r0, #30
	ldr	r3, .L253+32
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
	b	.L216
.L252:
	adds	r6, r6, #4
	b	.L223
.L254:
	.align	2
.L253:
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
	bne	.LCB1658
	b	.L282	@long jump
.LCB1658:
	movs	r3, #63
	movs	r2, r0
	bics	r2, r3
	cmp	r2, #192
	beq	.L283
	movs	r3, #5
	ldr	r2, .L288
	ldr	r1, [r2]
	movs	r2, #4
	ldrsb	r3, [r5, r3]
	lsls	r3, r3, #2
	ldr	r3, [r3, r1]
	ldrsb	r2, [r5, r2]
	ldrb	r0, [r3, r2]
	ldr	r3, .L288+4
	bl	.L5
	subs	r6, r0, #0
	beq	.L256
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L256
	adds	r3, r5, #4
	mov	r8, r3
.L259:
	lsrs	r7, r4, #31
	adds	r7, r7, r4
	asrs	r7, r7, #1
	cmp	r4, #1
	ble	.L256
	mov	r4, r8
	ldr	r3, .L288+8
	movs	r5, #0
	mov	r8, r3
	adds	r4, r4, #2
	b	.L268
.L285:
	cmp	r3, #28
	beq	.L284
.L264:
	ldrb	r2, [r6, r3]
	ldrb	r1, [r4, #1]
	adds	r2, r2, r1
	strb	r2, [r6, r3]
.L266:
	adds	r5, r5, #1
	adds	r4, r4, #2
	cmp	r7, r5
	ble	.L256
.L268:
	ldrb	r3, [r4]
	cmp	r3, #71
	bls	.L285
	cmp	r3, #87
	bls	.L286
	cmp	r3, #88
	bne	.L266
	ldr	r3, .L288+12
	ldrb	r0, [r6, #28]
	bl	.L5
	ldrb	r2, [r4, #1]
	ldrb	r3, [r0, #6]
	adds	r5, r5, #1
	adds	r3, r3, r2
	strb	r3, [r0, #6]
	adds	r4, r4, #2
	cmp	r7, r5
	bgt	.L268
.L256:
	@ sp needed
	pop	{r6, r7}
	mov	r9, r7
	mov	r8, r6
	pop	{r3, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L286:
	ldr	r3, [r6]
	ldrb	r0, [r3, #4]
	bl	.L10
	ldrb	r3, [r4]
	subs	r3, r3, #72
	ldrb	r2, [r0, r3]
	ldrb	r1, [r4, #1]
	adds	r2, r2, r1
	strb	r2, [r0, r3]
	b	.L266
.L284:
	ldr	r3, .L288+12
	ldrb	r0, [r6, #28]
	bl	.L5
	ldr	r3, .L288+16
	mov	r9, r0
	movs	r0, r6
	bl	.L5
	cmp	r0, #0
	beq	.L287
.L265:
	mov	r2, r9
	ldrb	r3, [r6, #16]
	strb	r3, [r2]
	ldrb	r3, [r6, #17]
	strb	r3, [r2, #1]
	ldrb	r3, [r4]
	b	.L264
.L283:
	ldr	r3, .L288+4
	bics	r0, r2
	bl	.L5
	subs	r6, r0, #0
	beq	.L256
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L256
	ldr	r3, .L288+20
	bl	.L5
	adds	r5, r5, #4
	ldr	r3, .L288+24
	movs	r0, r6
	bl	.L5
	mov	r8, r5
	add	r8, r8, r0
	mov	r3, r8
	ldr	r2, .L288
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
	b	.L259
.L282:
	movs	r3, #1
	ldr	r2, .L288
	ldr	r1, [r2]
	mov	r9, r2
	movs	r2, #7
	adds	r4, r5, #7
	ldrsb	r3, [r4, r3]
	lsls	r3, r3, #2
	ldr	r3, [r3, r1]
	ldrsb	r2, [r5, r2]
	ldrb	r0, [r3, r2]
	ldr	r3, .L288+4
	bl	.L5
	mov	r8, r4
	subs	r6, r0, #0
	beq	.L258
	movs	r3, #0
	str	r3, [r0]
.L258:
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
	b	.L259
.L287:
	mov	r0, r9
	ldr	r3, .L288+28
	bl	.L5
	b	.L265
.L289:
	.align	2
.L288:
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
	ldr	r3, .L340
	movs	r6, r1
	bl	.L5
	mov	r4, sp
	cmp	r0, #0
	beq	.L292
	movs	r2, #8
	mov	r1, sp
	ldr	r3, .L340+4
	bl	.L5
	movs	r2, #11
	ldr	r7, .L340+8
	ldrsb	r2, [r7, r2]
	cmp	r2, #0
	beq	.L292
	movs	r3, #110
	ldrsb	r1, [r6, r3]
	cmp	r1, #0
	beq	.L293
	ldr	r3, [sp, #8]
	lsls	r3, r3, #8
	lsrs	r3, r3, #20
	adds	r3, r3, r1
	movs	r1, #250
	lsls	r1, r1, #4
	cmp	r3, r1
	bgt	.L334
.L294:
	ldr	r1, [r4, #8]
	ldr	r0, .L340+12
	lsls	r3, r3, #20
	lsrs	r3, r3, #8
	ands	r1, r0
	orrs	r3, r1
	str	r3, [r4, #8]
.L293:
	movs	r1, #11
	movs	r3, #192
	ldrsb	r1, [r6, r1]
	tst	r3, r1
	beq	.L295
	ldr	r3, .L340+16
	mov	r8, r3
	ldrb	r3, [r3, #11]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	cmp	r3, r1
	beq	.L296
	cmp	r2, r1
	bne	.LCB1941
	b	.L333	@long jump
.LCB1941:
.L292:
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
.L295:
	movs	r0, #250
	ldrh	r3, [r4, #12]
	lsls	r3, r3, #18
	lsrs	r3, r3, #20
	adds	r3, r3, #1
	lsls	r0, r0, #4
	cmp	r3, r0
	bgt	.L335
.L299:
	lsls	r3, r3, #20
	lsrs	r3, r3, #18
	mov	r8, r3
	ldrh	r0, [r4, #12]
	ldr	r3, .L340+20
	ands	r0, r3
	mov	r3, r8
	orrs	r3, r0
	strh	r3, [r4, #12]
	ldr	r3, .L340+16
	mov	r8, r3
	ldrb	r3, [r3, #11]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	cmp	r3, r1
	beq	.L296
	cmp	r2, r1
	beq	.L333
.L307:
	mov	r3, r8
	ldrb	r3, [r3, #11]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	cmp	r3, r1
	bne	.LCB1999
	b	.L336	@long jump
.LCB1999:
.L308:
	movs	r3, #11
	ldrsb	r3, [r7, r3]
	cmp	r3, r1
	bne	.L292
	mov	r0, r8
	ldr	r3, .L340+24
	bl	.L5
	cmp	r0, #0
	bne	.L292
.L311:
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
	bcs	.L292
	adds	r3, r3, #1
	strb	r3, [r4, #11]
	lsrs	r3, r3, #8
	ands	r3, r1
	bics	r2, r1
	orrs	r2, r3
	strb	r2, [r4, #12]
	b	.L292
.L334:
	movs	r3, r1
	b	.L294
.L335:
	movs	r3, r0
	b	.L299
.L296:
	ldr	r3, .L340+24
	mov	r0, r8
	mov	r9, r3
	bl	.L5
	cmp	r0, #0
	bne	.L337
.L301:
	ldr	r3, .L340+28
	bl	.L5
	cmp	r0, #2
	beq	.L338
	movs	r2, #63
	ldr	r3, .L340+32
	ldrb	r1, [r3, #14]
	ands	r2, r1
	movs	r1, #0
.L304:
	ldrh	r3, [r3, #16]
	lsls	r3, r3, #22
	lsls	r2, r2, #8
	lsrs	r3, r3, #8
	orrs	r3, r2
	ldr	r0, .L340+36
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
	beq	.L339
	mov	r3, r8
	ldr	r3, [r3]
	ldrb	r0, [r3, #4]
.L306:
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
.L302:
	movs	r3, #192
	tst	r3, r1
	beq	.LCB2146
	b	.L292	@long jump
.LCB2146:
	b	.L307
.L333:
	ldr	r3, .L340+24
	mov	r9, r3
.L297:
	movs	r0, r7
	bl	.L9
	cmp	r0, #0
	beq	.L301
	movs	r1, #11
	ldrsb	r1, [r6, r1]
	b	.L302
.L337:
	movs	r1, #11
	movs	r3, #11
	ldrsb	r1, [r6, r1]
	ldrsb	r3, [r7, r3]
	cmp	r3, r1
	bne	.L302
	b	.L297
.L336:
	movs	r0, r7
	ldr	r3, .L340+24
	bl	.L5
	cmp	r0, #0
	bne	.LCB2181
	b	.L311	@long jump
.LCB2181:
	movs	r1, #11
	ldrsb	r1, [r6, r1]
	b	.L308
.L339:
	ldr	r3, [r7]
	ldrb	r0, [r3, #4]
	b	.L306
.L338:
	movs	r2, #63
	ldr	r3, .L340+40
	ldrb	r3, [r3, #17]
	movs	r1, #1
	ands	r2, r3
	ldr	r3, .L340+32
	b	.L304
.L341:
	.align	2
.L340:
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
	ldr	r3, .L393
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
	beq	.L343
	movs	r3, #81
	movs	r2, #72
	ldrb	r3, [r7, r3]
	adds	r3, r3, #12
	ldrh	r2, [r7, r2]
	lsls	r3, r3, #1
	adds	r3, r6, r3
	strh	r2, [r3, #6]
.L343:
	movs	r3, #111
	ldrsb	r1, [r7, r3]
	cmp	r1, #0
	blt	.L344
	movs	r0, r6
	ldr	r3, .L393+4
	bl	.L5
.L344:
	movs	r2, #115
	ldr	r0, [sp, #44]
	ldrb	r2, [r7, r2]
	ldrb	r3, [r6, #18]
	adds	r3, r3, r2
	movs	r2, r0
	strb	r3, [r6, #18]
	ldr	r1, .L393+8
	ldr	r3, [r7, #116]
	ands	r2, r1
	ands	r1, r3
	adds	r2, r2, r1
	ldr	r1, .L393+12
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
	ldr	r3, .L393+16
	bl	.L5
	movs	r0, r7
	ldr	r3, .L393+20
	bl	.L5
	cmp	r0, #0
	ble	.L345
	movs	r3, #80
	ldrb	r3, [r7, r3]
	adds	r3, r6, r3
	adds	r3, r3, #40
	strb	r0, [r3]
.L345:
	movs	r0, r6
	ldr	r3, .L393+24
	bl	.L5
	ldr	r3, [r6, #12]
	orrs	r3, r5
	str	r3, [r6, #12]
	ldr	r3, .L393+28
	ldr	r0, [r3]
	mov	r9, r3
	ldr	r2, .L393+32
	ldrh	r3, [r0, #2]
	mov	ip, r2
	cmp	r3, r2
	bne	.LCB2342
	b	.L342	@long jump
.LCB2342:
	ldr	r2, .L393+36
	lsls	r2, r2, #16
	lsrs	r2, r2, #16
	adds	r3, r3, #2
	mov	r8, r2
	cmp	r3, r2
	ble	.LCB2349
	b	.L388	@long jump
.LCB2349:
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
	b	.L351
.L349:
	adds	r2, r2, #1
	adds	r1, r1, #1
	cmp	r2, #72
	beq	.L389
.L351:
	ldrb	r0, [r4, r2]
	ldrb	r3, [r1]
	subs	r3, r3, r0
	lsls	r3, r3, #24
	lsrs	r0, r3, #24
	mov	fp, r0
	cmp	r3, #0
	beq	.L349
	ldr	r3, [sp]
	ldrh	r3, [r3, #2]
	cmp	r3, ip
	bne	.LCB2388
	b	.L342	@long jump
.LCB2388:
	adds	r3, r3, #2
	ldr	r0, [sp]
	cmp	r8, r3
	blt	.L388
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
	bne	.L351
.L389:
	movs	r4, r7
	mov	r7, r10
	ldr	r3, [r7]
	ldrb	r0, [r3, #4]
	ldr	r3, .L393+40
	bl	.L5
	mov	r10, r0
	cmp	r0, #0
	beq	.L352
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
	ldr	r2, .L393+32
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
	b	.L355
.L353:
	adds	r3, r3, #1
	cmp	r3, #17
	beq	.L390
.L355:
	mov	r2, ip
	ldrb	r1, [r0, r3]
	ldrb	r2, [r2, r3]
	subs	r2, r2, r1
	lsls	r2, r2, #24
	lsrs	r1, r2, #24
	cmp	r2, #0
	beq	.L353
	ldrh	r2, [r7, #2]
	cmp	r2, r10
	beq	.L342
	adds	r2, r2, #2
	cmp	r8, r2
	blt	.L391
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
	bne	.L355
.L390:
	ldr	r3, [sp, #4]
	mov	r7, fp
	mov	r9, r3
	ldr	r5, [sp]
.L352:
	ldrb	r3, [r6, #28]
	cmp	r3, #0
	beq	.L358
	movs	r3, #72
	ldrh	r0, [r7, r3]
	cmp	r0, #0
	bne	.L392
.L358:
	mov	r3, r9
	ldr	r0, [r3]
.L357:
	ldrh	r3, [r0, #2]
	ldr	r2, .L393+32
	cmp	r3, r2
	beq	.L342
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
	beq	.L342
	cmp	r1, #0
	beq	.L342
	adds	r3, r3, #4
	subs	r3, r3, r1
	strh	r3, [r0, #2]
	b	.L342
.L388:
	movs	r3, #1
	rsbs	r3, r3, #0
	strh	r3, [r0, #2]
.L342:
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
.L391:
	movs	r3, #1
	rsbs	r3, r3, #0
	strh	r3, [r7, #2]
	b	.L342
.L392:
	ldr	r3, .L393+44
	bl	.L5
	ldr	r3, .L393+48
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
	beq	.L357
	ldrh	r3, [r0, #2]
	ldr	r1, .L393+32
	cmp	r3, r1
	beq	.L342
	adds	r3, r3, #2
	cmp	r8, r3
	blt	.L388
	strh	r3, [r0, #2]
	ldrh	r3, [r4, #2]
	adds	r3, r3, #2
	strh	r3, [r4, #2]
	movs	r3, #88
	lsls	r5, r5, #1
	adds	r4, r4, r5
	strb	r3, [r4, #6]
	strb	r2, [r4, #7]
	b	.L357
.L394:
	.align	2
.L393:
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
	bne	.L396
	ldr	r3, [r0, #4]
	ldrb	r3, [r3, #4]
	cmp	r3, #81
	beq	.LCB2643
	b	.L449	@long jump
.LCB2643:
.L396:
	movs	r3, #255
	ldr	r6, .L456
	strb	r3, [r5, #1]
	ldr	r0, [r6]
	mov	r9, r3
	ldr	r2, .L456+4
	ldrh	r3, [r0, #2]
	cmp	r3, r2
	bne	.LCB2653
	b	.L395	@long jump
.LCB2653:
	ldr	r2, .L456+8
	adds	r3, r3, #5
	mov	fp, r2
	lsls	r2, r2, #16
	lsrs	r2, r2, #16
	cmp	r3, r2
	ble	.LCB2660
	b	.L450	@long jump
.LCB2660:
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
.L401:
	ldr	r3, .L456+4
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
	b	.L407
.L405:
	adds	r2, r2, #1
	adds	r0, r0, #1
	cmp	r2, #72
	beq	.L451
.L407:
	ldrb	r6, [r4, r2]
	ldrb	r3, [r0]
	subs	r3, r3, r6
	lsls	r3, r3, #24
	lsrs	r6, r3, #24
	cmp	r3, #0
	beq	.L405
	ldrh	r3, [r1, #2]
	cmp	r3, ip
	beq	.L395
	adds	r3, r3, #2
	cmp	r3, r9
	bgt	.L448
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
	bne	.L407
.L451:
	ldr	r3, [r4]
	ldrb	r0, [r3, #4]
	ldr	r3, .L456+12
	bl	.L5
	mov	r6, r8
	mov	r9, r0
	cmp	r0, #0
	bne	.LCB2761
	b	.L408	@long jump
.LCB2761:
	ldr	r1, [sp, #4]
	add	r0, sp, #16
	bl	REW_applyBWLChanges
	movs	r2, #1
	add	r1, sp, #16
	mov	ip, r1
	rsbs	r2, r2, #0
	add	r2, r2, ip
	mov	ip, r2
	ldr	r2, .L456+4
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
	b	.L411
.L409:
	adds	r3, r3, #1
	cmp	r3, #17
	bne	.LCB2791
	b	.L452	@long jump
.LCB2791:
.L411:
	mov	r2, ip
	ldrb	r1, [r0, r3]
	ldrb	r2, [r2, r3]
	subs	r2, r2, r1
	lsls	r2, r2, #24
	lsrs	r1, r2, #24
	cmp	r2, #0
	beq	.L409
	ldrh	r2, [r4, #2]
	cmp	r2, r9
	beq	.L395
	ldr	r6, [sp, #8]
	adds	r2, r2, #2
	cmp	r2, r6
	ble	.LCB2808
	b	.L453	@long jump
.LCB2808:
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
	b	.L409
.L448:
	movs	r3, #1
	rsbs	r3, r3, #0
	strh	r3, [r1, #2]
.L395:
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
.L449:
	movs	r3, #64
	rsbs	r3, r3, #0
	orrs	r3, r1
	strb	r3, [r5, #1]
	ldr	r3, .L456+16
	bl	.L5
	movs	r3, r0
	ldr	r6, .L456
	ldr	r2, [r6]
	mov	r9, r0
	adds	r3, r3, #2
	ldrh	r1, [r2, #2]
	ldr	r0, .L456+4
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	cmp	r1, r0
	beq	.L395
	ldr	r0, .L456+8
	adds	r1, r1, r3
	mov	fp, r0
	lsls	r0, r0, #16
	lsrs	r0, r0, #16
	cmp	r1, r0
	bgt	.L454
	strh	r1, [r2, #2]
	ldrh	r1, [r5, #2]
	adds	r3, r3, r1
	strh	r3, [r5, #2]
	mov	r3, r9
	cmp	r3, #0
	ble	.L403
	ldr	r3, .L456+20
	mov	r10, r3
	ldr	r3, .L456+24
	str	r3, [sp]
	movs	r3, r6
	mov	r6, r9
	mov	r9, r3
	str	r5, [sp, #144]
.L400:
	movs	r1, r7
	movs	r0, r4
	bl	.L8
	subs	r5, r0, #0
	beq	.L402
	ldr	r3, [r4]
	ldrb	r1, [r3, #4]
	ldr	r3, [sp]
	bl	.L5
	mov	r2, r8
	adds	r5, r5, r0
	adds	r5, r5, #50
	ldrb	r3, [r5]
	strb	r3, [r2, r7]
.L402:
	adds	r7, r7, #1
	cmp	r6, r7
	bne	.L400
	mov	r3, r9
	mov	r9, r6
	movs	r6, r3
	ldr	r5, [sp, #144]
.L403:
	mov	r2, r8
	add	r2, r2, r9
	str	r2, [sp]
	ldrb	r3, [r4, #16]
	strb	r3, [r2]
	ldrb	r3, [r4, #17]
	add	r7, sp, #32
	strb	r3, [r2, #1]
	movs	r1, r7
	ldr	r2, .L456+28
	ldr	r3, .L456+32
	movs	r0, r4
	bl	.L5
	ldr	r3, [r7, #12]
	ldr	r2, [sp, #8]
	orrs	r2, r3
	movs	r3, r2
	ldr	r2, .L456+36
	ands	r3, r2
	str	r3, [r7, #12]
	movs	r3, #0
	strb	r3, [r7, #28]
	b	.L401
.L452:
	mov	r6, r10
	ldr	r4, [sp, #12]
.L408:
	ldrb	r3, [r4, #28]
	cmp	r3, #0
	beq	.L414
	movs	r3, #72
	ldr	r2, [sp, #4]
	ldrh	r0, [r2, r3]
	cmp	r0, #0
	bne	.L455
.L414:
	ldr	r1, [r6]
.L413:
	ldrh	r2, [r1, #2]
	ldr	r3, .L456+4
	cmp	r2, r3
	bne	.LCB2962
	b	.L395	@long jump
.LCB2962:
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
	bne	.LCB2979
	b	.L395	@long jump
.LCB2979:
	cmp	r4, #0
	bne	.LCB2984
	b	.L395	@long jump
.LCB2984:
	adds	r2, r2, #4
	subs	r2, r2, r4
	strh	r2, [r1, #2]
	b	.L395
.L450:
	movs	r3, #1
	rsbs	r3, r3, #0
	strh	r3, [r0, #2]
	b	.L395
.L454:
	movs	r3, #1
	rsbs	r3, r3, #0
	strh	r3, [r2, #2]
	b	.L395
.L453:
	movs	r3, #1
	rsbs	r3, r3, #0
	strh	r3, [r4, #2]
	b	.L395
.L455:
	ldr	r3, .L456+40
	bl	.L5
	mov	r9, r0
	ldr	r3, .L456+44
	ldrb	r0, [r4, #28]
	bl	.L5
	mov	r2, r9
	ldrb	r3, [r0, #6]
	subs	r3, r2, r3
	lsls	r3, r3, #24
	ldr	r1, [r6]
	lsrs	r2, r3, #24
	cmp	r3, #0
	beq	.L413
	ldrh	r3, [r1, #2]
	ldr	r0, .L456+4
	cmp	r3, r0
	bne	.LCB3031
	b	.L395	@long jump
.LCB3031:
	mov	r0, fp
	adds	r3, r3, #2
	lsls	r0, r0, #16
	lsrs	r0, r0, #16
	cmp	r3, r0
	ble	.LCB3037
	b	.L448	@long jump
.LCB3037:
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
	b	.L413
.L457:
	.align	2
.L456:
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
	ldr	r7, .L482
	ldr	r3, [r7]
	mov	r10, r3
	ldr	r3, .L482+4
	ldr	r4, .L482+8
	ldrsb	r0, [r3, r0]
	sub	sp, sp, #12
	mov	r8, r3
	bl	.L208
	movs	r5, r0
	movs	r0, #11
	ldr	r3, .L482+12
	ldrsb	r0, [r3, r0]
	mov	r9, r3
	bl	.L208
	ldr	r1, [r7]
	ldr	r2, .L482+16
	ldrh	r3, [r1, #2]
	movs	r6, r0
	cmp	r3, r2
	beq	.L458
	ldr	r4, .L482+20
	adds	r2, r3, #4
	lsls	r4, r4, #16
	lsrs	r4, r4, #16
	cmp	r2, r4
	bgt	.L480
	cmp	r3, #0
	beq	.L471
	lsls	r2, r2, #16
	lsrs	r2, r2, #16
.L462:
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
	bne	.L463
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
.L464:
	ldr	r1, [r7]
	ldr	r2, .L482+16
	ldrh	r3, [r1, #2]
	cmp	r3, r2
	beq	.L458
	adds	r2, r3, #4
	cmp	r4, r2
	blt	.L480
	cmp	r3, #0
	beq	.L472
	adds	r5, r1, r3
	movs	r3, #4
	lsls	r2, r2, #16
	lsrs	r2, r2, #16
	strh	r3, [r5, #2]
	mov	r8, r3
	strh	r2, [r1, #2]
	cmp	r6, #0
	beq	.L468
.L481:
	subs	r3, r3, #2
	strb	r3, [r5]
	mov	r3, r9
	ldrb	r3, [r3, #19]
	lsls	r3, r3, #24
	str	r5, [sp]
	asrs	r3, r3, #24
	beq	.LCB3169
	b	.L469	@long jump
.LCB3169:
	mov	r3, r10
	movs	r2, #5
	mov	r1, r9
	movs	r0, r6
	bl	REW_storeCombatDataDead
.L458:
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
.L471:
	movs	r2, #8
	movs	r3, #4
	b	.L462
.L463:
	str	r3, [sp]
	movs	r2, #3
	mov	r3, r10
	mov	r1, r8
	movs	r0, r5
	bl	REW_storeCombatData
	b	.L464
.L480:
	movs	r3, #1
	rsbs	r3, r3, #0
	strh	r3, [r1, #2]
	b	.L458
.L472:
	movs	r3, #4
	movs	r2, #8
	adds	r5, r1, r3
	movs	r3, #4
	strh	r3, [r5, #2]
	mov	r8, r3
	strh	r2, [r1, #2]
	cmp	r6, #0
	bne	.L481
.L468:
	mov	r3, r9
	movs	r1, #17
	movs	r0, #16
	ldrsb	r1, [r3, r1]
	ldrsb	r0, [r3, r0]
	ldr	r3, .L482+24
	bl	.L5
	movs	r3, #65
	strh	r3, [r5]
	mov	r3, r9
	ldr	r2, .L482+28
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
	ldr	r3, .L482+16
	ldrh	r2, [r1, #2]
	mov	fp, r3
	cmp	r2, r3
	beq	.L458
	adds	r7, r2, #4
	cmp	r4, r7
	blt	.L480
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
	beq	.L458
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
	beq	.L458
	cmp	r5, #0
	beq	.L458
	adds	r2, r2, #8
	subs	r2, r2, r5
	strh	r2, [r1, #2]
	b	.L458
.L469:
	mov	r3, r10
	movs	r2, #0
	mov	r1, r9
	movs	r0, r6
	bl	REW_storeCombatData
	b	.L458
.L483:
	.align	2
.L482:
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
	ldr	r2, .L500
	lsls	r1, r3, #6
	movs	r5, r0
	strb	r1, [r2, #15]
	lsls	r3, r3, #27
	bpl	.L485
	ldrh	r3, [r2, #16]
	subs	r3, r3, #1
	strh	r3, [r2, #16]
.L485:
	ldrh	r3, [r5, #2]
	cmp	r3, #4
	bls	.L484
	movs	r3, #2
	movs	r4, #0
	mov	r8, r3
	ldr	r6, .L500+4
	adds	r7, r5, #4
.L488:
	ldrb	r0, [r7, r4]
	bl	.L11
	cmp	r0, #0
	beq	.L487
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L487
	mov	r2, r8
	ldr	r3, [r0, #12]
	orrs	r3, r2
	str	r3, [r0, #12]
.L487:
	ldrh	r3, [r5, #2]
	adds	r4, r4, #1
	subs	r3, r3, #4
	cmp	r3, r4
	bgt	.L488
.L484:
	@ sp needed
	pop	{r7}
	mov	r8, r7
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L501:
	.align	2
.L500:
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
	ldr	r1, .L518
	lsls	r2, r3, #4
	bics	r2, r0
	strb	r2, [r1, #15]
	lsls	r3, r3, #27
	bpl	.L503
	ldrh	r3, [r1, #16]
	adds	r3, r3, #1
	strh	r3, [r1, #16]
.L503:
	ldrh	r3, [r5, #2]
	cmp	r3, #4
	bls	.L502
	movs	r3, #66
	movs	r4, #0
	mov	r8, r3
	ldr	r6, .L518+4
	adds	r7, r5, #4
.L506:
	ldrb	r0, [r7, r4]
	bl	.L11
	cmp	r0, #0
	beq	.L505
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L505
	mov	r2, r8
	ldr	r3, [r0, #12]
	bics	r3, r2
	str	r3, [r0, #12]
.L505:
	ldrh	r3, [r5, #2]
	adds	r4, r4, #1
	subs	r3, r3, #4
	cmp	r3, r4
	bgt	.L506
.L502:
	@ sp needed
	pop	{r7}
	mov	r8, r7
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L519:
	.align	2
.L518:
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
	beq	.L523
	cmp	r0, #128
	bne	.L525
	movs	r0, #64
	movs	r5, #64
.L521:
	ldr	r3, .L526
	bl	.L5
	cmp	r0, #0
	bne	.L522
	movs	r3, #1
	strb	r3, [r4]
.L522:
	@ sp needed
	movs	r0, r5
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L525:
	ldrb	r3, [r1]
	adds	r3, r3, #1
	movs	r0, #0
	movs	r5, #0
	strb	r3, [r1]
	b	.L521
.L523:
	movs	r0, #128
	movs	r5, #128
	b	.L521
.L527:
	.align	2
.L526:
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
	ldr	r6, .L564
	ldrb	r5, [r6, #15]
	sub	sp, sp, #12
	cmp	r5, #0
	bne	.LCB3537
	b	.L541	@long jump
.LCB3537:
	cmp	r5, #128
	beq	.LCB3539
	b	.L560	@long jump
.LCB3539:
	movs	r0, #64
	movs	r5, #0
	movs	r7, #64
.L529:
	ldr	r3, .L564+4
	bl	.L5
	ldr	r3, .L564+8
	ldr	r1, [r3]
	mov	fp, r3
	ldr	r2, .L564+12
	ldrh	r3, [r1, #2]
	cmp	r3, r2
	beq	.L528
	ldr	r2, .L564+16
	lsls	r2, r2, #16
	lsrs	r2, r2, #16
	movs	r4, r2
	str	r2, [sp, #4]
	adds	r2, r3, #4
	cmp	r2, r4
	ble	.LCB3561
	b	.L561	@long jump
.LCB3561:
	cmp	r3, #0
	bne	.LCB3563
	b	.L543	@long jump
.LCB3563:
	lsls	r2, r2, #16
	lsrs	r2, r2, #16
.L533:
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
	bne	.L534
	ldrb	r3, [r2, #1]
	movs	r2, #32
	orrs	r3, r2
	mov	r2, r8
	strb	r3, [r2, #1]
.L534:
	movs	r3, #0
	mov	r10, r3
	adds	r3, r3, #2
	movs	r5, #1
	mov	r9, r3
	ldr	r7, .L564+20
	b	.L540
.L535:
	adds	r5, r5, #1
	cmp	r5, #64
	beq	.L562
.L538:
	ldrb	r4, [r6, #15]
.L540:
	adds	r4, r4, r5
	movs	r0, r4
	bl	.L7
	cmp	r0, #0
	beq	.L535
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L535
	mov	r2, r9
	ldr	r3, [r0, #12]
	tst	r3, r2
	beq	.L535
	mov	r3, fp
	ldr	r2, [r3]
	ldr	r1, .L564+12
	ldrh	r3, [r2, #2]
	cmp	r3, r1
	beq	.L528
	ldr	r1, [sp, #4]
	cmp	r1, r3
	ble	.L563
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
	bne	.L538
.L562:
	mov	r3, fp
	ldr	r4, [r3]
	ldr	r2, .L564+12
	ldrh	r3, [r4, #2]
	cmp	r3, r2
	beq	.L528
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
	beq	.L528
	cmp	r1, #0
	beq	.L528
	adds	r3, r3, #4
	subs	r3, r3, r1
	strh	r3, [r4, #2]
	b	.L528
.L560:
	movs	r0, #0
	movs	r5, #1
	movs	r7, #0
	b	.L529
.L563:
	movs	r3, #1
	rsbs	r3, r3, #0
	strh	r3, [r2, #2]
.L528:
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
.L543:
	movs	r2, #8
	movs	r3, #4
	b	.L533
.L541:
	movs	r0, #128
	movs	r7, #128
	b	.L529
.L561:
	movs	r3, #1
	rsbs	r3, r3, #0
	strh	r3, [r1, #2]
	b	.L528
.L565:
	.align	2
.L564:
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
	ldr	r3, .L613
	ldrh	r2, [r3, #16]
	sub	sp, sp, #52
	cmp	r2, #1
	bne	.LCB3756
	b	.L566	@long jump
.LCB3756:
	ldrb	r3, [r3, #20]
	cmp	r3, #127
	bls	.LCB3759
	b	.L566	@long jump
.LCB3759:
	movs	r3, #0
	str	r3, [sp, #12]
	adds	r3, r3, #1
	mov	fp, r3
	ldr	r3, .L613+4
	mov	r9, r3
	ldr	r3, .L613+8
	str	r3, [sp, #36]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	mov	r6, fp
	mov	r10, r9
	str	r3, [sp, #44]
	str	r3, [sp, #40]
	b	.L587
.L584:
	adds	r6, r6, #1
	cmp	r6, #64
	bne	.LCB3780
	b	.L566	@long jump
.LCB3780:
.L587:
	movs	r0, r6
	bl	.L8
	subs	r4, r0, #0
	beq	.L584
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L584
	ldr	r3, [r0, #12]
	ldr	r7, .L613+12
	tst	r3, r7
	bne	.L584
	ldr	r3, .L613+16
	str	r3, [sp, #8]
	bl	.L5
	cmp	r0, #4
	bgt	.L584
	movs	r0, r4
	ldr	r3, .L613+20
	bl	.L5
	mov	fp, r0
	cmp	r0, #0
	bgt	.LCB3806
	b	.L571	@long jump
.LCB3806:
	movs	r3, #0
	str	r3, [sp, #16]
	ldr	r3, .L613+24
	mov	r8, r3
	movs	r3, #192
	mov	r9, r3
	ldr	r3, .L613+28
	str	r6, [sp, #24]
	movs	r5, #0
	mov	r6, r8
	str	r3, [sp, #20]
	b	.L583
.L611:
	cmp	r3, #1
	bne	.L574
	ldr	r3, [r4, #12]
	orrs	r1, r3
	lsls	r1, r1, #26
	bpl	.L577
.L574:
	adds	r5, r5, #1
	cmp	fp, r5
	bne	.LCB3833
	b	.L610	@long jump
.LCB3833:
.L583:
	movs	r1, r5
	movs	r0, r4
	bl	.L11
	cmp	r0, #0
	beq	.L574
	ldr	r1, [r0, #12]
	tst	r1, r7
	bne	.L574
	movs	r3, #11
	ldrsb	r3, [r0, r3]
	mov	ip, r3
	mov	r3, r9
	mov	r2, ip
	tst	r3, r2
	bne	.L574
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
	bne	.L611
	ldrb	r3, [r4, #27]
	cmp	ip, r3
	bne	.L574
.L577:
	ldr	r3, [sp, #8]
	bl	.L5
	cmp	r0, #4
	bgt	.L574
	movs	r3, #50
	mov	r8, r3
	add	r8, r8, r4
	mov	r3, r8
	ldrb	r3, [r3, r5]
	ldr	r2, [sp, #20]
	movs	r1, r5
	movs	r0, r4
	str	r3, [sp, #4]
	bl	.L615
	mov	r2, r8
	ldrb	r3, [r2, r5]
	mov	r8, r3
	ldr	r3, [sp, #4]
	cmp	r3, r8
	beq	.L574
	ldr	r3, .L613+32
	ldr	r0, [sp, #12]
	ldr	r1, [r3]
	ldrh	r3, [r1, #2]
	cmp	r0, #0
	bne	.L578
	ldr	r0, .L613+36
	cmp	r3, r0
	beq	.L566
	adds	r2, r3, #6
	mov	ip, r2
	ldr	r2, [sp, #40]
	ldr	r0, [sp, #36]
	cmp	ip, r2
	bgt	.L609
	cmp	r3, #0
	beq	.L612
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
.L578:
	ldr	r0, .L613+36
	cmp	r3, r0
	beq	.L566
	ldr	r0, .L613+8
.L581:
	lsls	r0, r0, #16
	adds	r3, r3, #2
	lsrs	r0, r0, #16
	cmp	r3, r0
	bgt	.L609
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
	beq	.LCB3968
	b	.L583	@long jump
.LCB3968:
.L610:
	ldr	r6, [sp, #24]
.L571:
	ldr	r3, [sp, #12]
	cmp	r3, #0
	bne	.LCB3975
	b	.L584	@long jump
.LCB3975:
	movs	r3, #66
	ldr	r2, [sp, #28]
	strb	r3, [r2]
	strb	r6, [r2, #1]
	ldr	r2, [sp, #32]
	ldrb	r3, [r4, #16]
	strb	r3, [r2]
	ldrb	r3, [r4, #17]
	strb	r3, [r2, #1]
	ldr	r3, .L613+32
	ldr	r1, [r3]
	ldr	r2, .L613+36
	ldrh	r3, [r1, #2]
	cmp	r3, r2
	bne	.LCB3990
	b	.L584	@long jump
.LCB3990:
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
	bne	.LCB4005
	b	.L584	@long jump
.LCB4005:
	cmp	r0, #0
	bne	.LCB4010
	b	.L584	@long jump
.LCB4010:
	adds	r3, r3, #4
	subs	r3, r3, r0
	adds	r6, r6, #1
	strh	r3, [r1, #2]
	cmp	r6, #64
	beq	.LCB4016
	b	.L587	@long jump
.LCB4016:
.L566:
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
.L609:
	movs	r3, #1
	rsbs	r3, r3, #0
	strh	r3, [r1, #2]
	b	.L566
.L612:
	adds	r3, r1, #4
	movs	r2, r3
	str	r3, [sp, #28]
	movs	r3, #6
	strh	r3, [r2, #2]
	adds	r3, r2, #4
	str	r3, [sp, #32]
	movs	r3, #10
	b	.L581
.L614:
	.align	2
.L613:
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
	ldr	r3, .L627
	ldr	r4, [r3]
	movs	r3, #0
	push	{r6, r7, lr}
	ldr	r5, .L627+4
	sub	sp, sp, #8
	ldrb	r6, [r5, #15]
	movs	r1, r4
	str	r3, [sp, #4]
	ldr	r2, .L627+8
	ldr	r3, .L627+12
	add	r0, sp, #4
	bl	.L5
	ldrb	r5, [r5, #15]
	adds	r6, r6, #64
	adds	r5, r5, #1
	cmp	r6, r5
	ble	.L617
	lsls	r3, r5, #3
	adds	r4, r4, r3
	ldr	r3, .L627+16
	mov	r9, r3
	movs	r3, #19
	mov	r10, r3
	adds	r3, r3, #29
	mov	r8, r3
	movs	r7, #49
.L619:
	movs	r0, r5
	bl	.L9
	cmp	r0, #0
	beq	.L618
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L618
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
.L618:
	adds	r5, r5, #1
	adds	r4, r4, #8
	cmp	r6, r5
	bgt	.L619
.L617:
	ldr	r3, .L627+20
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
.L628:
	.align	2
.L627:
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
	ldr	r3, .L663
	ldr	r3, [r3]
	sub	sp, sp, #36
	str	r3, [sp, #24]
	ldr	r3, .L663+4
	ldrb	r7, [r3, #15]
	ldr	r3, .L663+8
	str	r3, [sp, #12]
	ldr	r3, .L663+12
	str	r3, [sp, #20]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	str	r3, [sp, #16]
	str	r3, [sp, #28]
	adds	r7, r7, #1
.L643:
	movs	r0, r7
	ldr	r3, [sp, #12]
	bl	.L5
	cmp	r0, #0
	beq	.L630
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L630
	ldr	r3, .L663+16
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
	ldr	r2, .L663+20
	mov	fp, r2
	ldr	r2, .L663+12
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
.L640:
	mov	r1, ip
	ldrb	r2, [r3]
	ldrb	r4, [r3, #1]
	ldrb	r1, [r1, r2]
	cmp	r1, r4
	beq	.L631
	ldrh	r2, [r7, #2]
	cmp	r0, #0
	bne	.L632
	cmp	r2, fp
	beq	.L629
	ldr	r0, [sp, #20]
	str	r0, [sp, #4]
	ldr	r0, [sp, #16]
	adds	r5, r2, #6
	cmp	r5, r0
	bgt	.L661
	cmp	r2, #0
	bne	.L636
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
	bgt	.L661
.L639:
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
.L631:
	ldr	r2, [sp]
	adds	r3, r3, #2
	cmp	r2, r3
	bne	.L640
	movs	r3, r7
	mov	r7, r8
	mov	r8, r0
	mov	r0, ip
	mov	ip, r3
	mov	r3, r8
	mov	r4, r9
	mov	r6, r10
	cmp	r3, #0
	bne	.L662
.L630:
	subs	r6, r6, #1
	adds	r7, r7, #1
	cmp	r6, #0
	bne	.L643
.L629:
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
.L636:
	movs	r0, r2
	lsls	r5, r5, #16
	lsrs	r2, r5, #16
	adds	r5, r7, r0
	movs	r0, #6
	strh	r0, [r5, #2]
	adds	r0, r5, #4
	mov	r9, r0
	strh	r2, [r7, #2]
.L632:
	cmp	r2, fp
	beq	.L629
	ldr	r0, [sp, #8]
	str	r0, [sp, #4]
	ldr	r0, [sp, #4]
	adds	r2, r2, #2
	lsls	r0, r0, #16
	lsrs	r0, r0, #16
	cmp	r2, r0
	ble	.L639
.L661:
	movs	r3, #1
	rsbs	r3, r3, #0
	strh	r3, [r7, #2]
	b	.L629
.L662:
	movs	r3, #66
	strb	r7, [r5, #1]
	strb	r3, [r5]
	ldrb	r3, [r0, #16]
	strb	r3, [r4]
	ldrb	r3, [r0, #17]
	strb	r3, [r4, #1]
	mov	r3, ip
	ldr	r2, .L663+20
	ldrh	r3, [r3, #2]
	mov	fp, r3
	cmp	r3, r2
	beq	.L630
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
	beq	.L630
	mov	r3, r9
	cmp	r3, #0
	beq	.L630
	mov	r3, fp
	mov	r2, r9
	adds	r3, r3, #4
	subs	r3, r3, r2
	mov	r2, ip
	strh	r3, [r2, #2]
	b	.L630
.L664:
	.align	2
.L663:
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
	ldr	r2, .L668
	ldr	r1, [r2]
	movs	r2, #4
	push	{r4, r5, r6, lr}
	ldrsb	r3, [r0, r3]
	lsls	r3, r3, #2
	ldrsb	r2, [r0, r2]
	ldr	r3, [r3, r1]
	movs	r4, r0
	ldrb	r0, [r3, r2]
	ldr	r3, .L668+4
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
	ldr	r3, .L668+8
	bl	.L5
	lsls	r0, r0, #28
	bmi	.L666
	ldrb	r3, [r4, #1]
	lsls	r3, r3, #1
	adds	r5, r5, r3
	ldrh	r3, [r5, #30]
	adds	r3, r3, #1
	adds	r3, r3, #255
	strh	r3, [r5, #30]
.L666:
	@ sp needed
	movs	r1, #5
	movs	r0, #4
	ldrsb	r1, [r4, r1]
	ldrsb	r0, [r4, r0]
	ldr	r3, .L668+12
	bl	.L5
	lsls	r0, r0, #16
	movs	r2, #0
	movs	r1, #0
	ldr	r3, .L668+16
	lsrs	r0, r0, #16
	bl	.L5
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L669:
	.align	2
.L668:
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
	ldr	r2, .L673
	ldr	r1, [r2]
	movs	r2, #4
	push	{r4, r5, r6, lr}
	ldrsb	r3, [r0, r3]
	lsls	r3, r3, #2
	ldrsb	r2, [r0, r2]
	ldr	r3, [r3, r1]
	movs	r4, r0
	ldrb	r0, [r3, r2]
	ldr	r3, .L673+4
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
	ldr	r3, .L673+8
	bl	.L5
	lsls	r0, r0, #28
	bmi	.L671
	ldrb	r3, [r4, #1]
	lsls	r3, r3, #1
	adds	r5, r5, r3
	ldrh	r3, [r5, #30]
	subs	r3, r3, #1
	subs	r3, r3, #255
	strh	r3, [r5, #30]
.L671:
	@ sp needed
	movs	r1, #5
	movs	r0, #4
	ldrsb	r1, [r4, r1]
	ldrsb	r0, [r4, r0]
	ldr	r3, .L673+12
	bl	.L5
	lsls	r0, r0, #16
	movs	r2, #0
	movs	r1, #0
	ldr	r3, .L673+16
	lsrs	r0, r0, #16
	bl	.L5
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L674:
	.align	2
.L673:
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
	ldr	r3, .L692
	ldr	r4, [r3]
	ldr	r6, .L692+4
	ldrh	r1, [r4, #2]
	cmp	r1, r6
	beq	.L675
	ldr	r3, .L692+8
	adds	r2, r1, #6
	lsls	r3, r3, #16
	lsrs	r5, r3, #16
	cmp	r2, r5
	bgt	.L690
	cmp	r1, #0
	beq	.L680
	movs	r7, #6
	lsls	r2, r2, #16
	lsrs	r3, r2, #16
	adds	r2, r4, r1
	strh	r7, [r2, #2]
	adds	r7, r7, #14
	strh	r3, [r4, #2]
	strb	r0, [r2, #1]
	strb	r7, [r2]
	ldr	r0, .L692+12
	ldr	r0, [r0]
	ldrh	r0, [r0, #16]
	strh	r0, [r2, #4]
	cmp	r3, r6
	beq	.L675
.L682:
	movs	r0, #3
	ands	r0, r3
	subs	r2, r3, r0
	adds	r2, r2, #4
	asrs	r3, r5, #31
	lsrs	r6, r2, #31
	cmp	r5, r2
	adcs	r3, r3, r6
	lsls	r3, r3, #24
	beq	.L675
	cmp	r0, #0
	bne	.L691
.L675:
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L680:
	movs	r2, #6
	strh	r2, [r4, #6]
	adds	r2, r2, #4
	strh	r2, [r4, #2]
	adds	r2, r2, #10
	strb	r2, [r4, #4]
	strb	r0, [r4, #5]
	ldr	r2, .L692+12
	ldr	r2, [r2]
	ldrh	r2, [r2, #16]
	movs	r3, #10
	movs	r1, #4
	strh	r2, [r4, #8]
	b	.L682
.L691:
	adds	r1, r1, #10
	subs	r1, r1, r0
	strh	r1, [r4, #2]
	b	.L675
.L690:
	movs	r3, #1
	rsbs	r3, r3, #0
	strh	r3, [r4, #2]
	b	.L675
.L693:
	.align	2
.L692:
	.word	REW_curSequence
	.word	65535
	.word	REW_curSequenceMaxSize
	.word	gActiveUnit
	.size	REW_actionOpenChest, .-REW_actionOpenChest
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
	ldr	r3, .L702
	ldrb	r0, [r0, #1]
	bl	.L5
	cmp	r0, #0
	beq	.L694
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L694
	ldr	r3, .L702+4
	bl	.L5
.L694:
	@ sp needed
	pop	{r4}
	pop	{r0}
	bx	r0
.L703:
	.align	2
.L702:
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
	ldr	r3, .L705
	@ sp needed
	adds	r0, r0, #4
	bl	.L5
	pop	{r4}
	pop	{r0}
	bx	r0
.L706:
	.align	2
.L705:
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
	ldr	r7, .L720
	ldr	r2, [r7]
	movs	r4, r0
	ldrh	r5, [r2, #2]
	movs	r0, r1
	cmp	r4, #0
	beq	.L707
	cmp	r5, #0
	beq	.L707
	ldr	r1, [r4]
	cmp	r1, #0
	beq	.L707
	ldr	r3, .L720+4
	adds	r1, r5, r3
	cmp	r1, #0
	beq	.L707
	movs	r1, r5
	ldr	r6, .L720+8
	adds	r1, r1, #24
	lsls	r6, r6, #16
	lsrs	r6, r6, #16
	cmp	r1, r6
	bgt	.L719
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
	ldr	r3, .L720+12
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
	ldr	r2, .L720+16
	ldrh	r3, [r4, #2]
	cmp	r3, r2
	beq	.L707
	movs	r0, #3
	ands	r0, r3
	subs	r1, r3, r0
	adds	r1, r1, #4
	asrs	r2, r6, #31
	lsrs	r5, r1, #31
	cmp	r6, r1
	adcs	r2, r2, r5
	lsls	r2, r2, #24
	beq	.L707
	cmp	r0, #0
	beq	.L707
	adds	r3, r3, #4
	subs	r3, r3, r0
	strh	r3, [r4, #2]
.L707:
	@ sp needed
	pop	{r3, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L719:
	movs	r3, #1
	rsbs	r3, r3, #0
	strh	r3, [r2, #2]
	b	.L707
.L721:
	.align	2
.L720:
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
	ldr	r6, .L743
	ldr	r4, [r6]
	ldrh	r3, [r4, #2]
	cmp	r3, #0
	beq	.L722
	movs	r5, #3
	ldr	r7, .L743+4
	adds	r4, r4, #4
.L728:
	ldrb	r3, [r4]
	cmp	r3, #67
	beq	.L742
.L725:
	movs	r1, r5
	ldrh	r3, [r4, #2]
	ldr	r2, [r6]
	ands	r1, r3
	tst	r5, r3
	beq	.L727
	adds	r3, r3, #4
	subs	r3, r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
.L727:
	adds	r4, r4, r3
	ldrh	r3, [r2, #2]
	adds	r2, r2, r3
	cmp	r4, r2
	bcs	.L722
	cmp	r4, #0
	bne	.L728
.L722:
	@ sp needed
	pop	{r3, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L742:
	ldrb	r0, [r4, #1]
	bl	.L7
	cmp	r0, #0
	beq	.L725
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L725
	movs	r3, #68
	movs	r2, #63
	strb	r3, [r4]
	ldrb	r3, [r0, #17]
	ldrb	r1, [r0, #16]
	ands	r3, r2
	lsls	r3, r3, #6
	ands	r2, r1
	orrs	r3, r2
	ldr	r1, .L743+8
	ldr	r2, [r4, #8]
	ands	r2, r1
	orrs	r3, r2
	str	r3, [r4, #8]
	movs	r3, #0
	str	r3, [r4, #12]
	b	.L725
.L744:
	.align	2
.L743:
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
	bhi	.L745
	movs	r3, #96
	ands	r3, r2
	cmp	r3, #96
	beq	.L745
	movs	r3, #5
	ldr	r2, .L765
	ldr	r1, [r2]
	movs	r2, #4
	ldrsb	r3, [r0, r3]
	lsls	r3, r3, #2
	ldr	r3, [r3, r1]
	ldrsb	r2, [r0, r2]
	ldrsb	r0, [r3, r2]
	ldr	r3, .L765+4
	bl	.L5
	subs	r6, r0, #0
	beq	.L745
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L745
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
.L752:
	movs	r3, #1
	movs	r2, #0
	ldr	r7, [r4]
	b	.L749
.L764:
	subs	r7, r7, #1
.L747:
	lsls	r3, r3, #1
	adds	r2, r2, #1
.L749:
	tst	r5, r3
	bne	.L747
	cmp	r7, #0
	bne	.L764
	orrs	r3, r5
	lsls	r3, r3, #24
	lsrs	r5, r3, #24
	mov	r3, r8
	cmp	r3, #0
	beq	.L750
	adds	r2, r2, #12
	lsls	r3, r2, #1
	adds	r3, r6, r3
	ldrh	r3, [r3, #6]
	strh	r3, [r0]
.L751:
	adds	r1, r1, #2
	adds	r4, r4, #4
	adds	r0, r0, #2
	cmp	ip, r1
	bne	.L752
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
.L745:
	add	sp, sp, #36
	@ sp needed
	pop	{r6, r7}
	mov	r9, r7
	mov	r8, r6
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L750:
	mov	r7, r9
	ldrh	r3, [r1]
	lsls	r2, r2, #1
	strh	r3, [r7, r2]
	b	.L751
.L766:
	.align	2
.L765:
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
	ldr	r2, .L775
	ldr	r1, [r2]
	movs	r2, #4
	push	{r4, lr}
	ldrsb	r3, [r0, r3]
	lsls	r3, r3, #2
	ldr	r3, [r3, r1]
	ldrsb	r2, [r0, r2]
	ldrsb	r0, [r3, r2]
	ldr	r3, .L775+4
	bl	.L5
	subs	r4, r0, #0
	beq	.L767
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L767
	ldr	r3, .L775+8
	bl	.L5
	movs	r3, #0
	lsls	r0, r0, #1
	adds	r4, r4, r0
	strh	r3, [r4, #28]
.L767:
	@ sp needed
	pop	{r4}
	pop	{r0}
	bx	r0
.L776:
	.align	2
.L775:
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
	ldr	r2, .L787
	ldr	r1, [r2]
	movs	r2, #4
	push	{r4, r5, r6, lr}
	ldrsb	r3, [r0, r3]
	lsls	r3, r3, #2
	ldr	r3, [r3, r1]
	ldrsb	r2, [r0, r2]
	movs	r5, r0
	ldrsb	r0, [r3, r2]
	ldr	r3, .L787+4
	bl	.L5
	subs	r4, r0, #0
	beq	.L780
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L780
	ldr	r3, .L787+8
	bl	.L5
	cmp	r0, #4
	bgt	.L780
	adds	r0, r0, #12
	ldrh	r3, [r5, #6]
	lsls	r0, r0, #1
	adds	r4, r4, r0
	strh	r3, [r4, #6]
.L780:
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L788:
	.align	2
.L787:
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
	ldr	r5, .L830
	mov	r0, sp
	bl	.L6
	movs	r2, #10
	movs	r1, #0
	add	r0, sp, #12
	bl	.L6
	movs	r3, #5
	ldr	r2, .L830+4
	ldr	r1, [r2]
	movs	r2, #4
	ldrsb	r3, [r7, r3]
	lsls	r3, r3, #2
	ldrsb	r2, [r7, r2]
	ldr	r3, [r3, r1]
	ldrsb	r0, [r3, r2]
	ldr	r3, .L830+8
	bl	.L5
	subs	r2, r0, #0
	beq	.L792
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L792
	movs	r1, #16
	add	r5, sp, #12
	mov	r8, r1
	mov	r6, sp
	movs	r4, r5
	mov	r1, sp
	adds	r3, r7, #6
	adds	r2, r2, #30
	add	r8, r8, r7
.L795:
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
	bne	.L795
	movs	r2, #10
	mov	ip, r2
	add	r3, sp, #12
	add	r3, r3, ip
	mov	r8, r3
	add	r3, sp, #12
.L799:
	ldrh	r0, [r3]
	cmp	r0, #0
	bne	.L826
.L796:
	adds	r3, r3, #2
	cmp	r3, r8
	bne	.L799
	ldr	r3, .L830+12
	mov	r9, r3
	movs	r3, #0
	movs	r7, #10
	mov	r10, r3
	add	r7, r7, sp
.L804:
	ldrh	r4, [r6]
	cmp	r4, #0
	bne	.L827
.L802:
	adds	r6, r6, #2
	cmp	r6, r7
	bne	.L804
	ldr	r3, .L830+16
	bl	.L5
	ldr	r4, .L830+20
.L806:
	ldrh	r0, [r5]
	cmp	r0, #0
	bne	.L828
.L805:
	adds	r5, r5, #2
	cmp	r5, r8
	bne	.L806
.L792:
	add	sp, sp, #24
	@ sp needed
	pop	{r5, r6, r7}
	mov	r10, r7
	mov	r9, r6
	mov	r8, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L827:
	bl	.L9
	movs	r2, r0
	adds	r2, r2, #200
	b	.L803
.L801:
	adds	r0, r0, #2
	cmp	r0, r2
	beq	.L802
.L803:
	ldrh	r3, [r0]
	cmp	r3, r4
	bne	.L801
	mov	r3, r10
	strh	r3, [r0]
	b	.L802
.L828:
	bl	.L208
	b	.L805
.L826:
	mov	r1, sp
	ldrh	r4, [r1]
	movs	r2, #0
	cmp	r4, r0
	beq	.L829
.L797:
	adds	r2, r2, #1
	adds	r1, r1, #2
	cmp	r2, #5
	beq	.L796
	ldrh	r4, [r1]
	cmp	r4, r0
	bne	.L797
.L829:
	movs	r1, #0
	mov	r0, sp
	lsls	r2, r2, #1
	strh	r1, [r3]
	strh	r1, [r0, r2]
	b	.L796
.L831:
	.align	2
.L830:
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
	ldr	r5, .L870
	mov	r0, sp
	bl	.L6
	movs	r2, #10
	movs	r1, #0
	add	r0, sp, #12
	bl	.L6
	movs	r3, #5
	ldr	r2, .L870+4
	ldr	r1, [r2]
	movs	r2, #4
	ldrsb	r3, [r7, r3]
	lsls	r3, r3, #2
	ldrsb	r2, [r7, r2]
	ldr	r3, [r3, r1]
	ldrsb	r0, [r3, r2]
	ldr	r3, .L870+8
	bl	.L5
	subs	r2, r0, #0
	beq	.L832
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L832
	add	r6, sp, #12
	mov	r5, sp
	movs	r4, r6
	mov	r1, sp
	adds	r3, r7, #6
	adds	r2, r2, #30
	adds	r7, r7, #16
.L835:
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
	bne	.L835
	add	r7, sp, #12
	adds	r7, r7, #10
	add	r3, sp, #12
.L839:
	ldrh	r0, [r3]
	cmp	r0, #0
	bne	.L866
.L836:
	adds	r3, r3, #2
	cmp	r3, r7
	bne	.L839
	ldr	r3, .L870+12
	mov	r8, r3
	movs	r3, #0
	mov	r9, r3
.L844:
	ldrh	r4, [r6]
	cmp	r4, #0
	bne	.L867
.L842:
	adds	r6, r6, #2
	cmp	r6, r7
	bne	.L844
	movs	r4, #10
	ldr	r3, .L870+16
	bl	.L5
	ldr	r6, .L870+20
	add	r4, r4, sp
.L846:
	ldrh	r0, [r5]
	cmp	r0, #0
	bne	.L868
.L845:
	adds	r5, r5, #2
	cmp	r4, r5
	bne	.L846
.L832:
	add	sp, sp, #28
	@ sp needed
	pop	{r6, r7}
	mov	r9, r7
	mov	r8, r6
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L867:
	bl	.L10
	movs	r2, r0
	adds	r2, r2, #200
	b	.L843
.L841:
	adds	r0, r0, #2
	cmp	r0, r2
	beq	.L842
.L843:
	ldrh	r3, [r0]
	cmp	r3, r4
	bne	.L841
	mov	r3, r9
	strh	r3, [r0]
	b	.L842
.L868:
	bl	.L11
	b	.L845
.L866:
	mov	r1, sp
	ldrh	r4, [r1]
	movs	r2, #0
	cmp	r4, r0
	beq	.L869
.L837:
	adds	r2, r2, #1
	adds	r1, r1, #2
	cmp	r2, #5
	beq	.L836
	ldrh	r4, [r1]
	cmp	r4, r0
	bne	.L837
.L869:
	movs	r1, #0
	mov	r0, sp
	lsls	r2, r2, #1
	strh	r1, [r3]
	strh	r1, [r0, r2]
	b	.L836
.L871:
	.align	2
.L870:
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
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	movs	r4, r0
	movs	r5, r1
	cmp	r0, #0
	beq	.L872
	cmp	r1, #0
	ble	.L872
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L872
	movs	r0, #11
	ldr	r3, .L900
	ldrsb	r0, [r4, r0]
	bl	.L5
	cmp	r4, r0
	beq	.L898
.L872:
	@ sp needed
	pop	{r3, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L898:
	ldr	r3, .L900+4
	ldr	r0, [r3]
	ldr	r3, .L900+8
	ldrh	r6, [r0, #2]
	cmp	r6, r3
	beq	.L872
	ldr	r1, .L900+12
	adds	r3, r6, #6
	lsls	r1, r1, #16
	lsrs	r1, r1, #16
	cmp	r3, r1
	bgt	.L899
	cmp	r6, #0
	beq	.L882
	movs	r2, r6
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
.L878:
	movs	r7, #6
	adds	r2, r0, r2
	strh	r7, [r2, #2]
	strh	r3, [r0, #2]
	ldrb	r7, [r4, #16]
	strb	r7, [r2, #4]
	ldrb	r4, [r4, #17]
	strb	r4, [r2, #5]
	movs	r4, #70
	adds	r4, r4, #255
	strh	r4, [r2]
	cmp	r5, #1
	beq	.L880
	movs	r7, #24
	ldrb	r4, [r2, #1]
	bics	r4, r7
	movs	r7, #8
	orrs	r4, r7
	strb	r4, [r2, #1]
	cmp	r5, #2
	beq	.L880
	movs	r7, #96
	lsls	r4, r4, #24
	lsrs	r4, r4, #24
	bics	r4, r7
	movs	r7, #32
	orrs	r4, r7
	strb	r4, [r2, #1]
	cmp	r5, #3
	beq	.L880
	lsls	r5, r4, #24
	movs	r4, #128
	lsrs	r5, r5, #24
	rsbs	r4, r4, #0
	orrs	r4, r5
	strb	r4, [r2, #1]
.L880:
	ldr	r2, .L900+8
	cmp	r3, r2
	beq	.L872
	movs	r4, #3
	ands	r4, r3
	subs	r3, r3, r4
	adds	r3, r3, #4
	asrs	r2, r1, #31
	lsrs	r5, r3, #31
	cmp	r1, r3
	adcs	r2, r2, r5
	lsls	r2, r2, #24
	beq	.L872
	cmp	r4, #0
	beq	.L872
	adds	r6, r6, #10
	subs	r3, r6, r4
	strh	r3, [r0, #2]
	b	.L872
.L882:
	movs	r3, #10
	movs	r2, #4
	movs	r6, #4
	b	.L878
.L899:
	movs	r3, #1
	rsbs	r3, r3, #0
	strh	r3, [r0, #2]
	b	.L872
.L901:
	.align	2
.L900:
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
	ldr	r3, .L922
	movs	r6, r0
	sub	sp, sp, #12
	movs	r0, #0
	movs	r5, r1
	movs	r4, r2
	bl	.L5
	cmp	r0, #0
	beq	.L920
.L902:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L920:
	ldr	r3, .L922+4
	bl	.L5
	rsbs	r1, r4, #0
	adcs	r4, r4, r1
	rsbs	r3, r6, #0
	adcs	r3, r3, r6
	orrs	r3, r4
	bne	.L902
	cmp	r0, #0
	bne	.L902
	ldr	r3, [r6]
	cmp	r3, #0
	beq	.L902
	movs	r3, #19
	ldrsb	r3, [r6, r3]
	cmp	r3, #0
	beq	.L902
	ldr	r3, .L922+8
	ldr	r0, [r3]
	ldr	r6, .L922+12
	ldrh	r4, [r0, #2]
	cmp	r4, r6
	beq	.L902
	ldr	r2, .L922+16
	lsls	r2, r2, #16
	lsrs	r3, r2, #16
	movs	r2, r4
	adds	r2, r2, #8
	cmp	r2, r3
	bgt	.L921
	cmp	r4, #0
	beq	.L907
	movs	r7, #8
	adds	r1, r0, r4
	lsls	r2, r2, #16
	strh	r7, [r1, #2]
	lsrs	r2, r2, #16
	adds	r7, r7, #62
	strh	r2, [r0, #2]
	strb	r7, [r1]
	ldr	r7, .L922+20
	ldr	r7, [r7]
	ldrh	r7, [r7, #16]
	strh	r5, [r1, #6]
	strh	r7, [r1, #4]
	cmp	r2, r6
	beq	.L902
	movs	r5, #3
	ands	r5, r2
	subs	r2, r2, r5
	adds	r2, r2, #4
	asrs	r1, r3, #31
	lsrs	r6, r2, #31
	cmp	r3, r2
	adcs	r1, r1, r6
	lsls	r3, r1, #24
	beq	.L902
	cmp	r5, #0
	beq	.L902
	adds	r4, r4, #12
	subs	r3, r4, r5
	strh	r3, [r0, #2]
	b	.L902
.L907:
	movs	r2, #8
	strh	r2, [r0, #6]
	adds	r2, r2, #4
	strh	r2, [r0, #2]
	adds	r2, r2, #58
	strb	r2, [r0, #4]
	ldr	r2, .L922+20
	ldr	r2, [r2]
	ldrh	r2, [r2, #16]
	strh	r5, [r0, #10]
	strh	r2, [r0, #8]
	b	.L902
.L921:
	movs	r3, #1
	rsbs	r3, r3, #0
	strh	r3, [r0, #2]
	b	.L902
.L923:
	.align	2
.L922:
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
	ldr	r3, .L944
	movs	r0, #0
	movs	r5, r1
	bl	.L5
	cmp	r0, #0
	beq	.L942
.L924:
	@ sp needed
	pop	{r3, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L942:
	ldr	r3, .L944+4
	bl	.L5
	cmp	r0, #0
	bne	.L924
	cmp	r4, #0
	beq	.L924
	ldr	r3, [r4]
	cmp	r3, #0
	beq	.L924
	movs	r3, #19
	ldrsb	r3, [r4, r3]
	cmp	r3, #0
	beq	.L924
	ldr	r3, .L944+8
	ldr	r0, [r3]
	ldr	r6, .L944+12
	ldrh	r4, [r0, #2]
	cmp	r4, r6
	beq	.L924
	ldr	r2, .L944+16
	lsls	r2, r2, #16
	lsrs	r3, r2, #16
	movs	r2, r4
	adds	r2, r2, #8
	cmp	r2, r3
	bgt	.L943
	cmp	r4, #0
	beq	.L929
	movs	r7, #8
	adds	r1, r0, r4
	lsls	r2, r2, #16
	strh	r7, [r1, #2]
	lsrs	r2, r2, #16
	adds	r7, r7, #63
	strh	r2, [r0, #2]
	strb	r7, [r1]
	ldr	r7, .L944+20
	ldr	r7, [r7]
	ldrh	r7, [r7, #16]
	strh	r5, [r1, #6]
	strh	r7, [r1, #4]
	cmp	r2, r6
	beq	.L924
	movs	r5, #3
	ands	r5, r2
	subs	r2, r2, r5
	adds	r2, r2, #4
	asrs	r1, r3, #31
	lsrs	r6, r2, #31
	cmp	r3, r2
	adcs	r1, r1, r6
	lsls	r3, r1, #24
	beq	.L924
	cmp	r5, #0
	beq	.L924
	adds	r4, r4, #12
	subs	r3, r4, r5
	strh	r3, [r0, #2]
	b	.L924
.L929:
	movs	r2, #8
	strh	r2, [r0, #6]
	adds	r2, r2, #4
	strh	r2, [r0, #2]
	adds	r2, r2, #59
	strb	r2, [r0, #4]
	ldr	r2, .L944+20
	ldr	r2, [r2]
	ldrh	r2, [r2, #16]
	strh	r5, [r0, #10]
	strh	r2, [r0, #8]
	b	.L924
.L943:
	movs	r3, #1
	rsbs	r3, r3, #0
	strh	r3, [r0, #2]
	b	.L924
.L945:
	.align	2
.L944:
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
	ldr	r3, .L961
	movs	r4, r0
	movs	r0, #0
	bl	.L5
	cmp	r0, #0
	beq	.L959
.L946:
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L959:
	ldr	r3, .L961+4
	bl	.L5
	cmp	r0, #0
	bne	.L946
	ldr	r3, .L961+8
	ldr	r0, [r3]
	ldr	r2, .L961+12
	ldrh	r3, [r0, #2]
	cmp	r3, r2
	beq	.L946
	ldr	r2, .L961+16
	adds	r1, r3, #6
	lsls	r2, r2, #16
	lsrs	r2, r2, #16
	cmp	r1, r2
	bgt	.L960
	cmp	r3, #0
	beq	.L952
	lsls	r1, r1, #16
	lsrs	r1, r1, #16
.L951:
	movs	r5, #6
	adds	r3, r0, r3
	strh	r5, [r3, #2]
	strh	r1, [r0, #2]
	movs	r1, #72
	strh	r4, [r3, #4]
	strb	r1, [r3]
	ldr	r1, .L961+12
	ldrh	r3, [r0, #2]
	cmp	r3, r1
	beq	.L946
	subs	r5, r5, #3
	ands	r5, r3
	subs	r4, r3, r5
	adds	r4, r4, #4
	asrs	r1, r2, #31
	lsrs	r6, r4, #31
	cmp	r2, r4
	adcs	r1, r1, r6
	lsls	r2, r1, #24
	beq	.L946
	cmp	r5, #0
	beq	.L946
	adds	r3, r3, #4
	subs	r3, r3, r5
	strh	r3, [r0, #2]
	b	.L946
.L952:
	movs	r1, #10
	movs	r3, #4
	b	.L951
.L960:
	movs	r3, #1
	rsbs	r3, r3, #0
	strh	r3, [r0, #2]
	b	.L946
.L962:
	.align	2
.L961:
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
	ldr	r3, .L978
	movs	r4, r0
	movs	r0, #0
	bl	.L5
	cmp	r0, #0
	beq	.L976
.L963:
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L976:
	ldr	r3, .L978+4
	bl	.L5
	cmp	r0, #0
	bne	.L963
	ldr	r3, .L978+8
	ldr	r0, [r3]
	ldr	r2, .L978+12
	ldrh	r3, [r0, #2]
	cmp	r3, r2
	beq	.L963
	ldr	r2, .L978+16
	adds	r1, r3, #6
	lsls	r2, r2, #16
	lsrs	r2, r2, #16
	cmp	r1, r2
	bgt	.L977
	cmp	r3, #0
	beq	.L969
	lsls	r1, r1, #16
	lsrs	r1, r1, #16
.L968:
	movs	r5, #6
	adds	r3, r0, r3
	strh	r5, [r3, #2]
	strh	r1, [r0, #2]
	movs	r1, #73
	strh	r4, [r3, #4]
	strb	r1, [r3]
	ldr	r1, .L978+12
	ldrh	r3, [r0, #2]
	cmp	r3, r1
	beq	.L963
	subs	r5, r5, #3
	ands	r5, r3
	subs	r4, r3, r5
	adds	r4, r4, #4
	asrs	r1, r2, #31
	lsrs	r6, r4, #31
	cmp	r2, r4
	adcs	r1, r1, r6
	lsls	r2, r1, #24
	beq	.L963
	cmp	r5, #0
	beq	.L963
	adds	r3, r3, #4
	subs	r3, r3, r5
	strh	r3, [r0, #2]
	b	.L963
.L969:
	movs	r1, #10
	movs	r3, #4
	b	.L968
.L977:
	movs	r3, #1
	rsbs	r3, r3, #0
	strh	r3, [r0, #2]
	b	.L963
.L979:
	.align	2
.L978:
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
.L981:
	ldrh	r2, [r0, r3]
	strh	r2, [r1, r3]
	adds	r3, r3, #2
	cmp	r3, #10
	bne	.L981
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
	movs	r4, r0
	push	{r7, lr}
	movs	r0, #0
	ldr	r3, .L1005
	movs	r5, r1
	bl	.L5
	cmp	r0, #0
	beq	.L1003
.L983:
	@ sp needed
	pop	{r6, r7}
	mov	r9, r7
	mov	r8, r6
	pop	{r3, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L1003:
	ldr	r3, .L1005+4
	bl	.L5
	cmp	r0, #0
	bne	.L983
	movs	r0, r4
	movs	r3, #0
	adds	r0, r0, #30
.L988:
	ldrh	r1, [r0, r3]
	ldrh	r2, [r5, r3]
	cmp	r1, r2
	bne	.L987
	adds	r3, r3, #2
	cmp	r3, #10
	bne	.L988
	b	.L983
.L987:
	ldr	r3, .L1005+8
	ldr	r3, [r3]
	mov	ip, r3
	ldrh	r7, [r3, #2]
	ldr	r3, .L1005+12
	cmp	r7, r3
	beq	.L983
	movs	r1, r7
	ldr	r6, .L1005+16
	lsls	r6, r6, #16
	lsrs	r3, r6, #16
	adds	r1, r1, #24
	mov	r9, r3
	cmp	r1, r3
	bgt	.L1004
	cmp	r7, #0
	beq	.L993
	movs	r2, r7
	lsls	r1, r1, #16
	lsrs	r1, r1, #16
.L990:
	movs	r3, #24
	add	r2, r2, ip
	strh	r3, [r2, #2]
	mov	r3, ip
	strh	r1, [r3, #2]
	movs	r3, #74
	strb	r3, [r2]
	ldr	r3, .L1005+20
	ldr	r3, [r3]
	ldrh	r3, [r3, #16]
	adds	r4, r2, #6
	strh	r3, [r2, #4]
	mov	r8, r4
	movs	r3, #0
	adds	r2, r2, #16
.L991:
	mov	r6, r8
	ldrh	r4, [r5, r3]
	strh	r4, [r6, r3]
	ldrh	r4, [r0, r3]
	strh	r4, [r2, r3]
	adds	r3, r3, #2
	cmp	r3, #10
	bne	.L991
	ldr	r3, .L1005+12
	cmp	r1, r3
	beq	.L983
	movs	r2, #3
	mov	r3, r9
	mov	r4, r9
	ands	r2, r1
	subs	r1, r1, r2
	adds	r1, r1, #4
	asrs	r3, r3, #31
	lsrs	r0, r1, #31
	cmp	r4, r1
	adcs	r3, r3, r0
	lsls	r3, r3, #24
	beq	.L983
	cmp	r2, #0
	beq	.L983
	mov	r3, ip
	adds	r7, r7, #28
	subs	r7, r7, r2
	strh	r7, [r3, #2]
	b	.L983
.L993:
	movs	r1, #28
	movs	r2, #4
	movs	r7, #4
	b	.L990
.L1004:
	movs	r3, #1
	mov	r2, ip
	rsbs	r3, r3, #0
	strh	r3, [r2, #2]
	b	.L983
.L1006:
	.align	2
.L1005:
	.word	PrepAtMenuExists
	.word	WM_Exists
	.word	REW_curSequence
	.word	65535
	.word	REW_curSequenceMaxSize
	.word	gActiveUnit
	.size	REW_conseqSupplyTrackInventoryChanges, .-REW_conseqSupplyTrackInventoryChanges
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
	ldr	r5, .L1015
	ldrsb	r3, [r0, r3]
	ldr	r1, [r5]
	lsls	r3, r3, #2
	ldrsb	r2, [r0, r2]
	ldr	r3, [r3, r1]
	ldrb	r6, [r3, r2]
	movs	r4, r0
	lsls	r0, r6, #24
	ldr	r3, .L1015+4
	asrs	r0, r0, #24
	bl	.L5
	cmp	r0, #0
	beq	.L1007
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L1007
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
	ldr	r3, .L1015+8
	bl	.L5
.L1007:
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L1016:
	.align	2
.L1015:
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
	ldr	r5, .L1025
	ldrsb	r3, [r0, r3]
	ldr	r1, [r5]
	lsls	r3, r3, #2
	ldrsb	r2, [r0, r2]
	ldr	r3, [r3, r1]
	ldrb	r6, [r3, r2]
	movs	r4, r0
	lsls	r0, r6, #24
	ldr	r3, .L1025+4
	asrs	r0, r0, #24
	bl	.L5
	cmp	r0, #0
	beq	.L1017
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L1017
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
	ldr	r3, .L1025+8
	bl	.L5
.L1017:
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L1026:
	.align	2
.L1025:
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
	push	{r6, r7, lr}
	cmp	r0, r2
	bne	.L1028
	cmp	r1, r3
	bne	.L1028
.L1027:
	@ sp needed
	pop	{r5, r6, r7}
	mov	r10, r7
	mov	r9, r6
	mov	r8, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L1028:
	ldr	r4, .L1046
	ldr	r7, [r4]
	ldr	r4, .L1046+4
	ldrh	r6, [r7, #2]
	mov	ip, r4
	cmp	r6, r4
	beq	.L1027
	movs	r5, r6
	ldr	r4, .L1046+8
	lsls	r4, r4, #16
	lsrs	r4, r4, #16
	adds	r5, r5, #8
	mov	r10, r4
	cmp	r5, r4
	bgt	.L1045
	cmp	r6, #0
	beq	.L1032
	lsls	r5, r5, #16
	lsrs	r5, r5, #16
	mov	r8, r5
	movs	r4, #8
	adds	r5, r7, r6
	strh	r4, [r5, #2]
	mov	r4, r8
	strh	r4, [r7, #2]
	movs	r4, #75
	strb	r0, [r5, #4]
	strb	r4, [r5]
	strb	r1, [r5, #5]
	strb	r2, [r5, #6]
	strb	r3, [r5, #7]
	cmp	r8, ip
	beq	.L1027
	mov	r3, r8
	movs	r2, #3
	ands	r2, r3
	subs	r5, r3, r2
	mov	r3, r10
	mov	r0, r10
	adds	r5, r5, #4
	asrs	r3, r3, #31
	lsrs	r1, r5, #31
	cmp	r0, r5
	adcs	r3, r3, r1
	lsls	r3, r3, #24
	beq	.L1027
	cmp	r2, #0
	beq	.L1027
	adds	r6, r6, #12
	subs	r3, r6, r2
	strh	r3, [r7, #2]
	b	.L1027
.L1032:
	movs	r5, #8
	strh	r5, [r7, #6]
	adds	r5, r5, #4
	strh	r5, [r7, #2]
	adds	r5, r5, #63
	strb	r5, [r7, #4]
	strb	r0, [r7, #8]
	strb	r1, [r7, #9]
	strb	r2, [r7, #10]
	strb	r3, [r7, #11]
	b	.L1027
.L1045:
	movs	r3, #1
	rsbs	r3, r3, #0
	strh	r3, [r7, #2]
	b	.L1027
.L1047:
	.align	2
.L1046:
	.word	REW_curSequence
	.word	65535
	.word	REW_curSequenceMaxSize
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
	push	{r3, r4, r5, r6, r7, lr}
	mov	r7, r8
	mov	lr, r9
	push	{r7, lr}
	mov	r8, r3
	ldr	r3, .L1085
	ldr	r3, [r3]
	mov	ip, r3
	ldrh	r3, [r3, #2]
	movs	r7, r0
	mov	r9, r2
	movs	r0, r1
	cmp	r3, #0
	beq	.L1048
	cmp	r7, r2
	bne	.L1064
	cmp	r1, r8
	beq	.L1048
.L1064:
	mov	r2, ip
	movs	r5, #3
	adds	r4, r2, #4
	adds	r6, r2, r3
.L1051:
	subs	r1, r4, #0
	beq	.L1048
.L1056:
	ldrb	r4, [r1]
	cmp	r4, #75
	beq	.L1083
.L1052:
	movs	r2, r5
	ldrh	r4, [r1, #2]
	ands	r2, r4
	tst	r5, r4
	beq	.L1054
	adds	r4, r4, #4
	subs	r4, r4, r2
	lsls	r4, r4, #16
	lsrs	r4, r4, #16
.L1054:
	adds	r1, r1, r4
	movs	r4, #0
	cmp	r1, r6
	bcs	.L1051
	cmp	r1, #0
	bne	.L1056
.L1048:
	@ sp needed
	pop	{r6, r7}
	mov	r9, r7
	mov	r8, r6
	pop	{r3, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L1083:
	movs	r4, #4
	ldrsb	r4, [r1, r4]
	cmp	r4, r7
	bne	.L1052
	movs	r4, #5
	ldrsb	r4, [r1, r4]
	cmp	r4, r0
	bne	.L1052
	movs	r4, #6
	ldrsb	r4, [r1, r4]
	cmp	r4, r9
	bne	.L1052
	movs	r4, #7
	ldrsb	r4, [r1, r4]
	cmp	r4, r8
	bne	.L1052
	movs	r4, #3
	movs	r5, r4
	ldrh	r2, [r1, #2]
	ands	r5, r2
	tst	r4, r2
	beq	.L1063
	adds	r2, r2, #4
	subs	r2, r2, r5
	lsls	r2, r2, #16
	lsrs	r2, r2, #16
.L1063:
	adds	r2, r1, r2
	add	r3, r3, ip
	cmp	r2, r3
	bcs	.L1058
	cmp	r2, #0
	beq	.L1058
	movs	r4, #2
	movs	r5, #3
	mov	r9, r4
	b	.L1061
.L1084:
	cmp	r2, #0
	beq	.L1058
.L1061:
	mov	r6, r9
	ldrb	r4, [r2]
	bics	r4, r6
	cmp	r4, #69
	bne	.L1059
	strb	r7, [r2, #4]
	strb	r0, [r2, #5]
.L1059:
	movs	r6, r5
	ldrh	r4, [r2, #2]
	ands	r6, r4
	tst	r5, r4
	beq	.L1060
	adds	r4, r4, #4
	subs	r4, r4, r6
	lsls	r4, r4, #16
	lsrs	r4, r4, #16
.L1060:
	adds	r2, r2, r4
	cmp	r3, r2
	bhi	.L1084
.L1058:
	mov	r0, ip
	bl	REW_deleteRewindEntry
	b	.L1048
.L1086:
	.align	2
.L1085:
	.word	REW_curSequence
	.size	REW_cancelUnitMove, .-REW_cancelUnitMove
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
	ldr	r3, .L1088
	push	{r4, lr}
	ldrh	r4, [r3, #12]
	@ sp needed
	movs	r3, #224
	lsls	r3, r3, #20
	mov	ip, r3
	ldr	r0, .L1088+4
	lsls	r0, r0, #16
	ldr	r3, .L1088+8
	lsrs	r0, r0, #16
	add	r4, r4, ip
	bl	.L5
	ldrh	r0, [r0]
	adds	r0, r4, r0
	pop	{r4}
	pop	{r1}
	bx	r1
.L1089:
	.align	2
.L1088:
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
	ldr	r3, .L1091
	push	{r4, r5, r6, lr}
	ldr	r5, [r3]
	@ sp needed
	movs	r3, #0
	strh	r3, [r5]
	strh	r3, [r5, #2]
	ldr	r3, .L1091+4
	ldrh	r4, [r3, #12]
	movs	r3, #224
	lsls	r3, r3, #20
	mov	ip, r3
	ldr	r0, .L1091+8
	lsls	r0, r0, #16
	ldr	r3, .L1091+12
	lsrs	r0, r0, #16
	add	r4, r4, ip
	bl	.L5
	ldrh	r1, [r0]
	movs	r2, #4
	movs	r0, r5
	ldr	r3, .L1091+16
	adds	r1, r4, r1
	bl	.L5
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L1092:
	.align	2
.L1091:
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
	ldr	r3, .L1094
	push	{r4, lr}
	ldrh	r4, [r3, #12]
	@ sp needed
	movs	r3, #224
	lsls	r3, r3, #20
	mov	ip, r3
	ldr	r0, .L1094+4
	lsls	r0, r0, #16
	ldr	r3, .L1094+8
	lsrs	r0, r0, #16
	add	r4, r4, ip
	bl	.L5
	ldrh	r0, [r0]
	adds	r0, r4, r0
	pop	{r4}
	pop	{r1}
	bx	r1
.L1095:
	.align	2
.L1094:
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
	ldr	r3, .L1097
	ldrh	r4, [r3, #12]
	movs	r3, #224
	lsls	r3, r3, #20
	mov	ip, r3
	ldr	r0, .L1097+4
	lsls	r0, r0, #16
	ldr	r3, .L1097+8
	lsrs	r0, r0, #16
	add	r4, r4, ip
	bl	.L5
	ldrh	r1, [r0]
	movs	r2, #8
	mov	r0, sp
	ldr	r3, .L1097+12
	adds	r1, r4, r1
	bl	.L5
	add	sp, sp, #8
	@ sp needed
	pop	{r4}
	pop	{r0}
	bx	r0
.L1098:
	.align	2
.L1097:
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
	ldr	r3, .L1101
	movs	r4, r0
	ldrb	r0, [r3, #15]
	ldr	r3, .L1101+4
	bl	.L5
	cmp	r0, #0
	ble	.L1100
	movs	r2, #2
	ldr	r3, .L1101+8
	movs	r0, #3
	strb	r2, [r3, #22]
	ldr	r3, .L1101+12
	bl	.L5
.L1100:
	@ sp needed
	movs	r0, r4
	ldr	r3, .L1101+16
	bl	.L5
	pop	{r4}
	pop	{r0}
	bx	r0
.L1102:
	.align	2
.L1101:
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
	ldr	r3, .L1104
	sub	sp, sp, #8
	add	r4, sp, #4
	movs	r2, r1
	ldr	r3, [r3]
	movs	r1, r4
	bl	.L5
	movs	r2, #0
	ldr	r3, .L1104+4
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
.L1105:
	.align	2
.L1104:
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
	ldr	r1, .L1107
	sub	sp, sp, #8
	ldrh	r4, [r1]
	add	r0, sp, #4
	strb	r4, [r0]
	ldrh	r1, [r1, #2]
	strb	r1, [r0, #1]
	movs	r1, r3
	ldr	r3, .L1107+4
	bl	.L5
	add	sp, sp, #8
	@ sp needed
	pop	{r4}
	pop	{r0}
	bx	r0
.L1108:
	.align	2
.L1107:
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
	ldr	r3, .L1110
	push	{r4, lr}
	movs	r2, r1
	@ sp needed
	ldr	r1, [r3]
	ldr	r3, .L1110+4
	ldr	r3, [r3]
	bl	.L5
	pop	{r4}
	pop	{r0}
	bx	r0
.L1111:
	.align	2
.L1110:
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
	ldr	r3, .L1114
	ldrb	r3, [r3, #22]
	bics	r3, r2
	cmp	r3, #1
	bne	.L1112
	ldr	r3, .L1114+4
	ldr	r3, [r3]
	movs	r2, r1
	movs	r1, r0
	movs	r0, r3
	ldr	r3, .L1114+8
	bl	.L5
.L1112:
	@ sp needed
	pop	{r4}
	pop	{r0}
	bx	r0
.L1115:
	.align	2
.L1114:
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
	ldr	r3, .L1117
	push	{r4, lr}
	movs	r2, r1
	@ sp needed
	ldr	r1, [r3]
	ldr	r3, .L1117+4
	ldr	r3, [r3]
	bl	.L5
	pop	{r4}
	pop	{r0}
	bx	r0
.L1118:
	.align	2
.L1117:
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
	ldr	r7, .L1143
	ldr	r3, [r7]
	movs	r6, r0
	ldrh	r4, [r3]
	ldr	r0, .L1143+4
	movs	r2, r1
	cmp	r4, r0
	bne	.LCB7160
	b	.L1140	@long jump
.LCB7160:
	ldrh	r3, [r3, #2]
	cmp	r3, #0
	beq	.L1119
	movs	r5, #8
	ldr	r3, .L1143+8
	ldrb	r3, [r3, #22]
	bics	r3, r5
	cmp	r3, #1
	beq	.L1119
	ldr	r3, .L1143+12
	mov	r8, r3
	ldr	r1, [r3]
	ldr	r3, .L1143+16
	movs	r0, r6
	ldr	r3, [r3]
	bl	.L5
	mov	r3, r8
	ldr	r0, [r3]
	ldr	r4, [r0]
	cmp	r4, #0
	beq	.L1141
.L1122:
	movs	r3, r0
	ldr	r2, [r7]
	ldr	r1, .L1143+20
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
	bcs	.L1124
.L1123:
	ldrh	r2, [r3, #2]
	subs	r4, r4, r2
	adds	r5, r5, r2
	cmp	r10, r3
	beq	.L1142
	adds	r3, r3, r2
	mov	r2, ip
	adds	r2, r4, r2
	cmp	r2, r1
	bls	.L1124
	cmp	r3, #0
	bne	.L1123
	strh	r3, [r3]
	.inst	0xdeff
.L1124:
	movs	r1, #0
	strh	r1, [r3]
	adds	r3, r0, r4
	mov	ip, r3
	mov	r3, r10
	cmp	r3, #0
	beq	.L1128
	mov	r1, r9
	ldrh	r3, [r3, #2]
	strh	r3, [r1]
.L1128:
	mov	r3, ip
	str	r3, [r0, #4]
	ldr	r3, .L1143+24
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
	ldr	r3, .L1143+28
	ldrh	r4, [r3, #12]
	movs	r3, #224
	lsls	r3, r3, #20
	mov	ip, r3
	ldr	r0, .L1143+32
	lsls	r0, r0, #16
	ldr	r3, .L1143+36
	lsrs	r0, r0, #16
	add	r4, r4, ip
	bl	.L5
	ldrh	r1, [r0]
	movs	r2, #4
	movs	r0, r5
	adds	r1, r4, r1
	bl	.L9
.L1119:
	@ sp needed
	pop	{r5, r6, r7}
	mov	r10, r7
	mov	r9, r6
	mov	r8, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L1142:
	movs	r3, #0
	strh	r3, [r3]
	.inst	0xdeff
.L1141:
	str	r5, [r0]
	adds	r4, r4, #8
	b	.L1122
.L1140:
	ldr	r3, .L1143+12
	movs	r1, r6
	movs	r2, #8
	ldr	r0, [r3]
	ldr	r6, .L1143+24
	bl	.L11
	movs	r3, #0
	ldr	r5, [r7]
	strh	r3, [r5, #2]
	strh	r3, [r5]
	ldr	r3, .L1143+28
	ldrh	r4, [r3, #12]
	movs	r3, #224
	lsls	r3, r3, #20
	mov	ip, r3
	ldr	r0, .L1143+32
	lsls	r0, r0, #16
	ldr	r3, .L1143+36
	lsrs	r0, r0, #16
	add	r4, r4, ip
	bl	.L5
	ldrh	r1, [r0]
	movs	r2, #4
	movs	r0, r5
	adds	r1, r4, r1
	bl	.L11
	b	.L1119
.L1144:
	.align	2
.L1143:
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
	ldr	r3, .L1148
	push	{r4, r5, lr}
	ldr	r5, [r3]
	ldr	r3, .L1148+4
	ldrh	r4, [r3, #12]
	movs	r3, #224
	lsls	r3, r3, #20
	mov	ip, r3
	ldr	r0, .L1148+8
	lsls	r0, r0, #16
	sub	sp, sp, #12
	ldr	r3, .L1148+12
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
.L1149:
	.align	2
.L1148:
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
	ldr	r3, .L1151
	@ sp needed
	bl	.L5
	ldr	r3, .L1151+4
	movs	r1, #3
	ldr	r0, .L1151+8
	bl	.L5
	movs	r3, #0
	str	r3, [r0, #80]
	str	r3, [r0, #84]
	movs	r0, #23
	pop	{r4}
	pop	{r1}
	bx	r1
.L1152:
	.align	2
.L1151:
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
	bne	.L1154
	ldrb	r0, [r1, #1]
	cmp	r0, #255
	beq	.L1159
	movs	r3, #63
	movs	r2, r0
	bics	r2, r3
	cmp	r2, #192
	beq	.L1160
.L1158:
	ldr	r3, .L1161
	bl	.L5
	movs	r4, r0
.L1156:
	ldr	r3, [r4, #4]
	ldrb	r7, [r3, #4]
	ldr	r3, [r4]
	ldrh	r0, [r3]
	ldr	r3, .L1161+4
	bl	.L5
	ldr	r3, .L1161+8
	movs	r1, r0
	movs	r0, r6
	bl	.L5
	movs	r0, r4
	ldr	r3, .L1161+12
	bl	.L5
	movs	r3, #1
	movs	r2, r7
	str	r0, [sp]
	movs	r1, #0
	ldr	r4, .L1161+16
	rsbs	r3, r3, #0
	movs	r0, #0
	bl	.L208
	movs	r3, #128
	movs	r2, #70
	lsls	r3, r3, #3
	str	r0, [r5, #80]
	ldr	r1, [r0, #48]
	strh	r3, [r0, r2]
	ldr	r4, .L1161+20
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
	ldr	r3, .L1161+24
	bl	.L5
	add	sp, sp, #84
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L1154:
	ldr	r2, .L1161+28
	ldrb	r3, [r1, #5]
	ldr	r0, [r2]
	lsls	r3, r3, #2
	ldrb	r2, [r1, #4]
	ldr	r3, [r3, r0]
	ldrb	r0, [r3, r2]
	b	.L1158
.L1159:
	movs	r3, #0
	movs	r2, #0
	adds	r1, r1, #4
	add	r0, sp, #8
	bl	REW_loadUnit
	add	r4, sp, #8
	b	.L1156
.L1160:
	ldr	r3, .L1161
	bics	r0, r2
	bl	.L5
	movs	r4, r0
	b	.L1156
.L1162:
	.align	2
.L1161:
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
	ldr	r6, .L1175
	ldrb	r0, [r1, #1]
	sub	sp, sp, #80
	mov	r8, r2
	bl	.L11
	ldrb	r3, [r4]
	movs	r5, r0
	cmp	r3, #2
	beq	.L1170
	cmp	r3, #65
	beq	.L1171
.L1163:
	add	sp, sp, #80
	@ sp needed
	pop	{r7}
	mov	r8, r7
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L1171:
	ldrb	r3, [r4, #1]
	lsls	r3, r3, #31
	bmi	.L1172
	movs	r0, #27
	ldr	r3, .L1175+4
	bl	.L5
	movs	r1, r0
.L1169:
	mov	r0, r8
	ldr	r3, .L1175+8
	bl	.L5
	b	.L1163
.L1170:
	ldrb	r0, [r4, #1]
	cmp	r0, #255
	beq	.L1173
	movs	r3, #63
	movs	r2, r0
	bics	r2, r3
	cmp	r2, #192
	beq	.L1174
.L1166:
	ldr	r3, [r5, #4]
	ldrb	r6, [r3, #4]
	ldr	r3, [r5]
	ldrh	r0, [r3]
	ldr	r3, .L1175+12
	bl	.L5
	ldr	r3, .L1175+8
	movs	r1, r0
	mov	r0, r8
	bl	.L5
	mov	r0, r8
	ldr	r3, .L1175+16
	bl	.L5
	ldr	r3, .L1175+20
	movs	r4, r0
	movs	r0, r5
	bl	.L5
	movs	r3, #1
	movs	r2, r6
	str	r0, [sp]
	movs	r1, #0
	ldr	r5, .L1175+24
	rsbs	r3, r3, #0
	movs	r0, #0
	bl	.L6
	movs	r3, #128
	movs	r2, #70
	lsls	r3, r3, #3
	str	r0, [r7, #84]
	ldr	r1, [r0, #48]
	strh	r3, [r0, r2]
	ldr	r5, .L1175+28
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
	ldr	r3, .L1175+32
	bl	.L5
	b	.L1163
.L1172:
	movs	r0, #51
	ldr	r3, .L1175+4
	bl	.L5
	movs	r1, r0
	b	.L1169
.L1173:
	movs	r3, #0
	movs	r2, #0
	adds	r1, r4, #4
	add	r0, sp, #8
	bl	REW_loadUnit
	add	r5, sp, #8
	b	.L1166
.L1174:
	bics	r0, r2
	bl	.L11
	movs	r5, r0
	b	.L1166
.L1176:
	.align	2
.L1175:
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
	ldr	r4, .L1188
	ldrh	r3, [r1, #2]
	lsls	r4, r4, #16
	lsrs	r4, r4, #16
	ands	r6, r3
	tst	r2, r3
	beq	.L1178
	adds	r3, r3, #4
	subs	r3, r3, r6
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
.L1178:
	ldrh	r2, [r0, #2]
	adds	r3, r1, r3
	adds	r0, r0, r2
	cmp	r3, r0
	bcs	.L1179
	ldrb	r2, [r3]
	cmp	r2, #65
	beq	.L1187
.L1182:
	@ sp needed
	movs	r0, r4
	ldr	r3, .L1188+4
	bl	.L5
	ldr	r3, .L1188+8
	movs	r1, r0
	movs	r0, r5
	bl	.L5
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L1187:
	ldrb	r2, [r3, #6]
	ldrb	r1, [r3, #5]
	ldrb	r0, [r3, #4]
	ldr	r3, .L1188+12
	bl	.L5
	cmp	r0, #0
	bne	.L1182
	ldr	r4, .L1188+16
	lsls	r4, r4, #16
	lsrs	r4, r4, #16
	b	.L1182
.L1179:
	movs	r3, #0
	ldrb	r3, [r3]
	.inst	0xdeff
.L1189:
	.align	2
.L1188:
	.word	REW_combat
	.word	GetStringFromIndex
	.word	Text_DrawString
	.word	GetTypedTrapAt
	.word	REW_obstacleDestroyed
	.size	REW_displayCombatVerb, .-REW_displayCombatVerb
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC320:
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
	bpl	.LCB7804
	b	.L1243	@long jump
.LCB7804:
	ldr	r6, .L1257
	ldr	r5, .L1257+4
.L1191:
	lsls	r2, r3, #31
	bpl	.L1196
	ldr	r2, .L1257+8
	ldrb	r2, [r2, #15]
	cmp	r2, #64
	bne	.LCB7818
	b	.L1220	@long jump
.LCB7818:
	subs	r2, r2, #128
	rsbs	r1, r2, #0
	adcs	r2, r2, r1
	lsls	r2, r2, #12
.L1197:
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
.L1196:
	movs	r2, #4
	movs	r7, r2
	ldr	r0, [r4, #92]
	ands	r7, r3
	tst	r2, r3
	bne	.LCB7847
	b	.L1198	@long jump
.LCB7847:
	cmp	r0, #0
	bne	.LCB7849
	b	.L1250	@long jump
.LCB7849:
.L1199:
	movs	r2, #8
	movs	r7, r2
	ldr	r0, [r4, #96]
	ands	r7, r3
	tst	r2, r3
	bne	.LCB7858
	b	.L1200	@long jump
.LCB7858:
.L1256:
	cmp	r0, #0
	bne	.LCB7861
	b	.L1251	@long jump
.LCB7861:
.L1201:
	ldr	r3, .L1257+12
	bl	.L5
	movs	r3, #0
	str	r3, [r4, #80]
	str	r3, [r4, #84]
	movs	r3, #166
	ldr	r0, .L1257+16
	lsls	r3, r3, #3
	movs	r2, r0
	mov	ip, r3
	movs	r1, #0
	adds	r2, r2, #48
	add	r0, r0, ip
.L1202:
	movs	r3, r2
	subs	r3, r3, #48
.L1203:
	strh	r1, [r3]
	adds	r3, r3, #2
	cmp	r3, r2
	bne	.L1203
	adds	r3, r3, #64
	movs	r2, r3
	cmp	r3, r0
	bne	.L1202
	movs	r3, #41
	movs	r7, r4
	ldrb	r3, [r4, r3]
	adds	r7, r7, #48
	lsls	r2, r3, #27
	bpl	.L1206
	adds	r7, r7, #8
.L1206:
	movs	r2, #16
	eors	r3, r2
	movs	r2, #41
	movs	r0, r7
	strb	r3, [r4, r2]
	bl	.L11
	ldr	r3, .L1257+20
	movs	r1, #2
	movs	r0, r7
	bl	.L5
	ldr	r2, [r4, #44]
	ldrb	r3, [r2, #4]
	adds	r6, r2, #4
	cmp	r3, #20
	beq	.L1216
.L1252:
	cmp	r3, #64
	bne	.LCB7920
	b	.L1217	@long jump
.LCB7920:
	cmp	r3, #2
	beq	.L1218
	movs	r1, #3
	movs	r0, r1
	ldrh	r3, [r6, #2]
	ands	r0, r3
	tst	r1, r3
	beq	.L1214
	adds	r3, r3, #4
	subs	r3, r3, r0
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
.L1214:
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
	bne	.L1252
.L1216:
	movs	r0, r4
	movs	r2, r7
	movs	r1, r6
	bl	REW_displayActor
	ldr	r0, .L1257+24
.L1249:
	lsls	r0, r0, #16
	ldr	r3, .L1257+28
	lsrs	r0, r0, #16
	bl	.L5
	ldr	r3, .L1257+32
	movs	r1, r0
	movs	r0, r7
	bl	.L5
	movs	r0, r7
	ldr	r1, .L1257+36
	bl	.L6
	b	.L1210
.L1243:
	movs	r5, r0
	ldr	r3, .L1257+8
	ldrh	r7, [r3, #16]
	adds	r5, r5, #64
	lsls	r3, r7, #31
	bpl	.L1193
	adds	r5, r5, #8
.L1193:
	movs	r0, r5
	ldr	r6, .L1257
	bl	.L11
	movs	r1, #2
	movs	r0, r5
	ldr	r3, .L1257+40
	bl	.L5
	cmp	r7, #9
	ble	.L1253
	cmp	r7, #99
	bgt	.LCB7995
	b	.L1254	@long jump
.LCB7995:
.L1195:
	movs	r0, r5
	ldr	r1, .L1257+44
	ldr	r5, .L1257+4
	bl	.L6
	movs	r2, #41
	movs	r1, #2
	ldrb	r3, [r4, r2]
	bics	r3, r1
	strb	r3, [r4, r2]
	b	.L1191
.L1218:
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
	bne	.L1255
.L1208:
	ldrh	r2, [r3, #2]
	adds	r1, r6, r1
	adds	r3, r3, r2
	cmp	r1, r3
	sbcs	r3, r3, r3
	movs	r2, r7
	ands	r1, r3
	movs	r0, r4
	bl	REW_displayTarget
	ldr	r1, .L1257+48
	movs	r0, r7
	ldr	r3, .L1257+52
	bl	.L5
	movs	r0, r7
	ldr	r1, .L1257+56
	bl	.L6
.L1210:
	movs	r0, #0
	ldr	r3, .L1257+60
	bl	.L5
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L1198:
	cmp	r0, #0
	bne	.LCB8064
	b	.L1199	@long jump
.LCB8064:
	ldr	r3, .L1257+64
	bl	.L5
	movs	r2, #8
	movs	r3, #41
	str	r7, [r4, #92]
	movs	r7, r2
	ldrb	r3, [r4, r3]
	ldr	r0, [r4, #96]
	ands	r7, r3
	tst	r2, r3
	beq	.LCB8075
	b	.L1256	@long jump
.LCB8075:
.L1200:
	cmp	r0, #0
	bne	.LCB8078
	b	.L1201	@long jump
.LCB8078:
	ldr	r3, .L1257+64
	bl	.L5
	str	r7, [r4, #96]
	b	.L1201
.L1217:
	ldr	r3, .L1257+8
	ldrb	r3, [r3, #15]
	cmp	r3, #0
	beq	.L1211
	cmp	r3, #128
	beq	.L1212
	movs	r0, r7
	movs	r1, #4
	ldr	r3, .L1257+68
	bl	.L5
	ldr	r0, .L1257+72
	b	.L1249
.L1255:
	adds	r1, r1, #4
	subs	r1, r1, r0
	lsls	r1, r1, #16
	lsrs	r1, r1, #16
	b	.L1208
.L1220:
	movs	r2, #128
	lsls	r2, r2, #6
	b	.L1197
.L1253:
	movs	r0, r5
	movs	r1, #6
	ldr	r3, .L1257+68
	bl	.L5
	movs	r1, r7
	movs	r0, r5
	ldr	r3, .L1257+76
	bl	.L5
	b	.L1195
.L1250:
	ldr	r7, .L1257+80
	movs	r3, #0
	str	r0, [sp, #4]
	str	r0, [sp]
	movs	r2, #0
	movs	r0, r7
	movs	r1, #0
	ldr	r7, .L1257+84
	bl	.L7
	movs	r3, #41
	str	r0, [r4, #92]
	ldrb	r3, [r4, r3]
	b	.L1199
.L1251:
	ldr	r7, .L1257+88
	str	r0, [sp, #4]
	str	r0, [sp]
	movs	r3, #0
	movs	r0, r7
	movs	r2, #0
	movs	r1, #0
	ldr	r7, .L1257+84
	bl	.L7
	str	r0, [r4, #96]
	b	.L1201
.L1212:
	movs	r0, r7
	movs	r1, #1
	ldr	r3, .L1257+68
	bl	.L5
	ldr	r0, .L1257+92
	b	.L1249
.L1254:
	ldr	r3, .L1257+96
	movs	r1, #10
	movs	r0, r7
	bl	.L5
	ldr	r3, .L1257+76
	movs	r1, r0
	movs	r0, r5
	str	r3, [sp, #12]
	bl	.L5
	movs	r0, r5
	movs	r1, #16
	ldr	r3, .L1257+68
	bl	.L5
	movs	r0, r7
	ldr	r3, .L1257+100
	movs	r1, #10
	bl	.L5
	movs	r0, r5
	ldr	r3, [sp, #12]
	bl	.L5
	b	.L1195
.L1211:
	ldr	r0, .L1257+104
	b	.L1249
.L1258:
	.align	2
.L1257:
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
	.word	.LC320
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
	beq	.L1260
.L1287:
	adds	r3, r3, #4
	subs	r3, r3, r1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
.L1260:
	adds	r3, r4, r3
	cmp	r3, r0
	bcs	.L1261
.L1288:
	cmp	r3, #0
	beq	.L1261
	movs	r4, r3
	movs	r1, r2
	ldrh	r3, [r4, #2]
	ands	r1, r3
	tst	r2, r3
	bne	.L1287
	adds	r3, r4, r3
	cmp	r3, r0
	bcc	.L1288
.L1261:
	ldr	r6, .L1290
.L1274:
	ldrb	r3, [r4]
	cmp	r3, #75
	bhi	.L1263
	lsls	r3, r3, #2
	ldr	r3, [r6, r3]
	mov	pc, r3
	.section	.rodata
	.align	2
.L1265:
	.word	.L1263
	.word	.L1263
	.word	.L1270
	.word	.L1263
	.word	.L1263
	.word	.L1263
	.word	.L1263
	.word	.L1263
	.word	.L1263
	.word	.L1263
	.word	.L1263
	.word	.L1263
	.word	.L1263
	.word	.L1263
	.word	.L1263
	.word	.L1263
	.word	.L1263
	.word	.L1263
	.word	.L1263
	.word	.L1263
	.word	.L1273
	.word	.L1263
	.word	.L1263
	.word	.L1263
	.word	.L1263
	.word	.L1263
	.word	.L1263
	.word	.L1263
	.word	.L1263
	.word	.L1263
	.word	.L1263
	.word	.L1263
	.word	.L1263
	.word	.L1263
	.word	.L1263
	.word	.L1263
	.word	.L1263
	.word	.L1263
	.word	.L1263
	.word	.L1263
	.word	.L1263
	.word	.L1263
	.word	.L1263
	.word	.L1263
	.word	.L1263
	.word	.L1263
	.word	.L1263
	.word	.L1263
	.word	.L1263
	.word	.L1263
	.word	.L1263
	.word	.L1263
	.word	.L1263
	.word	.L1263
	.word	.L1263
	.word	.L1263
	.word	.L1263
	.word	.L1263
	.word	.L1263
	.word	.L1263
	.word	.L1263
	.word	.L1263
	.word	.L1263
	.word	.L1263
	.word	.L1272
	.word	.L1271
	.word	.L1270
	.word	.L1269
	.word	.L1269
	.word	.L1268
	.word	.L1267
	.word	.L1263
	.word	.L1263
	.word	.L1263
	.word	.L1266
	.word	.L1264
	.text
.L1272:
	movs	r0, r4
	bl	REW_undoPhaseChange
.L1263:
	movs	r1, r4
	movs	r0, r5
	bl	REW_prevEntry
	subs	r4, r0, #0
	bne	.L1274
.L1289:
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L1269:
	ldrb	r0, [r4, #1]
	ldr	r3, .L1290+4
	bl	.L5
	cmp	r0, #0
	beq	.L1263
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L1263
	ldr	r3, .L1290+8
	bl	.L5
	movs	r1, r4
	movs	r0, r5
	bl	REW_prevEntry
	subs	r4, r0, #0
	bne	.L1274
	b	.L1289
.L1270:
	movs	r0, r4
	bl	REW_undoCombat
	movs	r1, r4
	movs	r0, r5
	bl	REW_prevEntry
	subs	r4, r0, #0
	bne	.L1274
	b	.L1289
.L1273:
	movs	r0, r4
	bl	REW_undoChestOpened
	movs	r1, r4
	movs	r0, r5
	bl	REW_prevEntry
	subs	r4, r0, #0
	bne	.L1274
	b	.L1289
.L1271:
	movs	r0, r4
	bl	REW_undoObstacleCombat
	movs	r1, r4
	movs	r0, r5
	bl	REW_prevEntry
	subs	r4, r0, #0
	bne	.L1274
	b	.L1289
.L1264:
	movs	r0, r4
	bl	REW_undoUnitMove
	movs	r1, r4
	movs	r0, r5
	bl	REW_prevEntry
	subs	r4, r0, #0
	bne	.L1274
	b	.L1289
.L1268:
	movs	r0, r4
	movs	r1, #1
	bl	REW_doInventoryReorder
	movs	r1, r4
	movs	r0, r5
	bl	REW_prevEntry
	subs	r4, r0, #0
	bne	.L1274
	b	.L1289
.L1266:
	movs	r0, r4
	bl	REW_undoUnitSupplyExchange
	movs	r1, r4
	movs	r0, r5
	bl	REW_prevEntry
	subs	r4, r0, #0
	bne	.L1274
	b	.L1289
.L1267:
	movs	r0, r4
	bl	REW_undoItemObtainedUnit
	movs	r1, r4
	movs	r0, r5
	bl	REW_prevEntry
	subs	r4, r0, #0
	beq	.LCB8409
	b	.L1274	@long jump
.LCB8409:
	b	.L1289
.L1291:
	.align	2
.L1290:
	.word	.L1265
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
	ldr	r7, .L1311
	adds	r4, r0, #4
.L1306:
	ldrb	r3, [r4]
	cmp	r3, #75
	bhi	.L1293
	lsls	r3, r3, #2
	ldr	r3, [r7, r3]
	mov	pc, r3
	.section	.rodata
	.align	2
.L1295:
	.word	.L1293
	.word	.L1293
	.word	.L1300
	.word	.L1293
	.word	.L1293
	.word	.L1293
	.word	.L1293
	.word	.L1293
	.word	.L1293
	.word	.L1293
	.word	.L1293
	.word	.L1293
	.word	.L1293
	.word	.L1293
	.word	.L1293
	.word	.L1293
	.word	.L1293
	.word	.L1293
	.word	.L1293
	.word	.L1293
	.word	.L1303
	.word	.L1293
	.word	.L1293
	.word	.L1293
	.word	.L1293
	.word	.L1293
	.word	.L1293
	.word	.L1293
	.word	.L1293
	.word	.L1293
	.word	.L1293
	.word	.L1293
	.word	.L1293
	.word	.L1293
	.word	.L1293
	.word	.L1293
	.word	.L1293
	.word	.L1293
	.word	.L1293
	.word	.L1293
	.word	.L1293
	.word	.L1293
	.word	.L1293
	.word	.L1293
	.word	.L1293
	.word	.L1293
	.word	.L1293
	.word	.L1293
	.word	.L1293
	.word	.L1293
	.word	.L1293
	.word	.L1293
	.word	.L1293
	.word	.L1293
	.word	.L1293
	.word	.L1293
	.word	.L1293
	.word	.L1293
	.word	.L1293
	.word	.L1293
	.word	.L1293
	.word	.L1293
	.word	.L1293
	.word	.L1293
	.word	.L1302
	.word	.L1301
	.word	.L1300
	.word	.L1299
	.word	.L1299
	.word	.L1298
	.word	.L1297
	.word	.L1293
	.word	.L1293
	.word	.L1293
	.word	.L1296
	.word	.L1294
	.text
.L1302:
	movs	r0, r4
	bl	REW_redoPhaseChange
.L1293:
	movs	r2, r6
	ldrh	r3, [r4, #2]
	ands	r2, r3
	tst	r6, r3
	beq	.L1304
	adds	r3, r3, #4
	subs	r3, r3, r2
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
.L1304:
	adds	r4, r4, r3
	ldrh	r3, [r5, #2]
	adds	r3, r5, r3
	cmp	r4, r3
	bcs	.L1292
	cmp	r4, #0
	bne	.L1306
.L1292:
	@ sp needed
	pop	{r3, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L1299:
	ldr	r3, .L1311+4
	adds	r0, r4, #4
	bl	.L5
	b	.L1293
.L1300:
	movs	r0, r4
	bl	REW_redoCombat
	b	.L1293
.L1303:
	movs	r0, r4
	bl	REW_redoChestOpened
	b	.L1293
.L1301:
	movs	r0, r4
	bl	REW_redoObstacleCombat
	b	.L1293
.L1294:
	movs	r0, r4
	bl	REW_redoUnitMove
	b	.L1293
.L1298:
	movs	r1, #0
	movs	r0, r4
	bl	REW_doInventoryReorder
	b	.L1293
.L1296:
	movs	r0, r4
	bl	REW_redoUnitSupplyExchange
	b	.L1293
.L1297:
	movs	r0, r4
	bl	REW_redoItemObtainedUnit
	b	.L1293
.L1312:
	.align	2
.L1311:
	.word	.L1295
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
	ldr	r5, .L1380
	ldrb	r3, [r5, #15]
	mov	r8, r3
	ldr	r3, .L1380+4
	ldr	r3, [r3]
	ldrh	r3, [r3, #6]
	movs	r4, r0
	ldrh	r7, [r5, #16]
	lsls	r2, r3, #25
	bpl	.L1314
	movs	r2, #41
	ldrb	r2, [r0, r2]
	lsls	r2, r2, #29
	bpl	.L1314
	movs	r3, #65
	ldrb	r3, [r5, r3]
	lsls	r3, r3, #30
	bmi	.LCB8574
	b	.L1372	@long jump
.LCB8574:
.L1315:
	ldr	r3, .L1380+8
	ldr	r3, [r3]
	ldrh	r2, [r3, #2]
	ldr	r0, [r4, #44]
	ldr	r6, .L1380+12
	cmp	r2, #0
	beq	.L1316
	ldr	r2, [r6]
	ldr	r2, [r2, #4]
	cmp	r2, r0
	bne	.LCB8586
	b	.L1373	@long jump
.LCB8586:
.L1316:
	bl	REW_undo
	ldrb	r3, [r5, #15]
	cmp	r3, r8
	beq	.L1317
	movs	r2, #41
	movs	r1, #1
	ldrb	r3, [r4, r2]
	orrs	r3, r1
	strb	r3, [r4, r2]
.L1317:
	ldrh	r3, [r5, #16]
	cmp	r3, r7
	beq	.L1318
	movs	r2, #41
	movs	r1, #2
	ldrb	r3, [r4, r2]
	orrs	r3, r1
	strb	r3, [r4, r2]
.L1318:
	ldr	r2, [r6]
	ldr	r3, [r4, #44]
	adds	r2, r2, #8
	cmp	r3, r2
	bne	.LCB8613
	b	.L1319	@long jump
.LCB8613:
	ldrh	r2, [r3]
	cmp	r2, #0
	bne	.LCB8616
	b	.L1319	@long jump
.LCB8616:
	subs	r3, r3, r2
	movs	r2, #41
	str	r3, [r4, #44]
	ldrh	r3, [r3]
	ldrb	r2, [r4, r2]
	cmp	r3, #0
	bne	.LCB8623
	b	.L1374	@long jump
.LCB8623:
.L1320:
	movs	r3, #8
	orrs	r2, r3
	movs	r3, #41
	strb	r2, [r4, r3]
.L1371:
	movs	r0, r4
	bl	REW_refreshUI
	ldr	r3, .L1380+16
	bl	.L5
	ldr	r3, .L1380+20
	bl	.L5
	b	.L1313
.L1314:
	lsls	r2, r3, #24
	bpl	.L1322
	movs	r2, #41
	ldrb	r2, [r4, r2]
	lsls	r2, r2, #28
	bpl	.L1322
	movs	r3, #65
	ldrb	r3, [r5, r3]
	lsls	r3, r3, #30
	bmi	.LCB8662
	b	.L1375	@long jump
.LCB8662:
.L1323:
	ldr	r6, .L1380+12
	ldr	r3, [r6]
	ldr	r0, [r4, #44]
	ldr	r3, [r3, #4]
	cmp	r0, r3
	bne	.LCB8669
	b	.L1341	@long jump
.LCB8669:
	ldrh	r3, [r0, #2]
	adds	r0, r0, r3
.L1324:
	str	r0, [r4, #44]
	bl	REW_redo
	ldr	r3, .L1380+8
	ldr	r0, [r3]
	ldr	r3, [r6]
	ldr	r1, [r3, #4]
	ldrh	r3, [r0, #2]
	ldr	r2, [r4, #44]
	cmp	r3, #0
	bne	.LCB8683
	b	.L1325	@long jump
.LCB8683:
	cmp	r2, r1
	bcc	.LCB8685
	b	.L1326	@long jump
.LCB8685:
	movs	r3, #41
	ldrb	r0, [r5, #15]
	ldrb	r3, [r4, r3]
	cmp	r0, r8
	bne	.LCB8690
	b	.L1376	@long jump
.LCB8690:
.L1327:
	movs	r0, #1
	orrs	r3, r0
.L1330:
	ldrh	r0, [r5, #16]
	cmp	r0, r7
	beq	.L1331
.L1328:
	movs	r0, #2
	orrs	r3, r0
.L1331:
	cmp	r1, r2
	bhi	.L1329
	movs	r2, #8
	bics	r3, r2
.L1329:
	movs	r2, #4
	orrs	r3, r2
	movs	r2, #41
	strb	r3, [r4, r2]
	b	.L1371
.L1322:
	movs	r2, #2
	tst	r2, r3
	beq	.L1332
	movs	r3, #65
	ldrb	r3, [r5, r3]
	tst	r2, r3
	beq	.L1377
.L1333:
	ldr	r6, .L1380+12
	ldr	r3, [r6]
	ldr	r0, [r4, #44]
	ldr	r3, [r3, #4]
	cmp	r0, r3
	bcs	.L1337
.L1334:
	ldrh	r3, [r0, #2]
	adds	r0, r0, r3
	str	r0, [r4, #44]
	bl	REW_redo
	ldr	r3, [r6]
	ldr	r0, [r4, #44]
	ldr	r3, [r3, #4]
	cmp	r0, r3
	bcc	.L1334
.L1337:
	ldr	r3, .L1380+8
	ldr	r0, [r3]
	ldrh	r3, [r0, #2]
	cmp	r3, #0
	bne	.L1378
.L1336:
	ldr	r3, .L1380+16
	bl	.L5
	ldr	r3, .L1380+20
	bl	.L5
	movs	r1, #3
	movs	r0, r4
	ldr	r3, .L1380+24
	bl	.L5
.L1313:
	@ sp needed
	pop	{r7}
	mov	r8, r7
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L1332:
	lsls	r3, r3, #31
	bpl	.L1313
	movs	r3, #65
	ldrb	r3, [r5, r3]
	tst	r2, r3
	beq	.L1379
.L1339:
	movs	r1, #3
	ldr	r3, .L1380+24
	movs	r0, r4
	bl	.L5
	ldr	r2, .L1380+12
	ldr	r2, [r2]
	ldr	r3, [r4, #44]
	ldr	r1, [r2, #4]
	cmp	r3, r1
	bcs	.L1313
	movs	r0, #2
	ldr	r1, .L1380+8
	ldr	r1, [r1]
	rsbs	r0, r0, #0
	strh	r0, [r1]
	str	r3, [r2, #4]
	ldrh	r1, [r3, #2]
	subs	r3, r3, r2
	adds	r3, r1, r3
	str	r3, [r2]
	ldr	r3, .L1380+28
	bl	.L5
	b	.L1313
.L1377:
	movs	r0, #107
	ldr	r3, .L1380+32
	bl	.L5
	b	.L1333
.L1378:
	bl	REW_redo
	b	.L1336
.L1372:
	movs	r0, #102
	ldr	r3, .L1380+32
	bl	.L5
	b	.L1315
.L1374:
	adds	r3, r3, #4
	bics	r2, r3
	b	.L1320
.L1326:
	bl	REW_redo
	ldr	r3, [r6]
	ldr	r2, [r4, #44]
	ldr	r1, [r3, #4]
.L1325:
	movs	r3, #41
	ldrb	r0, [r5, #15]
	ldrb	r3, [r4, r3]
	cmp	r0, r8
	beq	.LCB8859
	b	.L1327	@long jump
.LCB8859:
	b	.L1330
.L1375:
	movs	r0, #102
	ldr	r3, .L1380+32
	bl	.L5
	b	.L1323
.L1373:
	movs	r0, r3
	bl	REW_undo
	ldr	r0, [r4, #44]
	b	.L1316
.L1376:
	ldrh	r0, [r5, #16]
	cmp	r0, r7
	beq	.LCB8880
	b	.L1328	@long jump
.LCB8880:
	b	.L1329
.L1379:
	movs	r0, #106
	ldr	r3, .L1380+32
	bl	.L5
	b	.L1339
.L1341:
	movs	r0, #0
	b	.L1324
.L1319:
	movs	r3, #0
	str	r3, [r4, #44]
	ldrh	r3, [r3]
	.inst	0xdeff
.L1381:
	.align	2
.L1380:
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
.LC352:
	.ascii	"REW_proc\000"
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
	.type	REW_procScr, %object
	.size	REW_procScr, 96
REW_procScr:
	.short	1
	.short	0
	.word	.LC352
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
.L615:
	bx	r2
.L5:
	bx	r3
.L208:
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
.L255:
	bx	fp
