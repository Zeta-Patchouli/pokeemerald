	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start load_intro_part2_graphics
load_intro_part2_graphics: @ 817B064
	push {r4,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	ldr r0, =gUnknown_085F0740
	ldr r1, =0x06004000
	bl LZ77UnCompVram
	ldr r0, =gUnknown_085F0BC0
	ldr r1, =0x06007800
	bl LZ77UnCompVram
	ldr r0, =gUnknown_085F06E0
	movs r1, 0xF0
	movs r2, 0x20
	bl gpu_pal_apply
	cmp r4, 0
	beq _0817B08C
	cmp r4, 0x1
	beq _0817B0EC
_0817B08C:
	ldr r0, =gUnknown_085F0DBC
	movs r1, 0xC0
	lsls r1, 19
	bl LZ77UnCompVram
	ldr r0, =gUnknown_085F1398
	ldr r1, =0x06003000
	bl LZ77UnCompVram
	ldr r0, =gUnknown_085F0CFC
	movs r1, 0
	movs r2, 0x60
	bl gpu_pal_apply
	ldr r0, =gUnknown_085F5064
	bl LoadCompressedObjectPic
	ldr r0, =gUnknown_085F1668
	movs r1, 0x80
	lsls r1, 1
	movs r2, 0x20
	bl gpu_pal_apply
	bl sub_817B76C
	b _0817B11E
	.pool
_0817B0EC:
	ldr r0, =gUnknown_085F1824
	movs r1, 0xC0
	lsls r1, 19
	bl LZ77UnCompVram
	ldr r0, =gUnknown_085F1EAC
	ldr r1, =0x06003000
	bl LZ77UnCompVram
	ldr r0, =gUnknown_085F17E4
	movs r1, 0
	movs r2, 0x20
	bl gpu_pal_apply
	ldr r0, =gUnknown_085F50EC
	bl LoadCompressedObjectPic
	ldr r0, =gUnknown_085F21B0
	movs r1, 0x80
	lsls r1, 1
	movs r2, 0x20
	bl gpu_pal_apply
	bl sub_817B788
_0817B11E:
	ldr r1, =gUnknown_0203BD28
	movs r0, 0
	strh r0, [r1]
	ldr r1, =gUnknown_0300301C
	movs r0, 0x8
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end load_intro_part2_graphics

	thumb_func_start sub_817B150
sub_817B150: @ 817B150
	push {lr}
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	beq _0817B162
	cmp r0, 0x1
	ble _0817B162
	cmp r0, 0x2
	beq _0817B194
_0817B162:
	ldr r1, =0x00000603
	movs r0, 0xE
	bl SetGpuReg
	ldr r1, =0x00000702
	movs r0, 0xC
	bl SetGpuReg
	ldr r1, =0x00000f05
	movs r0, 0xA
	bl SetGpuReg
	movs r1, 0xF2
	lsls r1, 5
	movs r0, 0
	bl SetGpuReg
	b _0817B1B6
	.pool
_0817B194:
	ldr r1, =0x00000603
	movs r0, 0xE
	bl SetGpuReg
	ldr r1, =0x00000702
	movs r0, 0xC
	bl SetGpuReg
	ldr r1, =0x00000f05
	movs r0, 0xA
	bl SetGpuReg
	movs r1, 0xF2
	lsls r1, 5
	movs r0, 0
	bl SetGpuReg
_0817B1B6:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_817B150

	thumb_func_start sub_817B1C8
sub_817B1C8: @ 817B1C8
	push {r4,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	ldr r0, =gUnknown_085F0740
	ldr r1, =0x06004000
	bl LZ77UnCompVram
	ldr r0, =gUnknown_085F0BC0
	ldr r1, =0x06007800
	bl LZ77UnCompVram
	cmp r4, 0x4
	bhi _0817B214
	lsls r0, r4, 2
	ldr r1, =_0817B200
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_0817B200:
	.4byte _0817B214
	.4byte _0817B270
	.4byte _0817B2DC
	.4byte _0817B2DC
	.4byte _0817B334
_0817B214:
	ldr r0, =gUnknown_085F06E0
	movs r1, 0xF0
	movs r2, 0x20
	bl gpu_pal_apply
	ldr r0, =gUnknown_085F0DBC
	movs r1, 0xC0
	lsls r1, 19
	bl LZ77UnCompVram
	ldr r0, =gUnknown_085F1398
	ldr r1, =0x06003000
	bl LZ77UnCompVram
	ldr r0, =gUnknown_085F0CFC
	movs r1, 0
	movs r2, 0x60
	bl gpu_pal_apply
	ldr r0, =gUnknown_085F5064
	bl LoadCompressedObjectPic
	ldr r0, =gUnknown_085F16A8
	ldr r1, =0x06010000
	bl LZ77UnCompVram
	ldr r0, =gUnknown_085F1668
	b _0817B2A6
	.pool
_0817B270:
	ldr r0, =gUnknown_085F0700
	movs r1, 0xF0
	movs r2, 0x20
	bl gpu_pal_apply
	ldr r0, =gUnknown_085F0DBC
	movs r1, 0xC0
	lsls r1, 19
	bl LZ77UnCompVram
	ldr r0, =gUnknown_085F1398
	ldr r1, =0x06003000
	bl LZ77UnCompVram
	ldr r0, =gUnknown_085F0D5C
	movs r1, 0
	movs r2, 0x60
	bl gpu_pal_apply
	ldr r0, =gUnknown_085F5064
	bl LoadCompressedObjectPic
	ldr r0, =gUnknown_085F16A8
	ldr r1, =0x06010000
	bl LZ77UnCompVram
	ldr r0, =gUnknown_085F1688
_0817B2A6:
	movs r1, 0x80
	lsls r1, 1
	movs r2, 0x20
	bl gpu_pal_apply
	bl sub_817B76C
	b _0817B370
	.pool
_0817B2DC:
	ldr r0, =gUnknown_085F0700
	movs r1, 0xF0
	movs r2, 0x20
	bl gpu_pal_apply
	ldr r0, =gUnknown_085F1824
	movs r1, 0xC0
	lsls r1, 19
	bl LZ77UnCompVram
	ldr r0, =gUnknown_085F1EAC
	ldr r1, =0x06003000
	bl LZ77UnCompVram
	ldr r4, =gUnknown_085F1804
	adds r0, r4, 0
	movs r1, 0
	movs r2, 0x20
	bl gpu_pal_apply
	ldr r0, =gUnknown_085F50EC
	bl LoadCompressedObjectPic
	movs r1, 0x80
	lsls r1, 1
	adds r0, r4, 0
	movs r2, 0x20
	bl gpu_pal_apply
	bl sub_817B788
	b _0817B370
	.pool
_0817B334:
	ldr r0, =gUnknown_085F0720
	movs r1, 0xF0
	movs r2, 0x20
	bl gpu_pal_apply
	ldr r0, =gUnknown_085F235C
	movs r1, 0xC0
	lsls r1, 19
	bl LZ77UnCompVram
	ldr r0, =gUnknown_085F2568
	ldr r1, =0x06003000
	bl LZ77UnCompVram
	ldr r0, =gUnknown_085F231C
	movs r1, 0
	movs r2, 0x40
	bl gpu_pal_apply
	ldr r0, =gUnknown_085F5180
	bl LoadCompressedObjectPic
	ldr r0, =gUnknown_085F2548
	movs r1, 0x80
	lsls r1, 1
	movs r2, 0x20
	bl gpu_pal_apply
	bl sub_817B7A4
_0817B370:
	ldr r1, =gUnknown_0300301C
	movs r0, 0x8
	strb r0, [r1]
	ldr r1, =gUnknown_0203BD28
	movs r0, 0
	strh r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_817B1C8

	thumb_func_start sub_817B3A8
sub_817B3A8: @ 817B3A8
	push {lr}
	ldr r1, =0x00000603
	movs r0, 0xE
	bl SetGpuReg
	ldr r1, =0x00000702
	movs r0, 0xC
	bl SetGpuReg
	ldr r1, =0x00000f05
	movs r0, 0xA
	bl SetGpuReg
	movs r1, 0xFA
	lsls r1, 5
	movs r0, 0
	bl SetGpuReg
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_817B3A8

	thumb_func_start sub_817B3DC
sub_817B3DC: @ 817B3DC
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	sub sp, 0x4
	adds r5, r0, 0
	adds r6, r1, 0
	mov r8, r2
	lsls r5, 24
	lsrs r5, 24
	lsls r6, 16
	lsrs r6, 16
	mov r0, r8
	lsls r0, 16
	lsrs r0, 16
	mov r8, r0
	lsls r3, 16
	lsrs r3, 16
	ldr r1, =sub_817B458
	mov r9, r1
	mov r0, r9
	movs r1, 0
	str r3, [sp]
	bl CreateTask
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	ldr r1, =gTasks
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r0, r1
	movs r2, 0
	strh r5, [r0, 0x8]
	strh r6, [r0, 0xA]
	strh r2, [r0, 0xC]
	strh r2, [r0, 0xE]
	mov r1, r8
	strh r1, [r0, 0x10]
	strh r2, [r0, 0x12]
	strh r2, [r0, 0x14]
	ldr r3, [sp]
	strh r3, [r0, 0x16]
	movs r1, 0x8
	strh r1, [r0, 0x18]
	strh r2, [r0, 0x1A]
	adds r0, r4, 0
	bl _call_via_r9
	adds r0, r4, 0
	add sp, 0x4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_817B3DC

	thumb_func_start sub_817B458
sub_817B458: @ 817B458
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r5, r0, 24
	ldr r1, =gTasks
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	adds r4, r0, r1
	ldrh r0, [r4, 0xA]
	lsls r2, r0, 16
	cmp r2, 0
	beq _0817B4A0
	movs r1, 0xC
	ldrsh r0, [r4, r1]
	lsls r0, 16
	ldrh r1, [r4, 0xE]
	adds r1, r0, r1
	lsrs r0, r2, 12
	subs r1, r0
	asrs r0, r1, 16
	strh r0, [r4, 0xC]
	strh r1, [r4, 0xE]
	ldrh r1, [r4, 0xC]
	movs r0, 0x14
	bl SetGpuReg
	ldr r2, =gUnknown_0203BD24
	ldr r0, =gUnknown_0203BD26
	ldrh r1, [r0]
	ldrh r2, [r2]
	adds r1, r2
	lsls r1, 16
	lsrs r1, 16
	movs r0, 0x16
	bl SetGpuReg
_0817B4A0:
	ldrh r0, [r4, 0x10]
	lsls r2, r0, 16
	cmp r2, 0
	beq _0817B4FA
	movs r1, 0x12
	ldrsh r0, [r4, r1]
	lsls r0, 16
	ldrh r1, [r4, 0x14]
	adds r1, r0, r1
	lsrs r0, r2, 12
	subs r1, r0
	asrs r0, r1, 16
	strh r0, [r4, 0x12]
	strh r1, [r4, 0x14]
	ldrh r1, [r4, 0x12]
	movs r0, 0x18
	bl SetGpuReg
	movs r1, 0x8
	ldrsh r0, [r4, r1]
	cmp r0, 0
	beq _0817B4F0
	ldr r2, =gUnknown_0203BD24
	ldr r0, =gUnknown_0203BD26
	ldrh r1, [r0]
	ldrh r2, [r2]
	adds r1, r2
	lsls r1, 16
	lsrs r1, 16
	movs r0, 0x1A
	bl SetGpuReg
	b _0817B4FA
	.pool
_0817B4F0:
	ldr r0, =gUnknown_0203BD24
	ldrh r1, [r0]
	movs r0, 0x1A
	bl SetGpuReg
_0817B4FA:
	ldr r0, =gTasks
	lsls r1, r5, 2
	adds r1, r5
	lsls r1, 3
	adds r2, r1, r0
	ldrh r0, [r2, 0x16]
	lsls r3, r0, 16
	cmp r3, 0
	beq _0817B532
	movs r1, 0x18
	ldrsh r0, [r2, r1]
	lsls r0, 16
	ldrh r1, [r2, 0x1A]
	adds r1, r0, r1
	lsrs r0, r3, 12
	subs r1, r0
	asrs r0, r1, 16
	strh r0, [r2, 0x18]
	strh r1, [r2, 0x1A]
	ldrh r1, [r2, 0x18]
	movs r0, 0x1C
	bl SetGpuReg
	ldr r0, =gUnknown_0203BD24
	ldrh r1, [r0]
	movs r0, 0x1E
	bl SetGpuReg
_0817B532:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_817B458

	thumb_func_start sub_817B540
sub_817B540: @ 817B540
	push {r4,lr}
	sub sp, 0x4
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	beq _0817B620
	cmp r0, 0x1
	ble _0817B554
	cmp r0, 0x2
	beq _0817B5B8
_0817B554:
	ldr r0, =gUnknown_030022C0
	ldr r2, [r0, 0x20]
	movs r0, 0x3
	ands r0, r2
	cmp r0, 0
	bne _0817B620
	ldr r0, =gUnknown_02037FD4
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	bne _0817B620
	movs r0, 0x4
	ands r2, r0
	cmp r2, 0
	beq _0817B58C
	ldr r2, =gUnknown_02037714
	ldrh r1, [r2, 0x12]
	mov r0, sp
	strh r1, [r0]
	ldrh r1, [r2, 0x14]
	b _0817B596
	.pool
_0817B58C:
	ldr r2, =gUnknown_02037714
	ldrh r1, [r2, 0x14]
	mov r0, sp
	strh r1, [r0]
	ldrh r1, [r2, 0x12]
_0817B596:
	adds r0, 0x2
	strh r1, [r0]
	adds r4, r0, 0
	mov r0, sp
	movs r1, 0x9
	movs r2, 0x2
	bl gpu_pal_apply
	adds r0, r4, 0
	movs r1, 0xA
	movs r2, 0x2
	bl gpu_pal_apply
	b _0817B620
	.pool
_0817B5B8:
	ldr r0, =gUnknown_030022C0
	ldr r2, [r0, 0x20]
	movs r0, 0x3
	ands r0, r2
	cmp r0, 0
	bne _0817B620
	ldr r0, =gUnknown_02037FD4
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	bne _0817B620
	movs r0, 0x4
	ands r2, r0
	cmp r2, 0
	beq _0817B5F8
	mov r1, sp
	ldr r2, =0x00003d27
	adds r0, r2, 0
	strh r0, [r1]
	adds r1, 0x2
	ldr r2, =0x00000295
	b _0817B606
	.pool
_0817B5F8:
	mov r1, sp
	movs r2, 0xC7
	lsls r2, 2
	adds r0, r2, 0
	strh r0, [r1]
	adds r1, 0x2
	ldr r2, =0x00003d27
_0817B606:
	adds r0, r2, 0
	strh r0, [r1]
	adds r4, r1, 0
	mov r0, sp
	movs r1, 0xC
	movs r2, 0x2
	bl gpu_pal_apply
	adds r0, r4, 0
	movs r1, 0xD
	movs r2, 0x2
	bl gpu_pal_apply
_0817B620:
	add sp, 0x4
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_817B540

	thumb_func_start sub_817B62C
sub_817B62C: @ 817B62C
	push {lr}
	adds r2, r0, 0
	ldr r0, =gUnknown_0203BD28
	movs r1, 0
	ldrsh r0, [r0, r1]
	cmp r0, 0x2
	beq _0817B690
	cmp r0, 0
	beq _0817B64C
	adds r0, r2, 0
	bl RemoveObjectAndFreeTiles
	b _0817B690
	.pool
_0817B64C:
	movs r1, 0x20
	ldrsh r0, [r2, r1]
	lsls r0, 16
	ldrh r1, [r2, 0x32]
	orrs r0, r1
	ldrh r1, [r2, 0x30]
	adds r0, r1
	asrs r1, r0, 16
	strh r1, [r2, 0x20]
	strh r0, [r2, 0x32]
	cmp r1, 0xFF
	ble _0817B668
	ldr r0, =0x0000ffe0
	strh r0, [r2, 0x20]
_0817B668:
	movs r1, 0x2E
	ldrsh r0, [r2, r1]
	cmp r0, 0
	beq _0817B688
	ldr r1, =gUnknown_0203BD24
	ldr r0, =gUnknown_0203BD26
	ldrh r0, [r0]
	ldrh r1, [r1]
	adds r0, r1
	b _0817B68C
	.pool
_0817B688:
	ldr r0, =gUnknown_0203BD24
	ldrh r0, [r0]
_0817B68C:
	negs r0, r0
	strh r0, [r2, 0x26]
_0817B690:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_817B62C

	thumb_func_start sub_817B698
sub_817B698: @ 817B698
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0xC
	str r1, [sp, 0x4]
	str r2, [sp, 0x8]
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp]
	lsls r3, 24
	lsrs r3, 24
	mov r8, r3
	movs r7, 0
	cmp r7, r8
	bcs _0817B74E
	ldr r0, =gUnknown_02020630
	mov r10, r0
	movs r2, 0x3F
	mov r9, r2
_0817B6C2:
	lsls r6, r7, 3
	ldr r0, [sp, 0x4]
	adds r6, r0
	ldrb r1, [r6, 0x1]
	ldrb r2, [r6, 0x2]
	ldrb r3, [r6, 0x3]
	ldr r0, =gUnknown_085F504C
	bl AddObjectToFront
	lsls r0, 24
	lsrs r0, 24
	lsls r5, r0, 4
	adds r5, r0
	lsls r5, 2
	mov r2, r10
	adds r4, r5, r2
	ldrb r2, [r6]
	lsls r1, r2, 26
	lsrs r1, 30
	lsrs r2, 6
	adds r0, r4, 0
	movs r3, 0
	bl CalcVecFromObjectCenterToObjectUpperLeft
	ldrb r3, [r4, 0x5]
	movs r0, 0xC
	orrs r3, r0
	strb r3, [r4, 0x5]
	ldrb r1, [r6]
	lsls r1, 26
	lsrs r1, 30
	lsls r1, 6
	ldrb r2, [r4, 0x1]
	mov r0, r9
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, 0x1]
	ldrb r1, [r6]
	lsrs r1, 6
	lsls r1, 6
	ldrb r2, [r4, 0x3]
	mov r0, r9
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, 0x3]
	movs r0, 0xF
	ands r3, r0
	strb r3, [r4, 0x5]
	ldr r0, =gUnknown_02020638
	adds r5, r0
	ldr r2, [sp, 0x8]
	str r2, [r5]
	ldrb r1, [r6]
	lsls r1, 28
	lsrs r1, 28
	adds r0, r4, 0
	bl StartObjectImageAnim
	movs r1, 0
	mov r0, sp
	ldrh r0, [r0]
	strh r0, [r4, 0x2E]
	ldrh r0, [r6, 0x4]
	strh r0, [r4, 0x30]
	strh r1, [r4, 0x32]
	adds r0, r7, 0x1
	lsls r0, 24
	lsrs r7, r0, 24
	cmp r7, r8
	bcc _0817B6C2
_0817B74E:
	add sp, 0xC
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_817B698

	thumb_func_start sub_817B76C
sub_817B76C: @ 817B76C
	push {lr}
	ldr r1, =gUnknown_085F50A4
	ldr r2, =gUnknown_085F5094
	movs r0, 0
	movs r3, 0x9
	bl sub_817B698
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_817B76C

	thumb_func_start sub_817B788
sub_817B788: @ 817B788
	push {lr}
	ldr r1, =gUnknown_085F5120
	ldr r2, =gUnknown_085F5114
	movs r0, 0x1
	movs r3, 0xC
	bl sub_817B698
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_817B788

	thumb_func_start sub_817B7A4
sub_817B7A4: @ 817B7A4
	push {lr}
	ldr r1, =gUnknown_085F519C
	ldr r2, =gUnknown_085F5198
	movs r0, 0x1
	movs r3, 0x6
	bl sub_817B698
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_817B7A4

	thumb_func_start nullsub_65
nullsub_65: @ 817B7C0
	bx lr
	thumb_func_end nullsub_65

	thumb_func_start sub_817B7C4
sub_817B7C4: @ 817B7C4
	push {r4,lr}
	ldr r4, =gUnknown_02020630
	movs r1, 0x2E
	ldrsh r2, [r0, r1]
	lsls r1, r2, 4
	adds r1, r2
	lsls r1, 2
	adds r1, r4
	adds r1, 0x3E
	ldrb r1, [r1]
	movs r2, 0x3E
	adds r2, r0
	mov r12, r2
	movs r2, 0x4
	ands r2, r1
	mov r1, r12
	ldrb r3, [r1]
	movs r1, 0x5
	negs r1, r1
	ands r1, r3
	orrs r1, r2
	mov r2, r12
	strb r1, [r2]
	movs r1, 0x2E
	ldrsh r2, [r0, r1]
	lsls r1, r2, 4
	adds r1, r2
	lsls r1, 2
	adds r1, r4
	ldrh r1, [r1, 0x20]
	strh r1, [r0, 0x20]
	lsls r1, r2, 4
	adds r1, r2
	lsls r1, 2
	adds r1, r4
	ldrh r1, [r1, 0x22]
	adds r1, 0x8
	strh r1, [r0, 0x22]
	lsls r1, r2, 4
	adds r1, r2
	lsls r1, 2
	adds r1, r4
	ldrh r1, [r1, 0x24]
	strh r1, [r0, 0x24]
	lsls r1, r2, 4
	adds r1, r2
	lsls r1, 2
	adds r1, r4
	ldrh r1, [r1, 0x26]
	strh r1, [r0, 0x26]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_817B7C4

	thumb_func_start sub_817B834
sub_817B834: @ 817B834
	push {r4-r6,lr}
	adds r5, r0, 0
	adds r4, r1, 0
	ldr r0, =gUnknown_085F51EC
	lsls r5, 16
	asrs r5, 16
	lsls r4, 16
	asrs r4, 16
	adds r1, r5, 0
	adds r2, r4, 0
	movs r3, 0x2
	bl AddObjectToFront
	adds r6, r0, 0
	lsls r6, 24
	lsrs r6, 24
	ldr r0, =gUnknown_085F523C
	adds r4, 0x8
	lsls r4, 16
	asrs r4, 16
	adds r1, r5, 0
	adds r2, r4, 0
	movs r3, 0x3
	bl AddObjectToFront
	lsls r0, 24
	lsrs r0, 24
	ldr r2, =gUnknown_02020630
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r2
	strh r6, [r1, 0x2E]
	adds r0, r6, 0
	pop {r4-r6}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_817B834

	thumb_func_start sub_817B88C
sub_817B88C: @ 817B88C
	push {r4-r6,lr}
	adds r5, r0, 0
	adds r4, r1, 0
	ldr r0, =gUnknown_085F5204
	lsls r5, 16
	asrs r5, 16
	lsls r4, 16
	asrs r4, 16
	adds r1, r5, 0
	adds r2, r4, 0
	movs r3, 0x2
	bl AddObjectToFront
	adds r6, r0, 0
	lsls r6, 24
	lsrs r6, 24
	ldr r0, =gUnknown_085F5254
	adds r4, 0x8
	lsls r4, 16
	asrs r4, 16
	adds r1, r5, 0
	adds r2, r4, 0
	movs r3, 0x3
	bl AddObjectToFront
	lsls r0, 24
	lsrs r0, 24
	ldr r2, =gUnknown_02020630
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r2
	strh r6, [r1, 0x2E]
	adds r0, r6, 0
	pop {r4-r6}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_817B88C

	thumb_func_start nullsub_66
nullsub_66: @ 817B8E4
	bx lr
	thumb_func_end nullsub_66

	thumb_func_start sub_817B8E8
sub_817B8E8: @ 817B8E8
	push {r4,lr}
	ldr r4, =gUnknown_02020630
	movs r1, 0x2E
	ldrsh r2, [r0, r1]
	lsls r1, r2, 4
	adds r1, r2
	lsls r1, 2
	adds r1, r4
	adds r1, 0x3E
	ldrb r1, [r1]
	movs r2, 0x3E
	adds r2, r0
	mov r12, r2
	movs r2, 0x4
	ands r2, r1
	mov r1, r12
	ldrb r3, [r1]
	movs r1, 0x5
	negs r1, r1
	ands r1, r3
	orrs r1, r2
	mov r2, r12
	strb r1, [r2]
	movs r1, 0x2E
	ldrsh r2, [r0, r1]
	lsls r1, r2, 4
	adds r1, r2
	lsls r1, 2
	adds r1, r4
	ldrh r1, [r1, 0x22]
	strh r1, [r0, 0x22]
	lsls r1, r2, 4
	adds r1, r2
	lsls r1, 2
	adds r1, r4
	ldrh r1, [r1, 0x24]
	strh r1, [r0, 0x24]
	lsls r1, r2, 4
	adds r1, r2
	lsls r1, 2
	adds r1, r4
	ldrh r1, [r1, 0x26]
	strh r1, [r0, 0x26]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_817B8E8

	thumb_func_start sub_817B948
sub_817B948: @ 817B948
	push {r4-r6,lr}
	mov r6, r8
	push {r6}
	adds r2, r0, 0
	adds r5, r1, 0
	ldr r0, =gUnknown_085F528C
	mov r8, r0
	lsls r2, 16
	asrs r4, r2, 16
	ldr r0, =0xffe00000
	adds r2, r0
	asrs r2, 16
	lsls r5, 16
	asrs r5, 16
	mov r0, r8
	adds r1, r2, 0
	adds r2, r5, 0
	movs r3, 0x5
	bl AddObjectToFront
	adds r6, r0, 0
	lsls r6, 24
	lsrs r6, 24
	adds r4, 0x20
	lsls r4, 16
	asrs r4, 16
	mov r0, r8
	adds r1, r4, 0
	adds r2, r5, 0
	movs r3, 0x6
	bl AddObjectToFront
	lsls r0, 24
	lsrs r0, 24
	ldr r5, =gUnknown_02020630
	lsls r4, r0, 4
	adds r4, r0
	lsls r4, 2
	adds r0, r4, r5
	strh r6, [r0, 0x2E]
	movs r1, 0x1
	bl StartObjectImageAnim
	adds r5, 0x1C
	adds r4, r5
	ldr r0, =sub_817B8E8
	str r0, [r4]
	adds r0, r6, 0
	pop {r3}
	mov r8, r3
	pop {r4-r6}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_817B948

	thumb_func_start sub_817B9C4
sub_817B9C4: @ 817B9C4
	push {r4-r6,lr}
	mov r6, r8
	push {r6}
	adds r2, r0, 0
	adds r5, r1, 0
	ldr r0, =gUnknown_085F52A4
	mov r8, r0
	lsls r2, 16
	asrs r4, r2, 16
	ldr r0, =0xffe00000
	adds r2, r0
	asrs r2, 16
	lsls r5, 16
	asrs r5, 16
	mov r0, r8
	adds r1, r2, 0
	adds r2, r5, 0
	movs r3, 0x5
	bl AddObjectToFront
	adds r6, r0, 0
	lsls r6, 24
	lsrs r6, 24
	adds r4, 0x20
	lsls r4, 16
	asrs r4, 16
	mov r0, r8
	adds r1, r4, 0
	adds r2, r5, 0
	movs r3, 0x6
	bl AddObjectToFront
	lsls r0, 24
	lsrs r0, 24
	ldr r5, =gUnknown_02020630
	lsls r4, r0, 4
	adds r4, r0
	lsls r4, 2
	adds r0, r4, r5
	strh r6, [r0, 0x2E]
	movs r1, 0x1
	bl StartObjectImageAnim
	adds r5, 0x1C
	adds r4, r5
	ldr r0, =sub_817B8E8
	str r0, [r4]
	adds r0, r6, 0
	pop {r3}
	mov r8, r3
	pop {r4-r6}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_817B9C4

	thumb_func_start nullsub_67
nullsub_67: @ 817BA40
	bx lr
	thumb_func_end nullsub_67

	thumb_func_start sub_817BA44
sub_817BA44: @ 817BA44
	push {r4,r5,lr}
	sub sp, 0x4
	movs r4, 0
	ldr r5, =gUnknown_085F5458
_0817BA4C:
	adds r0, r4, 0
	adds r0, 0x14
	lsls r0, 24
	lsrs r0, 24
	lsls r1, r4, 1
	adds r1, r5
	ldrh r1, [r1]
	str r1, [sp]
	movs r2, 0
	movs r3, 0
	bl SetSpriteTransformationMatrix
	adds r0, r4, 0x1
	lsls r0, 16
	lsrs r4, r0, 16
	cmp r4, 0xB
	bls _0817BA4C
	add sp, 0x4
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_817BA44

	thumb_func_start sub_817BA7C
sub_817BA7C: @ 817BA7C
	push {r4,lr}
	adds r4, r0, 0
	movs r1, 0x22
	ldrsh r0, [r4, r1]
	cmp r0, 0x8
	ble _0817BB2A
	movs r2, 0x3C
	ldrsh r0, [r4, r2]
	adds r1, r0, 0
	muls r1, r0
	adds r0, r1, 0
	movs r1, 0x50
	bl __divsi3
	movs r1, 0x58
	subs r1, r0
	strh r1, [r4, 0x22]
	ldrh r0, [r4, 0x3A]
	lsls r0, 24
	lsrs r0, 24
	movs r2, 0x38
	ldrsh r1, [r4, r2]
	bl sine
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0
	bge _0817BAB6
	adds r0, 0x3
_0817BAB6:
	asrs r0, 2
	strh r0, [r4, 0x26]
	ldrh r0, [r4, 0x3A]
	lsls r0, 24
	lsrs r0, 24
	movs r2, 0x38
	ldrsh r1, [r4, r2]
	bl cosine
	strh r0, [r4, 0x24]
	ldrh r0, [r4, 0x3A]
	adds r0, 0x4
	strh r0, [r4, 0x3A]
	ldrh r1, [r4, 0x3C]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _0817BAE0
	ldrh r0, [r4, 0x38]
	subs r0, 0x1
	strh r0, [r4, 0x38]
_0817BAE0:
	ldrh r0, [r4, 0x3C]
	adds r0, 0x1
	strh r0, [r4, 0x3C]
	movs r1, 0x26
	ldrsh r0, [r4, r1]
	cmp r0, 0
	ble _0817BAF6
	adds r1, r4, 0
	adds r1, 0x43
	movs r0, 0x1
	b _0817BAFC
_0817BAF6:
	adds r1, r4, 0
	adds r1, 0x43
	movs r0, 0x14
_0817BAFC:
	strb r0, [r1]
	movs r2, 0x38
	ldrsh r0, [r4, r2]
	cmp r0, 0
	bge _0817BB08
	adds r0, 0x3
_0817BB08:
	asrs r0, 2
	adds r0, 0x14
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, 0x1F
	bls _0817BB16
	movs r2, 0x1F
_0817BB16:
	movs r0, 0x1F
	ands r2, r0
	lsls r2, 1
	ldrb r1, [r4, 0x3]
	movs r0, 0x3F
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, 0x3]
	b _0817BB30
_0817BB2A:
	adds r0, r4, 0
	bl RemoveObjectAndFreeTiles
_0817BB30:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_817BA7C

	thumb_func_start sub_817BB38
sub_817BB38: @ 817BB38
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r5, r0, 24
	ldr r0, =gUnknown_085F5440
	movs r1, 0x78
	movs r2, 0x58
	movs r3, 0
	bl AddObjectToFront
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x40
	beq _0817BB82
	ldr r4, =gUnknown_02020630
	lsls r3, r0, 4
	adds r3, r0
	lsls r3, 2
	adds r2, r3, r4
	movs r1, 0
	movs r0, 0x30
	strh r0, [r2, 0x38]
	strh r5, [r2, 0x3A]
	strh r1, [r2, 0x3C]
	ldrb r1, [r2, 0x1]
	subs r0, 0x34
	ands r0, r1
	movs r1, 0x1
	orrs r0, r1
	strb r0, [r2, 0x1]
	ldrb r0, [r2, 0x3]
	movs r1, 0x3E
	orrs r0, r1
	strb r0, [r2, 0x3]
	adds r4, 0x1C
	adds r3, r4
	ldr r0, =sub_817BA7C
	str r0, [r3]
_0817BB82:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_817BB38

	thumb_func_start sub_817BB94
sub_817BB94: @ 817BB94
	push {r4,lr}
	adds r4, r0, 0
	movs r1, 0x22
	ldrsh r0, [r4, r1]
	cmp r0, 0x57
	bgt _0817BBFA
	movs r2, 0x3C
	ldrsh r0, [r4, r2]
	adds r1, r0, 0
	muls r1, r0
	adds r0, r1, 0
	movs r1, 0x5
	bl __divsi3
	adds r0, 0x8
	strh r0, [r4, 0x22]
	ldrh r0, [r4, 0x3A]
	lsls r0, 24
	lsrs r0, 24
	movs r2, 0x38
	ldrsh r1, [r4, r2]
	bl sine
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0
	bge _0817BBCC
	adds r0, 0x3
_0817BBCC:
	asrs r0, 2
	strh r0, [r4, 0x26]
	ldrh r0, [r4, 0x3A]
	lsls r0, 24
	lsrs r0, 24
	movs r2, 0x38
	ldrsh r1, [r4, r2]
	bl cosine
	strh r0, [r4, 0x24]
	movs r1, 0x3C
	ldrsh r0, [r4, r1]
	lsls r0, 26
	lsrs r0, 24
	movs r1, 0x28
	bl sine
	adds r0, 0x8
	strh r0, [r4, 0x38]
	ldrh r0, [r4, 0x3C]
	adds r0, 0x1
	strh r0, [r4, 0x3C]
	b _0817BC00
_0817BBFA:
	adds r0, r4, 0
	bl RemoveObjectAndFreeTiles
_0817BC00:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_817BB94

	thumb_func_start sub_817BC08
sub_817BC08: @ 817BC08
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r5, r0, 24
	ldr r0, =gUnknown_085F5440
	movs r1, 0x78
	movs r2, 0x8
	movs r3, 0
	bl AddObjectToFront
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x40
	beq _0817BC5E
	ldr r4, =gUnknown_02020630
	lsls r3, r0, 4
	adds r3, r0
	lsls r3, 2
	adds r2, r3, r4
	movs r1, 0
	movs r0, 0x8
	strh r0, [r2, 0x38]
	strh r5, [r2, 0x3A]
	strh r1, [r2, 0x3C]
	ldrb r1, [r2, 0x1]
	subs r0, 0xC
	ands r0, r1
	movs r1, 0x1
	orrs r0, r1
	strb r0, [r2, 0x1]
	ldrb r1, [r2, 0x3]
	movs r0, 0x3F
	negs r0, r0
	ands r0, r1
	movs r1, 0x32
	orrs r0, r1
	strb r0, [r2, 0x3]
	adds r2, 0x43
	movs r0, 0x1
	strb r0, [r2]
	adds r4, 0x1C
	adds r3, r4
	ldr r0, =sub_817BB94
	str r0, [r3]
_0817BC5E:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_817BC08

	thumb_func_start sub_817BC70
sub_817BC70: @ 817BC70
	push {r4,lr}
	adds r4, r0, 0
	movs r1, 0x38
	ldrsh r0, [r4, r1]
	cmp r0, 0x8
	ble _0817BCAC
	ldrh r0, [r4, 0x3A]
	lsls r0, 24
	lsrs r0, 24
	movs r2, 0x38
	ldrsh r1, [r4, r2]
	bl sine
	strh r0, [r4, 0x26]
	ldrh r0, [r4, 0x3A]
	lsls r0, 24
	lsrs r0, 24
	movs r2, 0x38
	ldrsh r1, [r4, r2]
	bl cosine
	strh r0, [r4, 0x24]
	ldrh r0, [r4, 0x38]
	ldrh r1, [r4, 0x34]
	subs r0, r1
	strh r0, [r4, 0x38]
	ldrh r0, [r4, 0x3A]
	adds r0, 0x4
	strh r0, [r4, 0x3A]
	b _0817BCB2
_0817BCAC:
	adds r0, r4, 0
	bl RemoveObjectAndFreeTiles
_0817BCB2:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_817BC70

	thumb_func_start sub_817BCB8
sub_817BCB8: @ 817BCB8
	push {r4-r6,lr}
	lsls r0, 24
	lsrs r6, r0, 24
	lsls r1, 24
	lsrs r5, r1, 24
	ldr r0, =gUnknown_085F5440
	movs r1, 0x78
	movs r2, 0x38
	movs r3, 0
	bl AddObjectToFront
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x40
	beq _0817BD0E
	ldr r4, =gUnknown_02020630
	lsls r3, r0, 4
	adds r3, r0
	lsls r3, 2
	adds r2, r3, r4
	movs r1, 0
	strh r5, [r2, 0x34]
	movs r0, 0x78
	strh r0, [r2, 0x38]
	strh r6, [r2, 0x3A]
	strh r1, [r2, 0x3C]
	ldrb r1, [r2, 0x1]
	subs r0, 0x7C
	ands r0, r1
	movs r1, 0x1
	orrs r0, r1
	strb r0, [r2, 0x1]
	ldrb r0, [r2, 0x3]
	movs r1, 0x3E
	orrs r0, r1
	strb r0, [r2, 0x3]
	adds r2, 0x43
	movs r0, 0x1
	strb r0, [r2]
	adds r4, 0x1C
	adds r3, r4
	ldr r0, =sub_817BC70
	str r0, [r3]
_0817BD0E:
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_817BCB8

	thumb_func_start sub_817BD20
sub_817BD20: @ 817BD20
	push {r4,r5,lr}
	adds r4, r0, 0
	ldrh r1, [r4, 0x3C]
	movs r0, 0x3
	ands r0, r1
	cmp r0, 0
	bne _0817BD34
	ldrh r0, [r4, 0x22]
	adds r0, 0x1
	strh r0, [r4, 0x22]
_0817BD34:
	ldrh r1, [r4, 0x3A]
	movs r2, 0x3A
	ldrsh r0, [r4, r2]
	cmp r0, 0x7F
	bgt _0817BDE4
	lsls r0, r1, 24
	lsrs r0, 24
	movs r5, 0x38
	ldrsh r1, [r4, r5]
	bl sine
	negs r0, r0
	strh r0, [r4, 0x26]
	movs r0, 0x34
	ldrsh r1, [r4, r0]
	movs r2, 0x3C
	ldrsh r0, [r4, r2]
	muls r0, r1
	movs r1, 0x3
	bl __divsi3
	adds r0, 0x78
	strh r0, [r4, 0x20]
	ldrh r0, [r4, 0x3A]
	adds r3, r0, 0x1
	strh r3, [r4, 0x3A]
	movs r5, 0x3A
	ldrsh r1, [r4, r5]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	cmp r0, 0
	bge _0817BD78
	adds r0, 0x7F
_0817BD78:
	asrs r0, 7
	movs r1, 0x1F
	subs r1, r0
	lsls r1, 24
	lsrs r2, r1, 24
	lsls r0, r3, 16
	asrs r0, 16
	cmp r0, 0x40
	ble _0817BD94
	adds r1, r4, 0
	adds r1, 0x43
	movs r0, 0x1
	strb r0, [r1]
	b _0817BDC4
_0817BD94:
	adds r3, r4, 0
	adds r3, 0x3E
	ldrb r1, [r3]
	movs r0, 0x5
	negs r0, r0
	ands r0, r1
	strb r0, [r3]
	adds r1, r4, 0
	adds r1, 0x43
	movs r0, 0x14
	strb r0, [r1]
	ldrh r1, [r4, 0x3A]
	movs r5, 0x3A
	ldrsh r0, [r4, r5]
	cmp r0, 0x70
	ble _0817BDC4
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _0817BDC4
	ldrb r0, [r3]
	movs r1, 0x4
	orrs r0, r1
	strb r0, [r3]
_0817BDC4:
	cmp r2, 0x13
	bhi _0817BDCA
	movs r2, 0x14
_0817BDCA:
	movs r0, 0x1F
	ands r2, r0
	lsls r2, 1
	ldrb r1, [r4, 0x3]
	movs r0, 0x3F
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, 0x3]
	ldrh r0, [r4, 0x3C]
	adds r0, 0x1
	strh r0, [r4, 0x3C]
	b _0817BDEA
_0817BDE4:
	adds r0, r4, 0
	bl RemoveObjectAndFreeTiles
_0817BDEA:
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end sub_817BD20

	thumb_func_start sub_817BDF0
sub_817BDF0: @ 817BDF0
	push {r4-r6,lr}
	mov r6, r8
	push {r6}
	ldr r0, =gUnknown_085F5440
	movs r1, 0x78
	movs r2, 0x38
	movs r3, 0
	bl AddObjectToFront
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x40
	beq _0817BE60
	bl GenerateRandomNumber
	ldr r6, =gUnknown_02020630
	lsls r5, r4, 4
	adds r5, r4
	lsls r5, 2
	adds r4, r5, r6
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x7
	bl __umodsi3
	movs r1, 0x3
	subs r1, r0
	movs r0, 0
	mov r8, r0
	strh r1, [r4, 0x34]
	bl GenerateRandomNumber
	movs r1, 0x3F
	ands r1, r0
	adds r1, 0x30
	strh r1, [r4, 0x38]
	mov r0, r8
	strh r0, [r4, 0x3C]
	ldrb r1, [r4, 0x1]
	movs r0, 0x4
	negs r0, r0
	ands r0, r1
	movs r1, 0x1
	orrs r0, r1
	strb r0, [r4, 0x1]
	ldrb r0, [r4, 0x3]
	movs r1, 0x3E
	orrs r0, r1
	strb r0, [r4, 0x3]
	adds r4, 0x43
	movs r0, 0x14
	strb r0, [r4]
	adds r6, 0x1C
	adds r5, r6
	ldr r0, =sub_817BD20
	str r0, [r5]
_0817BE60:
	pop {r3}
	mov r8, r3
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_817BDF0

	thumb_func_start sub_817BE78
sub_817BE78: @ 817BE78
	push {lr}
	ldr r0, =gUnknown_085F540C
	bl LoadCompressedObjectPicUsingHeap
	ldr r0, =gUnknown_085F541C
	bl LoadTaggedObjectPalettes
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_817BE78

	thumb_func_start sub_817BE94
sub_817BE94: @ 817BE94
	push {r4,lr}
	adds r4, r0, 0
	lsls r4, 16
	lsrs r4, 16
	ldr r0, =sub_817BEC4
	movs r1, 0
	bl CreateTask
	lsls r0, 24
	lsrs r0, 24
	ldr r2, =gTasks
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r1, r2
	strh r4, [r1, 0xA]
	pop {r4}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_817BE94

	thumb_func_start sub_817BEC4
sub_817BEC4: @ 817BEC4
	push {r4,r5,lr}
	sub sp, 0x4
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	bl sub_817BA44
	ldr r0, =gTasks
	lsls r5, r4, 2
	adds r5, r4
	lsls r5, 3
	adds r5, r0
	movs r0, 0
	strh r0, [r5, 0x26]
	movs r0, 0xA
	ldrsh r1, [r5, r0]
	movs r0, 0x3
	lsls r0, r1
	ldr r1, =0x00007fff
	str r1, [sp]
	movs r1, 0xA
	movs r2, 0
	movs r3, 0x10
	bl pal_fade_maybe
	ldr r0, =sub_817BF14
	str r0, [r5]
	movs r0, 0x8C
	bl audio_play
	add sp, 0x4
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_817BEC4

	thumb_func_start sub_817BF14
sub_817BF14: @ 817BF14
	push {r4-r7,lr}
	lsls r0, 24
	lsrs r5, r0, 24
	ldr r1, =gTasks
	lsls r3, r5, 2
	adds r0, r3, r5
	lsls r0, 3
	adds r1, r0, r1
	ldrh r2, [r1, 0x26]
	movs r4, 0x26
	ldrsh r0, [r1, r4]
	cmp r0, 0x3F
	bgt _0817BF70
	movs r0, 0x7
	ands r0, r2
	adds r7, r3, 0
	cmp r0, 0
	bne _0817BF5A
	movs r4, 0
	adds r6, r1, 0
_0817BF3C:
	ldrh r1, [r6, 0x26]
	movs r0, 0x78
	ands r0, r1
	lsls r0, 1
	lsls r1, r4, 6
	adds r0, r1
	lsls r0, 24
	lsrs r0, 24
	bl sub_817BB38
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x3
	bls _0817BF3C
_0817BF5A:
	ldr r0, =gTasks
	adds r1, r7, r5
	lsls r1, 3
	adds r1, r0
	ldrh r0, [r1, 0x26]
	adds r0, 0x1
	strh r0, [r1, 0x26]
	b _0817BF78
	.pool
_0817BF70:
	movs r0, 0x60
	strh r0, [r1, 0x26]
	ldr r0, =sub_817BF84
	str r0, [r1]
_0817BF78:
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_817BF14

	thumb_func_start sub_817BF84
sub_817BF84: @ 817BF84
	push {r4,lr}
	lsls r0, 24
	lsrs r2, r0, 24
	ldr r1, =gTasks
	lsls r0, r2, 2
	adds r0, r2
	lsls r0, 3
	adds r1, r0, r1
	ldrh r3, [r1, 0x26]
	movs r4, 0x26
	ldrsh r0, [r1, r4]
	cmp r0, 0
	beq _0817BFA8
	subs r0, r3, 0x1
	strh r0, [r1, 0x26]
	b _0817BFAE
	.pool
_0817BFA8:
	adds r0, r2, 0
	bl DestroyTask
_0817BFAE:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_817BF84

	thumb_func_start sub_817BFB4
sub_817BFB4: @ 817BFB4
	push {lr}
	ldr r0, =sub_817BFCC
	movs r1, 0
	bl CreateTask
	lsls r0, 24
	lsrs r0, 24
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_817BFB4

	thumb_func_start sub_817BFCC
sub_817BFCC: @ 817BFCC
	push {r4,lr}
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	bl sub_817BA44
	ldr r1, =gTasks
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r0, r1
	movs r1, 0
	strh r1, [r0, 0x26]
	ldr r1, =sub_817C000
	str r1, [r0]
	movs r0, 0xB7
	bl audio_play
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_817BFCC

	thumb_func_start sub_817C000
sub_817C000: @ 817C000
	push {r4-r6,lr}
	lsls r0, 24
	lsrs r5, r0, 24
	ldr r1, =gTasks
	lsls r2, r5, 2
	adds r0, r2, r5
	lsls r0, 3
	adds r1, r0, r1
	movs r3, 0x26
	ldrsh r0, [r1, r3]
	cmp r0, 0x5F
	bgt _0817C048
	adds r6, r2, 0
	cmp r0, 0x5
	bgt _0817C032
	movs r4, 0
_0817C020:
	lsls r0, r4, 28
	lsrs r0, 24
	bl sub_817BC08
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x8
	bls _0817C020
_0817C032:
	ldr r0, =gTasks
	adds r1, r6, r5
	lsls r1, 3
	adds r1, r0
	ldrh r0, [r1, 0x26]
	adds r0, 0x1
	strh r0, [r1, 0x26]
	b _0817C04C
	.pool
_0817C048:
	ldr r0, =sub_817C058
	str r0, [r1]
_0817C04C:
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_817C000

	thumb_func_start sub_817C058
sub_817C058: @ 817C058
	push {lr}
	lsls r0, 24
	lsrs r0, 24
	bl DestroyTask
	pop {r0}
	bx r0
	thumb_func_end sub_817C058

	thumb_func_start sub_817C068
sub_817C068: @ 817C068
	push {lr}
	ldr r0, =sub_817C080
	movs r1, 0
	bl CreateTask
	lsls r0, 24
	lsrs r0, 24
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_817C068

	thumb_func_start sub_817C080
sub_817C080: @ 817C080
	push {r4,lr}
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	bl sub_817BA44
	ldr r1, =gTasks
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r0, r1
	movs r1, 0
	strh r1, [r0, 0x26]
	ldr r1, =sub_817C0B4
	str r1, [r0]
	movs r0, 0x66
	bl audio_play
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_817C080

	thumb_func_start sub_817C0B4
sub_817C0B4: @ 817C0B4
	push {r4-r6,lr}
	lsls r0, 24
	lsrs r5, r0, 24
	ldr r1, =gTasks
	lsls r2, r5, 2
	adds r0, r2, r5
	lsls r0, 3
	adds r1, r0, r1
	movs r3, 0x26
	ldrsh r0, [r1, r3]
	cmp r0, 0x2F
	bgt _0817C124
	adds r6, r2, 0
	cmp r0, 0
	bne _0817C0E8
	movs r4, 0
_0817C0D4:
	lsls r0, r4, 28
	lsrs r0, 24
	movs r1, 0x4
	bl sub_817BCB8
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0xF
	bls _0817C0D4
_0817C0E8:
	ldr r0, =gTasks
	adds r1, r6, r5
	lsls r1, 3
	adds r1, r0
	movs r2, 0x26
	ldrsh r0, [r1, r2]
	cmp r0, 0x20
	bne _0817C10E
	movs r4, 0
_0817C0FA:
	lsls r0, r4, 28
	lsrs r0, 24
	movs r1, 0x8
	bl sub_817BCB8
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0xF
	bls _0817C0FA
_0817C10E:
	ldr r0, =gTasks
	adds r1, r6, r5
	lsls r1, 3
	adds r1, r0
	ldrh r0, [r1, 0x26]
	adds r0, 0x1
	strh r0, [r1, 0x26]
	b _0817C128
	.pool
_0817C124:
	ldr r0, =sub_817C134
	str r0, [r1]
_0817C128:
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_817C0B4

	thumb_func_start sub_817C134
sub_817C134: @ 817C134
	push {lr}
	lsls r0, 24
	lsrs r0, 24
	bl DestroyTask
	pop {r0}
	bx r0
	thumb_func_end sub_817C134

	thumb_func_start sub_817C144
sub_817C144: @ 817C144
	push {r4,lr}
	adds r4, r0, 0
	lsls r4, 16
	lsrs r4, 16
	ldr r0, =sub_817C174
	movs r1, 0
	bl CreateTask
	lsls r0, 24
	lsrs r0, 24
	ldr r2, =gTasks
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r1, r2
	strh r4, [r1, 0xC]
	pop {r4}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_817C144

	thumb_func_start sub_817C174
sub_817C174: @ 817C174
	push {r4,r5,lr}
	sub sp, 0x4
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	bl sub_817BA44
	ldr r0, =gTasks
	lsls r5, r4, 2
	adds r5, r4
	lsls r5, 3
	adds r5, r0
	movs r0, 0
	strh r0, [r5, 0x26]
	ldr r0, =gUnknown_02037B54
	ldr r1, =gUnknown_02037754
	movs r2, 0x30
	bl CpuSet
	ldr r0, =0xfff9041c
	ldr r1, =0x00007fff
	str r1, [sp]
	movs r1, 0
	movs r2, 0
	movs r3, 0x10
	bl pal_fade_maybe
	ldr r0, =sub_817C1D4
	str r0, [r5]
	movs r0, 0xCA
	bl audio_play
	add sp, 0x4
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_817C174

	thumb_func_start sub_817C1D4
sub_817C1D4: @ 817C1D4
	push {r4-r6,lr}
	sub sp, 0x4
	lsls r0, 24
	lsrs r6, r0, 24
	ldr r1, =gTasks
	lsls r5, r6, 2
	adds r0, r5, r6
	lsls r0, 3
	adds r1, r0, r1
	movs r0, 0x26
	ldrsh r2, [r1, r0]
	cmp r2, 0x7F
	bgt _0817C250
	adds r0, r2, 0
	cmp r0, 0
	beq _0817C210
	cmp r0, 0x20
	beq _0817C224
	cmp r2, 0x31
	bgt _0817C234
	bl GenerateRandomNumber
	movs r1, 0x7
	ands r0, r1
	bl sub_817BDF0
	b _0817C234
	.pool
_0817C210:
	movs r4, 0
_0817C212:
	adds r0, r4, 0
	bl sub_817BDF0
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x7
	bls _0817C212
	b _0817C234
_0817C224:
	ldr r0, =0xffff041c
	ldr r1, =0x00007fff
	str r1, [sp]
	movs r1, 0x10
	movs r2, 0x10
	movs r3, 0
	bl pal_fade_maybe
_0817C234:
	ldr r0, =gTasks
	adds r1, r5, r6
	lsls r1, 3
	adds r1, r0
	ldrh r0, [r1, 0x26]
	adds r0, 0x1
	strh r0, [r1, 0x26]
	b _0817C254
	.pool
_0817C250:
	ldr r0, =sub_817C260
	str r0, [r1]
_0817C254:
	add sp, 0x4
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_817C1D4

	thumb_func_start sub_817C260
sub_817C260: @ 817C260
	push {lr}
	lsls r0, 24
	lsrs r2, r0, 24
	ldr r0, =gUnknown_02037FD4
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	bne _0817C278
	adds r0, r2, 0
	bl DestroyTask
_0817C278:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_817C260

	thumb_func_start sub_817C280
sub_817C280: @ 817C280
	push {r4,lr}
	adds r4, r0, 0
	lsls r4, 16
	lsrs r4, 16
	ldr r0, =sub_817C2B0
	movs r1, 0
	bl CreateTask
	lsls r0, 24
	lsrs r0, 24
	ldr r2, =gTasks
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r1, r2
	strh r4, [r1, 0xC]
	pop {r4}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_817C280

	thumb_func_start sub_817C2B0
sub_817C2B0: @ 817C2B0
	push {r4,r5,lr}
	sub sp, 0x4
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	bl sub_817BA44
	ldr r0, =gTasks
	lsls r5, r4, 2
	adds r5, r4
	lsls r5, 3
	adds r5, r0
	movs r0, 0
	strh r0, [r5, 0x26]
	ldr r0, =gUnknown_02037B54
	ldr r1, =gUnknown_02037754
	movs r2, 0x30
	bl CpuSet
	ldr r0, =0xfff90400
	ldr r1, =0x00007fff
	str r1, [sp]
	movs r1, 0
	movs r2, 0
	movs r3, 0x10
	bl pal_fade_maybe
	ldr r0, =sub_817C310
	str r0, [r5]
	movs r0, 0xCA
	bl audio_play
	add sp, 0x4
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_817C2B0

	thumb_func_start sub_817C310
sub_817C310: @ 817C310
	push {r4-r6,lr}
	sub sp, 0x4
	lsls r0, 24
	lsrs r6, r0, 24
	ldr r1, =gTasks
	lsls r5, r6, 2
	adds r0, r5, r6
	lsls r0, 3
	adds r1, r0, r1
	movs r0, 0x26
	ldrsh r2, [r1, r0]
	cmp r2, 0x7F
	bgt _0817C38C
	adds r0, r2, 0
	cmp r0, 0
	beq _0817C34C
	cmp r0, 0x20
	beq _0817C360
	cmp r2, 0x31
	bgt _0817C370
	bl GenerateRandomNumber
	movs r1, 0x7
	ands r0, r1
	bl sub_817BDF0
	b _0817C370
	.pool
_0817C34C:
	movs r4, 0
_0817C34E:
	adds r0, r4, 0
	bl sub_817BDF0
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x7
	bls _0817C34E
	b _0817C370
_0817C360:
	ldr r0, =0xffff0400
	ldr r1, =0x00007fff
	str r1, [sp]
	movs r1, 0x10
	movs r2, 0x10
	movs r3, 0
	bl pal_fade_maybe
_0817C370:
	ldr r0, =gTasks
	adds r1, r5, r6
	lsls r1, 3
	adds r1, r0
	ldrh r0, [r1, 0x26]
	adds r0, 0x1
	strh r0, [r1, 0x26]
	b _0817C390
	.pool
_0817C38C:
	ldr r0, =sub_817C260
	str r0, [r1]
_0817C390:
	add sp, 0x4
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_817C310

	thumb_func_start nullsub_68
nullsub_68: @ 817C39C
	bx lr
	thumb_func_end nullsub_68

	thumb_func_start sub_817C3A0
sub_817C3A0: @ 817C3A0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x28
	lsls r0, 24
	lsrs r5, r0, 24
	lsls r1, 24
	lsrs r7, r1, 24
	movs r1, 0
	ldr r3, =sub_817C4EC
	ldr r2, =0x00007fff
_0817C3BA:
	lsls r0, r1, 1
	add r0, sp
	adds r0, 0x4
	strh r2, [r0]
	adds r0, r1, 0x1
	lsls r0, 16
	lsrs r1, r0, 16
	cmp r1, 0xF
	bls _0817C3BA
	adds r0, r3, 0
	movs r1, 0
	bl CreateTask
	mov r8, r0
	mov r0, r8
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	ldr r0, =gTasks
	mov r1, r8
	lsls r6, r1, 2
	add r6, r8
	lsls r6, 3
	adds r6, r0
	strh r5, [r6, 0xA]
	strh r7, [r6, 0xC]
	movs r1, 0x80
	lsls r1, 1
	strh r1, [r6, 0xE]
	movs r0, 0x10
	strh r0, [r6, 0x10]
	movs r4, 0x80
	lsls r4, 9
	str r1, [sp]
	movs r0, 0x1E
	movs r2, 0
	movs r3, 0
	bl SetSpriteTransformationMatrix
	movs r0, 0x10
	ldrsh r1, [r6, r0]
	adds r0, r4, 0
	bl __divsi3
	adds r1, r0, 0
	lsls r1, 16
	lsrs r1, 16
	str r1, [sp]
	movs r0, 0x1F
	movs r2, 0
	movs r3, 0
	bl SetSpriteTransformationMatrix
	ldr r1, =gUnknown_02020630
	mov r9, r1
	lsls r2, r5, 4
	adds r2, r5
	lsls r2, 2
	mov r3, r9
	adds r3, 0x1C
	adds r0, r2, r3
	ldr r1, =nullsub_68
	str r1, [r0]
	add r2, r9
	ldrb r1, [r2, 0x1]
	movs r4, 0x4
	negs r4, r4
	adds r0, r4, 0
	ands r0, r1
	movs r1, 0x1
	orrs r0, r1
	strb r0, [r2, 0x1]
	ldrb r1, [r2, 0x3]
	movs r0, 0x3F
	negs r0, r0
	ands r0, r1
	movs r1, 0x3C
	orrs r0, r1
	strb r0, [r2, 0x3]
	movs r0, 0x3E
	adds r0, r2
	mov r10, r0
	ldrb r1, [r0]
	movs r5, 0x5
	negs r5, r5
	adds r0, r5, 0
	ands r0, r1
	mov r1, r10
	strb r0, [r1]
	ldrb r1, [r2, 0x5]
	lsrs r1, 4
	lsls r1, 5
	ldr r0, =gUnknown_02037D14
	mov r10, r0
	add r1, r10
	add r0, sp, 0x4
	movs r2, 0x10
	str r3, [sp, 0x24]
	bl CpuSet
	lsls r1, r7, 4
	adds r1, r7
	lsls r1, 2
	ldr r3, [sp, 0x24]
	adds r3, r1, r3
	ldr r0, =nullsub_68
	str r0, [r3]
	add r1, r9
	ldrb r0, [r1, 0x1]
	ands r4, r0
	movs r0, 0x1
	orrs r4, r0
	strb r4, [r1, 0x1]
	ldrb r0, [r1, 0x3]
	movs r2, 0x3E
	orrs r0, r2
	strb r0, [r1, 0x3]
	adds r2, r1, 0
	adds r2, 0x3E
	ldrb r0, [r2]
	ands r5, r0
	strb r5, [r2]
	ldrb r1, [r1, 0x5]
	lsrs r1, 4
	lsls r1, 5
	add r1, r10
	add r0, sp, 0x4
	movs r2, 0x10
	bl CpuSet
	movs r1, 0
	strh r1, [r6, 0x18]
	mov r0, r8
	add sp, 0x28
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_817C3A0

	thumb_func_start sub_817C4EC
sub_817C4EC: @ 817C4EC
	lsls r0, 24
	lsrs r0, 24
	ldr r2, =gTasks
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r1, r2
	movs r0, 0
	strh r0, [r1, 0x12]
	movs r0, 0x8
	strh r0, [r1, 0x14]
	ldr r0, =sub_817C510
	str r0, [r1]
	bx lr
	.pool
	thumb_func_end sub_817C4EC

	thumb_func_start sub_817C510
sub_817C510: @ 817C510
	push {r4,lr}
	lsls r0, 24
	lsrs r3, r0, 24
	ldr r1, =gTasks
	lsls r0, r3, 2
	adds r0, r3
	lsls r0, 3
	adds r2, r0, r1
	movs r1, 0x18
	ldrsh r0, [r2, r1]
	cmp r0, 0
	beq _0817C534
	adds r0, r3, 0
	bl sub_817C72C
	b _0817C556
	.pool
_0817C534:
	ldrh r1, [r2, 0x14]
	movs r4, 0x14
	ldrsh r0, [r2, r4]
	cmp r0, 0x80
	bne _0817C546
	adds r0, r3, 0
	bl sub_817C67C
	b _0817C556
_0817C546:
	adds r0, r1, 0x2
	strh r0, [r2, 0x14]
	ldrh r0, [r2, 0x12]
	movs r1, 0x1
	eors r0, r1
	strh r0, [r2, 0x12]
	ldr r0, =sub_817C560
	str r0, [r2]
_0817C556:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_817C510

	thumb_func_start sub_817C560
sub_817C560: @ 817C560
	push {r4-r7,lr}
	sub sp, 0x4
	lsls r0, 24
	lsrs r4, r0, 24
	ldr r1, =gTasks
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r2, r0, r1
	movs r3, 0x18
	ldrsh r0, [r2, r3]
	adds r5, r1, 0
	cmp r0, 0
	beq _0817C58C
	ldr r0, =sub_817C72C
	str r0, [r2]
	b _0817C670
	.pool
_0817C58C:
	movs r6, 0
	movs r7, 0x12
	ldrsh r0, [r2, r7]
	cmp r0, 0
	bne _0817C5DC
	movs r0, 0xE
	ldrsh r1, [r2, r0]
	movs r3, 0x14
	ldrsh r0, [r2, r3]
	movs r3, 0x80
	lsls r3, 1
	subs r0, r3, r0
	cmp r1, r0
	bge _0817C5B2
	ldrh r0, [r2, 0x14]
	ldrh r7, [r2, 0xE]
	adds r0, r7
	strh r0, [r2, 0xE]
	b _0817C5B6
_0817C5B2:
	strh r3, [r2, 0xE]
	movs r6, 0x1
_0817C5B6:
	lsls r2, r4, 2
	adds r0, r2, r4
	lsls r0, 3
	adds r3, r0, r5
	movs r0, 0x10
	ldrsh r1, [r3, r0]
	movs r7, 0x14
	ldrsh r0, [r3, r7]
	adds r0, 0x10
	cmp r1, r0
	ble _0817C5D6
	ldrh r0, [r3, 0x10]
	ldrh r1, [r3, 0x14]
	subs r0, r1
	strh r0, [r3, 0x10]
	b _0817C626
_0817C5D6:
	movs r0, 0x10
	strh r0, [r3, 0x10]
	b _0817C620
_0817C5DC:
	movs r0, 0x10
	ldrsh r1, [r2, r0]
	movs r3, 0x14
	ldrsh r0, [r2, r3]
	movs r3, 0x80
	lsls r3, 1
	subs r0, r3, r0
	cmp r1, r0
	bge _0817C5F8
	ldrh r0, [r2, 0x14]
	ldrh r7, [r2, 0x10]
	adds r0, r7
	strh r0, [r2, 0x10]
	b _0817C5FC
_0817C5F8:
	strh r3, [r2, 0x10]
	movs r6, 0x1
_0817C5FC:
	lsls r2, r4, 2
	adds r0, r2, r4
	lsls r0, 3
	adds r3, r0, r5
	movs r0, 0xE
	ldrsh r1, [r3, r0]
	movs r7, 0x14
	ldrsh r0, [r3, r7]
	adds r0, 0x10
	cmp r1, r0
	ble _0817C61C
	ldrh r0, [r3, 0xE]
	ldrh r1, [r3, 0x14]
	subs r0, r1
	strh r0, [r3, 0xE]
	b _0817C626
_0817C61C:
	movs r0, 0x10
	strh r0, [r3, 0xE]
_0817C620:
	adds r0, r6, 0x1
	lsls r0, 24
	lsrs r6, r0, 24
_0817C626:
	adds r0, r2, r4
	lsls r0, 3
	adds r5, r0, r5
	movs r0, 0xE
	ldrsh r1, [r5, r0]
	movs r4, 0x80
	lsls r4, 9
	adds r0, r4, 0
	bl __divsi3
	adds r1, r0, 0
	lsls r1, 16
	lsrs r1, 16
	str r1, [sp]
	movs r0, 0x1E
	movs r2, 0
	movs r3, 0
	bl SetSpriteTransformationMatrix
	movs r3, 0x10
	ldrsh r1, [r5, r3]
	adds r0, r4, 0
	bl __divsi3
	adds r1, r0, 0
	lsls r1, 16
	lsrs r1, 16
	str r1, [sp]
	movs r0, 0x1F
	movs r2, 0
	movs r3, 0
	bl SetSpriteTransformationMatrix
	cmp r6, 0x2
	bne _0817C670
	ldr r0, =sub_817C510
	str r0, [r5]
_0817C670:
	add sp, 0x4
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_817C560

	thumb_func_start sub_817C67C
sub_817C67C: @ 817C67C
	push {r4-r6,lr}
	mov r6, r8
	push {r6}
	lsls r0, 24
	lsrs r0, 24
	ldr r1, =gUnknown_02020630
	mov r8, r1
	ldr r1, =gTasks
	lsls r4, r0, 2
	adds r4, r0
	lsls r4, 3
	adds r4, r1
	movs r2, 0xA
	ldrsh r1, [r4, r2]
	lsls r2, r1, 4
	adds r2, r1
	lsls r2, 2
	add r2, r8
	ldrb r3, [r2, 0x1]
	movs r6, 0x4
	negs r6, r6
	adds r1, r6, 0
	ands r1, r3
	strb r1, [r2, 0x1]
	movs r2, 0xA
	ldrsh r1, [r4, r2]
	lsls r2, r1, 4
	adds r2, r1
	lsls r2, 2
	add r2, r8
	ldrb r3, [r2, 0x3]
	movs r5, 0x3F
	negs r5, r5
	adds r1, r5, 0
	ands r1, r3
	strb r1, [r2, 0x3]
	movs r1, 0xA
	ldrsh r2, [r4, r1]
	lsls r1, r2, 4
	adds r1, r2
	lsls r1, 2
	add r1, r8
	adds r1, 0x3E
	ldrb r2, [r1]
	movs r3, 0x4
	orrs r2, r3
	strb r2, [r1]
	movs r1, 0xC
	ldrsh r2, [r4, r1]
	lsls r1, r2, 4
	adds r1, r2
	lsls r1, 2
	add r1, r8
	ldrb r2, [r1, 0x1]
	ands r6, r2
	strb r6, [r1, 0x1]
	movs r1, 0xC
	ldrsh r2, [r4, r1]
	lsls r1, r2, 4
	adds r1, r2
	lsls r1, 2
	add r1, r8
	ldrb r2, [r1, 0x3]
	ands r5, r2
	strb r5, [r1, 0x3]
	movs r1, 0xC
	ldrsh r2, [r4, r1]
	lsls r1, r2, 4
	adds r1, r2
	lsls r1, 2
	add r1, r8
	adds r1, 0x3E
	ldrb r3, [r1]
	movs r2, 0x5
	negs r2, r2
	ands r2, r3
	strb r2, [r1]
	bl DestroyTask
	pop {r3}
	mov r8, r3
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_817C67C

	thumb_func_start sub_817C72C
sub_817C72C: @ 817C72C
	push {r4-r6,lr}
	mov r6, r8
	push {r6}
	lsls r0, 24
	lsrs r0, 24
	ldr r1, =gUnknown_02020630
	mov r8, r1
	ldr r1, =gTasks
	lsls r4, r0, 2
	adds r4, r0
	lsls r4, 3
	adds r4, r1
	movs r2, 0xA
	ldrsh r1, [r4, r2]
	lsls r2, r1, 4
	adds r2, r1
	lsls r2, 2
	add r2, r8
	ldrb r3, [r2, 0x1]
	movs r6, 0x4
	negs r6, r6
	adds r1, r6, 0
	ands r1, r3
	strb r1, [r2, 0x1]
	movs r2, 0xA
	ldrsh r1, [r4, r2]
	lsls r2, r1, 4
	adds r2, r1
	lsls r2, 2
	add r2, r8
	ldrb r3, [r2, 0x3]
	movs r5, 0x3F
	negs r5, r5
	adds r1, r5, 0
	ands r1, r3
	strb r1, [r2, 0x3]
	movs r1, 0xA
	ldrsh r2, [r4, r1]
	lsls r1, r2, 4
	adds r1, r2
	lsls r1, 2
	add r1, r8
	adds r1, 0x3E
	ldrb r3, [r1]
	movs r2, 0x5
	negs r2, r2
	ands r2, r3
	strb r2, [r1]
	movs r1, 0xC
	ldrsh r2, [r4, r1]
	lsls r1, r2, 4
	adds r1, r2
	lsls r1, 2
	add r1, r8
	ldrb r2, [r1, 0x1]
	ands r6, r2
	strb r6, [r1, 0x1]
	movs r1, 0xC
	ldrsh r2, [r4, r1]
	lsls r1, r2, 4
	adds r1, r2
	lsls r1, 2
	add r1, r8
	ldrb r2, [r1, 0x3]
	ands r5, r2
	strb r5, [r1, 0x3]
	movs r1, 0xC
	ldrsh r2, [r4, r1]
	lsls r1, r2, 4
	adds r1, r2
	lsls r1, 2
	add r1, r8
	adds r1, 0x3E
	ldrb r2, [r1]
	movs r3, 0x4
	orrs r2, r3
	strb r2, [r1]
	bl DestroyTask
	pop {r3}
	mov r8, r3
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_817C72C

	thumb_func_start sub_817C7DC
sub_817C7DC: @ 817C7DC
	ldr r2, =gUnknown_0860A320
	lsls r0, 2
	adds r0, r2
	ldr r0, [r0]
	lsls r1, 1
	adds r1, r0
	movs r2, 0
	ldrsh r0, [r1, r2]
	bx lr
	.pool
	thumb_func_end sub_817C7DC

	thumb_func_start sub_817C7F4
sub_817C7F4: @ 817C7F4
	push {r4,r5,lr}
	lsls r4, r0, 16
	lsrs r5, r4, 16
	adds r0, r5, 0
	bl sub_811EB10
	lsls r0, 24
	cmp r0, 0
	beq _0817C810
	ldr r0, =gUnknown_0860A3AC
	b _0817C84E
	.pool
_0817C810:
	lsrs r0, r4, 25
	ldr r2, =0x000001ff
	ands r2, r5
	cmp r0, 0x13
	bhi _0817C828
	cmp r0, 0x12
	bcs _0817C834
	cmp r0, 0
	beq _0817C82C
	b _0817C83C
	.pool
_0817C828:
	cmp r0, 0x15
	bne _0817C83C
_0817C82C:
	ldr r1, =gUnknown_085F5494
	b _0817C844
	.pool
_0817C834:
	ldr r1, =gUnknown_085FA1D8
	b _0817C844
	.pool
_0817C83C:
	ldr r1, =gUnknown_0860A168
	lsls r0, 2
	adds r0, r1
	ldr r1, [r0]
_0817C844:
	lsls r0, r2, 1
	adds r0, r2
	lsls r0, 4
	adds r1, r0
	adds r0, r1, 0
_0817C84E:
	pop {r4,r5}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_817C7F4

	thumb_func_start sub_817C858
sub_817C858: @ 817C858
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	adds r5, r0, 0
	lsls r1, 16
	lsrs r7, r1, 16
	movs r0, 0
	strh r0, [r5, 0x4]
	movs r6, 0
	ldr r0, =gUnknown_0860A3DC
	mov r8, r0
	adds r4, r5, 0
	adds r4, 0x18
_0817C872:
	lsls r0, r6, 3
	ldr r1, [r5, 0x30]
	adds r2, r1, r0
	ldrb r0, [r2]
	cmp r0, 0xFF
	beq _0817C8A0
	movs r1, 0x1
	ldrsb r1, [r2, r1]
	lsls r0, 2
	add r0, r8
	ldr r0, [r0]
	adds r1, r0
	strh r1, [r4]
	adds r0, r7, 0
	adds r0, 0x1E
	adds r1, r6, 0
	bl sub_817C7DC
	strh r0, [r4, 0x2]
	ldrh r0, [r4]
	ldrh r1, [r5, 0x4]
	adds r0, r1
	strh r0, [r5, 0x4]
_0817C8A0:
	adds r4, 0x4
	adds r6, 0x1
	cmp r6, 0x5
	ble _0817C872
	movs r0, 0
	strb r0, [r5, 0x1]
	strh r0, [r5, 0xA]
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_817C858

	thumb_func_start sub_817C8BC
sub_817C8BC: @ 817C8BC
	push {lr}
	ldr r0, =gUnknown_02037318
	ldrb r0, [r0, 0x17]
	bl is_light_level_1_2_3_or_6
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	beq _0817C8D8
	movs r0, 0
	b _0817C8E6
	.pool
_0817C8D8:
	ldr r1, =gUnknown_03005DB0
	ldr r0, =hm_add_c3_launch_phase_2
	str r0, [r1]
	ldr r1, =gUnknown_0203CEEC
	ldr r0, =hm_teleport_run_dp02scr
	str r0, [r1]
	movs r0, 0x1
_0817C8E6:
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_817C8BC

	thumb_func_start hm_teleport_run_dp02scr
hm_teleport_run_dp02scr: @ 817C8FC
	push {lr}
	bl sub_808469C
	movs r0, 0x3F
	bl FieldEffectStart
	bl brm_get_pokemon_selection
	ldr r1, =gUnknown_02038C08
	lsls r0, 24
	lsrs r0, 24
	str r0, [r1]
	pop {r0}
	bx r0
	.pool
	thumb_func_end hm_teleport_run_dp02scr

	thumb_func_start sub_817C91C
sub_817C91C: @ 817C91C
	push {lr}
	bl oei_task_add
	lsls r0, 24
	lsrs r0, 24
	ldr r2, =gTasks
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r1, r2
	ldr r2, =sub_817C94C
	lsrs r0, r2, 16
	strh r0, [r1, 0x18]
	strh r2, [r1, 0x1A]
	movs r0, 0x1
	bl SetPlayerAvatarTransitionFlags
	movs r0, 0
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_817C91C

	thumb_func_start sub_817C94C
sub_817C94C: @ 817C94C
	push {lr}
	movs r0, 0x3F
	bl FieldEffectActiveListRemove
	bl sub_80B7FC8
	pop {r0}
	bx r0
	thumb_func_end sub_817C94C

	thumb_func_start sub_817C95C
sub_817C95C: @ 817C95C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x10
	lsls r0, 16
	lsrs r0, 16
	str r0, [sp]
	ldr r0, =gUnknown_02022FEC
	ldr r0, [r0]
	movs r1, 0x2
	ands r0, r1
	cmp r0, 0
	bne _0817C988
	ldr r0, [sp]
	cmp r0, 0x1B
	beq _0817C988
	cmp r0, 0xDD
	beq _0817C988
	bl _0817E0A6
_0817C988:
	ldr r0, =gUnknown_0202449C
	ldr r0, [r0]
	movs r1, 0x81
	lsls r1, 2
	adds r7, r0, r1
	ldr r5, =gUnknown_0202420B
	ldrb r0, [r5]
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r4, r0, 24
	ldr r0, =gUnknown_0202420C
	ldrb r0, [r0]
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r6, r0, 24
	ldr r0, =gUnknown_0202420E
	ldrb r0, [r0]
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
	ldr r0, =gUnknown_0203ABA8
	ldr r0, [r0]
	ldrb r0, [r0, 0x7]
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp, 0x4]
	cmp r4, 0
	bne _0817CA00
	ldr r2, =gUnknown_0202406E
	ldrb r0, [r5]
	lsls r0, 1
	adds r0, r2
	ldrh r1, [r0]
	movs r0, 0x64
	muls r1, r0
	ldr r0, =gUnknown_020244EC
	b _0817CA10
	.pool
_0817CA00:
	ldr r2, =gUnknown_0202406E
	ldrb r0, [r5]
	lsls r0, 1
	adds r0, r2
	ldrh r1, [r0]
	movs r0, 0x64
	muls r1, r0
	ldr r0, =gUnknown_02024744
_0817CA10:
	adds r1, r0
	str r1, [sp, 0x8]
	cmp r6, 0
	bne _0817CA3C
	ldr r0, =gUnknown_0202420C
	ldrb r0, [r0]
	lsls r0, 1
	adds r0, r2
	ldrh r1, [r0]
	movs r0, 0x64
	muls r1, r0
	ldr r0, =gUnknown_020244EC
	b _0817CA4C
	.pool
_0817CA3C:
	ldr r0, =gUnknown_0202420C
	ldrb r0, [r0]
	lsls r0, 1
	adds r0, r2
	ldrh r1, [r0]
	movs r0, 0x64
	muls r1, r0
	ldr r0, =gUnknown_02024744
_0817CA4C:
	adds r1, r0
	str r1, [sp, 0xC]
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	ldr r1, =gUnknown_0203ABA8
	ldr r1, [r1]
	ldrh r1, [r1]
	bl sub_817F33C
	lsls r0, 24
	lsrs r0, 24
	mov r10, r0
	cmp r0, 0x3
	bls _0817CA9C
	ldr r0, [sp]
	bl sub_817E0B8
	lsls r0, 24
	cmp r0, 0
	beq _0817CA9C
	ldr r2, [sp]
	cmp r2, 0xC
	bls _0817CA9C
	lsls r0, r4, 1
	adds r0, r4
	lsls r0, 2
	adds r0, r7, r0
	adds r0, 0x57
	ldrb r1, [r0]
	movs r2, 0x1E
	bl _0817E0A2
	.pool
_0817CA9C:
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	bl battle_get_per_side_status
	lsls r0, 24
	lsrs r0, 25
	mov r8, r0
	ldr r0, =gUnknown_0202420C
	ldrb r0, [r0]
	bl battle_get_per_side_status
	lsls r0, 24
	lsrs r5, r0, 25
	ldr r0, =gUnknown_0202420E
	ldrb r0, [r0]
	bl battle_get_per_side_status
	lsls r0, 24
	lsrs r3, r0, 25
	ldr r1, [sp]
	subs r1, 0x2
	movs r0, 0xB0
	lsls r0, 1
	cmp r1, r0
	bls _0817CAD2
	bl _0817E0A6
_0817CAD2:
	lsls r0, r1, 2
	ldr r1, =_0817CAEC
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_0817CAEC:
	.4byte _0817DD7A
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817D070
	.4byte _0817DD74
	.4byte _0817DD80
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817DA68
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817D7D8
	.4byte _0817E0A6
	.4byte _0817D8A4
	.4byte _0817E0A6
	.4byte _0817D838
	.4byte _0817E0A6
	.4byte _0817D704
	.4byte _0817E0A6
	.4byte _0817D76C
	.4byte _0817DB24
	.4byte _0817E0A6
	.4byte _0817DB90
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817D9C2
	.4byte _0817E0A6
	.4byte _0817DA24
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817DBD4
	.4byte _0817E0A6
	.4byte _0817D94C
	.4byte _0817E0A6
	.4byte _0817D994
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E040
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817DE10
	.4byte _0817DDC8
	.4byte _0817DEDC
	.4byte _0817DF24
	.4byte _0817DF4E
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817D65E
	.4byte _0817D65E
	.4byte _0817D65E
	.4byte _0817D65E
	.4byte _0817D698
	.4byte _0817E0A6
	.4byte _0817E08E
	.4byte _0817DF70
	.4byte _0817DFBC
	.4byte _0817E0A6
	.4byte _0817E08E
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817D53C
	.4byte _0817E0A6
	.4byte _0817D584
	.4byte _0817DACC
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817D3A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817D296
	.4byte _0817D2E4
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817D5CE
	.4byte _0817D608
	.4byte _0817D498
	.4byte _0817D4E0
	.4byte _0817DC62
	.4byte _0817DC98
	.4byte _0817E0A6
	.4byte _0817D1B8
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817DCDC
	.4byte _0817E0A6
	.4byte _0817D0DC
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817D1E0
	.4byte _0817D314
	.4byte _0817D354
	.4byte _0817D372
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817D216
	.4byte _0817D260
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817D3C0
	.4byte _0817D3F2
	.4byte _0817D440
	.4byte _0817D45C
	.4byte _0817D3B8
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817D098
	.4byte _0817D0D4
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817DC20
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817D16C
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817DD38
	.4byte _0817DCFC
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817D65E
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817D124
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817E0A6
	.4byte _0817DE58
	.4byte _0817DDC8
	.4byte _0817DE10
	.4byte _0817DFE6
_0817D070:
	movs r0, 0x1
	mov r1, r10
	movs r2, 0x2
	movs r3, 0
	bl sub_817E684
	ldr r0, =gUnknown_02022FEC
	ldr r0, [r0]
	movs r1, 0x2
	ands r0, r1
	cmp r0, 0
	beq _0817D08C
	bl _0817E0A6
_0817D08C:
	bl sub_817EECC
	bl _0817E0A6
	.pool
_0817D098:
	movs r0, 0x1
	mov r1, r10
	movs r2, 0x1
	movs r3, 0
	bl sub_817E684
	ldr r0, =gUnknown_02022FEC
	ldr r0, [r0]
	movs r1, 0x2
	ands r0, r1
	cmp r0, 0
	beq _0817D0B4
	bl _0817E0A6
_0817D0B4:
	ldr r0, [sp, 0xC]
	movs r1, 0x39
	movs r2, 0
	bl pokemon_getattr
	cmp r0, 0
	bne _0817D0C6
	bl _0817E0A6
_0817D0C6:
	bl sub_817EECC
	bl _0817E0A6
	.pool
_0817D0D4:
	movs r0, 0x1
	mov r1, r10
	movs r2, 0
	b _0817D48E
_0817D0DC:
	lsls r3, r4, 1
	adds r3, r4
	lsls r3, 2
	adds r3, r7, r3
	ldr r1, =gUnknown_0202406E
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	lsls r0, 1
	adds r0, r1
	ldrh r0, [r0]
	adds r0, 0x1
	movs r1, 0x7
	ands r0, r1
	lsls r0, 15
	ldr r1, [r3, 0x50]
	ldr r2, =0xfffc7fff
	ands r1, r2
	orrs r1, r0
	str r1, [r3, 0x50]
	adds r3, 0x55
	movs r0, 0x3
	mov r1, r10
	ands r1, r0
	lsls r1, 2
	ldrb r2, [r3]
	movs r0, 0xD
	negs r0, r0
	bl _0817DC0C
	.pool
_0817D124:
	lsls r2, r4, 1
	adds r2, r4
	lsls r2, 2
	adds r2, r7, r2
	ldr r1, =gUnknown_0202406E
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	lsls r0, 1
	adds r0, r1
	ldrh r1, [r0]
	adds r1, 0x1
	adds r4, r2, 0
	adds r4, 0x52
	movs r0, 0x7
	ands r1, r0
	lsls r1, 2
	ldrb r3, [r4]
	movs r0, 0x1D
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4]
	adds r2, 0x55
	movs r0, 0x3
	mov r1, r10
	ands r1, r0
	lsls r1, 4
	ldrb r3, [r2]
	movs r0, 0x31
	negs r0, r0
	bl _0817DFAA
	.pool
_0817D16C:
	lsls r0, r4, 1
	adds r0, r4
	lsls r0, 2
	adds r5, r7, r0
	ldr r1, =gUnknown_0202406E
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	lsls r0, 1
	adds r0, r1
	ldrh r1, [r0]
	adds r1, 0x1
	adds r3, r5, 0
	adds r3, 0x52
	lsls r1, 5
	ldrb r2, [r3]
	movs r0, 0x1F
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	adds r4, r5, 0
	adds r4, 0x55
	mov r0, r10
	lsls r2, r0, 6
	ldrb r1, [r4]
	movs r0, 0x3F
	ands r0, r1
	orrs r0, r2
	strb r0, [r4]
	adds r2, r5, 0
	adds r2, 0x58
	ldrb r0, [r2]
	movs r1, 0x40
	bl _0817DFAC
	.pool
_0817D1B8:
	ldr r1, =gUnknown_02022F5C
	ldrb r0, [r1]
	cmp r0, 0
	beq _0817D1C4
	bl _0817E0A6
_0817D1C4:
	lsls r0, r4, 1
	adds r0, r4
	lsls r0, 2
	adds r0, r7, r0
	adds r0, 0x57
	ldrb r2, [r0]
	movs r1, 0x1F
	negs r1, r1
	ands r1, r2
	movs r2, 0x14
	bl _0817E0A2
	.pool
_0817D1E0:
	lsls r0, r6, 1
	adds r0, r6
	lsls r0, 2
	adds r3, r7, r0
	adds r0, r3, 0
	adds r0, 0x53
	ldrb r0, [r0]
	lsls r0, 29
	lsrs r0, 29
	cmp r0, 0
	bne _0817D1FA
	bl _0817E0A6
_0817D1FA:
	adds r2, r6, 0
	subs r1, r0, 0x1
	lsls r1, 2
	adds r0, r3, 0
	adds r0, 0x56
	ldrb r3, [r0]
	lsls r3, 30
	lsrs r3, 30
	adds r3, r1
	lsls r3, 24
	lsrs r3, 24
	movs r0, 0x2
	bl _0817DB10
_0817D216:
	lsls r2, r4, 1
	adds r2, r4
	lsls r2, 2
	adds r2, r7, r2
	ldr r1, =gUnknown_0202406E
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	lsls r0, 1
	adds r0, r1
	ldrh r1, [r0]
	adds r1, 0x1
	adds r4, r2, 0
	adds r4, 0x53
	movs r0, 0x7
	ands r1, r0
	lsls r1, 3
	ldrb r3, [r4]
	movs r0, 0x39
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4]
	adds r2, 0x56
	movs r0, 0x3
	mov r1, r10
	ands r1, r0
	lsls r1, 2
	ldrb r3, [r2]
	movs r0, 0xD
	negs r0, r0
	bl _0817DFAA
	.pool
_0817D260:
	lsls r0, r6, 1
	adds r0, r6
	lsls r0, 2
	adds r3, r7, r0
	adds r0, r3, 0
	adds r0, 0x53
	ldrb r0, [r0]
	lsls r0, 26
	lsrs r0, 29
	cmp r0, 0
	bne _0817D27A
	bl _0817E0A6
_0817D27A:
	adds r2, r6, 0
	subs r1, r0, 0x1
	lsls r1, 2
	adds r0, r3, 0
	adds r0, 0x56
	ldrb r3, [r0]
	lsls r3, 28
	lsrs r3, 30
	adds r3, r1
	lsls r3, 24
	lsrs r3, 24
	movs r0, 0x2
	bl _0817DBC2
_0817D296:
	lsls r2, r4, 1
	adds r2, r4
	lsls r2, 2
	adds r2, r7, r2
	ldr r1, =gUnknown_0202406E
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	lsls r0, 1
	adds r0, r1
	ldrh r1, [r0]
	adds r1, 0x1
	adds r2, 0x56
	movs r0, 0x7
	ands r1, r0
	lsls r1, 4
	ldrb r3, [r2]
	movs r0, 0x71
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
	movs r0, 0x3
	mov r1, r10
	ands r1, r0
	lsls r1, 7
	ldrh r3, [r2]
	ldr r0, =0xfffffe7f
	ands r0, r3
	orrs r0, r1
	strh r0, [r2]
	bl _0817E0A6
	.pool
_0817D2E4:
	lsls r0, r6, 1
	adds r0, r6
	lsls r0, 2
	adds r0, r7, r0
	adds r0, 0x56
	ldrb r0, [r0]
	lsls r0, 25
	lsrs r0, 29
	cmp r0, 0
	bne _0817D2FC
	bl _0817E0A6
_0817D2FC:
	lsls r0, r4, 1
	adds r0, r4
	lsls r0, 2
	adds r0, r7, r0
	adds r0, 0x57
	ldrb r2, [r0]
	movs r1, 0x1F
	negs r1, r1
	ands r1, r2
	movs r2, 0x16
	bl _0817E0A2
_0817D314:
	mov r2, r8
	lsls r3, r2, 3
	lsls r0, r4, 4
	adds r3, r0
	adds r3, r7, r3
	ldr r1, =gUnknown_0202406E
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	lsls r0, 1
	adds r0, r1
	ldrh r1, [r0]
	adds r1, 0x1
	adds r3, 0x35
	movs r0, 0x7
	ands r1, r0
	ldrb r2, [r3]
	movs r0, 0x8
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	movs r2, 0x3
	mov r1, r10
	ands r1, r2
	lsls r1, 3
	movs r2, 0x19
	negs r2, r2
	bl _0817DC0C
	.pool
_0817D354:
	mov r1, r8
	lsls r0, r1, 3
	lsls r1, r4, 4
	adds r0, r1
	adds r0, r7, r0
	adds r0, 0x35
	ldrb r1, [r0]
	lsls r0, r1, 29
	lsrs r0, 29
	cmp r0, 0
	bne _0817D36E
	bl _0817E0A6
_0817D36E:
	adds r2, r4, 0
	b _0817D38C
_0817D372:
	lsls r0, r5, 3
	lsls r1, r6, 4
	adds r0, r1
	adds r0, r7, r0
	adds r0, 0x35
	ldrb r1, [r0]
	lsls r0, r1, 29
	lsrs r0, 29
	cmp r0, 0
	bne _0817D38A
	bl _0817E0A6
_0817D38A:
	adds r2, r6, 0
_0817D38C:
	subs r0, 0x1
	lsls r0, 2
	lsls r3, r1, 27
	lsrs r3, 30
	adds r3, r0
	lsls r3, 24
	lsrs r3, 24
	movs r0, 0x2
	movs r1, 0x6
	bl sub_817E684
	bl _0817E0A6
_0817D3A6:
	ldr r0, =gUnknown_0202449C
	ldr r0, [r0]
	adds r0, 0xB3
	movs r1, 0x1
	bl _0817E0A4
	.pool
_0817D3B8:
	movs r0, 0x12
	mov r1, r10
	movs r2, 0
	b _0817D48E
_0817D3C0:
	ldr r0, =gUnknown_02022F58
	ldrb r2, [r0, 0x2]
	cmp r2, 0
	bne _0817D3CC
	bl _0817E0A6
_0817D3CC:
	ldr r1, =gUnknown_02022F6A
	ldrh r0, [r1]
	cmp r0, 0xD1
	bne _0817D3E8
	subs r2, 0x1
	lsls r2, 24
	lsrs r2, 24
	movs r0, 0x17
	b _0817D48C
	.pool
_0817D3E8:
	subs r2, 0x1
	lsls r2, 24
	lsrs r2, 24
	movs r0, 0x16
	b _0817D48C
_0817D3F2:
	ldr r0, =gUnknown_02022F58
	ldrb r2, [r0, 0x2]
	cmp r2, 0
	bne _0817D3FE
	bl _0817E0A6
_0817D3FE:
	ldr r0, =gUnknown_0202420B
	ldr r1, =gUnknown_0202420C
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _0817D436
	ldr r1, =gUnknown_02022F6A
	ldrh r0, [r1]
	cmp r0, 0xD1
	bne _0817D42C
	subs r2, 0x1
	lsls r2, 24
	lsrs r2, 24
	movs r0, 0x17
	b _0817D48C
	.pool
_0817D42C:
	subs r2, 0x1
	lsls r2, 24
	lsrs r2, 24
	movs r0, 0x16
	b _0817D48C
_0817D436:
	subs r2, 0x1
	lsls r2, 24
	lsrs r2, 24
	movs r0, 0x1B
	b _0817D48C
_0817D440:
	ldr r0, =gUnknown_02022F58
	ldrb r2, [r0, 0x2]
	cmp r2, 0
	bne _0817D44C
	bl _0817E0A6
_0817D44C:
	subs r2, 0x1
	lsls r2, 24
	lsrs r2, 24
	movs r0, 0x18
	b _0817D48C
	.pool
_0817D45C:
	ldr r0, =gUnknown_02022F58
	ldrb r2, [r0, 0x2]
	cmp r2, 0
	bne _0817D468
	bl _0817E0A6
_0817D468:
	ldr r1, =gUnknown_02022F6A
	ldrh r0, [r1]
	cmp r0, 0xD3
	bne _0817D484
	subs r2, 0x1
	lsls r2, 24
	lsrs r2, 24
	movs r0, 0x1A
	b _0817D48C
	.pool
_0817D484:
	subs r2, 0x1
	lsls r2, 24
	lsrs r2, 24
	movs r0, 0x19
_0817D48C:
	mov r1, r10
_0817D48E:
	movs r3, 0
	bl sub_817E684
	bl _0817E0A6
_0817D498:
	lsls r2, r5, 3
	lsls r0, r6, 4
	adds r2, r0
	adds r2, r7, r2
	ldr r1, =gUnknown_0202406E
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	lsls r0, 1
	adds r0, r1
	ldrh r1, [r0]
	adds r1, 0x1
	adds r4, r2, 0
	adds r4, 0x30
	movs r0, 0x7
	ands r1, r0
	ldrb r3, [r4]
	movs r0, 0x8
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4]
	adds r2, 0x32
	movs r0, 0x3
	mov r1, r10
	ands r1, r0
	lsls r1, 2
	ldrb r3, [r2]
	movs r0, 0xD
	negs r0, r0
	bl _0817DFAA
	.pool
_0817D4E0:
	ldr r0, [sp, 0x8]
	movs r1, 0x39
	movs r2, 0
	bl pokemon_getattr
	cmp r0, 0
	bne _0817D4F2
	bl _0817E0A6
_0817D4F2:
	mov r2, r8
	lsls r0, r2, 3
	lsls r1, r4, 4
	adds r0, r1
	adds r1, r7, r0
	adds r0, r1, 0
	adds r0, 0x30
	ldrb r0, [r0]
	lsls r0, 29
	lsrs r0, 29
	cmp r0, 0
	bne _0817D50E
	bl _0817E0A6
_0817D50E:
	subs r2, r0, 0x1
	lsls r2, 24
	lsrs r2, 24
	adds r0, r1, 0
	adds r0, 0x32
	ldrb r3, [r0]
	lsls r3, 28
	lsrs r3, 30
	movs r0, 0x8
	movs r1, 0
	bl sub_817E684
	lsls r1, r4, 1
	adds r1, r4
	lsls r1, 2
	adds r1, r7, r1
	adds r1, 0x57
	ldrb r2, [r1]
	movs r0, 0x1F
	negs r0, r0
	ands r0, r2
	movs r2, 0x2
	b _0817D6F2
_0817D53C:
	lsls r2, r5, 3
	lsls r0, r6, 4
	adds r2, r0
	adds r2, r7, r2
	ldr r1, =gUnknown_0202406E
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	lsls r0, 1
	adds r0, r1
	ldrh r1, [r0]
	adds r1, 0x1
	adds r4, r2, 0
	adds r4, 0x30
	movs r0, 0x7
	ands r1, r0
	lsls r1, 3
	ldrb r3, [r4]
	movs r0, 0x39
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4]
	adds r2, 0x32
	movs r0, 0x3
	mov r1, r10
	ands r1, r0
	lsls r1, 4
	ldrb r3, [r2]
	movs r0, 0x31
	negs r0, r0
	bl _0817DFAA
	.pool
_0817D584:
	mov r1, r8
	lsls r0, r1, 3
	lsls r1, r4, 4
	adds r0, r1
	adds r1, r7, r0
	adds r0, r1, 0
	adds r0, 0x30
	ldrb r0, [r0]
	lsls r0, 26
	lsrs r0, 29
	cmp r0, 0
	bne _0817D5A0
	bl _0817E0A6
_0817D5A0:
	subs r2, r0, 0x1
	lsls r2, 24
	lsrs r2, 24
	adds r0, r1, 0
	adds r0, 0x32
	ldrb r3, [r0]
	lsls r3, 26
	lsrs r3, 30
	movs r0, 0x8
	movs r1, 0x1
	bl sub_817E684
	lsls r1, r4, 1
	adds r1, r4
	lsls r1, 2
	adds r1, r7, r1
	adds r1, 0x57
	ldrb r2, [r1]
	movs r0, 0x1F
	negs r0, r0
	ands r0, r2
	movs r2, 0x4
	b _0817D6F2
_0817D5CE:
	lsls r2, r5, 3
	lsls r0, r6, 4
	adds r2, r0
	adds r2, r7, r2
	ldr r1, =gUnknown_0202406E
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	lsls r0, 1
	adds r0, r1
	ldrh r1, [r0]
	adds r1, 0x1
	movs r0, 0x7
	ands r1, r0
	lsls r1, 6
	ldrh r3, [r2, 0x30]
	ldr r0, =0xfffffe3f
	ands r0, r3
	orrs r0, r1
	strh r0, [r2, 0x30]
	adds r2, 0x32
	bl _0817DF0A
	.pool
_0817D608:
	ldr r0, [sp, 0x8]
	movs r1, 0x39
	movs r2, 0
	bl pokemon_getattr
	cmp r0, 0
	bne _0817D61A
	bl _0817E0A6
_0817D61A:
	mov r1, r8
	lsls r0, r1, 3
	lsls r1, r4, 4
	adds r0, r1
	adds r1, r7, r0
	ldrh r0, [r1, 0x30]
	lsls r0, 23
	lsrs r0, 29
	cmp r0, 0
	bne _0817D632
	bl _0817E0A6
_0817D632:
	subs r2, r0, 0x1
	lsls r2, 24
	lsrs r2, 24
	adds r0, r1, 0
	adds r0, 0x32
	ldrb r3, [r0]
	lsrs r3, 6
	movs r0, 0x8
	movs r1, 0x5
	bl sub_817E684
	lsls r1, r4, 1
	adds r1, r4
	lsls r1, 2
	adds r1, r7, r1
	adds r1, 0x57
	ldrb r2, [r1]
	movs r0, 0x1F
	negs r0, r0
	ands r0, r2
	movs r2, 0xA
	b _0817D6F2
_0817D65E:
	lsls r2, r5, 3
	lsls r0, r6, 4
	adds r2, r0
	adds r2, r7, r2
	ldr r1, =gUnknown_0202406E
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	lsls r0, 1
	adds r0, r1
	ldrh r1, [r0]
	adds r1, 0x1
	adds r4, r2, 0
	adds r4, 0x31
	movs r0, 0x7
	ands r1, r0
	lsls r1, 1
	ldrb r3, [r4]
	movs r0, 0xF
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4]
	adds r2, 0x33
	bl _0817DF9E
	.pool
_0817D698:
	ldr r0, [sp, 0x8]
	movs r1, 0x39
	movs r2, 0
	bl pokemon_getattr
	cmp r0, 0
	bne _0817D6AA
	bl _0817E0A6
_0817D6AA:
	mov r1, r8
	lsls r0, r1, 3
	lsls r1, r4, 4
	adds r0, r1
	adds r1, r7, r0
	adds r0, r1, 0
	adds r0, 0x31
	ldrb r0, [r0]
	lsls r0, 28
	lsrs r0, 29
	cmp r0, 0
	bne _0817D6C6
	bl _0817E0A6
_0817D6C6:
	subs r2, r0, 0x1
	lsls r2, 24
	lsrs r2, 24
	adds r0, r1, 0
	adds r0, 0x33
	ldrb r3, [r0]
	lsls r3, 30
	lsrs r3, 30
	movs r0, 0x8
	movs r1, 0x6
	bl sub_817E684
	lsls r1, r4, 1
	adds r1, r4
	lsls r1, 2
	adds r1, r7, r1
	adds r1, 0x57
	ldrb r2, [r1]
	movs r0, 0x1F
	negs r0, r0
	ands r0, r2
	movs r2, 0xC
_0817D6F2:
	orrs r0, r2
	mov r2, r8
	lsls r3, r2, 5
	movs r2, 0x1F
	ands r0, r2
	orrs r0, r3
	strb r0, [r1]
	bl _0817E0A6
_0817D704:
	ldr r5, =gUnknown_0202406E
	ldr r6, =gUnknown_0202420E
	ldrb r0, [r6]
	lsls r0, 1
	adds r0, r5
	ldrh r2, [r0]
	lsls r2, 2
	mov r0, r9
	lsls r4, r0, 1
	add r4, r9
	lsls r4, 3
	adds r2, r4
	adds r2, r7, r2
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	lsls r0, 1
	adds r0, r5
	ldrh r1, [r0]
	adds r1, 0x1
	movs r0, 0x7
	ands r1, r0
	lsls r1, 6
	ldrh r3, [r2]
	ldr r0, =0xfffffe3f
	ands r0, r3
	orrs r0, r1
	strh r0, [r2]
	ldrb r0, [r6]
	lsls r0, 1
	adds r0, r5
	ldrh r1, [r0]
	lsls r1, 2
	adds r1, r4
	adds r1, r7, r1
	mov r2, r10
	lsls r3, r2, 6
	ldrb r2, [r1, 0x2]
	movs r0, 0x3F
	ands r0, r2
	orrs r0, r3
	strb r0, [r1, 0x2]
	bl _0817E0A6
	.pool
_0817D76C:
	ldr r0, [sp, 0x8]
	movs r1, 0x39
	movs r2, 0
	bl pokemon_getattr
	cmp r0, 0
	bne _0817D77E
	bl _0817E0A6
_0817D77E:
	ldr r6, =gUnknown_0202406E
	ldr r5, =gUnknown_0202420B
	ldrb r0, [r5]
	lsls r0, 1
	adds r0, r6
	ldrh r0, [r0]
	lsls r0, 2
	lsls r1, r4, 1
	adds r4, r1, r4
	lsls r1, r4, 3
	adds r0, r1
	adds r1, r7, r0
	ldrh r0, [r1]
	lsls r0, 23
	lsrs r0, 29
	cmp r0, 0
	beq _0817D7B2
	subs r2, r0, 0x1
	lsls r2, 24
	lsrs r2, 24
	ldrb r3, [r1, 0x2]
	lsrs r3, 6
	movs r0, 0x8
	movs r1, 0x4
	bl sub_817E684
_0817D7B2:
	lsls r3, r4, 2
	adds r3, r7, r3
	adds r3, 0x57
	ldrb r0, [r3]
	movs r1, 0x1F
	negs r1, r1
	ands r1, r0
	movs r0, 0x8
	orrs r1, r0
	strb r1, [r3]
	ldrb r0, [r5]
	lsls r0, 1
	adds r0, r6
	b _0817D934
	.pool
_0817D7D8:
	ldr r5, =gUnknown_0202406E
	ldr r6, =gUnknown_0202420E
	ldrb r0, [r6]
	lsls r0, 1
	adds r0, r5
	ldrh r2, [r0]
	lsls r2, 2
	mov r0, r9
	lsls r4, r0, 1
	add r4, r9
	lsls r4, 3
	adds r2, r4
	adds r2, r7, r2
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	lsls r0, 1
	adds r0, r5
	ldrh r1, [r0]
	adds r1, 0x1
	movs r0, 0x7
	ands r1, r0
	ldrb r3, [r2]
	movs r0, 0x8
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r6]
	lsls r0, 1
	adds r0, r5
	ldrh r1, [r0]
	lsls r1, 2
	adds r1, r4
	adds r1, r7, r1
	movs r0, 0x3
	mov r2, r10
	ands r2, r0
	lsls r2, 2
	ldrb r3, [r1, 0x2]
	movs r0, 0xD
	negs r0, r0
	b _0817D88C
	.pool
_0817D838:
	ldr r5, =gUnknown_0202406E
	ldr r6, =gUnknown_0202420E
	ldrb r0, [r6]
	lsls r0, 1
	adds r0, r5
	ldrh r2, [r0]
	lsls r2, 2
	mov r1, r9
	lsls r4, r1, 1
	add r4, r9
	lsls r4, 3
	adds r2, r4
	adds r2, r7, r2
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	lsls r0, 1
	adds r0, r5
	ldrh r1, [r0]
	adds r1, 0x1
	movs r0, 0x7
	ands r1, r0
	lsls r1, 3
	ldrb r3, [r2]
	movs r0, 0x39
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r6]
	lsls r0, 1
	adds r0, r5
	ldrh r1, [r0]
	lsls r1, 2
	adds r1, r4
	adds r1, r7, r1
	movs r0, 0x3
	mov r2, r10
	ands r2, r0
	lsls r2, 4
	ldrb r3, [r1, 0x2]
	movs r0, 0x31
	negs r0, r0
_0817D88C:
	ands r0, r3
	orrs r0, r2
	strb r0, [r1, 0x2]
	bl _0817E0A6
	.pool
_0817D8A4:
	ldr r0, [sp, 0x8]
	movs r1, 0x39
	movs r2, 0
	bl pokemon_getattr
	cmp r0, 0
	bne _0817D8B6
	bl _0817E0A6
_0817D8B6:
	ldr r2, =gUnknown_0202406E
	mov r8, r2
	ldr r6, =gUnknown_0202420B
	ldrb r0, [r6]
	lsls r0, 1
	add r0, r8
	ldrh r0, [r0]
	lsls r0, 2
	lsls r1, r4, 1
	adds r5, r1, r4
	lsls r4, r5, 3
	adds r0, r4
	adds r1, r7, r0
	ldrb r0, [r1]
	lsls r0, 29
	lsrs r0, 29
	cmp r0, 0
	beq _0817D8EE
	subs r2, r0, 0x1
	lsls r2, 24
	lsrs r2, 24
	ldrb r3, [r1, 0x2]
	lsls r3, 28
	lsrs r3, 30
	movs r0, 0x8
	movs r1, 0x2
	bl sub_817E684
_0817D8EE:
	ldrb r0, [r6]
	lsls r0, 1
	add r0, r8
	ldrh r0, [r0]
	lsls r0, 2
	adds r0, r4
	adds r1, r7, r0
	ldrb r0, [r1]
	lsls r0, 26
	lsrs r0, 29
	cmp r0, 0
	beq _0817D91A
	subs r2, r0, 0x1
	lsls r2, 24
	lsrs r2, 24
	ldrb r3, [r1, 0x2]
	lsls r3, 26
	lsrs r3, 30
	movs r0, 0x8
	movs r1, 0x3
	bl sub_817E684
_0817D91A:
	lsls r3, r5, 2
	adds r3, r7, r3
	adds r3, 0x57
	ldrb r0, [r3]
	movs r1, 0x1F
	negs r1, r1
	ands r1, r0
	movs r0, 0x6
	orrs r1, r0
	strb r1, [r3]
	ldrb r0, [r6]
	lsls r0, 1
	add r0, r8
_0817D934:
	ldrh r0, [r0]
	lsls r0, 5
	movs r2, 0x1F
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	b _0817E0A6
	.pool
_0817D94C:
	lsls r2, r5, 3
	lsls r0, r6, 4
	adds r2, r0
	adds r2, r7, r2
	ldr r1, =gUnknown_0202406E
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	lsls r0, 1
	adds r0, r1
	ldrh r1, [r0]
	adds r1, 0x1
	adds r4, r2, 0
	adds r4, 0x31
	movs r0, 0x7
	ands r1, r0
	lsls r1, 4
	ldrb r3, [r4]
	movs r0, 0x71
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4]
	adds r2, 0x33
	movs r0, 0x3
	mov r1, r10
	ands r1, r0
	lsls r1, 2
	ldrb r3, [r2]
	movs r0, 0xD
	negs r0, r0
	b _0817DFAA
	.pool
_0817D994:
	mov r1, r8
	lsls r0, r1, 3
	lsls r1, r4, 4
	adds r0, r1
	adds r1, r7, r0
	adds r0, r1, 0
	adds r0, 0x31
	ldrb r0, [r0]
	lsls r0, 25
	lsrs r0, 29
	cmp r0, 0
	bne _0817D9AE
	b _0817E0A6
_0817D9AE:
	subs r2, r0, 0x1
	lsls r2, 24
	lsrs r2, 24
	adds r0, r1, 0
	adds r0, 0x33
	ldrb r3, [r0]
	lsls r3, 28
	lsrs r3, 30
	movs r0, 0x9
	b _0817E086
_0817D9C2:
	ldr r5, =gUnknown_0202406E
	ldr r6, =gUnknown_0202420E
	ldrb r0, [r6]
	lsls r0, 1
	adds r0, r5
	ldrh r2, [r0]
	lsls r2, 2
	mov r0, r9
	lsls r4, r0, 1
	add r4, r9
	lsls r4, 3
	adds r2, r4
	adds r2, r7, r2
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	lsls r0, 1
	adds r0, r5
	ldrh r1, [r0]
	adds r1, 0x1
	movs r0, 0x7
	ands r1, r0
	lsls r1, 1
	ldrb r3, [r2, 0x1]
	movs r0, 0xF
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, 0x1]
	ldrb r0, [r6]
	lsls r0, 1
	adds r0, r5
	ldrh r1, [r0]
	lsls r1, 2
	adds r1, r4
	adds r1, r7, r1
	movs r0, 0x3
	mov r2, r10
	ands r2, r0
	ldrb r3, [r1, 0x3]
	movs r0, 0x4
	negs r0, r0
	b _0817DB76
	.pool
_0817DA24:
	ldr r1, =gUnknown_0202406E
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	lsls r0, 1
	adds r0, r1
	ldrh r1, [r0]
	lsls r1, 2
	lsls r0, r4, 1
	adds r0, r4
	lsls r0, 3
	adds r1, r0
	adds r1, r7, r1
	ldrb r0, [r1, 0x1]
	lsls r0, 28
	lsrs r0, 29
	cmp r0, 0
	bne _0817DA48
	b _0817E0A6
_0817DA48:
	subs r2, r0, 0x1
	lsls r2, 24
	lsrs r2, 24
	ldrb r3, [r1, 0x3]
	lsls r3, 30
	lsrs r3, 30
	movs r0, 0x9
	movs r1, 0x2
	bl sub_817E684
	b _0817E0A6
	.pool
_0817DA68:
	ldr r5, =gUnknown_0202406E
	ldr r6, =gUnknown_0202420E
	ldrb r0, [r6]
	lsls r0, 1
	adds r0, r5
	ldrh r2, [r0]
	lsls r2, 2
	mov r1, r9
	lsls r4, r1, 1
	add r4, r9
	lsls r4, 3
	adds r2, r4
	adds r2, r7, r2
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	lsls r0, 1
	adds r0, r5
	ldrh r1, [r0]
	adds r1, 0x1
	movs r0, 0x7
	ands r1, r0
	lsls r1, 4
	ldrb r3, [r2, 0x1]
	movs r0, 0x71
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, 0x1]
	ldrb r0, [r6]
	lsls r0, 1
	adds r0, r5
	ldrh r1, [r0]
	lsls r1, 2
	adds r1, r4
	adds r1, r7, r1
	movs r0, 0x3
	mov r2, r10
	ands r2, r0
	lsls r2, 2
	ldrb r3, [r1, 0x3]
	movs r0, 0xD
	negs r0, r0
	b _0817DB76
	.pool
_0817DACC:
	ldr r1, =gUnknown_0202406E
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	lsls r0, 1
	adds r0, r1
	ldrh r1, [r0]
	lsls r1, 2
	lsls r0, r4, 1
	adds r0, r4
	lsls r0, 3
	adds r1, r0
	adds r1, r7, r1
	ldrb r0, [r1, 0x1]
	lsls r0, 25
	lsrs r2, r0, 29
	cmp r2, 0
	bne _0817DAF0
	b _0817E0A6
_0817DAF0:
	ldr r0, =gUnknown_0203ABA8
	ldr r0, [r0]
	ldrh r0, [r0]
	cmp r0, 0xAD
	bne _0817DAFC
	b _0817E0A6
_0817DAFC:
	cmp r0, 0xD6
	bne _0817DB02
	b _0817E0A6
_0817DB02:
	subs r2, 0x1
	lsls r2, 24
	lsrs r2, 24
	ldrb r3, [r1, 0x3]
	lsls r3, 28
	lsrs r3, 30
	movs r0, 0x9
_0817DB10:
	movs r1, 0x3
	bl sub_817E684
	b _0817E0A6
	.pool
_0817DB24:
	ldr r5, =gUnknown_0202406E
	ldr r6, =gUnknown_0202420E
	ldrb r0, [r6]
	lsls r0, 1
	adds r0, r5
	ldrh r3, [r0]
	lsls r3, 2
	mov r2, r9
	lsls r4, r2, 1
	add r4, r9
	lsls r4, 3
	adds r3, r4
	adds r3, r7, r3
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	lsls r0, 1
	adds r0, r5
	ldrh r0, [r0]
	adds r0, 0x1
	movs r1, 0x7
	ands r0, r1
	lsls r0, 15
	ldr r1, [r3]
	ldr r2, =0xfffc7fff
	ands r1, r2
	orrs r1, r0
	str r1, [r3]
	ldrb r0, [r6]
	lsls r0, 1
	adds r0, r5
	ldrh r1, [r0]
	lsls r1, 2
	adds r1, r4
	adds r1, r7, r1
	movs r0, 0x3
	mov r2, r10
	ands r2, r0
	lsls r2, 4
	ldrb r3, [r1, 0x3]
	movs r0, 0x31
	negs r0, r0
_0817DB76:
	ands r0, r3
	orrs r0, r2
	strb r0, [r1, 0x3]
	b _0817E0A6
	.pool
_0817DB90:
	ldr r1, =gUnknown_0202406E
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	lsls r0, 1
	adds r0, r1
	ldrh r1, [r0]
	lsls r1, 2
	lsls r0, r4, 1
	adds r0, r4
	lsls r0, 3
	adds r1, r0
	adds r1, r7, r1
	ldr r0, [r1]
	lsls r0, 14
	lsrs r0, 29
	cmp r0, 0
	bne _0817DBB4
	b _0817E0A6
_0817DBB4:
	subs r2, r0, 0x1
	lsls r2, 24
	lsrs r2, 24
	ldrb r3, [r1, 0x3]
	lsls r3, 26
	lsrs r3, 30
	movs r0, 0x9
_0817DBC2:
	movs r1, 0x4
	bl sub_817E684
	b _0817E0A6
	.pool
_0817DBD4:
	lsls r3, 3
	mov r1, r9
	lsls r0, r1, 4
	adds r3, r0
	adds r3, r7, r3
	ldr r1, =gUnknown_0202406E
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	lsls r0, 1
	adds r0, r1
	ldrh r0, [r0]
	adds r0, 0x1
	movs r1, 0x7
	ands r0, r1
	lsls r0, 15
	ldr r1, [r3, 0x30]
	ldr r2, =0xfffc7fff
	ands r1, r2
	orrs r1, r0
	str r1, [r3, 0x30]
	adds r3, 0x33
	movs r0, 0x3
	mov r1, r10
	ands r1, r0
	lsls r1, 4
	ldrb r2, [r3]
	movs r0, 0x31
	negs r0, r0
_0817DC0C:
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	b _0817E0A6
	.pool
_0817DC20:
	mov r2, r8
	lsls r0, r2, 3
	lsls r1, r4, 4
	adds r0, r1
	adds r3, r7, r0
	ldr r0, [r3, 0x30]
	lsls r0, 14
	lsrs r0, 29
	cmp r0, 0
	beq _0817DC4C
	subs r2, r0, 0x1
	lsls r2, 24
	lsrs r2, 24
	adds r0, r3, 0
	adds r0, 0x33
	ldrb r3, [r0]
	lsls r3, 26
	lsrs r3, 30
	movs r0, 0x9
	movs r1, 0x1
	bl sub_817E684
_0817DC4C:
	lsls r0, r4, 1
	adds r0, r4
	lsls r0, 2
	adds r0, r7, r0
	adds r0, 0x57
	ldrb r2, [r0]
	movs r1, 0x1F
	negs r1, r1
	ands r1, r2
	movs r2, 0x18
	b _0817E0A2
_0817DC62:
	lsls r2, r6, 1
	adds r2, r6
	lsls r2, 2
	adds r2, r7, r2
	ldr r1, =gUnknown_0202406E
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	lsls r0, 1
	adds r0, r1
	ldrh r1, [r0]
	adds r1, 0x1
	adds r4, r2, 0
	adds r4, 0x50
	movs r0, 0x7
	ands r1, r0
	ldrb r3, [r4]
	movs r0, 0x8
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4]
	adds r2, 0x54
	b _0817DF9E
	.pool
_0817DC98:
	ldr r1, [sp, 0x4]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r4, r7, r0
	adds r0, r4, 0
	adds r0, 0x50
	ldrb r0, [r0]
	lsls r0, 29
	lsrs r2, r0, 29
	cmp r2, 0
	bne _0817DCB2
	b _0817E0A6
_0817DCB2:
	movs r0, 0x1
	eors r1, r0
	subs r2, 0x1
	lsls r2, 24
	lsrs r2, 24
	adds r0, r4, 0
	adds r0, 0x54
	ldrb r3, [r0]
	lsls r3, 30
	lsrs r3, 30
	movs r0, 0xA
	bl sub_817E684
	adds r2, r4, 0
	adds r2, 0x57
	ldrb r1, [r2]
	movs r0, 0x1F
	negs r0, r0
	ands r0, r1
	movs r1, 0xE
	b _0817DFAC
_0817DCDC:
	lsls r1, r4, 1
	adds r1, r4
	lsls r1, 2
	adds r1, r7, r1
	adds r3, r1, 0
	adds r3, 0x50
	ldrb r2, [r3]
	movs r0, 0x8
	negs r0, r0
	ands r0, r2
	strb r0, [r3]
	adds r1, 0x54
	ldrb r2, [r1]
	movs r0, 0x4
	negs r0, r0
	b _0817DF6A
_0817DCFC:
	mov r0, r8
	lsls r2, r0, 3
	lsls r0, r4, 4
	adds r2, r0
	adds r2, r7, r2
	ldr r1, =gUnknown_0202406E
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	lsls r0, 1
	adds r0, r1
	ldrh r1, [r0]
	adds r1, 0x1
	adds r4, r2, 0
	adds r4, 0x34
	movs r0, 0x7
	ands r1, r0
	ldrb r3, [r4]
	movs r0, 0x8
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4]
	adds r2, 0x33
	mov r1, r10
	lsls r3, r1, 6
	b _0817DF0E
	.pool
_0817DD38:
	mov r0, r8
	lsls r2, r0, 3
	lsls r0, r4, 4
	adds r2, r0
	adds r2, r7, r2
	ldr r1, =gUnknown_0202406E
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	lsls r0, 1
	adds r0, r1
	ldrh r1, [r0]
	adds r1, 0x1
	adds r2, 0x34
	movs r0, 0x7
	ands r1, r0
	lsls r1, 3
	ldrb r3, [r2]
	movs r0, 0x39
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	mov r1, r10
	lsls r3, r1, 6
	movs r1, 0x3F
	b _0817DF12
	.pool
_0817DD74:
	movs r0, 0
	bl sub_817EA80
_0817DD7A:
	mov r2, r8
	lsls r0, r2, 3
	b _0817DD88
_0817DD80:
	movs r0, 0x1
	bl sub_817EA80
	lsls r0, r5, 3
_0817DD88:
	lsls r1, r4, 4
	adds r0, r1
	adds r1, r7, r0
	adds r4, r1, 0
	adds r4, 0x34
	ldrb r5, [r4]
	lsls r0, r5, 29
	cmp r0, 0
	beq _0817DDAE
	movs r0, 0x8
	negs r0, r0
	ands r0, r5
	strb r0, [r4]
	adds r2, r1, 0
	adds r2, 0x33
	ldrb r1, [r2]
	movs r0, 0x3F
	ands r0, r1
	strb r0, [r2]
_0817DDAE:
	ldrb r1, [r4]
	lsls r0, r1, 26
	lsrs r0, 29
	cmp r0, 0
	bne _0817DDBA
	b _0817E0A6
_0817DDBA:
	movs r0, 0x39
	negs r0, r0
	ands r0, r1
	movs r1, 0x3F
	ands r0, r1
	strb r0, [r4]
	b _0817E0A6
_0817DDC8:
	lsls r2, r4, 1
	adds r2, r4
	lsls r2, 2
	adds r2, r7, r2
	ldr r1, =gUnknown_0202406E
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	lsls r0, 1
	adds r0, r1
	ldrh r1, [r0]
	adds r1, 0x1
	adds r4, r2, 0
	adds r4, 0x50
	movs r0, 0x7
	ands r1, r0
	lsls r1, 3
	ldrb r3, [r4]
	movs r0, 0x39
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4]
	adds r2, 0x54
	movs r0, 0x3
	mov r1, r10
	ands r1, r0
	lsls r1, 2
	ldrb r3, [r2]
	movs r0, 0xD
	negs r0, r0
	b _0817DFAA
	.pool
_0817DE10:
	lsls r2, r4, 1
	adds r2, r4
	lsls r2, 2
	adds r2, r7, r2
	ldr r1, =gUnknown_0202406E
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	lsls r0, 1
	adds r0, r1
	ldrh r1, [r0]
	adds r1, 0x1
	adds r4, r2, 0
	adds r4, 0x50
	movs r0, 0x7
	ands r1, r0
	lsls r1, 6
	ldrh r3, [r4]
	ldr r0, =0xfffffe3f
	ands r0, r3
	orrs r0, r1
	strh r0, [r4]
	adds r2, 0x54
	movs r0, 0x3
	mov r1, r10
	ands r1, r0
	lsls r1, 4
	ldrb r3, [r2]
	movs r0, 0x31
	negs r0, r0
	b _0817DFAA
	.pool
_0817DE58:
	ldr r1, =gUnknown_02022F5A
	ldrh r0, [r1]
	cmp r0, 0x73
	bne _0817DE82
	lsls r1, r4, 1
	adds r1, r4
	lsls r1, 2
	adds r1, r7, r1
	adds r3, r1, 0
	adds r3, 0x50
	ldrb r2, [r3]
	movs r0, 0x39
	negs r0, r0
	ands r0, r2
	strb r0, [r3]
	adds r1, 0x54
	ldrb r2, [r1]
	movs r0, 0xD
	negs r0, r0
	ands r0, r2
	strb r0, [r1]
_0817DE82:
	ldr r2, =gUnknown_02022F5A
	ldrh r0, [r2]
	cmp r0, 0x71
	bne _0817DEAA
	lsls r1, r4, 1
	adds r1, r4
	lsls r1, 2
	adds r1, r7, r1
	adds r3, r1, 0
	adds r3, 0x50
	ldrh r2, [r3]
	ldr r0, =0xfffffe3f
	ands r0, r2
	strh r0, [r3]
	adds r1, 0x54
	ldrb r2, [r1]
	movs r0, 0x31
	negs r0, r0
	ands r0, r2
	strb r0, [r1]
_0817DEAA:
	ldr r1, =gUnknown_02022F5A
	ldrh r0, [r1]
	cmp r0, 0x36
	beq _0817DEB4
	b _0817E0A6
_0817DEB4:
	lsls r1, r4, 1
	adds r1, r4
	lsls r1, 2
	adds r1, r7, r1
	adds r4, r1, 0
	adds r4, 0x51
	ldrb r2, [r4]
	movs r0, 0x71
	negs r0, r0
	ands r0, r2
	strb r0, [r4]
	adds r1, 0x55
	ldrb r2, [r1]
	movs r0, 0x4
	negs r0, r0
	b _0817DF6A
	.pool
_0817DEDC:
	lsls r2, r4, 1
	adds r2, r4
	lsls r2, 2
	adds r2, r7, r2
	ldr r1, =gUnknown_0202406E
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	lsls r0, 1
	adds r0, r1
	ldrh r1, [r0]
	adds r1, 0x1
	adds r4, r2, 0
	adds r4, 0x51
	movs r0, 0x7
	ands r1, r0
	lsls r1, 1
	ldrb r3, [r4]
	movs r0, 0xF
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4]
	adds r2, 0x54
_0817DF0A:
	mov r0, r10
	lsls r3, r0, 6
_0817DF0E:
	ldrb r1, [r2]
	movs r0, 0x3F
_0817DF12:
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
	b _0817E0A6
	.pool
_0817DF24:
	lsls r0, r6, 1
	adds r0, r6
	lsls r0, 2
	adds r1, r7, r0
	adds r0, r1, 0
	adds r0, 0x51
	ldrb r0, [r0]
	lsls r0, 28
	lsrs r0, 29
	cmp r0, 0
	bne _0817DF3C
	b _0817E0A6
_0817DF3C:
	subs r2, r0, 0x1
	lsls r2, 24
	lsrs r2, 24
	adds r0, r1, 0
	adds r0, 0x54
	ldrb r3, [r0]
	lsrs r3, 6
	movs r0, 0xF
	b _0817E086
_0817DF4E:
	lsls r1, r4, 1
	adds r1, r4
	lsls r1, 2
	adds r1, r7, r1
	adds r4, r1, 0
	adds r4, 0x51
	ldrb r2, [r4]
	movs r0, 0xF
	negs r0, r0
	ands r0, r2
	strb r0, [r4]
	adds r1, 0x54
	ldrb r2, [r1]
	movs r0, 0x3F
_0817DF6A:
	ands r0, r2
	strb r0, [r1]
	b _0817E0A6
_0817DF70:
	lsls r2, r4, 1
	adds r2, r4
	lsls r2, 2
	adds r2, r7, r2
	ldr r1, =gUnknown_0202406E
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	lsls r0, 1
	adds r0, r1
	ldrh r1, [r0]
	adds r1, 0x1
	adds r4, r2, 0
	adds r4, 0x51
	movs r0, 0x7
	ands r1, r0
	lsls r1, 4
	ldrb r3, [r4]
	movs r0, 0x71
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4]
	adds r2, 0x55
_0817DF9E:
	movs r0, 0x3
	mov r1, r10
	ands r1, r0
	ldrb r3, [r2]
	movs r0, 0x4
	negs r0, r0
_0817DFAA:
	ands r0, r3
_0817DFAC:
	orrs r0, r1
	strb r0, [r2]
	b _0817E0A6
	.pool
_0817DFBC:
	lsls r0, r6, 1
	adds r0, r6
	lsls r0, 2
	adds r1, r7, r0
	adds r0, r1, 0
	adds r0, 0x51
	ldrb r0, [r0]
	lsls r0, 25
	lsrs r0, 29
	cmp r0, 0
	beq _0817E0A6
	subs r2, r0, 0x1
	lsls r2, 24
	lsrs r2, 24
	adds r0, r1, 0
	adds r0, 0x55
	ldrb r3, [r0]
	lsls r3, 30
	lsrs r3, 30
	movs r0, 0x10
	b _0817E086
_0817DFE6:
	lsls r1, r6, 1
	adds r1, r6
	lsls r1, 2
	adds r1, r7, r1
	adds r3, r1, 0
	adds r3, 0x50
	ldrb r2, [r3]
	movs r0, 0x39
	negs r0, r0
	ands r0, r2
	strb r0, [r3]
	adds r1, 0x54
	ldrb r2, [r1]
	movs r0, 0xD
	negs r0, r0
	ands r0, r2
	strb r0, [r1]
	ldrh r2, [r3]
	ldr r0, =0xfffffe3f
	ands r0, r2
	strh r0, [r3]
	ldrb r2, [r1]
	movs r0, 0x31
	negs r0, r0
	ands r0, r2
	strb r0, [r1]
	ldr r1, =gUnknown_0202406E
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	lsls r0, 1
	adds r0, r1
	ldrb r2, [r0]
	movs r0, 0x11
	movs r1, 0
	mov r3, r10
	bl sub_817E684
	b _0817E0A6
	.pool
_0817E040:
	lsls r0, r4, 4
	adds r4, r7, r0
	adds r0, r4, 0
	adds r0, 0x35
	ldrb r0, [r0]
	lsrs r0, 5
	cmp r0, 0
	beq _0817E068
	subs r2, r0, 0x1
	lsls r2, 24
	lsrs r2, 24
	adds r0, r4, 0
	adds r0, 0x36
	ldrb r3, [r0]
	lsls r3, 30
	lsrs r3, 30
	movs r0, 0x15
	movs r1, 0
	bl sub_817E684
_0817E068:
	adds r0, r4, 0
	adds r0, 0x3D
	ldrb r0, [r0]
	lsrs r0, 5
	cmp r0, 0
	beq _0817E0A6
	subs r2, r0, 0x1
	lsls r2, 24
	lsrs r2, 24
	adds r0, r4, 0
	adds r0, 0x3E
	ldrb r3, [r0]
	lsls r3, 30
	lsrs r3, 30
	movs r0, 0x15
_0817E086:
	movs r1, 0
	bl sub_817E684
	b _0817E0A6
_0817E08E:
	lsls r0, r4, 1
	adds r0, r4
	lsls r0, 2
	adds r0, r7, r0
	adds r0, 0x57
	ldrb r2, [r0]
	movs r1, 0x1F
	negs r1, r1
	ands r1, r2
	movs r2, 0x1C
_0817E0A2:
	orrs r1, r2
_0817E0A4:
	strb r1, [r0]
_0817E0A6:
	add sp, 0x10
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_817C95C

	thumb_func_start sub_817E0B8
sub_817E0B8: @ 817E0B8
	push {r4-r6,lr}
	lsls r0, 16
	lsrs r5, r0, 16
	movs r3, 0
	ldr r4, =gUnknown_0860A8A4
	ldr r6, =0x0000ffff
	adds r2, r4, 0
	adds r1, r4, 0
_0817E0C8:
	ldrh r0, [r1]
	cmp r0, r5
	beq _0817E0DA
	adds r2, 0x2
	adds r1, 0x2
	adds r3, 0x1
	ldrh r0, [r2]
	cmp r0, r6
	bne _0817E0C8
_0817E0DA:
	lsls r0, r3, 1
	adds r0, r4
	ldrh r1, [r0]
	ldr r0, =0x0000ffff
	cmp r1, r0
	beq _0817E0F4
	movs r0, 0
	b _0817E0F6
	.pool
_0817E0F4:
	movs r0, 0x1
_0817E0F6:
	pop {r4-r6}
	pop {r1}
	bx r1
	thumb_func_end sub_817E0B8

	thumb_func_start sub_817E0FC
sub_817E0FC: @ 817E0FC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x14
	str r2, [sp, 0x4]
	lsls r0, 16
	lsrs r7, r0, 16
	lsls r1, 16
	lsrs r1, 16
	str r1, [sp]
	ldr r0, =gUnknown_02022FEC
	ldr r0, [r0]
	movs r1, 0x2
	ands r0, r1
	cmp r0, 0
	bne _0817E122
	b _0817E310
_0817E122:
	ldr r0, =gUnknown_0202449C
	ldr r0, [r0]
	movs r1, 0x81
	lsls r1, 2
	adds r1, r0, r1
	str r1, [sp, 0x8]
	ldr r2, =gUnknown_0202420B
	mov r10, r2
	ldrb r0, [r2]
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
	ldr r0, =gUnknown_0202420C
	ldrb r0, [r0]
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r4, r0, 24
	mov r1, r10
	ldrb r0, [r1]
	adds r1, r7, 0
	bl sub_817F33C
	lsls r0, 24
	lsrs r6, r0, 24
	cmp r6, 0x3
	bls _0817E184
	mov r2, r9
	lsls r0, r2, 1
	add r0, r9
	lsls r0, 2
	ldr r1, [sp, 0x8]
	adds r0, r1, r0
	adds r0, 0x57
	ldrb r1, [r0]
	movs r2, 0x1E
	orrs r1, r2
	strb r1, [r0]
	b _0817E310
	.pool
_0817E184:
	mov r2, r10
	ldrb r0, [r2]
	bl battle_get_per_side_status
	lsls r0, 24
	lsrs r0, 25
	lsls r0, 3
	lsls r4, 4
	adds r0, r4
	ldr r1, [sp, 0x8]
	adds r0, r1, r0
	mov r2, r10
	ldrb r1, [r2]
	lsls r1, 1
	ldr r2, =gUnknown_0202406E
	adds r1, r2
	ldrh r2, [r1]
	adds r2, 0x1
	adds r0, 0x35
	lsls r2, 5
	ldrb r3, [r0]
	movs r1, 0x1F
	ands r1, r3
	orrs r1, r2
	strb r1, [r0]
	mov r1, r10
	ldrb r0, [r1]
	bl battle_get_per_side_status
	lsls r0, 24
	lsrs r0, 25
	lsls r0, 3
	adds r0, r4
	ldr r2, [sp, 0x8]
	adds r0, r2, r0
	adds r0, 0x36
	movs r1, 0x3
	mov r8, r6
	mov r2, r8
	ands r2, r1
	mov r8, r2
	ldrb r2, [r0]
	movs r1, 0x4
	negs r1, r1
	ands r1, r2
	mov r2, r8
	orrs r1, r2
	strb r1, [r0]
	mov r1, r9
	lsls r0, r1, 1
	add r0, r9
	lsls r0, 2
	ldr r2, [sp, 0x8]
	adds r0, r2, r0
	str r0, [sp, 0xC]
	adds r5, r0, 0
	adds r5, 0x53
	lsls r2, r6, 6
	ldrb r1, [r5]
	movs r0, 0x3F
	ands r0, r1
	orrs r0, r2
	strb r0, [r5]
	ldr r1, =gBattleMoves
	lsls r4, r7, 1
	adds r0, r4, r7
	lsls r0, 2
	adds r0, r1
	ldrb r2, [r0]
	movs r0, 0
	adds r1, r6, 0
	movs r3, 0
	bl sub_817E684
	ldr r0, [sp]
	adds r1, r7, 0
	adds r2, r6, 0
	bl sub_817F394
	ldr r0, [sp, 0x4]
	ldrb r1, [r0, 0x12]
	movs r0, 0xF
	ands r0, r1
	str r4, [sp, 0x10]
	cmp r0, 0
	beq _0817E23C
	movs r0, 0x7
	adds r1, r7, 0
	adds r2, r6, 0
	movs r3, 0
	bl sub_817E684
_0817E23C:
	ldr r0, =0x00000111
	cmp r7, r0
	bne _0817E272
	mov r1, r10
	ldrb r0, [r1]
	lsls r0, 1
	ldr r2, =gUnknown_0202406E
	adds r0, r2
	ldrh r1, [r0]
	adds r1, 0x1
	movs r0, 0x7
	ands r1, r0
	ldrb r2, [r5]
	movs r0, 0x8
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5]
	ldr r2, [sp, 0xC]
	adds r2, 0x56
	ldrb r1, [r2]
	movs r0, 0x4
	negs r0, r0
	ands r0, r1
	mov r1, r8
	orrs r0, r1
	strb r0, [r2]
_0817E272:
	cmp r7, 0x78
	beq _0817E27A
	cmp r7, 0x99
	bne _0817E2D2
_0817E27A:
	movs r0, 0x1
	mov r2, r9
	eors r0, r2
	lsls r2, r0, 1
	adds r2, r0
	lsls r2, 2
	ldr r0, [sp, 0x8]
	adds r2, r0, r2
	mov r1, r10
	ldrb r0, [r1]
	lsls r0, 1
	ldr r1, =gUnknown_0202406E
	adds r0, r1
	ldrh r1, [r0]
	adds r1, 0x1
	adds r4, r2, 0
	adds r4, 0x58
	movs r0, 0x7
	ands r1, r0
	lsls r1, 3
	ldrb r3, [r4]
	movs r0, 0x39
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	mov r1, r8
	lsls r3, r1, 1
	movs r1, 0x7
	negs r1, r1
	ands r0, r1
	orrs r0, r3
	strb r0, [r4]
	adds r2, 0x57
	ldrb r1, [r2]
	movs r0, 0x1F
	negs r0, r0
	ands r0, r1
	movs r1, 0x1A
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r4]
	movs r1, 0x1
	orrs r0, r1
	strb r0, [r4]
_0817E2D2:
	ldr r1, =gBattleMoves
	ldr r2, [sp, 0x10]
	adds r0, r2, r7
	lsls r0, 2
	adds r0, r1
	ldrb r4, [r0, 0x2]
	ldrb r5, [r0, 0x1]
	movs r0, 0xD
	adds r1, r4, 0
	adds r2, r5, 0
	movs r3, 0
	bl sub_817E684
	movs r0, 0xE
	adds r1, r4, 0
	adds r2, r5, 0
	movs r3, 0
	bl sub_817E684
	movs r0, 0xB
	adds r1, r4, 0
	movs r2, 0
	movs r3, 0
	bl sub_817E684
	movs r0, 0xC
	adds r1, r4, 0
	movs r2, 0
	movs r3, 0
	bl sub_817E684
_0817E310:
	add sp, 0x14
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_817E0FC

	thumb_func_start sub_817E32C
sub_817E32C: @ 817E32C
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r5, r0, 24
	ldr r0, =gUnknown_02022FEC
	ldr r0, [r0]
	movs r1, 0x2
	ands r0, r1
	cmp r0, 0
	beq _0817E3EE
	ldr r0, =gUnknown_0202449C
	ldr r0, [r0]
	movs r1, 0x81
	lsls r1, 2
	adds r4, r0, r1
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r5, 0x12
	beq _0817E36C
	cmp r5, 0x13
	beq _0817E3AA
	b _0817E3EE
	.pool
_0817E36C:
	lsls r0, r2, 1
	adds r0, r2
	lsls r0, 2
	adds r4, r0
	ldr r0, [r4, 0x50]
	lsls r0, 14
	lsrs r0, 29
	cmp r0, 0
	beq _0817E3EE
	subs r0, 0x1
	lsls r0, 2
	adds r1, r4, 0
	adds r1, 0x55
	ldrb r3, [r1]
	lsls r3, 28
	lsrs r3, 30
	adds r3, r0
	lsls r3, 24
	lsrs r3, 24
	movs r0, 0x2
	movs r1, 0
	bl sub_817E684
	adds r2, r4, 0
	adds r2, 0x57
	ldrb r1, [r2]
	movs r0, 0x1F
	negs r0, r0
	ands r0, r1
	movs r1, 0x10
	b _0817E3EA
_0817E3AA:
	lsls r0, r2, 1
	adds r0, r2
	lsls r0, 2
	adds r4, r0
	adds r0, r4, 0
	adds r0, 0x52
	ldrb r0, [r0]
	lsls r0, 27
	lsrs r0, 29
	cmp r0, 0
	beq _0817E3EE
	subs r0, 0x1
	lsls r0, 2
	adds r1, r4, 0
	adds r1, 0x55
	ldrb r3, [r1]
	lsls r3, 26
	lsrs r3, 30
	adds r3, r0
	lsls r3, 24
	lsrs r3, 24
	movs r0, 0x2
	movs r1, 0x1
	bl sub_817E684
	adds r2, r4, 0
	adds r2, 0x57
	ldrb r1, [r2]
	movs r0, 0x1F
	negs r0, r0
	ands r0, r1
	movs r1, 0x12
_0817E3EA:
	orrs r0, r1
	strb r0, [r2]
_0817E3EE:
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end sub_817E32C

	thumb_func_start sub_817E3F4
sub_817E3F4: @ 817E3F4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x20
	movs r0, 0
	str r0, [sp]
	movs r1, 0
	str r1, [sp, 0x4]
	movs r2, 0
	str r2, [sp, 0x8]
	ldr r3, =0x00007fff
	str r3, [sp, 0xC]
	movs r4, 0
	str r4, [sp, 0x10]
	movs r7, 0
	str r7, [sp, 0x14]
	mov r8, r0
	ldr r0, =gUnknown_0202449C
	ldr r1, [r0]
	adds r0, r1, 0
	adds r0, 0xB3
	ldrb r0, [r0]
	cmp r0, 0
	beq _0817E42A
	b _0817E670
_0817E42A:
	movs r2, 0xD2
	lsls r2, 1
	adds r2, r1
	mov r10, r2
	movs r6, 0
_0817E434:
	movs r0, 0x64
	adds r4, r6, 0
	muls r4, r0
	ldr r0, =gUnknown_020244EC
	adds r0, r4, r0
	movs r1, 0xB
	movs r2, 0
	bl pokemon_getattr
	cmp r0, 0
	beq _0817E454
	mov r0, r8
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
_0817E454:
	ldr r5, =gUnknown_02024744
	adds r0, r4, r5
	movs r1, 0xB
	movs r2, 0
	bl pokemon_getattr
	cmp r0, 0
	beq _0817E46A
	adds r0, r7, 0x1
	lsls r0, 24
	lsrs r7, r0, 24
_0817E46A:
	adds r6, 0x1
	cmp r6, 0x5
	ble _0817E434
	ldr r0, =gUnknown_02022FEC
	ldr r0, [r0]
	movs r1, 0x2
	ands r0, r1
	cmp r0, 0
	bne _0817E47E
	b _0817E670
_0817E47E:
	cmp r8, r7
	beq _0817E484
	b _0817E670
_0817E484:
	movs r6, 0
	lsls r3, r6, 1
	str r3, [sp, 0x18]
	movs r4, 0x64
	mov r8, r4
_0817E48E:
	mov r1, r8
	muls r1, r6
	ldr r0, =gUnknown_020244EC
	adds r4, r1, r0
	adds r0, r4, 0
	movs r1, 0xB
	movs r2, 0
	bl pokemon_getattr
	lsls r0, 16
	lsrs r7, r0, 16
	adds r0, r6, 0x1
	mov r9, r0
	cmp r7, 0
	beq _0817E4EE
	adds r0, r4, 0
	movs r1, 0x2D
	movs r2, 0
	bl pokemon_getattr
	cmp r0, 0
	bne _0817E4EE
	movs r4, 0
	lsls r0, r6, 3
	mov r2, r10
	adds r1, r0, r2
	movs r3, 0x3
_0817E4C4:
	lsls r0, r4, 16
	asrs r0, 16
	ldrh r4, [r1]
	adds r0, r4
	lsls r0, 16
	lsrs r4, r0, 16
	adds r1, 0x2
	subs r3, 0x1
	cmp r3, 0
	bge _0817E4C4
	ldr r1, [sp, 0x8]
	lsls r0, r1, 16
	lsls r1, r4, 16
	cmp r0, r1
	bge _0817E4EE
	lsls r0, r6, 24
	lsrs r0, 24
	str r0, [sp, 0x10]
	lsrs r1, 16
	str r1, [sp, 0x8]
	str r7, [sp]
_0817E4EE:
	mov r0, r8
	muls r0, r6
	ldr r2, =gUnknown_02024744
	adds r4, r0, r2
	adds r0, r4, 0
	movs r1, 0xB
	movs r2, 0
	bl pokemon_getattr
	lsls r0, 16
	lsrs r7, r0, 16
	ldr r3, [sp, 0x8]
	lsls r3, 16
	str r3, [sp, 0x1C]
	cmp r7, 0
	beq _0817E5A0
	adds r0, r4, 0
	movs r1, 0x2D
	movs r2, 0
	bl pokemon_getattr
	cmp r0, 0
	bne _0817E5A0
	movs r4, 0
	ldr r0, [sp, 0xC]
	lsls r2, r0, 16
	movs r3, 0x1
	lsls r1, r3, 1
	adds r1, 0x1
	lsls r1, 4
	lsls r0, r6, 3
	adds r0, r1
	mov r3, r10
	adds r1, r0, r3
	movs r3, 0x3
_0817E534:
	lsls r0, r4, 16
	asrs r0, 16
	ldrh r4, [r1]
	adds r0, r4
	lsls r0, 16
	lsrs r4, r0, 16
	adds r1, 0x2
	subs r3, 0x1
	cmp r3, 0
	bge _0817E534
	asrs r1, r2, 16
	lsls r5, r4, 16
	asrs r0, r5, 16
	cmp r1, r0
	bne _0817E590
	mov r0, r8
	muls r0, r6
	ldr r1, =gUnknown_02024744
	adds r0, r1
	movs r1, 0x19
	movs r2, 0
	bl pokemon_getattr
	adds r4, r0, 0
	ldr r2, [sp, 0x14]
	mov r0, r8
	muls r0, r2
	ldr r3, =gUnknown_02024744
	adds r0, r3
	movs r1, 0x19
	movs r2, 0
	bl pokemon_getattr
	cmp r4, r0
	bls _0817E5A0
	b _0817E594
	.pool
_0817E590:
	cmp r1, r0
	ble _0817E5A0
_0817E594:
	lsls r0, r6, 24
	lsrs r0, 24
	str r0, [sp, 0x14]
	lsrs r5, 16
	str r5, [sp, 0xC]
	str r7, [sp, 0x4]
_0817E5A0:
	mov r6, r9
	cmp r6, 0x5
	bgt _0817E5A8
	b _0817E48E
_0817E5A8:
	movs r4, 0
	movs r6, 0
	movs r3, 0
	ldr r5, =gUnknown_020244EC
	ldr r7, [sp, 0x10]
	lsls r0, r7, 3
	mov r1, r10
	adds r2, r0, r1
_0817E5B8:
	lsls r0, r4, 16
	asrs r0, 16
	movs r7, 0
	ldrsh r1, [r2, r7]
	cmp r0, r1
	bge _0817E5C8
	ldrh r4, [r2]
	adds r6, r3, 0
_0817E5C8:
	adds r2, 0x2
	adds r3, 0x1
	cmp r3, 0x3
	ble _0817E5B8
	movs r0, 0x64
	ldr r1, [sp, 0x10]
	muls r0, r1
	adds r0, r5
	adds r1, r6, 0
	adds r1, 0xD
	movs r2, 0
	bl pokemon_getattr
	lsls r0, 16
	lsrs r4, r0, 16
	ldr r2, [sp, 0x1C]
	cmp r2, 0
	beq _0817E670
	cmp r4, 0
	beq _0817E670
	ldr r0, =gUnknown_02022FEC
	ldr r0, [r0]
	movs r1, 0x40
	ands r0, r1
	cmp r0, 0
	beq _0817E65C
	ldr r3, [sp, 0x10]
	cmp r3, 0x2
	bhi _0817E620
	ldr r0, =gUnknown_02024474
	adds r0, 0x25
	ldrb r0, [r0]
	bl sub_806D82C
	lsls r0, 16
	cmp r0, 0
	beq _0817E630
	b _0817E670
	.pool
_0817E620:
	ldr r0, =gUnknown_02024474
	adds r0, 0x25
	ldrb r0, [r0]
	bl sub_806D82C
	lsls r0, 16
	cmp r0, 0
	beq _0817E670
_0817E630:
	movs r3, 0
	ldr r7, [sp, 0x14]
	cmp r7, 0x2
	bls _0817E63A
	movs r3, 0x1
_0817E63A:
	lsls r0, r3, 24
	lsrs r0, 24
	ldr r1, =gUnknown_02024474
	adds r1, 0x25
	ldrb r1, [r1]
	bl sub_806EF84
	lsls r0, 24
	lsrs r0, 24
	adds r1, r4, 0
	ldr r2, [sp]
	ldr r3, [sp, 0x4]
	bl sub_80ECB00
	b _0817E670
	.pool
_0817E65C:
	ldr r0, =gUnknown_02024474
	adds r0, 0x25
	ldrb r1, [r0]
	movs r0, 0x1
	eors r0, r1
	adds r1, r4, 0
	ldr r2, [sp]
	ldr r3, [sp, 0x4]
	bl sub_80ECB00
_0817E670:
	add sp, 0x20
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_817E3F4

	thumb_func_start sub_817E684
sub_817E684: @ 817E684
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	lsls r0, 24
	lsrs r0, 24
	mov r10, r0
	lsls r1, 16
	lsrs r6, r1, 16
	lsls r2, 24
	lsrs r5, r2, 24
	lsls r3, 24
	lsrs r3, 24
	mov r9, r3
	ldr r0, =gUnknown_0202449C
	ldr r0, [r0]
	movs r1, 0xD2
	lsls r1, 1
	adds r1, r0
	mov r8, r1
	movs r2, 0x81
	lsls r2, 2
	adds r7, r0, r2
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r4, r0, 24
	ldr r0, =gUnknown_0202420C
	ldrb r0, [r0]
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r3, r0, 24
	mov r0, r10
	cmp r0, 0x1B
	bls _0817E6D4
	b _0817EA6C
_0817E6D4:
	lsls r0, 2
	ldr r1, =_0817E6F0
	adds r1, r0, r1
	ldr r1, [r1]
	mov r12, r0
	mov pc, r1
	.pool
	.align 2, 0
_0817E6F0:
	.4byte _0817E760
	.4byte _0817E760
	.4byte _0817E85C
	.4byte _0817E79C
	.4byte _0817E79C
	.4byte _0817E79C
	.4byte _0817E79C
	.4byte _0817E79C
	.4byte _0817E8A0
	.4byte _0817E8A0
	.4byte _0817E8CC
	.4byte _0817E8F0
	.4byte _0817E978
	.4byte _0817E9E0
	.4byte _0817EA28
	.4byte _0817E8A0
	.4byte _0817E8A0
	.4byte _0817E880
	.4byte _0817E760
	.4byte _0817E80A
	.4byte _0817E848
	.4byte _0817E8A0
	.4byte _0817E760
	.4byte _0817E760
	.4byte _0817E760
	.4byte _0817E760
	.4byte _0817E760
	.4byte _0817E760
_0817E760:
	ldr r1, =gUnknown_0202406E
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	lsls r0, 1
	adds r0, r1
	ldrh r1, [r0]
	lsls r1, 2
	adds r1, r6
	lsls r1, 1
	lsls r0, r4, 1
	adds r0, r4
	lsls r0, 4
	adds r1, r0
	add r1, r8
	ldr r0, =gUnknown_0860A834
	add r0, r12
	ldr r2, [r0]
	lsls r0, r5, 1
	adds r0, r2
	ldrh r0, [r0]
	ldrh r2, [r1]
	adds r0, r2
	b _0817EA6A
	.pool
_0817E79C:
	ldr r1, =gUnknown_0860A834
	add r1, r12
	ldr r7, =gUnknown_0202406E
	lsls r0, r4, 1
	adds r0, r4
	lsls r2, r0, 4
	ldr r4, =0x0000ffff
	ldr r1, [r1]
	ldr r3, =gUnknown_0202420B
	ldrh r0, [r1]
	cmp r6, r0
	bne _0817E7E0
	ldrb r0, [r3]
	lsls r0, 1
	adds r0, r7
	ldrh r0, [r0]
	lsls r0, 2
	adds r0, r5
	lsls r0, 1
	adds r0, r2
	add r0, r8
	ldrh r1, [r1, 0x2]
	ldrh r2, [r0]
	adds r1, r2
	strh r1, [r0]
	b _0817EA6C
	.pool
_0817E7E0:
	adds r1, 0x4
	ldrh r0, [r1]
	cmp r0, r4
	bne _0817E7EA
	b _0817EA6C
_0817E7EA:
	cmp r6, r0
	bne _0817E7E0
	ldrb r0, [r3]
	lsls r0, 1
	adds r0, r7
	ldrh r0, [r0]
	lsls r0, 2
	adds r0, r5
	lsls r0, 1
	adds r0, r2
	add r0, r8
	ldrh r1, [r1, 0x2]
	ldrh r5, [r0]
	adds r1, r5
	strh r1, [r0]
	b _0817EA6C
_0817E80A:
	movs r0, 0x1
	adds r1, r5, 0
	eors r1, r0
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r7, r0
	adds r0, 0x57
	ldrb r2, [r0]
	movs r1, 0x1F
	negs r1, r1
	ands r1, r2
	strb r1, [r0]
	mov r0, r9
	lsls r1, r0, 1
	lsls r0, r5, 1
	adds r0, r5
	lsls r0, 4
	adds r1, r0
	add r1, r8
	ldr r0, =gUnknown_0860A834
	add r0, r12
	ldr r2, [r0]
	lsls r0, r6, 1
	adds r0, r2
	ldrh r0, [r0]
	ldrh r2, [r1]
	adds r0, r2
	b _0817EA6A
	.pool
_0817E848:
	lsls r0, r5, 1
	adds r0, r5
	lsls r0, 2
	adds r0, r7, r0
	adds r0, 0x57
	ldrb r2, [r0]
	movs r1, 0x1F
	negs r1, r1
	ands r1, r2
	strb r1, [r0]
_0817E85C:
	mov r0, r9
	lsls r1, r0, 1
	lsls r0, r5, 1
	adds r0, r5
	lsls r0, 4
	adds r1, r0
	add r1, r8
	ldr r0, =gUnknown_0860A834
	add r0, r12
	ldr r2, [r0]
	lsls r0, r6, 1
	adds r0, r2
	ldrh r0, [r0]
	ldrh r2, [r1]
	adds r0, r2
	b _0817EA6A
	.pool
_0817E880:
	lsls r1, r5, 2
	add r1, r9
	lsls r1, 1
	lsls r0, r4, 1
	adds r0, r4
	lsls r0, 4
	adds r1, r0
	add r1, r8
	ldr r0, =gUnknown_0860A834
	add r0, r12
	ldr r2, [r0]
	lsls r0, r6, 1
	adds r0, r2
	b _0817EA64
	.pool
_0817E8A0:
	lsls r2, r5, 2
	add r2, r9
	lsls r2, 1
	movs r1, 0x1
	eors r1, r4
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 4
	adds r2, r0
	add r2, r8
	ldr r0, =gUnknown_0860A834
	add r0, r12
	ldr r1, [r0]
	lsls r0, r6, 1
	adds r0, r1
	ldrh r0, [r0]
	ldrh r1, [r2]
	adds r0, r1
	strh r0, [r2]
	b _0817EA6C
	.pool
_0817E8CC:
	lsls r1, r5, 2
	add r1, r9
	lsls r1, 1
	lsls r0, r6, 1
	adds r0, r6
	lsls r0, 4
	adds r1, r0
	add r1, r8
	ldr r0, =gUnknown_0860A834
	add r0, r12
	ldr r0, [r0]
	ldrh r0, [r0]
	ldrh r2, [r1]
	adds r0, r2
	b _0817EA6A
	.pool
_0817E8F0:
	lsls r0, r3, 4
	adds r2, r7, r0
	adds r0, r2, 0
	adds r0, 0x34
	ldrb r0, [r0]
	lsls r0, 29
	lsrs r1, r0, 29
	adds r4, r2, 0
	adds r4, 0x3C
	ldrb r0, [r4]
	lsls r0, 29
	lsrs r0, 29
	cmn r1, r0
	bne _0817E90E
	b _0817EA6C
_0817E90E:
	cmp r6, 0xA
	beq _0817E914
	b _0817EA6C
_0817E914:
	cmp r1, 0
	beq _0817E940
	subs r1, 0x1
	lsls r1, 2
	adds r0, r2, 0
	adds r0, 0x33
	ldrb r0, [r0]
	lsrs r0, 6
	adds r1, r0
	lsls r1, 1
	lsls r0, r3, 1
	adds r0, r3
	lsls r0, 4
	adds r1, r0
	add r1, r8
	ldr r0, =gUnknown_0860A834
	add r0, r12
	ldr r0, [r0]
	ldrh r0, [r0]
	ldrh r5, [r1]
	adds r0, r5
	strh r0, [r1]
_0817E940:
	ldrb r0, [r4]
	lsls r0, 29
	lsrs r0, 29
	cmp r0, 0
	bne _0817E94C
	b _0817EA6C
_0817E94C:
	subs r1, r0, 0x1
	lsls r1, 2
	adds r0, r2, 0
	adds r0, 0x3B
	ldrb r0, [r0]
	lsrs r0, 6
	adds r1, r0
	lsls r1, 1
	lsls r0, r3, 1
	adds r0, r3
	lsls r0, 4
	adds r1, r0
	add r1, r8
	ldr r0, =gUnknown_0860A834
	add r0, r12
	ldr r0, [r0]
	ldrh r0, [r0]
	ldrh r2, [r1]
	adds r0, r2
	b _0817EA6A
	.pool
_0817E978:
	lsls r1, r3, 4
	adds r1, r7, r1
	adds r0, r1, 0
	adds r0, 0x34
	ldrb r4, [r0]
	lsls r0, r4, 26
	lsrs r2, r0, 29
	adds r5, r1, 0
	adds r5, 0x3C
	ldrb r0, [r5]
	lsls r0, 26
	lsrs r0, 29
	cmn r2, r0
	beq _0817EA6C
	cmp r6, 0xD
	bne _0817EA6C
	cmp r2, 0
	beq _0817E9BE
	subs r1, r2, 0x1
	lsls r1, 2
	lsrs r0, r4, 6
	adds r1, r0
	lsls r1, 1
	lsls r0, r3, 1
	adds r0, r3
	lsls r0, 4
	adds r1, r0
	add r1, r8
	ldr r0, =gUnknown_0860A834
	add r0, r12
	ldr r0, [r0]
	ldrh r0, [r0]
	ldrh r2, [r1]
	adds r0, r2
	strh r0, [r1]
_0817E9BE:
	ldrb r2, [r5]
	lsls r0, r2, 26
	lsrs r0, 29
	cmp r0, 0
	beq _0817EA6C
	subs r1, r0, 0x1
	lsls r1, 2
	lsrs r0, r2, 6
	adds r1, r0
	lsls r1, 1
	lsls r0, r3, 1
	adds r0, r3
	lsls r0, 4
	b _0817EA5A
	.pool
_0817E9E0:
	cmp r6, 0x8
	bhi _0817EA6C
	cmp r5, 0
	beq _0817EA6C
	lsls r0, r3, 1
	adds r3, r0, r3
	lsls r0, r3, 2
	adds r2, r7, r0
	adds r0, r2, 0
	adds r0, 0x50
	ldrb r0, [r0]
	lsls r0, 26
	lsrs r0, 29
	cmp r0, 0
	beq _0817EA6C
	subs r1, r0, 0x1
	lsls r1, 2
	adds r0, r2, 0
	adds r0, 0x54
	ldrb r0, [r0]
	lsls r0, 28
	lsrs r0, 30
	adds r1, r0
	lsls r1, 1
	lsls r0, r3, 4
	adds r1, r0
	add r1, r8
	ldr r0, =gUnknown_0860A834
	add r0, r12
	ldr r0, [r0]
	ldrh r0, [r0]
	ldrh r2, [r1]
	adds r0, r2
	b _0817EA6A
	.pool
_0817EA28:
	cmp r6, 0x8
	bls _0817EA6C
	cmp r5, 0
	beq _0817EA6C
	lsls r0, r3, 1
	adds r3, r0, r3
	lsls r0, r3, 2
	adds r2, r7, r0
	adds r0, r2, 0
	adds r0, 0x50
	ldrh r0, [r0]
	lsls r0, 23
	lsrs r0, 29
	cmp r0, 0
	beq _0817EA6C
	subs r1, r0, 0x1
	lsls r1, 2
	adds r0, r2, 0
	adds r0, 0x54
	ldrb r0, [r0]
	lsls r0, 26
	lsrs r0, 30
	adds r1, r0
	lsls r1, 1
	lsls r0, r3, 4
_0817EA5A:
	adds r1, r0
	add r1, r8
	ldr r0, =gUnknown_0860A834
	add r0, r12
	ldr r0, [r0]
_0817EA64:
	ldrh r0, [r0]
	ldrh r5, [r1]
	adds r0, r5
_0817EA6A:
	strh r0, [r1]
_0817EA6C:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_817E684

	thumb_func_start sub_817EA80
sub_817EA80: @ 817EA80
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsls r0, 24
	lsrs r7, r0, 24
	ldr r0, =gUnknown_0202449C
	ldr r0, [r0]
	movs r1, 0x81
	lsls r1, 2
	adds r5, r0, r1
	ldr r3, =gUnknown_0202420B
	mov r8, r3
	ldrb r0, [r3]
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r4, r0, 24
	ldr r0, =gUnknown_0202420C
	ldrb r0, [r0]
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r2, r0, 24
	lsls r0, r4, 1
	adds r0, r4
	lsls r0, 2
	adds r6, r5, r0
	adds r0, r6, 0
	adds r0, 0x57
	ldrb r0, [r0]
	lsrs r3, r0, 5
	lsls r0, 27
	lsrs r0, 28
	cmp r0, 0
	bne _0817EAC8
	b _0817EE50
_0817EAC8:
	subs r0, 0x1
	cmp r0, 0xE
	bls _0817EAD0
	b _0817EEBC
_0817EAD0:
	lsls r0, 2
	ldr r1, =_0817EAEC
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_0817EAEC:
	.4byte _0817EB28
	.4byte _0817EB54
	.4byte _0817EB80
	.4byte _0817EBD4
	.4byte _0817EBFE
	.4byte _0817EC26
	.4byte _0817EC4E
	.4byte _0817EC6C
	.4byte _0817EC9A
	.4byte _0817ECCC
	.4byte _0817ED54
	.4byte _0817ED82
	.4byte _0817EDC2
	.4byte _0817EE1C
	.4byte _0817EEBC
_0817EB28:
	lsls r0, r3, 3
	lsls r1, r4, 4
	adds r0, r1
	adds r3, r5, r0
	adds r0, r3, 0
	adds r0, 0x30
	ldrb r0, [r0]
	lsls r0, 29
	lsrs r1, r0, 29
	cmp r1, 0
	bne _0817EB40
	b _0817EEBC
_0817EB40:
	movs r0, 0x1
	adds r2, r4, 0
	eors r2, r0
	subs r1, 0x1
	lsls r1, 2
	adds r0, r3, 0
	adds r0, 0x32
	ldrb r3, [r0]
	lsls r3, 28
	b _0817EE84
_0817EB54:
	lsls r0, r3, 3
	lsls r1, r4, 4
	adds r0, r1
	adds r3, r5, r0
	adds r0, r3, 0
	adds r0, 0x30
	ldrb r0, [r0]
	lsls r0, 26
	lsrs r1, r0, 29
	cmp r1, 0
	bne _0817EB6C
	b _0817EEBC
_0817EB6C:
	movs r0, 0x1
	adds r2, r4, 0
	eors r2, r0
	subs r1, 0x1
	lsls r1, 2
	adds r0, r3, 0
	adds r0, 0x32
	ldrb r3, [r0]
	lsls r3, 26
	b _0817EE84
_0817EB80:
	lsls r0, r3, 2
	lsls r1, r4, 1
	adds r1, r4
	lsls r1, 3
	adds r0, r1
	adds r5, r0
	ldrb r0, [r5]
	lsls r0, 29
	lsrs r1, r0, 29
	cmp r1, 0
	beq _0817EBB4
	movs r0, 0x1
	adds r2, r4, 0
	eors r2, r0
	subs r0, r1, 0x1
	lsls r0, 2
	ldrb r3, [r5, 0x2]
	lsls r3, 28
	lsrs r3, 30
	adds r3, r0
	lsls r3, 24
	lsrs r3, 24
	movs r0, 0x13
	movs r1, 0
	bl sub_817E684
_0817EBB4:
	ldrb r0, [r5]
	lsls r0, 26
	lsrs r1, r0, 29
	cmp r1, 0
	bne _0817EBC0
	b _0817EEBC
_0817EBC0:
	movs r0, 0x1
	adds r2, r4, 0
	eors r2, r0
	subs r0, r1, 0x1
	lsls r0, 2
	ldrb r3, [r5, 0x2]
	lsls r3, 26
	lsrs r3, 30
	adds r3, r0
	b _0817EE88
_0817EBD4:
	lsls r0, r3, 2
	lsls r1, r4, 1
	adds r1, r4
	lsls r1, 3
	adds r0, r1
	adds r1, r5, r0
	ldrh r0, [r1]
	lsls r0, 23
	lsrs r3, r0, 29
	cmp r3, 0
	bne _0817EBEC
	b _0817EEBC
_0817EBEC:
	movs r0, 0x1
	adds r2, r4, 0
	eors r2, r0
	subs r0, r3, 0x1
	lsls r0, 2
	ldrb r3, [r1, 0x2]
	lsrs r3, 6
	adds r3, r0
	b _0817EE88
_0817EBFE:
	lsls r0, r3, 3
	lsls r1, r4, 4
	adds r0, r1
	adds r3, r5, r0
	ldrh r0, [r3, 0x30]
	lsls r0, 23
	lsrs r1, r0, 29
	cmp r1, 0
	bne _0817EC12
	b _0817EEBC
_0817EC12:
	movs r0, 0x1
	adds r2, r4, 0
	eors r2, r0
	subs r1, 0x1
	lsls r1, 2
	adds r0, r3, 0
	adds r0, 0x32
	ldrb r3, [r0]
	lsrs r3, 6
	b _0817EE86
_0817EC26:
	lsls r0, r3, 3
	lsls r1, r4, 4
	adds r0, r1
	adds r3, r5, r0
	adds r0, r3, 0
	adds r0, 0x31
	ldrb r0, [r0]
	lsls r0, 28
	lsrs r1, r0, 29
	cmp r1, 0
	bne _0817EC3E
	b _0817EEBC
_0817EC3E:
	movs r0, 0x1
	adds r2, r4, 0
	eors r2, r0
	subs r1, 0x1
	lsls r1, 2
	adds r0, r3, 0
	adds r0, 0x33
	b _0817EE80
_0817EC4E:
	lsls r0, r4, 1
	adds r0, r4
	lsls r0, 2
	adds r3, r5, r0
	adds r0, r3, 0
	adds r0, 0x50
	ldrb r0, [r0]
	lsls r0, 29
	lsrs r1, r0, 29
	cmp r1, 0
	bne _0817EC66
	b _0817EEBC
_0817EC66:
	movs r0, 0x1
	adds r2, r4, 0
	b _0817EE76
_0817EC6C:
	lsls r0, r4, 1
	adds r0, r4
	lsls r0, 2
	adds r3, r5, r0
	ldr r0, [r3, 0x50]
	lsls r0, 14
	lsrs r0, 29
	cmp r0, 0
	bne _0817EC80
	b _0817EEBC
_0817EC80:
	adds r2, r4, 0
	subs r1, r0, 0x1
	lsls r1, 2
	adds r0, r3, 0
	adds r0, 0x55
	ldrb r3, [r0]
	lsls r3, 28
	lsrs r3, 30
	adds r3, r1
	lsls r3, 24
	lsrs r3, 24
	movs r0, 0x14
	b _0817EE8E
_0817EC9A:
	lsls r0, r4, 1
	adds r0, r4
	lsls r0, 2
	adds r3, r5, r0
	adds r0, r3, 0
	adds r0, 0x52
	ldrb r0, [r0]
	lsls r0, 27
	lsrs r0, 29
	cmp r0, 0
	bne _0817ECB2
	b _0817EEBC
_0817ECB2:
	adds r2, r4, 0
	subs r1, r0, 0x1
	lsls r1, 2
	adds r0, r3, 0
	adds r0, 0x55
	ldrb r3, [r0]
	lsls r3, 26
	lsrs r3, 30
	adds r3, r1
	lsls r3, 24
	lsrs r3, 24
	movs r0, 0x14
	b _0817EE8E
_0817ECCC:
	lsls r0, r4, 1
	adds r0, r4
	lsls r0, 2
	adds r3, r5, r0
	adds r0, r3, 0
	adds r0, 0x58
	ldrb r0, [r0]
	lsls r0, 25
	cmp r0, 0
	bge _0817ED14
	adds r0, r3, 0
	adds r0, 0x52
	ldrb r0, [r0]
	lsrs r0, 5
	subs r6, r0, 0x1
	ldr r1, =gUnknown_0202406E
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	lsls r0, 1
	adds r0, r1
	ldrh r0, [r0]
	cmp r6, r0
	beq _0817ED14
	adds r2, r4, 0
	lsls r1, r6, 2
	adds r0, r3, 0
	adds r0, 0x55
	ldrb r3, [r0]
	lsrs r3, 6
	adds r3, r1
	lsls r3, 24
	lsrs r3, 24
	movs r0, 0x13
	movs r1, 0
	bl sub_817E684
_0817ED14:
	movs r1, 0x1
	eors r1, r4
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r1, r5, r0
	adds r0, r1, 0
	adds r0, 0x58
	ldrb r0, [r0]
	lsls r0, 25
	cmp r0, 0
	blt _0817ED2E
	b _0817EEBC
_0817ED2E:
	movs r0, 0x1
	adds r2, r4, 0
	eors r2, r0
	adds r0, r1, 0
	adds r0, 0x52
	ldrb r0, [r0]
	lsrs r0, 5
	subs r0, 0x1
	lsls r0, 2
	adds r1, 0x55
	ldrb r3, [r1]
	lsrs r3, 6
	adds r3, r0
	b _0817EE88
	.pool
_0817ED54:
	movs r0, 0x1
	eors r0, r4
	lsls r1, r0, 1
	adds r1, r0
	lsls r1, 2
	adds r1, r5, r1
	adds r1, 0x56
	ldrb r0, [r1]
	lsls r0, 25
	lsrs r5, r0, 29
	cmp r5, 0
	bne _0817ED6E
	b _0817EEBC
_0817ED6E:
	movs r0, 0x1
	adds r2, r4, 0
	eors r2, r0
	subs r0, r5, 0x1
	lsls r0, 2
	ldrh r3, [r1]
	lsls r3, 23
	lsrs r3, 30
	adds r3, r0
	b _0817EE88
_0817ED82:
	lsls r2, r4, 4
	movs r1, 0x1
	adds r0, r4, 0
	eors r0, r1
	lsls r6, r0, 24
	adds r0, r5, 0
	adds r0, 0x30
	adds r4, r2, r0
	movs r5, 0x1
_0817ED94:
	ldr r0, [r4]
	lsls r0, 14
	lsrs r0, 29
	cmp r0, 0
	beq _0817EDB8
	subs r0, 0x1
	lsls r0, 2
	ldrb r3, [r4, 0x3]
	lsls r3, 26
	lsrs r3, 30
	adds r3, r0
	lsls r3, 24
	lsrs r3, 24
	movs r0, 0x13
	movs r1, 0
	lsrs r2, r6, 24
	bl sub_817E684
_0817EDB8:
	adds r4, 0x8
	subs r5, 0x1
	cmp r5, 0
	bge _0817ED94
	b _0817EEBC
_0817EDC2:
	lsls r0, r4, 1
	adds r0, r4
	lsls r0, 2
	adds r0, r5, r0
	adds r0, 0x58
	ldrb r3, [r0]
	lsls r0, r3, 31
	cmp r0, 0
	beq _0817EDF0
	adds r2, r4, 0
	lsls r0, r3, 26
	lsrs r0, 29
	subs r0, 0x1
	lsls r0, 2
	lsls r3, 29
	lsrs r3, 30
	adds r3, r0
	lsls r3, 24
	lsrs r3, 24
	movs r0, 0x13
	movs r1, 0
	bl sub_817E684
_0817EDF0:
	movs r0, 0x1
	eors r0, r4
	lsls r1, r0, 1
	adds r1, r0
	lsls r1, 2
	adds r1, r5, r1
	adds r1, 0x58
	ldrb r1, [r1]
	lsls r0, r1, 31
	cmp r0, 0
	beq _0817EEBC
	movs r0, 0x1
	adds r2, r4, 0
	eors r2, r0
	lsls r0, r1, 26
	lsrs r0, 29
	subs r0, 0x1
	lsls r0, 2
	lsls r3, r1, 29
	lsrs r3, 30
	adds r3, r0
	b _0817EE88
_0817EE1C:
	cmp r7, 0x1
	bne _0817EEBC
	adds r2, r4, 0
	ldr r1, =gUnknown_0202406E
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	lsls r0, 1
	adds r0, r1
	ldrh r1, [r0]
	lsls r1, 2
	lsls r0, r2, 1
	adds r0, r2
	lsls r0, 2
	adds r0, r5, r0
	adds r0, 0x53
	ldrb r3, [r0]
	lsrs r3, 6
	adds r3, r1
	lsls r3, 24
	lsrs r3, 24
	movs r0, 0x14
	b _0817EE8E
	.pool
_0817EE50:
	lsls r0, r2, 1
	adds r0, r2
	lsls r0, 2
	adds r3, r5, r0
	adds r0, r3, 0
	adds r0, 0x57
	ldrb r0, [r0]
	lsls r0, 27
	lsrs r0, 28
	cmp r0, 0x7
	bne _0817EE96
	adds r0, r3, 0
	adds r0, 0x50
	ldrb r0, [r0]
	lsls r0, 29
	lsrs r1, r0, 29
	cmp r1, 0
	beq _0817EEBC
	movs r0, 0x1
_0817EE76:
	eors r2, r0
	subs r1, 0x1
	lsls r1, 2
	adds r0, r3, 0
	adds r0, 0x54
_0817EE80:
	ldrb r3, [r0]
	lsls r3, 30
_0817EE84:
	lsrs r3, 30
_0817EE86:
	adds r3, r1
_0817EE88:
	lsls r3, 24
	lsrs r3, 24
	movs r0, 0x13
_0817EE8E:
	movs r1, 0
	bl sub_817E684
	b _0817EEBC
_0817EE96:
	adds r2, r4, 0
	ldr r1, =gUnknown_0202406E
	mov r3, r8
	ldrb r0, [r3]
	lsls r0, 1
	adds r0, r1
	ldrh r1, [r0]
	lsls r1, 2
	adds r0, r6, 0
	adds r0, 0x53
	ldrb r3, [r0]
	lsrs r3, 6
	adds r3, r1
	lsls r3, 24
	lsrs r3, 24
	movs r0, 0x14
	movs r1, 0
	bl sub_817E684
_0817EEBC:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_817EA80

	thumb_func_start sub_817EECC
sub_817EECC: @ 817EECC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x28
	ldr r7, =gUnknown_02022FEC
	ldr r0, [r7]
	ldr r1, =0x02000003
	ands r0, r1
	cmp r0, 0
	beq _0817EEE6
	b _0817F1FA
_0817EEE6:
	ldr r4, =gUnknown_0202420B
	ldrb r0, [r4]
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _0817EEF8
	b _0817F1FA
_0817EEF8:
	ldr r5, =gUnknown_02024084
	ldrb r4, [r4]
	movs r1, 0x58
	adds r6, r4, 0
	muls r6, r1
	adds r0, r6, r5
	ldrb r0, [r0, 0x1E]
	lsls r0, 24
	asrs r0, 24
	cmp r0, 0x5
	bgt _0817EF10
	b _0817F1FA
_0817EF10:
	ldr r0, =gUnknown_0202420C
	ldrb r0, [r0]
	muls r0, r1
	adds r0, r5
	ldrb r0, [r0, 0x1F]
	lsls r0, 24
	asrs r0, 24
	cmp r0, 0x6
	ble _0817EF24
	b _0817F1FA
_0817EF24:
	ldr r0, =gUnknown_020241EA
	ldrh r1, [r0]
	cmp r1, 0xED
	bne _0817EF2E
	b _0817F1FA
_0817EF2E:
	ldr r0, =0x00000137
	cmp r1, r0
	bne _0817EF36
	b _0817F1FA
_0817EF36:
	ldr r0, [r7]
	movs r1, 0xC8
	lsls r1, 14
	ands r0, r1
	cmp r0, 0
	beq _0817EF44
	b _0817F1FA
_0817EF44:
	ldr r3, =gBattleMoves
	ldr r2, =gUnknown_020244B0
	adds r0, r4, r2
	ldrb r0, [r0]
	lsls r0, 1
	adds r0, r6
	adds r1, r5, 0
	adds r1, 0xC
	adds r0, r1
	ldrh r1, [r0]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	ldrb r0, [r0, 0x1]
	adds r6, r2, 0
	cmp r0, 0
	bne _0817EF6A
	b _0817F1FA
_0817EF6A:
	movs r5, 0
	str r1, [sp, 0x24]
	ldr r1, =gUnknown_0860A4AC
	ldr r4, =0x0000ffff
	adds r3, r1, 0
	adds r2, r1, 0
_0817EF76:
	ldr r0, [sp, 0x24]
	ldrh r7, [r2]
	cmp r0, r7
	beq _0817EF8A
	adds r3, 0x2
	adds r2, 0x2
	adds r5, 0x1
	ldrh r0, [r3]
	cmp r0, r4
	bne _0817EF76
_0817EF8A:
	lsls r0, r5, 1
	adds r0, r1
	ldrh r1, [r0]
	ldr r0, =0x0000ffff
	cmp r1, r0
	beq _0817EF98
	b _0817F1FA
_0817EF98:
	ldr r2, =gUnknown_0202420B
	ldrb r0, [r2]
	adds r0, r6
	ldrb r0, [r0]
	lsls r0, 2
	mov r1, sp
	adds r1, r0
	adds r1, 0x10
	ldr r0, =gUnknown_020241F0
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, =gUnknown_020241EA
	ldrh r1, [r0]
	str r1, [sp, 0x24]
	movs r5, 0
	add r3, sp, 0x20
	mov r10, r3
	mov r8, r0
	add r7, sp, 0x10
	ldr r4, =gUnknown_0202420C
	mov r9, r4
_0817EFC2:
	lsls r1, r5, 1
	ldr r6, =gUnknown_0202420B
	ldrb r0, [r6]
	movs r2, 0x58
	muls r0, r2
	adds r1, r0
	ldr r0, =gUnknown_02024084
	adds r0, 0xC
	adds r1, r0
	ldrh r0, [r1]
	mov r3, r8
	strh r0, [r3]
	movs r6, 0
	mov r4, r10
	strh r6, [r4]
	ldrh r0, [r3]
	adds r1, r7, 0
	mov r2, r10
	bl sub_817F21C
	lsls r0, 24
	cmp r0, 0
	beq _0817F0B4
	ldr r4, =gUnknown_0202428E
	mov r1, r9
	ldrb r0, [r1]
	bl battle_get_per_side_status
	movs r1, 0x1
	ands r1, r0
	lsls r1, 1
	adds r1, r4
	ldrh r3, [r1]
	ldr r2, =gUnknown_0202420B
	ldrb r0, [r2]
	movs r4, 0x58
	muls r0, r4
	ldr r6, =gUnknown_02024084
	adds r0, r6
	mov r2, r9
	ldrb r1, [r2]
	muls r1, r4
	adds r1, r6
	mov r4, r8
	ldrh r2, [r4]
	mov r6, r10
	ldrh r4, [r6]
	str r4, [sp]
	movs r4, 0
	str r4, [sp, 0x4]
	ldr r6, =gUnknown_0202420B
	ldrb r4, [r6]
	str r4, [sp, 0x8]
	mov r6, r9
	ldrb r4, [r6]
	str r4, [sp, 0xC]
	bl sub_806957C
	adds r3, r0, 0
	ldr r4, =gUnknown_020241F0
	str r3, [r4]
	ldr r1, =gUnknown_020242AC
	ldr r2, =gUnknown_0202420B
	ldrb r0, [r2]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 2
	ands r0, r1
	cmp r0, 0
	beq _0817F06A
	ldr r2, =gBattleMoves
	mov r6, r8
	ldrh r1, [r6]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r0, [r0, 0x2]
	cmp r0, 0xD
	bne _0817F06A
	lsls r0, r3, 1
	str r0, [r4]
_0817F06A:
	ldr r0, =gUnknown_0202433C
	ldr r6, =gUnknown_0202420B
	ldrb r1, [r6]
	lsls r1, 4
	adds r1, r0
	ldrb r0, [r1]
	lsls r0, 28
	cmp r0, 0
	bge _0817F08C
	ldr r4, =gUnknown_020241F0
	ldr r1, [r4]
	lsls r0, r1, 4
	subs r0, r1
	movs r1, 0xA
	bl __divsi3
	str r0, [r4]
_0817F08C:
	mov r1, r8
	ldrh r0, [r1]
	ldrb r1, [r6]
	mov r3, r9
	ldrb r2, [r3]
	bl move_effectiveness_something
	lsls r0, 24
	lsrs r1, r0, 24
	ldr r0, =gUnknown_020241F0
	ldr r0, [r0]
	str r0, [r7]
	cmp r0, 0
	bne _0817F0B4
	movs r0, 0x29
	ands r0, r1
	cmp r0, 0
	bne _0817F0B4
	movs r0, 0x1
	str r0, [r7]
_0817F0B4:
	adds r7, 0x4
	adds r5, 0x1
	cmp r5, 0x3
	ble _0817EFC2
	movs r5, 0
	ldr r3, =gUnknown_0202420B
	ldr r6, =gUnknown_020244B0
	ldr r4, =gUnknown_0202406E
	mov r8, r4
	movs r7, 0x64
	mov r9, r7
	mov r10, r6
_0817F0CC:
	ldrb r0, [r3]
	adds r0, r6
	ldrb r2, [r0]
	cmp r5, r2
	bne _0817F0D8
	b _0817F1D4
_0817F0D8:
	lsls r0, r5, 2
	mov r1, sp
	adds r1, r0
	adds r1, 0x10
	lsls r0, r2, 2
	add r0, sp
	adds r0, 0x10
	ldr r1, [r1]
	ldr r0, [r0]
	cmp r1, r0
	ble _0817F1D4
	movs r7, 0x1
	cmp r2, 0
	beq _0817F0F6
	movs r7, 0
_0817F0F6:
	movs r5, 0
	ldr r4, =gUnknown_0202420C
	ldr r6, =gUnknown_02024744
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	add r0, r10
	ldrb r3, [r0]
	add r2, sp, 0x10
_0817F106:
	cmp r5, r3
	beq _0817F11A
	lsls r0, r7, 2
	add r0, sp
	adds r0, 0x10
	ldr r1, [r2]
	ldr r0, [r0]
	cmp r1, r0
	ble _0817F11A
	adds r7, r5, 0
_0817F11A:
	adds r2, 0x4
	adds r5, 0x1
	cmp r5, 0x3
	ble _0817F106
	ldrb r0, [r4]
	lsls r0, 1
	add r0, r8
	ldrh r0, [r0]
	mov r1, r9
	muls r1, r0
	adds r0, r1, 0
	adds r0, r6
	movs r1, 0xB
	movs r2, 0
	bl pokemon_getattr
	adds r6, r0, 0
	lsls r6, 16
	lsrs r6, 16
	ldr r2, =gUnknown_0202420B
	ldrb r0, [r2]
	lsls r0, 1
	add r0, r8
	ldrh r0, [r0]
	mov r3, r9
	muls r3, r0
	adds r0, r3, 0
	ldr r1, =gUnknown_020244EC
	adds r0, r1
	movs r1, 0xB
	movs r2, 0
	bl pokemon_getattr
	adds r1, r0, 0
	lsls r1, 16
	lsrs r1, 16
	ldr r4, =gUnknown_0202420B
	ldrb r3, [r4]
	mov r2, r10
	adds r0, r3, r2
	ldrb r2, [r0]
	movs r0, 0x58
	adds r4, r3, 0
	muls r4, r0
	ldr r5, =gUnknown_02024090
	adds r3, r4, r5
	lsls r0, r7, 1
	adds r0, r4
	adds r0, r5
	ldrh r0, [r0]
	str r0, [sp]
	adds r0, r6, 0
	bl sub_80EE35C
	b _0817F1DC
	.pool
_0817F1D4:
	adds r5, 0x1
	cmp r5, 0x3
	bgt _0817F1DC
	b _0817F0CC
_0817F1DC:
	ldr r2, =gUnknown_020241F0
	ldr r1, =gUnknown_020244B0
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	adds r0, r1
	ldrb r0, [r0]
	lsls r0, 2
	add r0, sp
	adds r0, 0x10
	ldr r0, [r0]
	str r0, [r2]
	ldr r0, =gUnknown_020241EA
	mov r3, sp
	ldrh r3, [r3, 0x24]
	strh r3, [r0]
_0817F1FA:
	add sp, 0x28
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_817EECC

	thumb_func_start sub_817F21C
sub_817F21C: @ 817F21C
	push {r4-r7,lr}
	adds r6, r1, 0
	mov r12, r2
	lsls r0, 16
	lsrs r2, r0, 16
	ldr r1, =gBattleMoves
	lsls r0, r2, 1
	adds r0, r2
	lsls r0, 2
	adds r0, r1
	ldrb r0, [r0, 0x1]
	cmp r0, 0
	beq _0817F286
	movs r4, 0
	ldr r5, =gUnknown_0860A4AC
	ldr r7, =0x0000ffff
	adds r3, r5, 0
	adds r1, r5, 0
_0817F240:
	ldrh r0, [r1]
	cmp r2, r0
	beq _0817F252
	adds r3, 0x2
	adds r1, 0x2
	adds r4, 0x1
	ldrh r0, [r3]
	cmp r0, r7
	bne _0817F240
_0817F252:
	lsls r0, r4, 1
	adds r0, r5
	ldrh r1, [r0]
	ldr r0, =0x0000ffff
	cmp r1, r0
	beq _0817F270
	movs r0, 0
	str r0, [r6]
	b _0817F2A0
	.pool
_0817F270:
	cmp r2, 0x95
	bne _0817F294
	ldr r2, =gUnknown_02024084
	ldr r0, =gUnknown_0202420B
	ldrb r1, [r0]
	movs r0, 0x58
	muls r0, r1
	adds r0, r2
	adds r0, 0x2A
	ldrb r0, [r0]
	asrs r0, 1
_0817F286:
	str r0, [r6]
	movs r0, 0
	b _0817F2A0
	.pool
_0817F294:
	cmp r2, 0xDE
	bne _0817F29E
	movs r0, 0xA
	mov r1, r12
	strh r0, [r1]
_0817F29E:
	movs r0, 0x1
_0817F2A0:
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_817F21C

	thumb_func_start sub_817F2A8
sub_817F2A8: @ 817F2A8
	push {r4,r5,lr}
	ldr r0, =gUnknown_02022FEC
	ldr r0, [r0]
	movs r1, 0x2
	ands r0, r1
	cmp r0, 0
	beq _0817F324
	ldr r0, =gUnknown_0202449C
	ldr r3, [r0]
	ldr r0, =0x0000025b
	adds r4, r3, r0
	ldrb r2, [r4]
	subs r1, 0x21
	adds r0, r1, 0
	ands r0, r2
	strb r0, [r4]
	ldr r0, =0x00000267
	adds r2, r3, r0
	ldrb r0, [r2]
	ands r1, r0
	strb r1, [r2]
	ldrb r5, [r4]
	movs r1, 0x1F
	adds r0, r1, 0
	ands r0, r5
	strb r0, [r4]
	ldrb r0, [r2]
	ands r1, r0
	strb r1, [r2]
	movs r0, 0x97
	lsls r0, 2
	adds r4, r3, r0
	ldrb r2, [r4]
	movs r1, 0x39
	negs r1, r1
	adds r0, r1, 0
	ands r0, r2
	strb r0, [r4]
	movs r0, 0x9A
	lsls r0, 2
	adds r3, r0
	ldrb r0, [r3]
	ands r1, r0
	strb r1, [r3]
	ldrb r2, [r4]
	movs r1, 0x7
	negs r1, r1
	adds r0, r1, 0
	ands r0, r2
	strb r0, [r4]
	ldrb r0, [r3]
	ands r1, r0
	strb r1, [r3]
	ldrb r2, [r4]
	movs r1, 0x2
	negs r1, r1
	adds r0, r1, 0
	ands r0, r2
	strb r0, [r4]
	ldrb r0, [r3]
	ands r1, r0
	strb r1, [r3]
_0817F324:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_817F2A8

	thumb_func_start sub_817F33C
sub_817F33C: @ 817F33C
	push {r4-r7,lr}
	lsls r0, 24
	lsrs r5, r0, 24
	lsls r1, 16
	lsrs r7, r1, 16
	adds r0, r5, 0
	bl battle_side_get_owner
	lsls r0, 24
	ldr r6, =gUnknown_02024744
	cmp r0, 0
	bne _0817F356
	ldr r6, =gUnknown_020244EC
_0817F356:
	movs r4, 0
	ldr r1, =gUnknown_0202406E
	lsls r0, r5, 1
	adds r5, r0, r1
	b _0817F36E
	.pool
_0817F36C:
	adds r4, 0x1
_0817F36E:
	cmp r4, 0x3
	bgt _0817F388
	ldrh r1, [r5]
	movs r0, 0x64
	muls r0, r1
	adds r0, r6, r0
	adds r1, r4, 0
	adds r1, 0xD
	movs r2, 0
	bl pokemon_getattr
	cmp r0, r7
	bne _0817F36C
_0817F388:
	lsls r0, r4, 24
	lsrs r0, 24
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_817F33C

	thumb_func_start sub_817F394
sub_817F394: @ 817F394
	push {r4-r6,lr}
	lsls r0, 16
	lsrs r3, r0, 16
	adds r4, r3, 0
	lsls r1, 16
	lsrs r1, 16
	adds r6, r1, 0
	lsls r2, 24
	lsrs r2, 24
	adds r5, r2, 0
	movs r0, 0x7
	ands r0, r3
	cmp r0, 0
	beq _0817F3B4
	movs r0, 0x3
	b _0817F3CA
_0817F3B4:
	movs r0, 0x60
	ands r0, r3
	cmp r0, 0
	beq _0817F3C0
	movs r0, 0x4
	b _0817F3CA
_0817F3C0:
	movs r0, 0x18
	ands r0, r3
	cmp r0, 0
	beq _0817F3D2
	movs r0, 0x5
_0817F3CA:
	movs r3, 0
	bl sub_817E684
	b _0817F3E6
_0817F3D2:
	movs r0, 0x80
	ands r4, r0
	cmp r4, 0
	beq _0817F3E6
	movs r0, 0x6
	adds r1, r6, 0
	adds r2, r5, 0
	movs r3, 0
	bl sub_817E684
_0817F3E6:
	pop {r4-r6}
	pop {r0}
	bx r0
	thumb_func_end sub_817F394

	thumb_func_start nullsub_69
nullsub_69: @ 817F3EC
	bx lr
	thumb_func_end nullsub_69

	thumb_func_start sub_817F3F0
sub_817F3F0: @ 817F3F0
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	sub sp, 0x4
	mov r9, r0
	mov r8, r1
	adds r5, r2, 0
	adds r4, r3, 0
	lsls r5, 16
	negs r5, r5
	lsls r4, 16
	negs r4, r4
	lsrs r4, 16
	mov r0, r8
	lsls r0, 16
	asrs r0, 16
	mov r8, r0
	asrs r5, 16
	adds r1, r5, 0
	bl cosine
	adds r6, r0, 0
	lsls r4, 16
	asrs r4, 16
	mov r0, r8
	adds r1, r4, 0
	bl sine
	subs r6, r0
	lsls r6, 16
	lsrs r6, 16
	mov r0, r8
	adds r1, r4, 0
	bl cosine
	adds r2, r0, 0
	mov r0, r8
	adds r1, r5, 0
	str r2, [sp]
	bl sine
	ldr r2, [sp]
	adds r2, r0
	negs r5, r5
	negs r4, r4
	lsls r6, 16
	asrs r6, 16
	lsls r5, 16
	asrs r5, 16
	adds r6, r5
	mov r0, r9
	strh r6, [r0, 0x24]
	lsls r2, 16
	asrs r2, 16
	lsls r4, 16
	asrs r4, 16
	adds r2, r4
	strh r2, [r0, 0x26]
	add sp, 0x4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	thumb_func_end sub_817F3F0

	thumb_func_start sub_817F474
sub_817F474: @ 817F474
	push {lr}
	lsls r0, 16
	lsrs r0, 16
	ldr r1, =gUnknown_0860A8C8
	adds r0, r1
	ldrb r0, [r0]
	cmp r0, 0
	bne _0817F48C
	movs r0, 0
	b _0817F492
	.pool
_0817F48C:
	subs r0, 0x1
	lsls r0, 24
	lsrs r0, 24
_0817F492:
	pop {r1}
	bx r1
	thumb_func_end sub_817F474

	.align 2, 0 @ Don't pad with nop.
