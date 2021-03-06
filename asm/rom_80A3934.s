	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_80A3934
sub_80A3934: @ 80A3934
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	ldr r0, =gUnknown_020383FC
	movs r1, 0
	strb r1, [r0]
	ldr r0, =gUnknown_020383FD
	strb r1, [r0]
	ldr r0, =gUnknown_020383FE
	strb r1, [r0]
	ldr r0, =gUnknown_020383FF
	strb r1, [r0]
	ldr r0, =gUnknown_02038400
	movs r1, 0
	str r1, [r0]
	ldr r0, =gUnknown_02038404
	str r1, [r0]
	ldr r0, =gUnknown_02038408
	movs r2, 0
	strh r1, [r0]
	ldr r0, =gUnknown_0203841A
	strb r2, [r0]
	ldr r4, =gUnknown_02038430
	ldr r5, =gUnknown_02038432
	ldr r6, =gUnknown_02038433
	ldr r7, =gUnknown_02038434
	ldr r0, =gUnknown_02038436
	mov r12, r0
	ldr r1, =gUnknown_02038437
	mov r8, r1
	ldr r0, =gUnknown_02038440
	mov r9, r0
	ldr r1, =0x0000ffff
	adds r3, r1, 0
	ldr r1, =gUnknown_0203840A
	movs r2, 0x7
_080A397E:
	ldrh r0, [r1]
	orrs r0, r3
	strh r0, [r1]
	adds r1, 0x2
	subs r2, 0x1
	cmp r2, 0
	bge _080A397E
	ldr r1, =gUnknown_0203841E
	movs r2, 0
	adds r0, r1, 0
	adds r0, 0xE
_080A3994:
	strh r2, [r0]
	subs r0, 0x2
	cmp r0, r1
	bge _080A3994
	movs r1, 0
	movs r0, 0xFF
	strb r0, [r4]
	movs r0, 0x1
	negs r0, r0
	strb r0, [r4, 0x1]
	strb r1, [r5]
	strb r1, [r6]
	movs r0, 0
	strh r1, [r7]
	mov r1, r12
	strb r0, [r1]
	mov r1, r8
	strb r0, [r1]
	mov r1, r9
	strb r0, [r1]
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_80A3934

	thumb_func_start move_anim_start_t1
move_anim_start_t1: @ 80A3A10
	push {lr}
	adds r1, r0, 0
	lsls r1, 16
	lsrs r1, 16
	ldr r2, =gUnknown_02038436
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	strb r0, [r2]
	ldr r2, =gUnknown_02038437
	ldr r0, =gUnknown_0202420C
	ldrb r0, [r0]
	strb r0, [r2]
	ldr r0, =gUnknown_082C8D6C
	movs r2, 0x1
	bl move_something
	pop {r0}
	bx r0
	.pool
	thumb_func_end move_anim_start_t1

	thumb_func_start move_something
move_something: @ 80A3A48
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x4
	str r0, [sp]
	lsls r1, 16
	lsrs r1, 16
	mov r8, r1
	lsls r2, 24
	lsrs r2, 24
	mov r9, r2
	bl sub_80A4DF0
	lsls r0, 24
	cmp r0, 0
	bne _080A3AE8
	bl sub_80A8278
	movs r0, 0
	bl sub_8072A88
	movs r4, 0
	mov r0, r8
	lsls r0, 2
	mov r10, r0
	ldr r6, =gUnknown_0202406E
	movs r7, 0x64
	ldr r5, =gUnknown_02038438
_080A3A84:
	lsls r0, r4, 24
	lsrs r0, 24
	bl battle_side_get_owner
	lsls r0, 24
	cmp r0, 0
	beq _080A3AA8
	ldrh r0, [r6]
	muls r0, r7
	ldr r1, =gUnknown_02024744
	b _080A3AAE
	.pool
_080A3AA8:
	ldrh r0, [r6]
	muls r0, r7
	ldr r1, =gUnknown_020244EC
_080A3AAE:
	adds r0, r1
	movs r1, 0xB
	bl pokemon_getattr
	strh r0, [r5]
	adds r6, 0x2
	adds r5, 0x2
	adds r4, 0x1
	cmp r4, 0x3
	ble _080A3A84
	ldr r3, =gUnknown_02038434
	ldr r5, =gUnknown_02038430
	ldr r1, =gUnknown_020383FD
	mov r12, r1
	ldr r7, =gUnknown_020383F8
	ldr r6, =move_anim_execute
	b _080A3B10
	.pool
_080A3AE8:
	ldr r3, =gUnknown_02038434
	ldr r5, =gUnknown_02038430
	mov r0, r8
	lsls r0, 2
	mov r10, r0
	ldr r1, =gUnknown_020383FD
	mov r12, r1
	ldr r7, =gUnknown_020383F8
	ldr r6, =move_anim_execute
	ldr r2, =gUnknown_02039F34
	ldr r1, =gUnknown_02038438
	movs r4, 0x3
_080A3B00:
	ldr r0, [r2]
	ldr r0, [r0, 0x18]
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, 0x2
	subs r4, 0x1
	cmp r4, 0
	bge _080A3B00
_080A3B10:
	mov r0, r9
	cmp r0, 0
	bne _080A3B38
	strh r0, [r3]
	b _080A3B3C
	.pool
_080A3B38:
	mov r1, r8
	strh r1, [r3]
_080A3B3C:
	ldr r1, =gUnknown_0203841E
	movs r2, 0
	adds r0, r1, 0
	adds r0, 0xE
_080A3B44:
	strh r2, [r0]
	subs r0, 0x2
	cmp r0, r1
	bge _080A3B44
	movs r0, 0xFF
	strb r0, [r5]
	movs r0, 0x1
	negs r0, r0
	strb r0, [r5, 0x1]
	ldr r0, [sp]
	add r0, r10
	ldr r0, [r0]
	ldr r1, =gUnknown_020383F0
	str r0, [r1]
	movs r0, 0x1
	mov r1, r12
	strb r0, [r1]
	movs r0, 0
	ldr r1, =gUnknown_020383FC
	strb r0, [r1]
	str r6, [r7]
	ldr r0, =0x0000ffff
	adds r2, r0, 0
	ldr r1, =gUnknown_0203840A
	movs r4, 0x7
_080A3B76:
	ldrh r0, [r1]
	orrs r0, r2
	strh r0, [r1]
	adds r1, 0x2
	subs r4, 0x1
	cmp r4, 0
	bge _080A3B76
	mov r1, r9
	cmp r1, 0
	beq _080A3BC2
	movs r4, 0
	ldr r2, =gUnknown_082C8D64
	b _080A3BAA
	.pool
_080A3BA8:
	adds r4, 0x1
_080A3BAA:
	lsls r0, r4, 1
	adds r0, r2
	ldrh r0, [r0]
	ldr r1, =0x0000ffff
	cmp r0, r1
	beq _080A3BC2
	cmp r8, r0
	bne _080A3BA8
	ldr r0, =gMPlay_BGM
	movs r2, 0x80
	bl m4aMPlayVolumeControl
_080A3BC2:
	ldr r0, =gUnknown_02022E24
	movs r1, 0
	strh r1, [r0]
	ldr r0, =gUnknown_02022E26
	strh r1, [r0]
	ldr r0, =gUnknown_02022E28
	strh r1, [r0]
	ldr r0, =gUnknown_02022E2A
	strh r1, [r0]
	add sp, 0x4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end move_something

	thumb_func_start move_anim_8072740
move_anim_8072740: @ 80A3BFC
	push {r4,lr}
	adds r4, r0, 0
	bl obj_free_rotscale_entry
	adds r0, r4, 0
	bl RemoveObjectAndFreeTiles
	ldr r1, =gUnknown_020383FE
	ldrb r0, [r1]
	subs r0, 0x1
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end move_anim_8072740

	thumb_func_start move_anim_task_del
move_anim_task_del: @ 80A3C1C
	push {lr}
	lsls r0, 24
	lsrs r0, 24
	bl DestroyTask
	ldr r1, =gUnknown_020383FE
	ldrb r0, [r1]
	subs r0, 0x1
	strb r0, [r1]
	pop {r0}
	bx r0
	.pool
	thumb_func_end move_anim_task_del

	thumb_func_start move_anim_related_task_del
move_anim_related_task_del: @ 80A3C38
	push {lr}
	lsls r0, 24
	lsrs r0, 24
	bl DestroyTask
	ldr r1, =gUnknown_020383FF
	ldrb r0, [r1]
	subs r0, 0x1
	strb r0, [r1]
	pop {r0}
	bx r0
	.pool
	thumb_func_end move_anim_related_task_del

	thumb_func_start sub_80A3C54
sub_80A3C54: @ 80A3C54
	push {r4,lr}
	lsls r0, 16
	lsrs r3, r0, 16
	movs r2, 0
	ldr r4, =0x0000ffff
	ldr r1, =gUnknown_0203840A
_080A3C60:
	ldrh r0, [r1]
	cmp r0, r4
	bne _080A3C74
	strh r3, [r1]
	b _080A3C7C
	.pool
_080A3C74:
	adds r1, 0x2
	adds r2, 0x1
	cmp r2, 0x7
	ble _080A3C60
_080A3C7C:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_80A3C54

	thumb_func_start sub_80A3C84
sub_80A3C84: @ 80A3C84
	push {r4,lr}
	lsls r0, 16
	lsrs r3, r0, 16
	movs r2, 0
	ldr r0, =0x0000ffff
	adds r4, r0, 0
	ldr r1, =gUnknown_0203840A
_080A3C92:
	ldrh r0, [r1]
	cmp r0, r3
	bne _080A3CA8
	orrs r0, r4
	strh r0, [r1]
	b _080A3CB0
	.pool
_080A3CA8:
	adds r1, 0x2
	adds r2, 0x1
	cmp r2, 0x7
	ble _080A3C92
_080A3CB0:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_80A3C84

	thumb_func_start move_anim_waiter
move_anim_waiter: @ 80A3CB8
	push {lr}
	ldr r2, =gUnknown_020383FC
	ldrb r1, [r2]
	movs r0, 0
	ldrsb r0, [r2, r0]
	cmp r0, 0
	bgt _080A3CDC
	ldr r0, =gUnknown_020383F8
	ldr r1, =move_anim_execute
	str r1, [r0]
	movs r0, 0
	b _080A3CDE
	.pool
_080A3CDC:
	subs r0, r1, 0x1
_080A3CDE:
	strb r0, [r2]
	pop {r0}
	bx r0
	thumb_func_end move_anim_waiter

	thumb_func_start move_anim_execute
move_anim_execute: @ 80A3CE4
	push {r4,lr}
	ldr r4, =gUnknown_08525E98
_080A3CE8:
	ldr r0, =gUnknown_020383F0
	ldr r0, [r0]
	ldrb r0, [r0]
	lsls r0, 2
	adds r0, r4
	ldr r0, [r0]
	bl _call_via_r0
	ldr r0, =gUnknown_020383FC
	ldrb r0, [r0]
	lsls r0, 24
	asrs r0, 24
	cmp r0, 0
	bne _080A3D0C
	ldr r0, =gUnknown_020383FD
	ldrb r0, [r0]
	cmp r0, 0
	bne _080A3CE8
_080A3D0C:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end move_anim_execute

	thumb_func_start ma00_load_graphics
ma00_load_graphics: @ 80A3D24
	push {r4-r6,lr}
	ldr r6, =gUnknown_020383F0
	ldr r0, [r6]
	adds r1, r0, 0x1
	str r1, [r6]
	ldrb r4, [r0, 0x1]
	ldrb r0, [r1, 0x1]
	lsls r0, 8
	orrs r4, r0
	lsls r5, r4, 3
	ldr r0, =gUnknown_085112C4
	adds r0, r5, r0
	bl LoadCompressedObjectPicUsingHeap
	ldr r0, =gUnknown_08511BCC
	adds r5, r0
	adds r0, r5, 0
	bl LoadCompressedObjectPaletteUsingHeap
	ldr r0, [r6]
	adds r0, 0x2
	str r0, [r6]
	ldr r0, =0xffffd8f0
	adds r4, r0
	lsls r4, 16
	lsrs r4, 16
	adds r0, r4, 0
	bl sub_80A3C54
	ldr r1, =gUnknown_020383FC
	movs r0, 0x1
	strb r0, [r1]
	ldr r1, =gUnknown_020383F8
	ldr r0, =move_anim_waiter
	str r0, [r1]
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end ma00_load_graphics

	thumb_func_start ma01_080728D0
@ void ma01_080728D0()
ma01_080728D0: @ 80A3D8C
	push {r4-r6,lr}
	ldr r6, =gUnknown_020383F0
	ldr r0, [r6]
	adds r1, r0, 0x1
	str r1, [r6]
	ldrb r4, [r0, 0x1]
	ldrb r0, [r1, 0x1]
	lsls r0, 8
	orrs r4, r0
	ldr r1, =gUnknown_08524B44
	ldr r0, =0xffffd8f0
	adds r4, r0
	lsls r0, r4, 3
	adds r0, r1
	ldrh r5, [r0, 0x6]
	adds r0, r5, 0
	bl FreeObjectTilesByTag
	adds r0, r5, 0
	bl FreeObjectPaletteByTag
	ldr r0, [r6]
	adds r0, 0x2
	str r0, [r6]
	lsls r4, 16
	lsrs r4, 16
	adds r0, r4, 0
	bl sub_80A3C84
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end ma01_080728D0

	thumb_func_start ma02_instanciate_template
ma02_instanciate_template: @ 80A3DD8
	push {r4-r7,lr}
	ldr r5, =gUnknown_020383F0
	ldr r1, [r5]
	adds r3, r1, 0x1
	str r3, [r5]
	ldrb r2, [r1, 0x1]
	ldrb r0, [r3, 0x1]
	lsls r0, 8
	adds r2, r0
	ldrb r0, [r3, 0x2]
	lsls r0, 16
	adds r2, r0
	ldrb r0, [r3, 0x3]
	lsls r0, 24
	adds r7, r2, r0
	adds r0, r1, 0x5
	str r0, [r5]
	ldrb r4, [r1, 0x5]
	adds r0, r1, 0x6
	str r0, [r5]
	ldrb r0, [r1, 0x6]
	adds r1, 0x7
	str r1, [r5]
	cmp r0, 0
	beq _080A3E28
	adds r6, r5, 0
	ldr r5, =gUnknown_0203841E
	adds r3, r0, 0
_080A3E10:
	ldr r2, [r6]
	ldrb r1, [r2]
	ldrb r0, [r2, 0x1]
	lsls r0, 8
	orrs r1, r0
	strh r1, [r5]
	adds r2, 0x2
	str r2, [r6]
	adds r5, 0x2
	subs r3, 0x1
	cmp r3, 0
	bne _080A3E10
_080A3E28:
	movs r0, 0x80
	ands r0, r4
	cmp r0, 0
	beq _080A3E58
	movs r0, 0x80
	eors r4, r0
	cmp r4, 0x3F
	bls _080A3E48
	adds r0, r4, 0
	subs r0, 0x40
	b _080A3E4A
	.pool
_080A3E48:
	negs r0, r4
_080A3E4A:
	lsls r0, 24
	lsrs r4, r0, 24
	ldr r0, =gUnknown_02038437
	b _080A3E6A
	.pool
_080A3E58:
	cmp r4, 0x3F
	bls _080A3E62
	adds r0, r4, 0
	subs r0, 0x40
	b _080A3E64
_080A3E62:
	negs r0, r4
_080A3E64:
	lsls r0, 24
	lsrs r4, r0, 24
	ldr r0, =gUnknown_02038436
_080A3E6A:
	ldrb r0, [r0]
	bl sub_80A82E4
	lsls r0, 24
	lsrs r0, 24
	lsls r1, r4, 24
	asrs r1, 24
	adds r0, r1
	lsls r0, 16
	lsrs r6, r0, 16
	lsls r0, r6, 16
	asrs r0, 16
	cmp r0, 0x2
	bgt _080A3E88
	movs r6, 0x3
_080A3E88:
	ldr r5, =gUnknown_02038437
	ldrb r0, [r5]
	movs r1, 0x2
	bl sub_80A5C6C
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	ldrb r0, [r5]
	movs r1, 0x3
	bl sub_80A5C6C
	adds r2, r0, 0
	lsls r2, 24
	lsrs r2, 24
	lsls r3, r6, 24
	lsrs r3, 24
	adds r0, r7, 0
	adds r1, r4, 0
	bl AddObjectAndAnimateForOneFrame
	ldr r1, =gUnknown_020383FE
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end ma02_instanciate_template

	thumb_func_start sub_80A3ECC
sub_80A3ECC: @ 80A3ECC
	push {r4-r7,lr}
	ldr r4, =gUnknown_020383F0
	ldr r1, [r4]
	adds r3, r1, 0x1
	str r3, [r4]
	ldrb r2, [r1, 0x1]
	ldrb r0, [r3, 0x1]
	lsls r0, 8
	adds r2, r0
	ldrb r0, [r3, 0x2]
	lsls r0, 16
	adds r2, r0
	ldrb r0, [r3, 0x3]
	lsls r0, 24
	adds r6, r2, r0
	adds r0, r1, 0x5
	str r0, [r4]
	ldrb r7, [r1, 0x5]
	adds r0, r1, 0x6
	str r0, [r4]
	ldrb r0, [r1, 0x6]
	adds r1, 0x7
	str r1, [r4]
	cmp r0, 0
	beq _080A3F1C
	adds r5, r4, 0
	ldr r4, =gUnknown_0203841E
	adds r3, r0, 0
_080A3F04:
	ldr r2, [r5]
	ldrb r1, [r2]
	ldrb r0, [r2, 0x1]
	lsls r0, 8
	orrs r1, r0
	strh r1, [r4]
	adds r2, 0x2
	str r2, [r5]
	adds r4, 0x2
	subs r3, 0x1
	cmp r3, 0
	bne _080A3F04
_080A3F1C:
	adds r0, r6, 0
	adds r1, r7, 0
	bl CreateTask
	lsls r0, 24
	lsrs r0, 24
	bl _call_via_r6
	ldr r1, =gUnknown_020383FE
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_80A3ECC

	thumb_func_start ma04_wait_countdown
ma04_wait_countdown: @ 80A3F48
	push {r4,lr}
	ldr r1, =gUnknown_020383F0
	ldr r0, [r1]
	adds r2, r0, 0x1
	str r2, [r1]
	ldr r3, =gUnknown_020383FC
	ldrb r0, [r0, 0x1]
	strb r0, [r3]
	lsls r0, 24
	cmp r0, 0
	bne _080A3F66
	movs r4, 0x1
	negs r4, r4
	adds r0, r4, 0
	strb r0, [r3]
_080A3F66:
	adds r0, r2, 0x1
	str r0, [r1]
	ldr r1, =gUnknown_020383F8
	ldr r0, =move_anim_waiter
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end ma04_wait_countdown

	thumb_func_start sub_80A3F88
sub_80A3F88: @ 80A3F88
	push {lr}
	ldr r0, =gUnknown_020383FE
	ldrb r2, [r0]
	cmp r2, 0
	bne _080A3FAC
	ldr r0, =gUnknown_020383F0
	ldr r1, [r0]
	adds r1, 0x1
	str r1, [r0]
	ldr r0, =gUnknown_020383FC
	strb r2, [r0]
	b _080A3FB2
	.pool
_080A3FAC:
	ldr r1, =gUnknown_020383FC
	movs r0, 0x1
	strb r0, [r1]
_080A3FB2:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_80A3F88

	thumb_func_start nullsub_6
nullsub_6: @ 80A3FBC
	bx lr
	thumb_func_end nullsub_6

	thumb_func_start nullsub_7
nullsub_7: @ 80A3FC0
	bx lr
	thumb_func_end nullsub_7

	thumb_func_start sub_80A3FC4
sub_80A3FC4: @ 80A3FC4
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	movs r0, 0
	mov r8, r0
	ldr r0, =gUnknown_020383FE
	ldrb r0, [r0]
	cmp r0, 0
	bne _080A3FEC
	ldr r0, =gUnknown_020383FF
	ldrb r0, [r0]
	cmp r0, 0
	bne _080A3FEC
	ldr r1, =gUnknown_02038430
	ldrb r0, [r1]
	cmp r0, 0xFF
	bne _080A3FEC
	ldrb r0, [r1, 0x1]
	cmp r0, 0xFF
	beq _080A4004
_080A3FEC:
	ldr r1, =gUnknown_0203842E
	movs r0, 0
	strh r0, [r1]
	b _080A401E
	.pool
_080A4004:
	bl mplay_has_finished_maybe
	lsls r0, 24
	cmp r0, 0
	beq _080A403C
	ldr r1, =gUnknown_0203842E
	ldrh r0, [r1]
	adds r0, 0x1
	strh r0, [r1]
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x5A
	bhi _080A4030
_080A401E:
	ldr r1, =gUnknown_020383FC
	movs r0, 0x1
	strb r0, [r1]
	b _080A40A2
	.pool
_080A4030:
	ldr r0, =gMPlay_SE1
	bl m4aMPlayStop
	ldr r0, =gMPlay_SE2
	bl m4aMPlayStop
_080A403C:
	ldr r1, =gUnknown_0203842E
	movs r0, 0
	strh r0, [r1]
	movs r5, 0
	ldr r7, =0x0000ffff
	ldr r6, =gUnknown_08524B44
	ldr r4, =gUnknown_0203840A
_080A404A:
	ldrh r0, [r4]
	cmp r0, r7
	beq _080A406E
	lsls r0, 3
	adds r0, r6
	ldrh r0, [r0, 0x6]
	bl FreeObjectTilesByTag
	ldrh r0, [r4]
	lsls r0, 3
	adds r0, r6
	ldrh r0, [r0, 0x6]
	bl FreeObjectPaletteByTag
	ldrh r1, [r4]
	adds r0, r7, 0
	orrs r0, r1
	strh r0, [r4]
_080A406E:
	adds r4, 0x2
	adds r5, 0x1
	cmp r5, 0x7
	ble _080A404A
	mov r1, r8
	cmp r1, 0
	bne _080A40A2
	ldr r0, =gMPlay_BGM
	ldr r1, =0x0000ffff
	movs r2, 0x80
	lsls r2, 1
	bl m4aMPlayVolumeControl
	bl sub_80A4DF0
	lsls r0, 24
	cmp r0, 0
	bne _080A409C
	bl sub_80A8278
	movs r0, 0x1
	bl sub_8072A88
_080A409C:
	ldr r0, =gUnknown_020383FD
	mov r1, r8
	strb r1, [r0]
_080A40A2:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_80A3FC4

	thumb_func_start ma09_play_sound
ma09_play_sound: @ 80A40CC
	push {r4,lr}
	ldr r4, =gUnknown_020383F0
	ldr r0, [r4]
	adds r1, r0, 0x1
	str r1, [r4]
	ldrb r0, [r0, 0x1]
	ldrb r1, [r1, 0x1]
	lsls r1, 8
	orrs r0, r1
	bl audio_play
	ldr r0, [r4]
	adds r0, 0x2
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end ma09_play_sound

	thumb_func_start sub_80A40F4
sub_80A40F4: @ 80A40F4
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsls r0, 24
	lsrs r7, r0, 24
	lsls r0, r7, 2
	adds r0, r7
	lsls r0, 3
	ldr r1, =gTasks + 0x8
	mov r8, r1
	adds r6, r0, r1
	ldr r1, =gUnknown_020241E4
	movs r2, 0
	ldrsh r0, [r6, r2]
	adds r0, r1
	ldrb r5, [r0]
	ldr r1, =gUnknown_02020630
	lsls r0, r5, 4
	adds r0, r5
	lsls r0, 2
	adds r4, r0, r1
	adds r2, r4, 0
	adds r2, 0x3E
	ldrb r0, [r2]
	movs r1, 0x4
	orrs r0, r1
	strb r0, [r2]
	movs r3, 0x4
	ldrsh r0, [r6, r3]
	cmp r0, 0
	bne _080A4148
	adds r0, r7, 0
	bl move_anim_task_del
	b _080A41BE
	.pool
_080A4148:
	ldr r0, =task_pA_ma0A_obj_to_bg_pal
	movs r1, 0xA
	bl CreateTask
	lsls r0, 24
	lsrs r2, r0, 24
	mov r1, r8
	subs r1, 0x8
	lsls r0, r2, 2
	adds r0, r2
	lsls r0, 3
	adds r1, r0, r1
	strh r5, [r1, 0x8]
	ldrh r0, [r4, 0x24]
	ldrh r3, [r4, 0x20]
	adds r0, r3
	strh r0, [r1, 0xA]
	ldrh r0, [r4, 0x26]
	ldrh r4, [r4, 0x22]
	adds r0, r4
	strh r0, [r1, 0xC]
	movs r3, 0x2
	ldrsh r0, [r6, r3]
	cmp r0, 0
	bne _080A4190
	ldr r0, =gUnknown_02022E18
	ldrh r0, [r0]
	strh r0, [r1, 0xE]
	ldr r0, =gUnknown_02022E1A
	b _080A4198
	.pool
_080A4190:
	ldr r0, =gUnknown_02022E1C
	ldrh r0, [r0]
	strh r0, [r1, 0xE]
	ldr r0, =gUnknown_02022E1E
_080A4198:
	ldrh r0, [r0]
	strh r0, [r1, 0x10]
	ldr r1, =gTasks
	lsls r0, r2, 2
	adds r0, r2
	lsls r0, 3
	adds r0, r1
	ldrh r1, [r6, 0x2]
	strh r1, [r0, 0x12]
	ldrh r1, [r6]
	strh r1, [r0, 0x14]
	ldr r1, =gUnknown_02038430
	movs r3, 0x6
	ldrsh r0, [r6, r3]
	adds r0, r1
	strb r2, [r0]
	adds r0, r7, 0
	bl move_anim_task_del
_080A41BE:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_80A40F4

	thumb_func_start sub_80A41D8
sub_80A41D8: @ 80A41D8
	push {r4,r5,lr}
	ldr r1, =gUnknown_020383F0
	ldr r2, [r1]
	adds r0, r2, 0x1
	str r0, [r1]
	ldrb r0, [r2, 0x1]
	movs r1, 0x1
	ands r0, r1
	cmp r0, 0
	beq _080A41F8
	ldr r0, =gUnknown_02038437
	b _080A41FA
	.pool
_080A41F8:
	ldr r0, =gUnknown_02038436
_080A41FA:
	ldrb r4, [r0]
	adds r0, r4, 0
	bl b_side_obj__get_some_boolean
	lsls r0, 24
	cmp r0, 0
	beq _080A4266
	adds r0, r4, 0
	bl battle_get_per_side_status
	lsls r0, 24
	movs r1, 0xFF
	lsls r1, 24
	adds r0, r1
	lsrs r0, 24
	cmp r0, 0x1
	bls _080A4226
	bl sub_80A4DF0
	lsls r0, 24
	cmp r0, 0
	beq _080A4230
_080A4226:
	movs r5, 0
	b _080A4232
	.pool
_080A4230:
	movs r5, 0x1
_080A4232:
	adds r0, r4, 0
	adds r1, r5, 0
	movs r2, 0
	bl sub_80A438C
	ldr r0, =sub_80A40F4
	movs r1, 0xA
	bl CreateTask
	lsls r0, 24
	lsrs r2, r0, 24
	ldr r1, =gUnknown_020383FE
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	ldr r1, =gTasks
	lsls r0, r2, 2
	adds r0, r2
	lsls r0, 3
	adds r0, r1
	movs r2, 0
	strh r4, [r0, 0x8]
	strh r5, [r0, 0xA]
	movs r1, 0x1
	strh r1, [r0, 0xC]
	strh r2, [r0, 0xE]
_080A4266:
	movs r0, 0x2
	eors r4, r0
	adds r0, r4, 0
	bl b_side_obj__get_some_boolean
	lsls r0, 24
	cmp r0, 0
	beq _080A42D8
	adds r0, r4, 0
	bl battle_get_per_side_status
	lsls r0, 24
	movs r1, 0xFF
	lsls r1, 24
	adds r0, r1
	lsrs r0, 24
	cmp r0, 0x1
	bls _080A4294
	bl sub_80A4DF0
	lsls r0, 24
	cmp r0, 0
	beq _080A42A4
_080A4294:
	movs r5, 0
	b _080A42A6
	.pool
_080A42A4:
	movs r5, 0x1
_080A42A6:
	adds r0, r4, 0
	adds r1, r5, 0
	movs r2, 0
	bl sub_80A438C
	ldr r0, =sub_80A40F4
	movs r1, 0xA
	bl CreateTask
	lsls r0, 24
	lsrs r2, r0, 24
	ldr r1, =gUnknown_020383FE
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	ldr r1, =gTasks
	lsls r0, r2, 2
	adds r0, r2
	lsls r0, 3
	adds r0, r1
	strh r4, [r0, 0x8]
	strh r5, [r0, 0xA]
	movs r1, 0x1
	strh r1, [r0, 0xC]
	strh r1, [r0, 0xE]
_080A42D8:
	ldr r1, =gUnknown_020383F0
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	ldr r1, =gUnknown_020383FC
	movs r0, 0x1
	strb r0, [r1]
	ldr r1, =gUnknown_020383F8
	ldr r0, =move_anim_waiter
	str r0, [r1]
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_80A41D8

	thumb_func_start b_side_obj__get_some_boolean
b_side_obj__get_some_boolean: @ 80A4310
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	adds r5, r4, 0
	bl sub_80A4DF0
	lsls r0, 24
	cmp r0, 0
	beq _080A4330
	ldr r0, =gUnknown_02038436
	ldrb r0, [r0]
	cmp r4, r0
	beq _080A4374
	b _080A4384
	.pool
_080A4330:
	adds r0, r4, 0
	bl sub_80A6A90
	lsls r0, 24
	cmp r0, 0
	beq _080A4384
	bl sub_80A4DF0
	lsls r0, 24
	cmp r0, 0
	bne _080A4374
	ldr r0, =gUnknown_020244D0
	ldr r0, [r0]
	ldr r1, [r0]
	lsls r0, r5, 2
	adds r0, r1
	ldrb r1, [r0]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _080A4374
	ldr r2, =gUnknown_02020630
	ldr r0, =gUnknown_020241E4
	adds r0, r5, r0
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	adds r0, 0x3E
	ldrb r0, [r0]
	lsls r0, 29
	cmp r0, 0
	blt _080A4384
_080A4374:
	movs r0, 0x1
	b _080A4386
	.pool
_080A4384:
	movs r0, 0
_080A4386:
	pop {r4,r5}
	pop {r1}
	bx r1
	thumb_func_end b_side_obj__get_some_boolean

	thumb_func_start sub_80A438C
sub_80A438C: @ 80A438C
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, 0x28
	lsls r0, 24
	lsrs r5, r0, 24
	adds r6, r5, 0
	lsls r1, 24
	lsls r2, 24
	lsrs r2, 24
	mov r9, r2
	cmp r1, 0
	beq _080A43AA
	b _080A455E
_080A43AA:
	bl sub_80A4DF0
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _080A43DC
	ldr r1, =0x06008000
	movs r2, 0x80
	lsls r2, 6
	movs r0, 0
	movs r3, 0x1
	bl RequestDma3Fill
	ldr r1, =0x0600f000
	movs r2, 0x80
	lsls r2, 5
	movs r0, 0xFF
	movs r3, 0
	bl RequestDma3Fill
	b _080A43F8
	.pool
_080A43DC:
	ldr r1, =0x06004000
	movs r2, 0x80
	lsls r2, 6
	movs r0, 0
	movs r3, 0x1
	bl RequestDma3Fill
	ldr r1, =0x0600e000
	movs r2, 0x80
	lsls r2, 5
	movs r0, 0xFF
	movs r3, 0
	bl RequestDma3Fill
_080A43F8:
	add r0, sp, 0x10
	bl sub_80A6B30
	add r0, sp, 0x20
	movs r1, 0
	strh r1, [r0]
	ldr r1, [sp, 0x10]
	ldr r2, =0x01000800
	bl CpuSet
	mov r0, sp
	adds r0, 0x22
	movs r1, 0xFF
	strh r1, [r0]
	ldr r1, [sp, 0x14]
	ldr r2, =0x01000400
	bl CpuSet
	movs r0, 0x1
	movs r1, 0x4
	movs r2, 0x2
	bl lcd_bg_operations
	movs r0, 0x1
	movs r1, 0
	movs r2, 0x1
	bl lcd_bg_operations
	movs r0, 0x1
	movs r1, 0x1
	movs r2, 0
	bl lcd_bg_operations
	ldr r0, =gUnknown_020241E4
	adds r0, r6, r0
	ldrb r4, [r0]
	ldr r5, =gUnknown_02022E18
	ldr r0, =gUnknown_02020630
	lsls r1, r4, 4
	adds r1, r4
	lsls r1, 2
	adds r1, r0
	ldrh r0, [r1, 0x24]
	ldrh r1, [r1, 0x20]
	adds r0, r1
	negs r0, r0
	adds r0, 0x20
	strh r0, [r5]
	bl sub_80A4DF0
	lsls r0, 24
	cmp r0, 0
	beq _080A447A
	ldr r0, =gUnknown_02039F34
	ldr r0, [r0]
	ldr r0, [r0, 0x18]
	ldrh r0, [r0]
	bl sub_80DB2A8
	lsls r0, 24
	cmp r0, 0
	beq _080A447A
	ldrh r0, [r5]
	subs r0, 0x1
	strh r0, [r5]
_080A447A:
	ldr r5, =gUnknown_02022E1A
	ldr r2, =gUnknown_02020630
	lsls r1, r4, 4
	adds r1, r4
	lsls r1, 2
	adds r1, r2
	ldrh r0, [r1, 0x26]
	ldrh r1, [r1, 0x22]
	adds r0, r1
	negs r0, r0
	adds r0, 0x20
	strh r0, [r5]
	mov r0, r9
	cmp r0, 0
	beq _080A44B0
	ldr r0, =gUnknown_020241E4
	adds r0, r6, r0
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	adds r0, 0x3E
	ldrb r1, [r0]
	movs r2, 0x4
	orrs r1, r2
	strb r1, [r0]
_080A44B0:
	ldr r0, =gUnknown_02022E18
	ldrh r1, [r0]
	movs r0, 0x14
	bl SetGpuReg
	ldrh r1, [r5]
	movs r0, 0x16
	bl SetGpuReg
	lsls r4, r6, 5
	ldr r0, =gUnknown_02037914
	adds r4, r0
	add r0, sp, 0x10
	ldrb r1, [r0, 0x8]
	lsls r1, 4
	adds r0, r4, 0
	movs r2, 0x20
	bl gpu_pal_apply
	add r0, sp, 0x10
	ldrb r1, [r0, 0x8]
	lsls r1, 5
	movs r0, 0xA0
	lsls r0, 19
	adds r1, r0
	ldr r2, =0x04000008
	adds r0, r4, 0
	bl CpuSet
	bl sub_80A4DF0
	lsls r0, 24
	cmp r0, 0
	beq _080A4524
	movs r3, 0
	b _080A452E
	.pool
_080A4524:
	adds r0, r6, 0
	bl battle_get_per_side_status
	lsls r0, 24
	lsrs r3, r0, 24
_080A452E:
	add r0, sp, 0x10
	ldrb r0, [r0, 0x8]
	str r0, [sp]
	ldr r0, [sp, 0x10]
	str r0, [sp, 0x4]
	ldr r0, [sp, 0x14]
	str r0, [sp, 0x8]
	add r0, sp, 0x10
	ldrh r0, [r0, 0xA]
	str r0, [sp, 0xC]
	movs r0, 0x1
	movs r1, 0
	movs r2, 0
	bl sub_8118FBC
	bl sub_80A4DF0
	lsls r0, 24
	cmp r0, 0
	bne _080A4558
	b _080A4666
_080A4558:
	bl sub_80A46A0
	b _080A4666
_080A455E:
	ldr r1, =0x06006000
	movs r2, 0x80
	lsls r2, 6
	movs r0, 0
	movs r3, 0x1
	bl RequestDma3Fill
	ldr r1, =0x0600f000
	movs r7, 0x80
	lsls r7, 5
	movs r0, 0
	adds r2, r7, 0
	movs r3, 0x1
	bl RequestDma3Fill
	add r0, sp, 0x10
	movs r1, 0x2
	bl sub_80A6B90
	add r0, sp, 0x24
	movs r4, 0
	strh r4, [r0]
	ldr r1, [sp, 0x10]
	adds r1, r7
	ldr r2, =0x01000800
	bl CpuSet
	mov r0, sp
	adds r0, 0x26
	strh r4, [r0]
	ldr r1, [sp, 0x14]
	movs r2, 0x80
	lsls r2, 4
	mov r8, r2
	add r1, r8
	ldr r2, =0x01000400
	bl CpuSet
	movs r0, 0x2
	movs r1, 0x4
	movs r2, 0x2
	bl lcd_bg_operations
	movs r0, 0x2
	movs r1, 0
	movs r2, 0x1
	bl lcd_bg_operations
	movs r0, 0x2
	movs r1, 0x1
	movs r2, 0
	bl lcd_bg_operations
	ldr r0, =gUnknown_020241E4
	adds r2, r5, r0
	ldrb r4, [r2]
	ldr r5, =gUnknown_02022E1C
	ldr r3, =gUnknown_02020630
	lsls r1, r4, 4
	adds r1, r4
	lsls r1, 2
	adds r1, r3
	ldrh r0, [r1, 0x24]
	ldrh r4, [r1, 0x20]
	adds r0, r4
	negs r0, r0
	adds r0, 0x20
	strh r0, [r5]
	ldr r4, =gUnknown_02022E1E
	ldrh r0, [r1, 0x26]
	ldrh r1, [r1, 0x22]
	adds r0, r1
	negs r0, r0
	adds r0, 0x20
	strh r0, [r4]
	mov r0, r9
	cmp r0, 0
	beq _080A460E
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	adds r0, 0x3E
	ldrb r1, [r0]
	movs r2, 0x4
	orrs r1, r2
	strb r1, [r0]
_080A460E:
	ldrh r1, [r5]
	movs r0, 0x18
	bl SetGpuReg
	ldrh r1, [r4]
	movs r0, 0x1A
	bl SetGpuReg
	lsls r4, r6, 5
	ldr r0, =gUnknown_02037914
	adds r4, r0
	adds r0, r4, 0
	movs r1, 0x90
	movs r2, 0x20
	bl gpu_pal_apply
	ldr r1, =0x05000120
	ldr r2, =0x04000008
	adds r0, r4, 0
	bl CpuSet
	adds r0, r6, 0
	bl battle_get_per_side_status
	adds r3, r0, 0
	lsls r3, 24
	lsrs r3, 24
	add r0, sp, 0x10
	ldrb r0, [r0, 0x8]
	str r0, [sp]
	ldr r0, [sp, 0x10]
	adds r0, r7
	str r0, [sp, 0x4]
	ldr r0, [sp, 0x14]
	add r0, r8
	str r0, [sp, 0x8]
	add r0, sp, 0x10
	ldrh r0, [r0, 0xA]
	str r0, [sp, 0xC]
	movs r0, 0x2
	movs r1, 0
	movs r2, 0
	bl sub_8118FBC
_080A4666:
	add sp, 0x28
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_80A438C

	thumb_func_start sub_80A46A0
sub_80A46A0: @ 80A46A0
	push {r4-r7,lr}
	sub sp, 0x10
	ldr r0, =gUnknown_02039F34
	ldr r0, [r0]
	ldr r0, [r0, 0x18]
	ldrh r0, [r0]
	bl sub_80DB2A8
	lsls r0, 24
	cmp r0, 0
	beq _080A4712
	mov r0, sp
	bl sub_80A6B30
	ldr r6, [sp, 0x4]
	movs r5, 0
	movs r0, 0x7
	mov r12, r0
	movs r7, 0
_080A46C6:
	movs r4, 0
	adds r3, r7, r6
	mov r1, r12
	lsls r0, r1, 1
	adds r2, r0, r6
_080A46D0:
	ldrh r1, [r3]
	ldrh r0, [r2]
	strh r0, [r3]
	strh r1, [r2]
	adds r3, 0x2
	subs r2, 0x2
	adds r4, 0x1
	cmp r4, 0x3
	ble _080A46D0
	movs r0, 0x20
	add r12, r0
	adds r7, 0x40
	adds r5, 0x1
	cmp r5, 0x7
	ble _080A46C6
	movs r5, 0
	movs r1, 0x80
	lsls r1, 3
	adds r3, r1, 0
_080A46F6:
	adds r2, r5, 0x1
	lsls r0, r5, 6
	adds r1, r0, r6
	movs r4, 0x7
_080A46FE:
	ldrh r0, [r1]
	eors r0, r3
	strh r0, [r1]
	adds r1, 0x2
	subs r4, 0x1
	cmp r4, 0
	bge _080A46FE
	adds r5, r2, 0
	cmp r5, 0x7
	ble _080A46F6
_080A4712:
	add sp, 0x10
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_80A46A0

	thumb_func_start sub_80A4720
sub_80A4720: @ 80A4720
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	mov r8, r1
	adds r6, r2, 0
	lsls r0, 16
	lsrs r5, r0, 16
	lsls r3, 24
	movs r0, 0x40
	mov r12, r0
	cmp r3, 0
	bne _080A473C
	movs r1, 0x20
	mov r12, r1
_080A473C:
	lsls r0, r5, 28
	lsrs r5, r0, 16
	movs r0, 0
	cmp r0, r12
	bge _080A476C
	ldr r7, =0x00000fff
_080A4748:
	adds r4, r0, 0x1
	lsls r0, 6
	mov r1, r8
	adds r3, r0, r1
	movs r2, 0x1F
_080A4752:
	ldrh r1, [r3]
	adds r0, r7, 0
	ands r0, r1
	orrs r0, r5
	adds r0, r6
	strh r0, [r3]
	adds r3, 0x2
	subs r2, 0x1
	cmp r2, 0
	bge _080A4752
	adds r0, r4, 0
	cmp r0, r12
	blt _080A4748
_080A476C:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_80A4720

	thumb_func_start sub_80A477C
sub_80A477C: @ 80A477C
	push {r4,lr}
	sub sp, 0x10
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	mov r0, sp
	bl sub_80A6B30
	cmp r4, 0
	beq _080A479C
	bl sub_80A4DF0
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0
	beq _080A47B8
_080A479C:
	movs r0, 0x1
	bl sub_80A6C68
	ldr r0, =gUnknown_02022E18
	movs r1, 0
	strh r1, [r0]
	ldr r0, =gUnknown_02022E1A
	strh r1, [r0]
	b _080A47C6
	.pool
_080A47B8:
	movs r0, 0x2
	bl sub_80A6C68
	ldr r0, =gUnknown_02022E1C
	strh r4, [r0]
	ldr r0, =gUnknown_02022E1E
	strh r4, [r0]
_080A47C6:
	add sp, 0x10
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_80A477C

	thumb_func_start task_pA_ma0A_obj_to_bg_pal
@ void task_pA_ma0A_obj_to_bg_pal(int task_id)
task_pA_ma0A_obj_to_bg_pal: @ 80A47D8
	push {r4-r6,lr}
	sub sp, 0x10
	lsls r0, 24
	lsrs r0, 24
	ldr r2, =gTasks
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r5, r1, r2
	ldrb r4, [r5, 0x8]
	ldrb r6, [r5, 0x14]
	mov r0, sp
	bl sub_80A6B30
	ldr r0, =gUnknown_02020630
	lsls r1, r4, 4
	adds r1, r4
	lsls r1, 2
	adds r1, r0
	ldrh r2, [r1, 0x24]
	ldrh r0, [r1, 0x20]
	adds r2, r0
	ldrh r0, [r5, 0xA]
	subs r0, r2
	lsls r0, 16
	lsrs r3, r0, 16
	ldrh r2, [r1, 0x26]
	ldrh r1, [r1, 0x22]
	adds r2, r1
	ldrh r0, [r5, 0xC]
	subs r0, r2
	lsls r0, 16
	lsrs r2, r0, 16
	movs r1, 0x12
	ldrsh r0, [r5, r1]
	cmp r0, 0
	bne _080A4870
	ldr r1, =gUnknown_02022E18
	lsls r0, r3, 16
	asrs r0, 16
	ldrh r3, [r5, 0xE]
	adds r0, r3
	strh r0, [r1]
	ldr r1, =gUnknown_02022E1A
	lsls r0, r2, 16
	asrs r0, 16
	ldrh r5, [r5, 0x10]
	adds r0, r5
	strh r0, [r1]
	lsls r0, r6, 5
	ldr r2, =gUnknown_02037D14
	adds r0, r2
	mov r1, sp
	ldrb r1, [r1, 0x8]
	lsls r1, 5
	ldr r3, =0xfffffe00
	adds r2, r3
	adds r1, r2
	ldr r2, =0x04000008
	bl CpuSet
	b _080A4896
	.pool
_080A4870:
	ldr r1, =gUnknown_02022E1C
	lsls r0, r3, 16
	asrs r0, 16
	ldrh r3, [r5, 0xE]
	adds r0, r3
	strh r0, [r1]
	ldr r1, =gUnknown_02022E1E
	lsls r0, r2, 16
	asrs r0, 16
	ldrh r5, [r5, 0x10]
	adds r0, r5
	strh r0, [r1]
	lsls r0, r6, 5
	ldr r1, =gUnknown_02037D14
	adds r0, r1
	subs r1, 0xE0
	ldr r2, =0x04000008
	bl CpuSet
_080A4896:
	add sp, 0x10
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end task_pA_ma0A_obj_to_bg_pal

	thumb_func_start ma0B_0807324C
ma0B_0807324C: @ 80A48B0
	push {r4,r5,lr}
	ldr r0, =gUnknown_020383F0
	ldr r2, [r0]
	adds r1, r2, 0x1
	str r1, [r0]
	ldrb r4, [r2, 0x1]
	cmp r4, 0
	bne _080A48C8
	movs r4, 0x2
	b _080A48D2
	.pool
_080A48C8:
	cmp r4, 0x1
	bne _080A48CE
	movs r4, 0x3
_080A48CE:
	cmp r4, 0
	beq _080A48D6
_080A48D2:
	cmp r4, 0x2
	bne _080A48E0
_080A48D6:
	ldr r0, =gUnknown_02038436
	b _080A48E2
	.pool
_080A48E0:
	ldr r0, =gUnknown_02038437
_080A48E2:
	ldrb r5, [r0]
	ldr r3, =gUnknown_02038430
	ldrb r0, [r3]
	cmp r0, 0xFF
	beq _080A4908
	ldr r2, =gUnknown_02020630
	ldr r0, =gUnknown_020241E4
	adds r0, r5, r0
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	adds r0, 0x3E
	ldrb r2, [r0]
	movs r1, 0x5
	negs r1, r1
	ands r1, r2
	strb r1, [r0]
_080A4908:
	cmp r4, 0x1
	bls _080A4948
	ldrb r0, [r3, 0x1]
	cmp r0, 0xFF
	beq _080A4948
	ldr r3, =gUnknown_02020630
	ldr r2, =gUnknown_020241E4
	movs r1, 0x2
	adds r0, r5, 0
	eors r0, r1
	adds r0, r2
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	adds r0, 0x3E
	ldrb r2, [r0]
	movs r1, 0x5
	negs r1, r1
	ands r1, r2
	strb r1, [r0]
	b _080A494A
	.pool
_080A4948:
	movs r4, 0
_080A494A:
	ldr r0, =sub_80A4980
	movs r1, 0x5
	bl CreateTask
	lsls r0, 24
	lsrs r0, 24
	ldr r2, =gTasks
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r1, r2
	strh r4, [r1, 0x8]
	strh r5, [r1, 0xC]
	ldr r1, =gUnknown_020383F0
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end ma0B_0807324C

	thumb_func_start sub_80A4980
sub_80A4980: @ 80A4980
	push {r4-r6,lr}
	lsls r0, 24
	lsrs r5, r0, 24
	ldr r1, =gTasks
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	adds r1, r0, r1
	ldrh r0, [r1, 0xA]
	adds r0, 0x1
	strh r0, [r1, 0xA]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x1
	beq _080A4A0A
	ldrb r0, [r1, 0xC]
	bl battle_get_per_side_status
	lsls r0, 24
	movs r1, 0xFF
	lsls r1, 24
	adds r0, r1
	lsrs r0, 24
	cmp r0, 0x1
	bls _080A49BC
	bl sub_80A4DF0
	lsls r0, 24
	cmp r0, 0
	beq _080A49C4
_080A49BC:
	movs r4, 0
	b _080A49C6
	.pool
_080A49C4:
	movs r4, 0x1
_080A49C6:
	ldr r6, =gUnknown_02038430
	ldrb r0, [r6]
	cmp r0, 0xFF
	beq _080A49DE
	adds r0, r4, 0
	bl sub_80A477C
	ldrb r0, [r6]
	bl DestroyTask
	movs r0, 0xFF
	strb r0, [r6]
_080A49DE:
	ldr r0, =gTasks
	lsls r1, r5, 2
	adds r1, r5
	lsls r1, 3
	adds r1, r0
	movs r2, 0x8
	ldrsh r0, [r1, r2]
	cmp r0, 0x1
	ble _080A4A04
	movs r0, 0x1
	eors r4, r0
	adds r0, r4, 0
	bl sub_80A477C
	ldrb r0, [r6, 0x1]
	bl DestroyTask
	movs r0, 0xFF
	strb r0, [r6, 0x1]
_080A4A04:
	adds r0, r5, 0
	bl DestroyTask
_080A4A0A:
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_80A4980

	thumb_func_start sub_80A4A18
sub_80A4A18: @ 80A4A18
	push {r4,r5,lr}
	ldr r0, =gUnknown_020383F0
	ldr r2, [r0]
	adds r1, r2, 0x1
	str r1, [r0]
	ldrb r5, [r2, 0x1]
	cmp r5, 0
	bne _080A4A30
	movs r5, 0x2
	b _080A4A3A
	.pool
_080A4A30:
	cmp r5, 0x1
	bne _080A4A36
	movs r5, 0x3
_080A4A36:
	cmp r5, 0
	beq _080A4A3E
_080A4A3A:
	cmp r5, 0x2
	bne _080A4A48
_080A4A3E:
	ldr r0, =gUnknown_02038436
	b _080A4A4A
	.pool
_080A4A48:
	ldr r0, =gUnknown_02038437
_080A4A4A:
	ldrb r4, [r0]
	adds r0, r4, 0
	bl b_side_obj__get_some_boolean
	lsls r0, 24
	cmp r0, 0
	beq _080A4A8A
	adds r0, r4, 0
	bl battle_get_per_side_status
	lsls r0, 24
	movs r1, 0xFF
	lsls r1, 24
	adds r0, r1
	lsrs r0, 24
	cmp r0, 0x1
	bls _080A4A76
	bl sub_80A4DF0
	lsls r0, 24
	cmp r0, 0
	beq _080A4A80
_080A4A76:
	movs r1, 0
	b _080A4A82
	.pool
_080A4A80:
	movs r1, 0x1
_080A4A82:
	adds r0, r4, 0
	movs r2, 0
	bl sub_80A438C
_080A4A8A:
	movs r0, 0x2
	eors r4, r0
	cmp r5, 0x1
	bls _080A4ACA
	adds r0, r4, 0
	bl b_side_obj__get_some_boolean
	lsls r0, 24
	cmp r0, 0
	beq _080A4ACA
	adds r0, r4, 0
	bl battle_get_per_side_status
	lsls r0, 24
	movs r1, 0xFF
	lsls r1, 24
	adds r0, r1
	lsrs r0, 24
	cmp r0, 0x1
	bls _080A4ABC
	bl sub_80A4DF0
	lsls r0, 24
	cmp r0, 0
	beq _080A4AC0
_080A4ABC:
	movs r1, 0
	b _080A4AC2
_080A4AC0:
	movs r1, 0x1
_080A4AC2:
	adds r0, r4, 0
	movs r2, 0
	bl sub_80A438C
_080A4ACA:
	ldr r1, =gUnknown_020383F0
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_80A4A18

	thumb_func_start ma23_8073484
ma23_8073484: @ 80A4ADC
	push {r4-r6,lr}
	ldr r0, =gUnknown_020383F0
	ldr r2, [r0]
	adds r1, r2, 0x1
	str r1, [r0]
	ldrb r5, [r2, 0x1]
	cmp r5, 0
	bne _080A4AF4
	movs r5, 0x2
	b _080A4AFE
	.pool
_080A4AF4:
	cmp r5, 0x1
	bne _080A4AFA
	movs r5, 0x3
_080A4AFA:
	cmp r5, 0
	beq _080A4B02
_080A4AFE:
	cmp r5, 0x2
	bne _080A4B0C
_080A4B02:
	ldr r0, =gUnknown_02038436
	b _080A4B0E
	.pool
_080A4B0C:
	ldr r0, =gUnknown_02038437
_080A4B0E:
	ldrb r6, [r0]
	adds r0, r6, 0
	bl b_side_obj__get_some_boolean
	lsls r0, 24
	cmp r0, 0
	beq _080A4B38
	ldr r2, =gUnknown_02020630
	ldr r0, =gUnknown_020241E4
	adds r0, r6, r0
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	adds r0, 0x3E
	ldrb r2, [r0]
	movs r1, 0x5
	negs r1, r1
	ands r1, r2
	strb r1, [r0]
_080A4B38:
	cmp r5, 0x1
	bls _080A4B78
	movs r0, 0x2
	adds r4, r6, 0
	eors r4, r0
	adds r0, r4, 0
	bl b_side_obj__get_some_boolean
	lsls r0, 24
	cmp r0, 0
	beq _080A4B78
	ldr r2, =gUnknown_02020630
	ldr r0, =gUnknown_020241E4
	adds r0, r4, r0
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	adds r0, 0x3E
	ldrb r2, [r0]
	movs r1, 0x5
	negs r1, r1
	ands r1, r2
	strb r1, [r0]
	b _080A4B7A
	.pool
_080A4B78:
	movs r5, 0
_080A4B7A:
	ldr r0, =sub_80A4BB0
	movs r1, 0x5
	bl CreateTask
	lsls r0, 24
	lsrs r0, 24
	ldr r2, =gTasks
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r1, r2
	strh r5, [r1, 0x8]
	strh r6, [r1, 0xC]
	ldr r1, =gUnknown_020383F0
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end ma23_8073484

	thumb_func_start sub_80A4BB0
sub_80A4BB0: @ 80A4BB0
	push {r4-r6,lr}
	lsls r0, 24
	lsrs r6, r0, 24
	ldr r1, =gTasks
	lsls r0, r6, 2
	adds r0, r6
	lsls r0, 3
	adds r1, r0, r1
	ldrh r0, [r1, 0xA]
	adds r0, 0x1
	strh r0, [r1, 0xA]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x1
	beq _080A4C3E
	ldrb r4, [r1, 0xC]
	adds r0, r4, 0
	bl battle_get_per_side_status
	lsls r0, 24
	movs r1, 0xFF
	lsls r1, 24
	adds r0, r1
	lsrs r0, 24
	cmp r0, 0x1
	bls _080A4BEE
	bl sub_80A4DF0
	lsls r0, 24
	cmp r0, 0
	beq _080A4BF8
_080A4BEE:
	movs r5, 0
	b _080A4BFA
	.pool
_080A4BF8:
	movs r5, 0x1
_080A4BFA:
	adds r0, r4, 0
	bl b_side_obj__get_some_boolean
	lsls r0, 24
	cmp r0, 0
	beq _080A4C0C
	adds r0, r5, 0
	bl sub_80A477C
_080A4C0C:
	ldr r0, =gTasks
	lsls r1, r6, 2
	adds r1, r6
	lsls r1, 3
	adds r1, r0
	movs r2, 0x8
	ldrsh r0, [r1, r2]
	cmp r0, 0x1
	ble _080A4C38
	movs r0, 0x2
	eors r4, r0
	adds r0, r4, 0
	bl b_side_obj__get_some_boolean
	lsls r0, 24
	cmp r0, 0
	beq _080A4C38
	movs r0, 0x1
	eors r5, r0
	adds r0, r5, 0
	bl sub_80A477C
_080A4C38:
	adds r0, r6, 0
	bl DestroyTask
_080A4C3E:
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_80A4BB0

	thumb_func_start ma0C_set_BLDCNT_to_x3F40_and_BLDALPHA_to_argument
ma0C_set_BLDCNT_to_x3F40_and_BLDALPHA_to_argument: @ 80A4C48
	push {r4,r5,lr}
	ldr r2, =gUnknown_020383F0
	ldr r0, [r2]
	adds r1, r0, 0x1
	str r1, [r2]
	ldrb r5, [r0, 0x1]
	adds r0, r1, 0x1
	str r0, [r2]
	ldrb r4, [r1, 0x1]
	lsls r4, 8
	adds r0, 0x1
	str r0, [r2]
	movs r1, 0xFD
	lsls r1, 6
	movs r0, 0x50
	bl SetGpuReg
	orrs r5, r4
	movs r0, 0x52
	adds r1, r5, 0
	bl SetGpuReg
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end ma0C_set_BLDCNT_to_x3F40_and_BLDALPHA_to_argument

	thumb_func_start ma1E_set_BLDCNT
ma1E_set_BLDCNT: @ 80A4C80
	push {lr}
	ldr r3, =gUnknown_020383F0
	ldr r0, [r3]
	adds r2, r0, 0x1
	str r2, [r3]
	ldrb r1, [r0, 0x1]
	adds r0, r2, 0x1
	str r0, [r3]
	ldrb r2, [r2, 0x1]
	lsls r2, 8
	adds r0, 0x1
	str r0, [r3]
	orrs r1, r2
	movs r0, 0x50
	bl SetGpuReg
	pop {r0}
	bx r0
	.pool
	thumb_func_end ma1E_set_BLDCNT

	thumb_func_start ma0D_reset_BLDCNT_and_BLDALPHA
ma0D_reset_BLDCNT_and_BLDALPHA: @ 80A4CA8
	push {lr}
	ldr r1, =gUnknown_020383F0
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	movs r0, 0x50
	movs r1, 0
	bl SetGpuReg
	movs r0, 0x52
	movs r1, 0
	bl SetGpuReg
	pop {r0}
	bx r0
	.pool
	thumb_func_end ma0D_reset_BLDCNT_and_BLDALPHA

	thumb_func_start ma0E_call
ma0E_call: @ 80A4CCC
	push {r4,lr}
	ldr r4, =gUnknown_020383F0
	ldr r1, [r4]
	adds r3, r1, 0x1
	str r3, [r4]
	ldr r2, =gUnknown_020383F4
	adds r0, r1, 0x5
	str r0, [r2]
	ldrb r1, [r1, 0x1]
	ldrb r0, [r3, 0x1]
	lsls r0, 8
	adds r1, r0
	ldrb r0, [r3, 0x2]
	lsls r0, 16
	adds r1, r0
	ldrb r0, [r3, 0x3]
	lsls r0, 24
	adds r1, r0
	str r1, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end ma0E_call

	thumb_func_start sub_80A4D00
sub_80A4D00: @ 80A4D00
	ldr r0, =gUnknown_020383F0
	ldr r1, =gUnknown_020383F4
	ldr r1, [r1]
	str r1, [r0]
	bx lr
	.pool
	thumb_func_end sub_80A4D00

	thumb_func_start ma10_080736AC
ma10_080736AC: @ 80A4D14
	push {r4,r5,lr}
	ldr r5, =gUnknown_020383F0
	ldr r1, [r5]
	adds r0, r1, 0x1
	str r0, [r5]
	ldrb r2, [r1, 0x1]
	adds r3, r0, 0x1
	str r3, [r5]
	ldrb r4, [r0, 0x1]
	ldrb r0, [r3, 0x1]
	lsls r0, 8
	orrs r4, r0
	adds r1, 0x4
	str r1, [r5]
	ldr r0, =gUnknown_0203841E
	lsls r2, 1
	adds r2, r0
	strh r4, [r2]
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end ma10_080736AC

	thumb_func_start ma11_if_else
ma11_if_else: @ 80A4D48
	push {lr}
	ldr r3, =gUnknown_020383F0
	ldr r2, [r3]
	adds r0, r2, 0x1
	str r0, [r3]
	ldr r0, =gUnknown_02038432
	ldrb r1, [r0]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _080A4D62
	adds r0, r2, 0x5
	str r0, [r3]
_080A4D62:
	ldr r2, [r3]
	ldrb r1, [r2]
	ldrb r0, [r2, 0x1]
	lsls r0, 8
	adds r1, r0
	ldrb r0, [r2, 0x2]
	lsls r0, 16
	adds r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 24
	adds r1, r0
	str r1, [r3]
	pop {r0}
	bx r0
	.pool
	thumb_func_end ma11_if_else

	thumb_func_start ma12_cond_if
ma12_cond_if: @ 80A4D88
	push {r4,r5,lr}
	ldr r5, =gUnknown_020383F0
	ldr r4, [r5]
	adds r2, r4, 0x1
	str r2, [r5]
	ldrb r1, [r4, 0x1]
	adds r3, r2, 0x1
	str r3, [r5]
	ldr r0, =gUnknown_02038432
	ldrb r0, [r0]
	cmp r1, r0
	bne _080A4DC0
	ldrb r1, [r2, 0x1]
	ldrb r0, [r3, 0x1]
	lsls r0, 8
	adds r1, r0
	ldrb r0, [r3, 0x2]
	lsls r0, 16
	adds r1, r0
	ldrb r0, [r3, 0x3]
	lsls r0, 24
	adds r1, r0
	str r1, [r5]
	b _080A4DC4
	.pool
_080A4DC0:
	adds r0, r4, 0x6
	str r0, [r5]
_080A4DC4:
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end ma12_cond_if

	thumb_func_start ma13_goto
ma13_goto: @ 80A4DCC
	ldr r3, =gUnknown_020383F0
	ldr r0, [r3]
	adds r2, r0, 0x1
	str r2, [r3]
	ldrb r1, [r0, 0x1]
	ldrb r0, [r2, 0x1]
	lsls r0, 8
	adds r1, r0
	ldrb r0, [r2, 0x2]
	lsls r0, 16
	adds r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 24
	adds r1, r0
	str r1, [r3]
	bx lr
	.pool
	thumb_func_end ma13_goto

	thumb_func_start sub_80A4DF0
sub_80A4DF0: @ 80A4DF0
	push {lr}
	ldr r0, =gUnknown_030022C0
	ldr r1, =0x00000439
	adds r0, r1
	ldrb r1, [r0]
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _080A4E10
	movs r0, 0
	b _080A4E12
	.pool
_080A4E10:
	movs r0, 0x1
_080A4E12:
	pop {r1}
	bx r1
	thumb_func_end sub_80A4DF0

	thumb_func_start ma14_load_background
ma14_load_background: @ 80A4E18
	push {r4,lr}
	ldr r1, =gUnknown_020383F0
	ldr r2, [r1]
	adds r0, r2, 0x1
	str r0, [r1]
	ldrb r4, [r2, 0x1]
	adds r0, 0x1
	str r0, [r1]
	ldr r0, =task_p5_load_battle_screen_elements
	movs r1, 0x5
	bl CreateTask
	lsls r0, 24
	lsrs r0, 24
	ldr r2, =gTasks
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r1, r2
	strh r4, [r1, 0x8]
	ldr r1, =gUnknown_02038433
	movs r0, 0x1
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end ma14_load_background

	thumb_func_start sub_80A4E5C
sub_80A4E5C: @ 80A4E5C
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	ldr r2, =gUnknown_020383F0
	ldr r1, [r2]
	adds r0, r1, 0x1
	str r0, [r2]
	ldrb r3, [r1, 0x1]
	mov r8, r3
	ldrb r7, [r0, 0x1]
	ldrb r6, [r0, 0x2]
	adds r1, 0x4
	str r1, [r2]
	ldr r0, =task_p5_load_battle_screen_elements
	movs r1, 0x5
	bl CreateTask
	lsls r0, 24
	lsrs r4, r0, 24
	adds r5, r4, 0
	bl sub_80A4DF0
	lsls r0, 24
	cmp r0, 0
	beq _080A4EA8
	ldr r1, =gTasks
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r0, r1
	strh r6, [r0, 0x8]
	b _080A4EDA
	.pool
_080A4EA8:
	ldr r0, =gUnknown_02038437
	ldrb r0, [r0]
	bl battle_side_get_owner
	lsls r0, 24
	cmp r0, 0
	bne _080A4ECC
	ldr r1, =gTasks
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r0, r1
	strh r7, [r0, 0x8]
	b _080A4EDA
	.pool
_080A4ECC:
	ldr r1, =gTasks
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	adds r0, r1
	mov r1, r8
	strh r1, [r0, 0x8]
_080A4EDA:
	ldr r1, =gUnknown_02038433
	movs r0, 0x1
	strb r0, [r1]
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_80A4E5C

	thumb_func_start task_p5_load_battle_screen_elements
task_p5_load_battle_screen_elements: @ 80A4EF4
	push {r4-r7,lr}
	sub sp, 0x4
	lsls r0, 24
	lsrs r5, r0, 24
	ldr r1, =gTasks
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	adds r4, r0, r1
	ldrh r6, [r4, 0x1C]
	movs r0, 0x1C
	ldrsh r3, [r4, r0]
	adds r7, r1, 0
	cmp r3, 0
	bne _080A4F2C
	str r3, [sp]
	movs r0, 0xE8
	movs r1, 0
	movs r2, 0
	movs r3, 0x10
	bl sub_80A27B0
	ldrh r0, [r4, 0x1C]
	adds r0, 0x1
	strh r0, [r4, 0x1C]
	b _080A4FBC
	.pool
_080A4F2C:
	ldr r2, =gUnknown_02037FD4
	ldrb r1, [r2, 0x7]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	bne _080A4FBC
	cmp r3, 0x1
	bne _080A4F50
	adds r0, r6, 0x1
	strh r0, [r4, 0x1C]
	ldr r1, =gUnknown_02038433
	movs r0, 0x2
	strb r0, [r1]
	b _080A4F94
	.pool
_080A4F50:
	cmp r3, 0x2
	bne _080A4F94
	ldrh r0, [r4, 0x8]
	lsls r2, r0, 16
	asrs r1, r2, 16
	movs r0, 0x1
	negs r0, r0
	cmp r1, r0
	bne _080A4F68
	bl dp01t_11_3_message_for_player_only
	b _080A4F6E
_080A4F68:
	lsrs r0, r2, 16
	bl sub_80A4FC8
_080A4F6E:
	movs r0, 0x1
	str r0, [sp]
	movs r0, 0xE8
	movs r1, 0
	movs r2, 0x10
	movs r3, 0
	bl sub_80A27B0
	ldr r1, =gTasks
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	adds r0, r1
	ldrh r1, [r0, 0x1C]
	adds r1, 0x1
	strh r1, [r0, 0x1C]
	b _080A4FBC
	.pool
_080A4F94:
	ldrb r1, [r2, 0x7]
	movs r0, 0x80
	ands r0, r1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0
	bne _080A4FBC
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	adds r0, r7
	movs r1, 0x1C
	ldrsh r0, [r0, r1]
	cmp r0, 0x3
	bne _080A4FBC
	adds r0, r5, 0
	bl DestroyTask
	ldr r0, =gUnknown_02038433
	strb r4, [r0]
_080A4FBC:
	add sp, 0x4
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end task_p5_load_battle_screen_elements

	thumb_func_start sub_80A4FC8
sub_80A4FC8: @ 80A4FC8
	push {r4-r7,lr}
	lsls r0, 16
	lsrs r7, r0, 16
	bl sub_80A4DF0
	lsls r0, 24
	cmp r0, 0
	beq _080A5050
	ldr r6, =gUnknown_08525D54
	lsls r4, r7, 1
	adds r4, r7
	lsls r4, 2
	adds r0, r6, 0
	adds r0, 0x8
	adds r0, r4, r0
	ldr r0, [r0]
	ldr r5, =0x0201c000
	adds r1, r5, 0
	bl LZDecompressWram
	bl sub_80A6D94
	lsls r0, 24
	lsrs r0, 24
	movs r2, 0x80
	lsls r2, 1
	adds r1, r5, 0
	movs r3, 0
	bl sub_80A4720
	ldr r1, =0x0600d000
	ldr r0, =0x040000d4
	str r5, [r0]
	str r1, [r0, 0x4]
	ldr r1, =0x84000200
	str r1, [r0, 0x8]
	ldr r0, [r0, 0x8]
	adds r0, r4, r6
	ldr r0, [r0]
	ldr r1, =0x06002000
	bl LZDecompressVram
	adds r6, 0x4
	adds r4, r6
	ldr r4, [r4]
	bl sub_80A6D94
	adds r1, r0, 0
	lsls r1, 24
	lsrs r1, 20
	adds r0, r4, 0
	movs r2, 0x20
	bl decompress_palette
	b _080A507E
	.pool
_080A5050:
	ldr r5, =gUnknown_08525D54
	lsls r4, r7, 1
	adds r4, r7
	lsls r4, 2
	adds r0, r5, 0
	adds r0, 0x8
	adds r0, r4, r0
	ldr r0, [r0]
	ldr r1, =0x0600d000
	bl LZDecompressVram
	adds r0, r4, r5
	ldr r0, [r0]
	ldr r1, =0x06008000
	bl LZDecompressVram
	adds r5, 0x4
	adds r4, r5
	ldr r0, [r4]
	movs r1, 0x20
	movs r2, 0x20
	bl decompress_palette
_080A507E:
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_80A4FC8

	thumb_func_start dp01t_11_3_message_for_player_only
dp01t_11_3_message_for_player_only: @ 80A5090
	push {lr}
	bl sub_80A4DF0
	lsls r0, 24
	cmp r0, 0
	beq _080A50A2
	bl sub_80D7724
	b _080A50A6
_080A50A2:
	bl load_battle_oval_graphics
_080A50A6:
	pop {r0}
	bx r0
	thumb_func_end dp01t_11_3_message_for_player_only

	thumb_func_start ma15_load_battle_screen_elements
ma15_load_battle_screen_elements: @ 80A50AC
	push {lr}
	ldr r1, =gUnknown_020383F0
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	ldr r0, =task_p5_load_battle_screen_elements
	movs r1, 0x5
	bl CreateTask
	lsls r0, 24
	lsrs r0, 24
	ldr r2, =gTasks
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r1, r2
	ldr r0, =0x0000ffff
	strh r0, [r1, 0x8]
	ldr r1, =gUnknown_02038433
	movs r0, 0x1
	strb r0, [r1]
	pop {r0}
	bx r0
	.pool
	thumb_func_end ma15_load_battle_screen_elements

	thumb_func_start ma16_wait_for_battle_screen_elements_s2
ma16_wait_for_battle_screen_elements_s2: @ 80A50F0
	push {lr}
	ldr r0, =gUnknown_02038433
	ldrb r0, [r0]
	cmp r0, 0x2
	bne _080A5114
	ldr r1, =gUnknown_020383F0
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	ldr r1, =gUnknown_020383FC
	movs r0, 0
	b _080A5118
	.pool
_080A5114:
	ldr r1, =gUnknown_020383FC
	movs r0, 0x1
_080A5118:
	strb r0, [r1]
	pop {r0}
	bx r0
	.pool
	thumb_func_end ma16_wait_for_battle_screen_elements_s2

	thumb_func_start sub_80A5124
sub_80A5124: @ 80A5124
	push {lr}
	ldr r0, =gUnknown_02038433
	ldrb r2, [r0]
	cmp r2, 0
	bne _080A5148
	ldr r0, =gUnknown_020383F0
	ldr r1, [r0]
	adds r1, 0x1
	str r1, [r0]
	ldr r0, =gUnknown_020383FC
	strb r2, [r0]
	b _080A514E
	.pool
_080A5148:
	ldr r1, =gUnknown_020383FC
	movs r0, 0x1
	strb r0, [r1]
_080A514E:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_80A5124

	thumb_func_start ma18_load_background_probably
ma18_load_background_probably: @ 80A5158
	push {r4,lr}
	ldr r4, =gUnknown_020383F0
	ldr r1, [r4]
	adds r0, r1, 0x1
	str r0, [r4]
	ldrb r0, [r1, 0x1]
	bl sub_80A4FC8
	ldr r0, [r4]
	adds r0, 0x1
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end ma18_load_background_probably

	thumb_func_start sub_80A5178
sub_80A5178: @ 80A5178
	push {r4,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	bl sub_80A4DF0
	lsls r0, 24
	cmp r0, 0
	bne _080A51C0
	ldr r0, =gUnknown_020244D0
	ldr r1, [r0]
	ldr r0, =gUnknown_02038436
	ldrb r2, [r0]
	ldr r1, [r1, 0x4]
	lsls r0, r2, 1
	adds r0, r2
	lsls r0, 2
	adds r0, r1
	ldrb r1, [r0]
	movs r0, 0x10
	ands r0, r1
	cmp r0, 0
	beq _080A51C0
	adds r0, r2, 0
	bl battle_side_get_owner
	lsls r0, 24
	movs r4, 0xC0
	cmp r0, 0
	beq _080A5252
	movs r4, 0x3F
	b _080A5252
	.pool
_080A51C0:
	bl sub_80A4DF0
	lsls r0, 24
	cmp r0, 0
	beq _080A51E8
	ldr r0, =gUnknown_02038436
	ldr r1, =gUnknown_02038437
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _080A524C
	cmp r0, 0x2
	bne _080A524C
	cmp r4, 0x3F
	beq _080A525E
	b _080A524C
	.pool
_080A51E8:
	ldr r0, =gUnknown_02038436
	ldrb r0, [r0]
	bl battle_side_get_owner
	lsls r0, 24
	cmp r0, 0
	bne _080A5226
	ldr r0, =gUnknown_02038437
	ldrb r0, [r0]
	bl battle_side_get_owner
	lsls r0, 24
	cmp r0, 0
	bne _080A5252
	lsls r0, r4, 24
	asrs r1, r0, 24
	cmp r1, 0x3F
	bne _080A5218
	movs r4, 0xC0
	b _080A5252
	.pool
_080A5218:
	movs r0, 0x40
	negs r0, r0
	cmp r1, r0
	beq _080A5252
	negs r0, r1
	lsls r0, 24
	b _080A5250
_080A5226:
	ldr r0, =gUnknown_02038437
	ldrb r0, [r0]
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _080A524C
	lsls r0, r4, 24
	asrs r0, 24
	movs r1, 0x40
	negs r1, r1
	cmp r0, r1
	bne _080A5252
	movs r4, 0x3F
	b _080A5252
	.pool
_080A524C:
	lsls r0, r4, 24
	negs r0, r0
_080A5250:
	lsrs r4, r0, 24
_080A5252:
	lsls r0, r4, 24
	asrs r0, 24
	cmp r0, 0x3F
	ble _080A525E
	movs r4, 0x3F
	b _080A526C
_080A525E:
	lsls r0, r4, 24
	asrs r0, 24
	movs r1, 0x40
	negs r1, r1
	cmp r0, r1
	bge _080A526C
	movs r4, 0xC0
_080A526C:
	lsls r0, r4, 24
	asrs r0, 24
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_80A5178

	thumb_func_start sub_80A5278
sub_80A5278: @ 80A5278
	push {r4,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	bl sub_80A4DF0
	lsls r0, 24
	cmp r0, 0
	bne _080A52C0
	ldr r0, =gUnknown_020244D0
	ldr r1, [r0]
	ldr r0, =gUnknown_02038436
	ldrb r2, [r0]
	ldr r1, [r1, 0x4]
	lsls r0, r2, 1
	adds r0, r2
	lsls r0, 2
	adds r0, r1
	ldrb r1, [r0]
	movs r0, 0x10
	ands r0, r1
	cmp r0, 0
	beq _080A52C0
	adds r0, r2, 0
	bl battle_side_get_owner
	lsls r0, 24
	movs r4, 0xC0
	cmp r0, 0
	beq _080A52DE
	movs r4, 0x3F
	b _080A52DE
	.pool
_080A52C0:
	ldr r0, =gUnknown_02038436
	ldrb r0, [r0]
	bl battle_side_get_owner
	lsls r0, 24
	cmp r0, 0
	bne _080A52D8
	bl sub_80A4DF0
	lsls r0, 24
	cmp r0, 0
	beq _080A52DE
_080A52D8:
	lsls r0, r4, 24
	negs r0, r0
	lsrs r4, r0, 24
_080A52DE:
	lsls r0, r4, 24
	asrs r0, 24
	pop {r4}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_80A5278

	thumb_func_start sub_80A52EC
sub_80A52EC: @ 80A52EC
	push {lr}
	lsls r0, 16
	lsrs r1, r0, 16
	asrs r2, r0, 16
	cmp r2, 0x3F
	ble _080A52FC
	movs r1, 0x3F
	b _080A5306
_080A52FC:
	movs r0, 0x40
	negs r0, r0
	cmp r2, r0
	bge _080A5306
	ldr r1, =0x0000ffc0
_080A5306:
	lsls r0, r1, 16
	asrs r0, 16
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_80A52EC

	thumb_func_start sub_80A5314
sub_80A5314: @ 80A5314
	push {lr}
	lsls r2, 16
	lsrs r2, 16
	adds r3, r2, 0
	lsls r0, 16
	asrs r0, 16
	lsls r1, 16
	asrs r1, 16
	cmp r0, r1
	bge _080A5332
	lsls r0, r2, 16
	asrs r0, 16
	cmp r0, 0
	bge _080A5342
	b _080A5340
_080A5332:
	cmp r0, r1
	ble _080A5348
	lsls r0, r3, 16
	asrs r0, 16
	cmp r0, 0
	bge _080A5340
	negs r0, r0
_080A5340:
	negs r0, r0
_080A5342:
	lsls r0, 16
	lsrs r0, 16
	b _080A534A
_080A5348:
	movs r0, 0
_080A534A:
	lsls r0, 16
	asrs r0, 16
	pop {r1}
	bx r1
	thumb_func_end sub_80A5314

	thumb_func_start ma19_08073BC8
ma19_08073BC8: @ 80A5354
	push {r4,r5,lr}
	ldr r5, =gUnknown_020383F0
	ldr r0, [r5]
	adds r1, r0, 0x1
	str r1, [r5]
	ldrb r4, [r0, 0x1]
	ldrb r0, [r1, 0x1]
	lsls r0, 8
	orrs r4, r0
	movs r0, 0x2
	ldrsb r0, [r1, r0]
	bl sub_80A5178
	adds r1, r0, 0
	lsls r1, 24
	asrs r1, 24
	adds r0, r4, 0
	bl audio_play_and_stuff
	ldr r0, [r5]
	adds r0, 0x3
	str r0, [r5]
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end ma19_08073BC8

	thumb_func_start ma1A_8073C00
ma1A_8073C00: @ 80A538C
	push {r4,lr}
	ldr r4, =gUnknown_020383F0
	ldr r1, [r4]
	adds r0, r1, 0x1
	str r0, [r4]
	movs r0, 0x1
	ldrsb r0, [r1, r0]
	bl sub_80A5178
	lsls r0, 24
	asrs r0, 24
	bl sub_80A3870
	ldr r0, [r4]
	adds r0, 0x1
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end ma1A_8073C00

	thumb_func_start ma1B_8073C2C
ma1B_8073C2C: @ 80A53B8
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r0, =gUnknown_020383F0
	mov r10, r0
	ldr r0, [r0]
	adds r1, r0, 0x1
	mov r2, r10
	str r1, [r2]
	ldrb r0, [r0, 0x1]
	mov r9, r0
	ldrb r0, [r1, 0x1]
	lsls r0, 8
	mov r2, r9
	orrs r2, r0
	mov r9, r2
	ldrb r4, [r1, 0x3]
	ldrb r6, [r1, 0x4]
	ldrb r7, [r1, 0x5]
	movs r0, 0x2
	ldrsb r0, [r1, r0]
	bl sub_80A5178
	adds r5, r0, 0
	lsls r5, 24
	lsrs r5, 24
	lsls r4, 24
	asrs r4, 24
	adds r0, r4, 0
	bl sub_80A5178
	mov r8, r0
	lsls r5, 24
	asrs r5, 24
	mov r0, r8
	lsls r0, 24
	asrs r0, 24
	mov r8, r0
	lsls r6, 24
	asrs r6, 24
	adds r0, r5, 0
	mov r1, r8
	adds r2, r6, 0
	bl sub_80A5314
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	ldr r0, =c3_08073CEC
	movs r1, 0x1
	bl CreateTask
	lsls r0, 24
	lsrs r0, 24
	ldr r2, =gTasks
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r1, r2
	strh r5, [r1, 0x8]
	mov r2, r8
	strh r2, [r1, 0xA]
	lsls r4, 24
	asrs r4, 24
	strh r4, [r1, 0xC]
	strh r7, [r1, 0xE]
	strh r5, [r1, 0x10]
	mov r0, r9
	adds r1, r5, 0
	bl audio_play_and_stuff
	ldr r1, =gUnknown_020383FF
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	mov r1, r10
	ldr r0, [r1]
	adds r0, 0x6
	str r0, [r1]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end ma1B_8073C2C

	thumb_func_start c3_08073CEC
c3_08073CEC: @ 80A5478
	push {r4-r7,lr}
	lsls r0, 24
	lsrs r5, r0, 24
	movs r7, 0
	ldr r1, =gTasks
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	adds r2, r0, r1
	ldrh r0, [r2, 0x18]
	adds r1, r0, 0x1
	strh r1, [r2, 0x18]
	lsls r0, 16
	asrs r0, 16
	movs r3, 0xE
	ldrsh r1, [r2, r3]
	cmp r0, r1
	blt _080A54FC
	strh r7, [r2, 0x18]
	ldrh r6, [r2, 0x8]
	ldrh r3, [r2, 0xA]
	movs r4, 0x10
	ldrsh r0, [r2, r4]
	movs r4, 0xC
	ldrsh r1, [r2, r4]
	adds r0, r1
	lsls r0, 16
	lsrs r4, r0, 16
	strh r4, [r2, 0x10]
	cmp r1, 0
	bne _080A54C0
	lsls r2, r3, 16
	b _080A54E4
	.pool
_080A54C0:
	lsls r1, r6, 16
	lsls r0, r3, 16
	asrs r3, r0, 16
	adds r2, r0, 0
	cmp r1, r2
	bge _080A54D6
	lsls r0, r4, 16
	asrs r0, 16
	cmp r0, r3
	blt _080A54E0
	b _080A54E4
_080A54D6:
	lsls r0, r4, 16
	asrs r0, 16
	cmp r0, r3
	bgt _080A54E0
	movs r7, 0x1
_080A54E0:
	cmp r7, 0
	beq _080A54F4
_080A54E4:
	lsrs r4, r2, 16
	adds r0, r5, 0
	bl DestroyTask
	ldr r1, =gUnknown_020383FF
	ldrb r0, [r1]
	subs r0, 0x1
	strb r0, [r1]
_080A54F4:
	lsls r0, r4, 24
	asrs r0, 24
	bl sub_80A3870
_080A54FC:
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end c3_08073CEC

	thumb_func_start sub_80A5508
sub_80A5508: @ 80A5508
	push {r4-r6,lr}
	mov r6, r10
	mov r5, r9
	mov r4, r8
	push {r4-r6}
	ldr r0, =gUnknown_020383F0
	mov r9, r0
	ldr r0, [r0]
	adds r1, r0, 0x1
	mov r2, r9
	str r1, [r2]
	ldrb r0, [r0, 0x1]
	mov r8, r0
	ldrb r0, [r1, 0x1]
	lsls r0, 8
	mov r2, r8
	orrs r2, r0
	mov r8, r2
	ldrb r4, [r1, 0x2]
	ldrb r5, [r1, 0x3]
	ldrb r6, [r1, 0x4]
	ldrb r1, [r1, 0x5]
	mov r10, r1
	ldr r0, =c3_08073CEC
	movs r1, 0x1
	bl CreateTask
	lsls r0, 24
	lsrs r0, 24
	ldr r2, =gTasks
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r1, r2
	lsls r4, 24
	asrs r4, 24
	strh r4, [r1, 0x8]
	lsls r5, 24
	asrs r5, 24
	strh r5, [r1, 0xA]
	lsls r6, 24
	asrs r6, 24
	strh r6, [r1, 0xC]
	mov r0, r10
	strh r0, [r1, 0xE]
	strh r4, [r1, 0x10]
	mov r0, r8
	adds r1, r4, 0
	bl audio_play_and_stuff
	ldr r1, =gUnknown_020383FF
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	mov r1, r9
	ldr r0, [r1]
	adds r0, 0x6
	str r0, [r1]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_80A5508

	thumb_func_start sub_80A559C
sub_80A559C: @ 80A559C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r0, =gUnknown_020383F0
	mov r10, r0
	ldr r0, [r0]
	adds r1, r0, 0x1
	mov r2, r10
	str r1, [r2]
	ldrb r0, [r0, 0x1]
	mov r9, r0
	ldrb r0, [r1, 0x1]
	lsls r0, 8
	mov r2, r9
	orrs r2, r0
	mov r9, r2
	ldrb r4, [r1, 0x3]
	ldrb r0, [r1, 0x4]
	mov r8, r0
	ldrb r7, [r1, 0x5]
	movs r0, 0x2
	ldrsb r0, [r1, r0]
	bl sub_80A5278
	adds r6, r0, 0
	lsls r6, 24
	lsrs r6, 24
	lsls r4, 24
	asrs r4, 24
	adds r0, r4, 0
	bl sub_80A5278
	adds r5, r0, 0
	lsls r5, 24
	lsrs r5, 24
	mov r1, r8
	lsls r1, 24
	asrs r1, 24
	mov r8, r1
	mov r0, r8
	bl sub_80A5278
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	ldr r0, =c3_08073CEC
	movs r1, 0x1
	bl CreateTask
	lsls r0, 24
	lsrs r0, 24
	ldr r2, =gTasks
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r1, r2
	lsls r6, 24
	asrs r6, 24
	strh r6, [r1, 0x8]
	lsls r5, 24
	asrs r5, 24
	strh r5, [r1, 0xA]
	lsls r4, 24
	asrs r4, 24
	strh r4, [r1, 0xC]
	strh r7, [r1, 0xE]
	strh r6, [r1, 0x10]
	mov r0, r9
	adds r1, r6, 0
	bl audio_play_and_stuff
	ldr r1, =gUnknown_020383FF
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	mov r2, r10
	ldr r0, [r2]
	adds r0, 0x6
	str r0, [r2]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_80A559C

	thumb_func_start ma1C_8073ED0
ma1C_8073ED0: @ 80A565C
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	ldr r6, =gUnknown_020383F0
	ldr r0, [r6]
	adds r1, r0, 0x1
	str r1, [r6]
	ldrb r5, [r0, 0x1]
	ldrb r0, [r1, 0x1]
	lsls r0, 8
	orrs r5, r0
	ldrb r0, [r1, 0x3]
	mov r8, r0
	ldrb r2, [r1, 0x4]
	mov r9, r2
	movs r0, 0x2
	ldrsb r0, [r1, r0]
	bl sub_80A5178
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	ldr r0, =sub_80A56E4
	movs r1, 0x1
	bl CreateTask
	lsls r0, 24
	lsrs r0, 24
	ldr r2, =gTasks
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r1, r2
	strh r5, [r1, 0x8]
	lsls r4, 24
	asrs r4, 24
	strh r4, [r1, 0xA]
	mov r2, r8
	strh r2, [r1, 0xC]
	mov r2, r9
	strh r2, [r1, 0xE]
	mov r2, r8
	strh r2, [r1, 0x18]
	ldr r1, [r1]
	bl _call_via_r1
	ldr r1, =gUnknown_020383FF
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	ldr r0, [r6]
	adds r0, 0x5
	str r0, [r6]
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end ma1C_8073ED0

	thumb_func_start sub_80A56E4
sub_80A56E4: @ 80A56E4
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r5, r0, 24
	ldr r1, =gTasks
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	adds r2, r0, r1
	ldrh r0, [r2, 0x18]
	adds r1, r0, 0x1
	strh r1, [r2, 0x18]
	lsls r0, 16
	asrs r0, 16
	movs r3, 0xC
	ldrsh r1, [r2, r3]
	cmp r0, r1
	blt _080A5732
	movs r0, 0
	strh r0, [r2, 0x18]
	ldrh r0, [r2, 0x8]
	ldrb r1, [r2, 0xA]
	ldrh r4, [r2, 0xE]
	subs r4, 0x1
	strh r4, [r2, 0xE]
	lsls r4, 24
	lsrs r4, 24
	lsls r1, 24
	asrs r1, 24
	bl audio_play_and_stuff
	cmp r4, 0
	bne _080A5732
	adds r0, r5, 0
	bl DestroyTask
	ldr r1, =gUnknown_020383FF
	ldrb r0, [r1]
	subs r0, 0x1
	strb r0, [r1]
_080A5732:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_80A56E4

	thumb_func_start ma1D_08073FB4
ma1D_08073FB4: @ 80A5740
	push {r4-r6,lr}
	mov r6, r8
	push {r6}
	ldr r6, =gUnknown_020383F0
	ldr r0, [r6]
	adds r1, r0, 0x1
	str r1, [r6]
	ldrb r5, [r0, 0x1]
	ldrb r0, [r1, 0x1]
	lsls r0, 8
	orrs r5, r0
	ldrb r0, [r1, 0x3]
	mov r8, r0
	movs r0, 0x2
	ldrsb r0, [r1, r0]
	bl sub_80A5178
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	ldr r0, =sub_80A57B4
	movs r1, 0x1
	bl CreateTask
	lsls r0, 24
	lsrs r0, 24
	ldr r2, =gTasks
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r1, r2
	strh r5, [r1, 0x8]
	lsls r4, 24
	asrs r4, 24
	strh r4, [r1, 0xA]
	mov r0, r8
	strh r0, [r1, 0xC]
	ldr r1, =gUnknown_020383FF
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	ldr r0, [r6]
	adds r0, 0x4
	str r0, [r6]
	pop {r3}
	mov r8, r3
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end ma1D_08073FB4

	thumb_func_start sub_80A57B4
sub_80A57B4: @ 80A57B4
	push {r4,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	ldr r1, =gTasks
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r2, r0, r1
	ldrh r0, [r2, 0xC]
	subs r1, r0, 0x1
	strh r1, [r2, 0xC]
	lsls r0, 16
	cmp r0, 0
	bgt _080A57E8
	ldrh r0, [r2, 0x8]
	movs r1, 0xA
	ldrsb r1, [r2, r1]
	bl audio_play_and_stuff
	adds r0, r4, 0
	bl DestroyTask
	ldr r1, =gUnknown_020383FF
	ldrb r0, [r1]
	subs r0, 0x1
	strb r0, [r1]
_080A57E8:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_80A57B4

	thumb_func_start sub_80A57F8
sub_80A57F8: @ 80A57F8
	push {r4-r6,lr}
	ldr r4, =gUnknown_020383F0
	ldr r1, [r4]
	adds r3, r1, 0x1
	str r3, [r4]
	ldrb r2, [r1, 0x1]
	ldrb r0, [r3, 0x1]
	lsls r0, 8
	adds r2, r0
	ldrb r0, [r3, 0x2]
	lsls r0, 16
	adds r2, r0
	ldrb r0, [r3, 0x3]
	lsls r0, 24
	adds r6, r2, r0
	adds r0, r1, 0x5
	str r0, [r4]
	ldrb r0, [r1, 0x5]
	adds r1, 0x6
	str r1, [r4]
	cmp r0, 0
	beq _080A5842
	adds r5, r4, 0
	ldr r4, =gUnknown_0203841E
	adds r3, r0, 0
_080A582A:
	ldr r2, [r5]
	ldrb r1, [r2]
	ldrb r0, [r2, 0x1]
	lsls r0, 8
	orrs r1, r0
	strh r1, [r4]
	adds r2, 0x2
	str r2, [r5]
	adds r4, 0x2
	subs r3, 0x1
	cmp r3, 0
	bne _080A582A
_080A5842:
	adds r0, r6, 0
	movs r1, 0x1
	bl CreateTask
	lsls r0, 24
	lsrs r0, 24
	bl _call_via_r6
	ldr r1, =gUnknown_020383FF
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_80A57F8

	thumb_func_start ma20_wait_for_something
ma20_wait_for_something: @ 80A586C
	push {r4,r5,lr}
	ldr r0, =gUnknown_020383FF
	ldrb r5, [r0]
	cmp r5, 0
	bne _080A58B4
	bl mplay_has_finished_maybe
	lsls r0, 24
	lsrs r1, r0, 24
	cmp r1, 0
	beq _080A58CC
	ldr r4, =gUnknown_0203842E
	ldrh r0, [r4]
	adds r0, 0x1
	strh r0, [r4]
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x5A
	bls _080A58BA
	ldr r0, =gMPlay_SE1
	bl m4aMPlayStop
	ldr r0, =gMPlay_SE2
	bl m4aMPlayStop
	strh r5, [r4]
	b _080A58DE
	.pool
_080A58B4:
	ldr r1, =gUnknown_0203842E
	movs r0, 0
	strh r0, [r1]
_080A58BA:
	ldr r1, =gUnknown_020383FC
	movs r0, 0x1
	strb r0, [r1]
	b _080A58DE
	.pool
_080A58CC:
	ldr r0, =gUnknown_0203842E
	movs r2, 0
	strh r1, [r0]
	ldr r1, =gUnknown_020383F0
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	ldr r0, =gUnknown_020383FC
	strb r2, [r0]
_080A58DE:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end ma20_wait_for_something

	thumb_func_start ma21_08074164
ma21_08074164: @ 80A58F0
	push {r4-r6,lr}
	ldr r5, =gUnknown_020383F0
	ldr r4, [r5]
	adds r3, r4, 0x1
	str r3, [r5]
	ldrb r2, [r4, 0x1]
	ldrb r1, [r3, 0x1]
	ldrb r0, [r3, 0x2]
	lsls r0, 8
	orrs r1, r0
	ldr r0, =gUnknown_0203841E
	lsls r2, 1
	adds r2, r0
	lsls r1, 16
	asrs r1, 16
	movs r6, 0
	ldrsh r0, [r2, r6]
	cmp r1, r0
	bne _080A5938
	ldrb r1, [r3, 0x3]
	ldrb r0, [r3, 0x4]
	lsls r0, 8
	adds r1, r0
	ldrb r0, [r3, 0x5]
	lsls r0, 16
	adds r1, r0
	ldrb r0, [r3, 0x6]
	lsls r0, 24
	adds r1, r0
	str r1, [r5]
	b _080A593E
	.pool
_080A5938:
	adds r0, r4, 0
	adds r0, 0x8
	str r0, [r5]
_080A593E:
	pop {r4-r6}
	pop {r0}
	bx r0
	thumb_func_end ma21_08074164

	thumb_func_start sub_80A5944
sub_80A5944: @ 80A5944
	push {r4,lr}
	ldr r4, =gUnknown_020383F0
	ldr r0, [r4]
	adds r0, 0x1
	str r0, [r4]
	bl sub_80A4DF0
	lsls r0, 24
	cmp r0, 0
	beq _080A5978
	ldr r2, [r4]
	ldrb r1, [r2]
	ldrb r0, [r2, 0x1]
	lsls r0, 8
	adds r1, r0
	ldrb r0, [r2, 0x2]
	lsls r0, 16
	adds r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 24
	adds r1, r0
	str r1, [r4]
	b _080A597E
	.pool
_080A5978:
	ldr r0, [r4]
	adds r0, 0x4
	str r0, [r4]
_080A597E:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_80A5944

	thumb_func_start sub_80A5984
sub_80A5984: @ 80A5984
	push {r4,lr}
	ldr r0, =gUnknown_020383F0
	ldr r1, [r0]
	ldrb r2, [r1, 0x1]
	adds r1, 0x2
	str r1, [r0]
	cmp r2, 0
	beq _080A59A0
	ldr r0, =gUnknown_02038437
	b _080A59A2
	.pool
_080A59A0:
	ldr r0, =gUnknown_02038436
_080A59A2:
	ldrb r0, [r0]
	bl battle_get_per_side_status
	lsls r0, 24
	lsrs r4, r0, 24
	bl sub_80A4DF0
	lsls r0, 24
	cmp r0, 0
	bne _080A59D2
	cmp r4, 0
	beq _080A59BE
	cmp r4, 0x3
	bne _080A59D2
_080A59BE:
	movs r0, 0x1
	movs r1, 0x4
	movs r2, 0x1
	bl lcd_bg_operations
	movs r0, 0x2
	movs r1, 0x4
	movs r2, 0x2
	bl lcd_bg_operations
_080A59D2:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_80A5984

	thumb_func_start sub_80A59DC
sub_80A59DC: @ 80A59DC
	push {lr}
	ldr r0, =gUnknown_020383F0
	ldr r1, [r0]
	adds r1, 0x1
	str r1, [r0]
	bl sub_80A4DF0
	lsls r0, 24
	cmp r0, 0
	bne _080A5A04
	movs r0, 0x1
	movs r1, 0x4
	movs r2, 0x1
	bl lcd_bg_operations
	movs r0, 0x2
	movs r1, 0x4
	movs r2, 0x2
	bl lcd_bg_operations
_080A5A04:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_80A59DC

	thumb_func_start sub_80A5A0C
sub_80A5A0C: @ 80A5A0C
	push {r4-r7,lr}
	ldr r1, =gUnknown_020383F0
	ldr r0, [r1]
	ldrb r6, [r0, 0x1]
	adds r0, 0x2
	str r0, [r1]
	ldr r7, =gUnknown_02038436
	ldrb r0, [r7]
	bl battle_side_get_owner
	adds r4, r0, 0
	ldr r5, =gUnknown_02038437
	ldrb r0, [r5]
	bl battle_side_get_owner
	lsls r4, 24
	lsls r0, 24
	cmp r4, r0
	beq _080A5A78
	cmp r6, 0
	beq _080A5A48
	ldrb r0, [r5]
	b _080A5A4A
	.pool
_080A5A48:
	ldrb r0, [r7]
_080A5A4A:
	bl battle_get_per_side_status
	lsls r0, 24
	lsrs r4, r0, 24
	bl sub_80A4DF0
	lsls r0, 24
	cmp r0, 0
	bne _080A5A78
	cmp r4, 0
	beq _080A5A64
	cmp r4, 0x3
	bne _080A5A78
_080A5A64:
	movs r0, 0x1
	movs r1, 0x4
	movs r2, 0x1
	bl lcd_bg_operations
	movs r0, 0x2
	movs r1, 0x4
	movs r2, 0x2
	bl lcd_bg_operations
_080A5A78:
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_80A5A0C

	thumb_func_start ma2B_make_side_invisible
ma2B_make_side_invisible: @ 80A5A80
	push {r4,lr}
	ldr r4, =gUnknown_020383F0
	ldr r0, [r4]
	ldrb r0, [r0, 0x1]
	bl obj_id_for_side_relative_to_move
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, 0xFF
	beq _080A5AA8
	ldr r1, =gUnknown_02020630
	lsls r0, r2, 4
	adds r0, r2
	lsls r0, 2
	adds r0, r1
	adds r0, 0x3E
	ldrb r1, [r0]
	movs r2, 0x4
	orrs r1, r2
	strb r1, [r0]
_080A5AA8:
	ldr r0, [r4]
	adds r0, 0x2
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end ma2B_make_side_invisible

	thumb_func_start ma2C_make_side_visible
ma2C_make_side_visible: @ 80A5ABC
	push {r4,lr}
	ldr r4, =gUnknown_020383F0
	ldr r0, [r4]
	ldrb r0, [r0, 0x1]
	bl obj_id_for_side_relative_to_move
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, 0xFF
	beq _080A5AE6
	ldr r1, =gUnknown_02020630
	lsls r0, r2, 4
	adds r0, r2
	lsls r0, 2
	adds r0, r1
	adds r0, 0x3E
	ldrb r2, [r0]
	movs r1, 0x5
	negs r1, r1
	ands r1, r2
	strb r1, [r0]
_080A5AE6:
	ldr r0, [r4]
	adds r0, 0x2
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end ma2C_make_side_visible

	thumb_func_start sub_80A5AFC
sub_80A5AFC: @ 80A5AFC
	push {r4-r7,lr}
	ldr r1, =gUnknown_020383F0
	ldr r0, [r1]
	ldrb r7, [r0, 0x1]
	adds r0, 0x2
	str r0, [r1]
	bl sub_80A4DF0
	lsls r0, 24
	cmp r0, 0
	bne _080A5BA6
	bl battle_type_is_double
	lsls r0, 24
	cmp r0, 0
	beq _080A5BA6
	ldr r6, =gUnknown_02038436
	ldrb r0, [r6]
	bl battle_side_get_owner
	adds r4, r0, 0
	ldr r5, =gUnknown_02038437
	ldrb r0, [r5]
	bl battle_side_get_owner
	lsls r4, 24
	lsls r0, 24
	cmp r4, r0
	bne _080A5BA6
	cmp r7, 0
	bne _080A5B54
	ldrb r0, [r6]
	bl battle_get_per_side_status_permutated
	lsls r0, 24
	lsrs r4, r0, 24
	movs r0, 0
	b _080A5B60
	.pool
_080A5B54:
	ldrb r0, [r5]
	bl battle_get_per_side_status_permutated
	lsls r0, 24
	lsrs r4, r0, 24
	movs r0, 0x1
_080A5B60:
	bl obj_id_for_side_relative_to_move
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, 0xFF
	beq _080A5BA6
	ldr r1, =gUnknown_02020630
	lsls r0, r2, 4
	adds r0, r2
	lsls r0, 2
	adds r2, r0, r1
	adds r3, r2, 0
	adds r3, 0x3E
	ldrb r1, [r3]
	movs r0, 0x5
	negs r0, r0
	ands r0, r1
	strb r0, [r3]
	cmp r4, 0x2
	bne _080A5B90
	ldrb r0, [r2, 0x5]
	movs r1, 0xC
	orrs r0, r1
	strb r0, [r2, 0x5]
_080A5B90:
	cmp r4, 0x1
	bne _080A5BA0
	movs r0, 0
	bl sub_80A477C
	b _080A5BA6
	.pool
_080A5BA0:
	movs r0, 0x1
	bl sub_80A477C
_080A5BA6:
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_80A5AFC

	thumb_func_start sub_80A5BAC
sub_80A5BAC: @ 80A5BAC
	push {r4-r7,lr}
	ldr r1, =gUnknown_020383F0
	ldr r0, [r1]
	ldrb r7, [r0, 0x1]
	adds r0, 0x2
	str r0, [r1]
	bl sub_80A4DF0
	lsls r0, 24
	cmp r0, 0
	bne _080A5C38
	bl battle_type_is_double
	lsls r0, 24
	cmp r0, 0
	beq _080A5C38
	ldr r6, =gUnknown_02038436
	ldrb r0, [r6]
	bl battle_side_get_owner
	adds r4, r0, 0
	ldr r5, =gUnknown_02038437
	ldrb r0, [r5]
	bl battle_side_get_owner
	lsls r4, 24
	lsls r0, 24
	cmp r4, r0
	bne _080A5C38
	cmp r7, 0
	bne _080A5C04
	ldrb r0, [r6]
	bl battle_get_per_side_status_permutated
	lsls r0, 24
	lsrs r4, r0, 24
	movs r0, 0
	b _080A5C10
	.pool
_080A5C04:
	ldrb r0, [r5]
	bl battle_get_per_side_status_permutated
	lsls r0, 24
	lsrs r4, r0, 24
	movs r0, 0x1
_080A5C10:
	bl obj_id_for_side_relative_to_move
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, 0xFF
	beq _080A5C38
	cmp r4, 0x2
	bne _080A5C38
	ldr r1, =gUnknown_02020630
	lsls r0, r2, 4
	adds r0, r2
	lsls r0, 2
	adds r0, r1
	ldrb r2, [r0, 0x5]
	movs r1, 0xD
	negs r1, r1
	ands r1, r2
	movs r2, 0x8
	orrs r1, r2
	strb r1, [r0, 0x5]
_080A5C38:
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_80A5BAC

	thumb_func_start ma2F_stop_music
ma2F_stop_music: @ 80A5C44
	push {lr}
	ldr r0, =gMPlay_SE1
	bl m4aMPlayStop
	ldr r0, =gMPlay_SE2
	bl m4aMPlayStop
	ldr r1, =gUnknown_020383F0
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r0}
	bx r0
	.pool
	thumb_func_end ma2F_stop_music

	thumb_func_start sub_80A5C6C
sub_80A5C6C: @ 80A5C6C
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r5, r0, 24
	lsls r1, 24
	lsrs r4, r1, 24
	bl sub_80A4DF0
	lsls r0, 24
	cmp r0, 0
	beq _080A5C8A
	cmp r4, 0x3
	bne _080A5C8A
	cmp r5, 0x3
	bne _080A5C8A
	movs r4, 0x1
_080A5C8A:
	cmp r4, 0x4
	bhi _080A5D00
	lsls r0, r4, 2
	ldr r1, =_080A5C9C
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_080A5C9C:
	.4byte _080A5CB0
	.4byte _080A5CD8
	.4byte _080A5CB0
	.4byte _080A5D00
	.4byte _080A5D00
_080A5CB0:
	ldr r4, =gUnknown_08525F58
	adds r0, r5, 0
	bl battle_get_per_side_status
	lsls r0, 24
	lsrs r0, 22
	ldr r1, =gUnknown_02022FEC
	ldr r1, [r1]
	movs r2, 0x1
	ands r1, r2
	lsls r1, 4
	adds r0, r1
	adds r0, r4
	ldrb r0, [r0]
	b _080A5DB0
	.pool
_080A5CD8:
	ldr r4, =gUnknown_08525F58
	adds r0, r5, 0
	bl battle_get_per_side_status
	lsls r0, 24
	lsrs r0, 22
	ldr r1, =gUnknown_02022FEC
	ldr r1, [r1]
	movs r2, 0x1
	ands r1, r2
	lsls r1, 4
	adds r0, r1
	adds r0, r4
	ldrb r0, [r0, 0x1]
	b _080A5DB0
	.pool
_080A5D00:
	bl sub_80A4DF0
	lsls r0, 24
	cmp r0, 0
	beq _080A5D28
	ldr r0, =gUnknown_02039F34
	ldr r0, [r0]
	ldr r2, [r0, 0x18]
	ldrb r1, [r2, 0x4]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _080A5D24
	ldrh r1, [r2, 0x2]
	b _080A5D9A
	.pool
_080A5D24:
	ldrh r1, [r2]
	b _080A5D9A
_080A5D28:
	adds r0, r5, 0
	bl battle_side_get_owner
	lsls r0, 24
	cmp r0, 0
	beq _080A5D60
	ldr r0, =gUnknown_020244D0
	ldr r0, [r0]
	ldr r1, [r0]
	lsls r0, r5, 2
	adds r1, r0, r1
	ldrh r0, [r1, 0x2]
	cmp r0, 0
	bne _080A5D98
	ldr r1, =gUnknown_0202406E
	lsls r0, r5, 1
	adds r0, r1
	ldrh r1, [r0]
	movs r0, 0x64
	muls r0, r1
	ldr r1, =gUnknown_02024744
	b _080A5D7E
	.pool
_080A5D60:
	ldr r0, =gUnknown_020244D0
	ldr r0, [r0]
	ldr r1, [r0]
	lsls r0, r5, 2
	adds r1, r0, r1
	ldrh r0, [r1, 0x2]
	cmp r0, 0
	bne _080A5D98
	ldr r1, =gUnknown_0202406E
	lsls r0, r5, 1
	adds r0, r1
	ldrh r1, [r0]
	movs r0, 0x64
	muls r0, r1
	ldr r1, =gUnknown_020244EC
_080A5D7E:
	adds r0, r1
	movs r1, 0xB
	bl pokemon_getattr
	lsls r0, 16
	lsrs r1, r0, 16
	b _080A5D9A
	.pool
_080A5D98:
	ldrh r1, [r1, 0x2]
_080A5D9A:
	cmp r4, 0x3
	bne _080A5DA4
	adds r0, r5, 0
	movs r2, 0x1
	b _080A5DA8
_080A5DA4:
	adds r0, r5, 0
	movs r2, 0
_080A5DA8:
	bl sub_80A600C
	lsls r0, 24
	lsrs r0, 24
_080A5DB0:
	pop {r4,r5}
	pop {r1}
	bx r1
	thumb_func_end sub_80A5C6C

	thumb_func_start sub_80A5DB8
sub_80A5DB8: @ 80A5DB8
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	lsls r1, 16
	lsrs r5, r1, 16
	adds r0, r4, 0
	bl battle_side_get_owner
	lsls r0, 24
	cmp r0, 0
	beq _080A5DDA
	bl sub_80A4DF0
	lsls r0, 24
	cmp r0, 0
	bne _080A5DDA
	b _080A5EC8
_080A5DDA:
	cmp r5, 0xC9
	bne _080A5E90
	bl sub_80A4DF0
	lsls r0, 24
	cmp r0, 0
	beq _080A5E04
	ldr r0, =gUnknown_02039F34
	ldr r0, [r0]
	ldr r2, [r0, 0x18]
	ldrb r1, [r2, 0x4]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _080A5E00
	ldr r2, [r2, 0x10]
	b _080A5E42
	.pool
_080A5E00:
	ldr r2, [r2, 0x8]
	b _080A5E42
_080A5E04:
	ldr r0, =gUnknown_020244D0
	ldr r0, [r0]
	ldr r0, [r0]
	lsls r1, r4, 2
	adds r0, r1, r0
	ldrh r0, [r0, 0x2]
	cmp r0, 0
	bne _080A5E3C
	ldr r1, =gUnknown_0202406E
	lsls r0, r4, 1
	adds r0, r1
	ldrh r1, [r0]
	movs r0, 0x64
	muls r0, r1
	ldr r1, =gUnknown_020244EC
	adds r0, r1
	movs r1, 0
	bl pokemon_getattr
	adds r2, r0, 0
	b _080A5E42
	.pool
_080A5E3C:
	ldr r0, =gUnknown_020244BC
	adds r0, r1, r0
	ldr r2, [r0]
_080A5E42:
	movs r0, 0xC0
	lsls r0, 18
	ands r0, r2
	lsrs r0, 18
	movs r1, 0xC0
	lsls r1, 10
	ands r1, r2
	lsrs r1, 12
	orrs r0, r1
	movs r1, 0xC0
	lsls r1, 2
	ands r1, r2
	lsrs r1, 6
	orrs r0, r1
	movs r1, 0x3
	ands r1, r2
	orrs r0, r1
	movs r1, 0x1C
	bl __umodsi3
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0
	bne _080A5E7C
	adds r0, r5, 0
	b _080A5E86
	.pool
_080A5E7C:
	movs r1, 0xCE
	lsls r1, 1
	adds r0, r1
	lsls r0, 16
	lsrs r0, 16
_080A5E86:
	ldr r1, =gUnknown_083021D8
	lsls r0, 2
	b _080A5F90
	.pool
_080A5E90:
	ldr r0, =0x00000181
	cmp r5, r0
	bne _080A5EB0
	ldr r0, =gUnknown_08525F8C
	ldr r1, =gUnknown_020244E4
	adds r1, r4, r1
	ldrb r1, [r1]
	adds r1, r0
	ldrb r0, [r1]
	b _080A5F94
	.pool
_080A5EB0:
	movs r0, 0xCE
	lsls r0, 1
	cmp r5, r0
	bls _080A5EC0
	ldr r0, =gUnknown_083021D8
	b _080A5F92
	.pool
_080A5EC0:
	ldr r1, =gUnknown_083021D8
	b _080A5F8E
	.pool
_080A5EC8:
	cmp r5, 0xC9
	bne _080A5F58
	ldr r0, =gUnknown_020244D0
	ldr r0, [r0]
	ldr r0, [r0]
	lsls r1, r4, 2
	adds r0, r1, r0
	ldrh r0, [r0, 0x2]
	cmp r0, 0
	bne _080A5F04
	ldr r1, =gUnknown_0202406E
	lsls r0, r4, 1
	adds r0, r1
	ldrh r1, [r0]
	movs r0, 0x64
	muls r0, r1
	ldr r1, =gUnknown_02024744
	adds r0, r1
	movs r1, 0
	bl pokemon_getattr
	adds r2, r0, 0
	b _080A5F0A
	.pool
_080A5F04:
	ldr r0, =gUnknown_020244BC
	adds r0, r1, r0
	ldr r2, [r0]
_080A5F0A:
	movs r0, 0xC0
	lsls r0, 18
	ands r0, r2
	lsrs r0, 18
	movs r1, 0xC0
	lsls r1, 10
	ands r1, r2
	lsrs r1, 12
	orrs r0, r1
	movs r1, 0xC0
	lsls r1, 2
	ands r1, r2
	lsrs r1, 6
	orrs r0, r1
	movs r1, 0x3
	ands r1, r2
	orrs r0, r1
	movs r1, 0x1C
	bl __umodsi3
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0
	bne _080A5F44
	adds r0, r5, 0
	b _080A5F4E
	.pool
_080A5F44:
	movs r1, 0xCE
	lsls r1, 1
	adds r0, r1
	lsls r0, 16
	lsrs r0, 16
_080A5F4E:
	ldr r1, =gUnknown_08300D38
	lsls r0, 2
	b _080A5F90
	.pool
_080A5F58:
	ldr r0, =0x00000181
	cmp r5, r0
	bne _080A5F7C
	ldr r0, =gUnknown_08525F78
	ldr r1, =gUnknown_020244E4
	adds r1, r4, r1
	ldrb r1, [r1]
	lsls r1, 2
	adds r1, r0
	ldrb r0, [r1, 0x1]
	b _080A5F94
	.pool
_080A5F7C:
	movs r0, 0xCE
	lsls r0, 1
	cmp r5, r0
	bls _080A5F8C
	ldr r0, =gUnknown_08300D38
	b _080A5F92
	.pool
_080A5F8C:
	ldr r1, =gUnknown_08300D38
_080A5F8E:
	lsls r0, r5, 2
_080A5F90:
	adds r0, r1
_080A5F92:
	ldrb r0, [r0, 0x1]
_080A5F94:
	pop {r4,r5}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_80A5DB8

	thumb_func_start sub_80A5FA0
sub_80A5FA0: @ 80A5FA0
	push {r4-r7,lr}
	lsls r0, 24
	lsrs r6, r0, 24
	lsls r1, 16
	lsrs r4, r1, 16
	adds r7, r4, 0
	movs r5, 0
	adds r0, r6, 0
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _080A5FFE
	bl sub_80A4DF0
	lsls r0, 24
	cmp r0, 0
	bne _080A5FFE
	ldr r0, =0x00000181
	cmp r4, r0
	bne _080A5FE8
	ldr r0, =gUnknown_08525F88
	ldr r1, =gUnknown_020244E4
	adds r1, r6, r1
	ldrb r1, [r1]
	adds r1, r0
	ldrb r5, [r1]
	b _080A5FFE
	.pool
_080A5FE8:
	movs r0, 0xCE
	lsls r0, 1
	cmp r4, r0
	bls _080A5FF8
	ldr r0, =gUnknown_08305DCC
	b _080A5FFC
	.pool
_080A5FF8:
	ldr r0, =gUnknown_08305DCC
	adds r0, r7, r0
_080A5FFC:
	ldrb r5, [r0]
_080A5FFE:
	adds r0, r5, 0
	pop {r4-r7}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_80A5FA0

	thumb_func_start sub_80A600C
sub_80A600C: @ 80A600C
	push {r4-r7,lr}
	lsls r0, 24
	lsrs r6, r0, 24
	lsls r1, 16
	lsrs r5, r1, 16
	lsls r2, 24
	lsrs r7, r2, 24
	adds r0, r6, 0
	bl battle_side_get_owner
	lsls r0, 24
	cmp r0, 0
	beq _080A6030
	bl sub_80A4DF0
	lsls r0, 24
	cmp r0, 0
	beq _080A603E
_080A6030:
	adds r0, r6, 0
	adds r1, r5, 0
	bl sub_80A5DB8
	lsls r0, 24
	lsrs r4, r0, 24
	b _080A605C
_080A603E:
	adds r0, r6, 0
	adds r1, r5, 0
	bl sub_80A5DB8
	lsls r0, 24
	lsrs r4, r0, 24
	adds r0, r6, 0
	adds r1, r5, 0
	bl sub_80A5FA0
	lsls r0, 24
	lsrs r0, 24
	subs r0, r4, r0
	lsls r0, 16
	lsrs r4, r0, 16
_080A605C:
	adds r0, r6, 0
	bl battle_get_per_side_status
	ldr r3, =gUnknown_08525F58
	lsls r0, 24
	lsrs r0, 22
	ldr r1, =gUnknown_02022FEC
	ldr r1, [r1]
	movs r2, 0x1
	ands r1, r2
	lsls r1, 4
	adds r0, r1
	adds r0, r3
	ldrb r0, [r0, 0x1]
	adds r0, r4
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r7, 0
	beq _080A609C
	adds r0, r6, 0
	bl battle_side_get_owner
	lsls r0, 24
	cmp r0, 0
	bne _080A6096
	adds r0, r4, 0
	adds r0, 0x8
	lsls r0, 24
	lsrs r4, r0, 24
_080A6096:
	cmp r4, 0x68
	bls _080A609C
	movs r4, 0x68
_080A609C:
	adds r0, r4, 0
	pop {r4-r7}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_80A600C

	thumb_func_start sub_80A60AC
sub_80A60AC: @ 80A60AC
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	lsls r1, 24
	lsrs r5, r1, 24
	movs r0, 0xFD
	lsls r0, 24
	adds r1, r0
	lsrs r1, 24
	cmp r1, 0x1
	bhi _080A6126
	bl sub_80A4DF0
	lsls r0, 24
	cmp r0, 0
	beq _080A60E8
	ldr r0, =gUnknown_02039F34
	ldr r0, [r0]
	ldr r2, [r0, 0x18]
	ldrb r1, [r2, 0x4]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _080A60E4
	ldrh r1, [r2, 0x2]
	b _080A610E
	.pool
_080A60E4:
	ldrh r1, [r2]
	b _080A610E
_080A60E8:
	ldr r0, =gUnknown_020244D0
	ldr r0, [r0]
	ldr r1, [r0]
	lsls r0, r4, 2
	adds r1, r0, r1
	ldrh r0, [r1, 0x2]
	cmp r0, 0
	bne _080A610C
	ldr r1, =gUnknown_02038438
	lsls r0, r4, 1
	adds r0, r1
	ldrh r1, [r0]
	b _080A610E
	.pool
_080A610C:
	ldrh r1, [r1, 0x2]
_080A610E:
	cmp r5, 0x3
	bne _080A611C
	adds r0, r4, 0
	movs r2, 0x1
	bl sub_80A600C
	b _080A612E
_080A611C:
	adds r0, r4, 0
	movs r2, 0
	bl sub_80A600C
	b _080A612E
_080A6126:
	adds r0, r4, 0
	adds r1, r5, 0
	bl sub_80A5C6C
_080A612E:
	lsls r0, 24
	lsrs r0, 24
	pop {r4,r5}
	pop {r1}
	bx r1
	thumb_func_end sub_80A60AC

	thumb_func_start sub_80A6138
sub_80A6138: @ 80A6138
	push {lr}
	lsls r0, 24
	lsrs r0, 24
	movs r1, 0x4
	bl sub_80A5C6C
	lsls r0, 24
	lsrs r0, 24
	pop {r1}
	bx r1
	thumb_func_end sub_80A6138

	thumb_func_start sub_80A614C
sub_80A614C: @ 80A614C
	push {r4,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	adds r0, r4, 0
	bl battle_side_get_owner
	lsls r0, 24
	cmp r0, 0
	beq _080A6170
	adds r0, r4, 0
	movs r1, 0x1
	bl sub_80A5C6C
	lsls r0, 24
	lsrs r0, 8
	movs r1, 0x80
	lsls r1, 13
	b _080A6180
_080A6170:
	adds r0, r4, 0
	movs r1, 0x1
	bl sub_80A5C6C
	lsls r0, 24
	lsrs r0, 8
	movs r1, 0x88
	lsls r1, 13
_080A6180:
	adds r0, r1
	lsrs r0, 16
	lsls r0, 24
	lsrs r0, 24
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_80A614C

	thumb_func_start sub_80A6190
sub_80A6190: @ 80A6190
	push {r4-r6,lr}
	lsls r0, 24
	lsrs r5, r0, 24
	adds r0, r5, 0
	movs r1, 0x1
	bl sub_80A5C6C
	lsls r0, 24
	lsrs r6, r0, 24
	bl sub_80A4DF0
	lsls r0, 24
	cmp r0, 0
	bne _080A6238
	adds r0, r5, 0
	bl battle_side_get_owner
	lsls r0, 24
	cmp r0, 0
	beq _080A61E4
	ldr r0, =gUnknown_020244D0
	ldr r0, [r0]
	ldr r1, [r0]
	lsls r0, r5, 2
	adds r1, r0, r1
	ldrh r0, [r1, 0x2]
	cmp r0, 0
	bne _080A621C
	ldr r1, =gUnknown_0202406E
	lsls r0, r5, 1
	adds r0, r1
	ldrh r1, [r0]
	movs r0, 0x64
	muls r0, r1
	ldr r1, =gUnknown_02024744
	b _080A6202
	.pool
_080A61E4:
	ldr r0, =gUnknown_020244D0
	ldr r0, [r0]
	ldr r1, [r0]
	lsls r0, r5, 2
	adds r1, r0, r1
	ldrh r0, [r1, 0x2]
	cmp r0, 0
	bne _080A621C
	ldr r1, =gUnknown_0202406E
	lsls r0, r5, 1
	adds r0, r1
	ldrh r1, [r0]
	movs r0, 0x64
	muls r0, r1
	ldr r1, =gUnknown_020244EC
_080A6202:
	adds r0, r1
	movs r1, 0xB
	bl pokemon_getattr
	lsls r0, 16
	lsrs r4, r0, 16
	b _080A621E
	.pool
_080A621C:
	ldrh r4, [r1, 0x2]
_080A621E:
	adds r0, r5, 0
	bl battle_side_get_owner
	lsls r0, 24
	cmp r0, 0
	beq _080A6238
	adds r0, r5, 0
	adds r1, r4, 0
	bl sub_80A5FA0
	subs r0, r6, r0
	lsls r0, 24
	lsrs r6, r0, 24
_080A6238:
	adds r0, r6, 0
	pop {r4-r6}
	pop {r1}
	bx r1
	thumb_func_end sub_80A6190

	thumb_func_start obj_id_for_side_relative_to_move
obj_id_for_side_relative_to_move: @ 80A6240
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r0, 24
	adds r1, r0, 0
	cmp r0, 0
	bne _080A6268
	ldr r4, =gUnknown_02038436
	ldrb r0, [r4]
	bl sub_80A6A90
	lsls r0, 24
	cmp r0, 0
	beq _080A62B6
	ldr r1, =gUnknown_020241E4
	ldrb r0, [r4]
	b _080A62C6
	.pool
_080A6268:
	cmp r0, 0x1
	bne _080A6288
	ldr r4, =gUnknown_02038437
	ldrb r0, [r4]
	bl sub_80A6A90
	lsls r0, 24
	cmp r0, 0
	beq _080A62B6
	ldr r1, =gUnknown_020241E4
	ldrb r0, [r4]
	b _080A62C6
	.pool
_080A6288:
	cmp r1, 0x2
	bne _080A62A4
	ldr r5, =gUnknown_02038436
	ldrb r0, [r5]
	movs r4, 0x2
	eors r0, r4
	bl b_side_obj__get_some_boolean
	lsls r0, 24
	cmp r0, 0
	beq _080A62B6
	b _080A62C0
	.pool
_080A62A4:
	ldr r5, =gUnknown_02038437
	ldrb r0, [r5]
	movs r4, 0x2
	eors r0, r4
	bl b_side_obj__get_some_boolean
	lsls r0, 24
	cmp r0, 0
	bne _080A62C0
_080A62B6:
	movs r0, 0xFF
	b _080A62CA
	.pool
_080A62C0:
	ldr r1, =gUnknown_020241E4
	ldrb r0, [r5]
	eors r0, r4
_080A62C6:
	adds r0, r1
	ldrb r0, [r0]
_080A62CA:
	pop {r4,r5}
	pop {r1}
	bx r1
	.pool
	thumb_func_end obj_id_for_side_relative_to_move

	thumb_func_start oamt_set_x3A_32
oamt_set_x3A_32: @ 80A62D4
	strh r1, [r0, 0x3A]
	lsrs r1, 16
	strh r1, [r0, 0x3C]
	bx lr
	thumb_func_end oamt_set_x3A_32

	thumb_func_start sub_80A62DC
sub_80A62DC: @ 80A62DC
	ldrh r2, [r0, 0x3A]
	movs r3, 0x3C
	ldrsh r1, [r0, r3]
	lsls r1, 16
	orrs r2, r1
	str r2, [r0, 0x1C]
	bx lr
	thumb_func_end sub_80A62DC

	thumb_func_start sub_80A62EC
sub_80A62EC: @ 80A62EC
	push {r4,lr}
	adds r4, r0, 0
	movs r1, 0x34
	ldrsh r0, [r4, r1]
	cmp r0, 0
	beq _080A6340
	movs r2, 0x2E
	ldrsh r0, [r4, r2]
	movs r2, 0x30
	ldrsh r1, [r4, r2]
	bl sine
	strh r0, [r4, 0x24]
	movs r1, 0x2E
	ldrsh r0, [r4, r1]
	movs r2, 0x30
	ldrsh r1, [r4, r2]
	bl cosine
	strh r0, [r4, 0x26]
	ldrh r0, [r4, 0x32]
	ldrh r2, [r4, 0x2E]
	adds r1, r0, r2
	strh r1, [r4, 0x2E]
	lsls r0, r1, 16
	asrs r0, 16
	cmp r0, 0xFF
	ble _080A632C
	ldr r2, =0xffffff00
	b _080A6334
	.pool
_080A632C:
	cmp r0, 0
	bge _080A6338
	movs r2, 0x80
	lsls r2, 1
_080A6334:
	adds r0, r1, r2
	strh r0, [r4, 0x2E]
_080A6338:
	ldrh r0, [r4, 0x34]
	subs r0, 0x1
	strh r0, [r4, 0x34]
	b _080A6346
_080A6340:
	adds r0, r4, 0
	bl sub_80A62DC
_080A6346:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_80A62EC

	thumb_func_start sub_80A634C
sub_80A634C: @ 80A634C
	push {r4,lr}
	adds r4, r0, 0
	movs r1, 0x34
	ldrsh r0, [r4, r1]
	cmp r0, 0
	beq _080A63BC
	movs r2, 0x2E
	ldrsh r0, [r4, r2]
	ldrh r1, [r4, 0x38]
	lsls r1, 16
	asrs r1, 24
	ldrh r2, [r4, 0x30]
	adds r1, r2
	lsls r1, 16
	asrs r1, 16
	bl sine
	strh r0, [r4, 0x24]
	movs r1, 0x2E
	ldrsh r0, [r4, r1]
	ldrh r1, [r4, 0x38]
	lsls r1, 16
	asrs r1, 24
	ldrh r2, [r4, 0x30]
	adds r1, r2
	lsls r1, 16
	asrs r1, 16
	bl cosine
	strh r0, [r4, 0x26]
	ldrh r0, [r4, 0x32]
	ldrh r2, [r4, 0x2E]
	adds r1, r0, r2
	strh r1, [r4, 0x2E]
	ldrh r0, [r4, 0x36]
	ldrh r2, [r4, 0x38]
	adds r0, r2
	strh r0, [r4, 0x38]
	lsls r0, r1, 16
	asrs r0, 16
	cmp r0, 0xFF
	ble _080A63A8
	ldr r2, =0xffffff00
	b _080A63B0
	.pool
_080A63A8:
	cmp r0, 0
	bge _080A63B4
	movs r2, 0x80
	lsls r2, 1
_080A63B0:
	adds r0, r1, r2
	strh r0, [r4, 0x2E]
_080A63B4:
	ldrh r0, [r4, 0x34]
	subs r0, 0x1
	strh r0, [r4, 0x34]
	b _080A63C2
_080A63BC:
	adds r0, r4, 0
	bl sub_80A62DC
_080A63C2:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_80A634C

	thumb_func_start sub_80A63C8
sub_80A63C8: @ 80A63C8
	push {r4,lr}
	adds r4, r0, 0
	movs r1, 0x34
	ldrsh r0, [r4, r1]
	cmp r0, 0
	beq _080A6444
	movs r2, 0x2E
	ldrsh r0, [r4, r2]
	movs r2, 0x30
	ldrsh r1, [r4, r2]
	bl sine
	strh r0, [r4, 0x24]
	movs r1, 0x36
	ldrsh r0, [r4, r1]
	movs r2, 0x30
	ldrsh r1, [r4, r2]
	bl cosine
	strh r0, [r4, 0x26]
	ldrh r0, [r4, 0x32]
	ldrh r2, [r4, 0x2E]
	adds r1, r0, r2
	strh r1, [r4, 0x2E]
	ldrh r0, [r4, 0x38]
	ldrh r2, [r4, 0x36]
	adds r0, r2
	strh r0, [r4, 0x36]
	lsls r0, r1, 16
	asrs r0, 16
	cmp r0, 0xFF
	ble _080A6410
	ldr r2, =0xffffff00
	b _080A6418
	.pool
_080A6410:
	cmp r0, 0
	bge _080A641C
	movs r2, 0x80
	lsls r2, 1
_080A6418:
	adds r0, r1, r2
	strh r0, [r4, 0x2E]
_080A641C:
	ldrh r1, [r4, 0x36]
	movs r2, 0x36
	ldrsh r0, [r4, r2]
	cmp r0, 0xFF
	ble _080A6430
	ldr r2, =0xffffff00
	b _080A6438
	.pool
_080A6430:
	cmp r0, 0
	bge _080A643C
	movs r2, 0x80
	lsls r2, 1
_080A6438:
	adds r0, r1, r2
	strh r0, [r4, 0x36]
_080A643C:
	ldrh r0, [r4, 0x34]
	subs r0, 0x1
	strh r0, [r4, 0x34]
	b _080A644A
_080A6444:
	adds r0, r4, 0
	bl sub_80A62DC
_080A644A:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_80A63C8

	thumb_func_start sub_80A6450
sub_80A6450: @ 80A6450
	push {r4,lr}
	adds r4, r0, 0
	movs r1, 0x34
	ldrsh r0, [r4, r1]
	cmp r0, 0
	beq _080A64A4
	movs r2, 0x2E
	ldrsh r0, [r4, r2]
	movs r2, 0x30
	ldrsh r1, [r4, r2]
	bl sine
	strh r0, [r4, 0x24]
	movs r1, 0x2E
	ldrsh r0, [r4, r1]
	movs r2, 0x36
	ldrsh r1, [r4, r2]
	bl cosine
	strh r0, [r4, 0x26]
	ldrh r0, [r4, 0x32]
	ldrh r2, [r4, 0x2E]
	adds r1, r0, r2
	strh r1, [r4, 0x2E]
	lsls r0, r1, 16
	asrs r0, 16
	cmp r0, 0xFF
	ble _080A6490
	ldr r2, =0xffffff00
	b _080A6498
	.pool
_080A6490:
	cmp r0, 0
	bge _080A649C
	movs r2, 0x80
	lsls r2, 1
_080A6498:
	adds r0, r1, r2
	strh r0, [r4, 0x2E]
_080A649C:
	ldrh r0, [r4, 0x34]
	subs r0, 0x1
	strh r0, [r4, 0x34]
	b _080A64AA
_080A64A4:
	adds r0, r4, 0
	bl sub_80A62DC
_080A64AA:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_80A6450

	thumb_func_start sub_80A64B0
sub_80A64B0: @ 80A64B0
	push {lr}
	adds r1, r0, 0
	ldrh r2, [r1, 0x2E]
	movs r3, 0x2E
	ldrsh r0, [r1, r3]
	cmp r0, 0
	ble _080A64C4
	subs r0, r2, 0x1
	strh r0, [r1, 0x2E]
	b _080A64CA
_080A64C4:
	adds r0, r1, 0
	bl sub_80A62DC
_080A64CA:
	pop {r0}
	bx r0
	thumb_func_end sub_80A64B0

	thumb_func_start sub_80A64D0
sub_80A64D0: @ 80A64D0
	push {r4,lr}
	adds r4, r0, 0
	bl sub_80A64EC
	ldr r1, =sub_80A653C
	str r1, [r4, 0x1C]
	adds r0, r4, 0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_80A64D0

	thumb_func_start sub_80A64EC
sub_80A64EC: @ 80A64EC
	push {r4,r5,lr}
	adds r4, r0, 0
	movs r0, 0x30
	ldrsh r1, [r4, r0]
	movs r2, 0x32
	ldrsh r0, [r4, r2]
	cmp r1, r0
	ble _080A6502
	ldrh r0, [r4, 0x2E]
	negs r0, r0
	strh r0, [r4, 0x2E]
_080A6502:
	movs r1, 0x32
	ldrsh r0, [r4, r1]
	movs r2, 0x30
	ldrsh r1, [r4, r2]
	subs r0, r1
	ldrh r5, [r4, 0x2E]
	movs r2, 0x2E
	ldrsh r1, [r4, r2]
	bl __divsi3
	cmp r0, 0
	bge _080A651C
	negs r0, r0
_080A651C:
	strh r0, [r4, 0x2E]
	movs r1, 0x36
	ldrsh r0, [r4, r1]
	movs r2, 0x34
	ldrsh r1, [r4, r2]
	subs r0, r1
	movs r2, 0x2E
	ldrsh r1, [r4, r2]
	bl __divsi3
	strh r0, [r4, 0x32]
	strh r5, [r4, 0x30]
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end sub_80A64EC

	thumb_func_start sub_80A653C
sub_80A653C: @ 80A653C
	push {lr}
	adds r1, r0, 0
	ldrh r2, [r1, 0x2E]
	movs r3, 0x2E
	ldrsh r0, [r1, r3]
	cmp r0, 0
	ble _080A6560
	subs r0, r2, 0x1
	strh r0, [r1, 0x2E]
	ldrh r0, [r1, 0x30]
	ldrh r2, [r1, 0x24]
	adds r0, r2
	strh r0, [r1, 0x24]
	ldrh r0, [r1, 0x32]
	ldrh r3, [r1, 0x26]
	adds r0, r3
	strh r0, [r1, 0x26]
	b _080A6566
_080A6560:
	adds r0, r1, 0
	bl sub_80A62DC
_080A6566:
	pop {r0}
	bx r0
	thumb_func_end sub_80A653C

	thumb_func_start sub_80A656C
sub_80A656C: @ 80A656C
	push {lr}
	adds r2, r0, 0
	ldrh r1, [r2, 0x2E]
	movs r3, 0x2E
	ldrsh r0, [r2, r3]
	cmp r0, 0
	ble _080A659C
	subs r0, r1, 0x1
	strh r0, [r2, 0x2E]
	ldrh r0, [r2, 0x30]
	ldrh r1, [r2, 0x34]
	adds r0, r1
	strh r0, [r2, 0x34]
	ldrh r1, [r2, 0x32]
	ldrh r3, [r2, 0x36]
	adds r1, r3
	strh r1, [r2, 0x36]
	lsls r0, 16
	asrs r0, 24
	strh r0, [r2, 0x24]
	lsls r1, 16
	asrs r1, 24
	strh r1, [r2, 0x26]
	b _080A65A2
_080A659C:
	adds r0, r2, 0
	bl sub_80A62DC
_080A65A2:
	pop {r0}
	bx r0
	thumb_func_end sub_80A656C

	thumb_func_start sub_80A65A8
sub_80A65A8: @ 80A65A8
	push {r4,lr}
	adds r4, r0, 0
	ldrh r1, [r4, 0x2E]
	movs r2, 0x2E
	ldrsh r0, [r4, r2]
	cmp r0, 0
	ble _080A65D8
	subs r0, r1, 0x1
	strh r0, [r4, 0x2E]
	ldrh r0, [r4, 0x30]
	ldrh r1, [r4, 0x34]
	adds r0, r1
	strh r0, [r4, 0x34]
	ldrh r1, [r4, 0x32]
	ldrh r2, [r4, 0x36]
	adds r1, r2
	strh r1, [r4, 0x36]
	lsls r0, 16
	asrs r0, 24
	strh r0, [r4, 0x24]
	lsls r1, 16
	asrs r1, 24
	strh r1, [r4, 0x26]
	b _080A65DE
_080A65D8:
	adds r0, r4, 0
	bl sub_80A62DC
_080A65DE:
	adds r0, r4, 0
	bl sub_80D30DC
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_80A65A8

	thumb_func_start sub_80A65EC
sub_80A65EC: @ 80A65EC
	push {r4,r5,lr}
	adds r4, r0, 0
	ldrh r0, [r4, 0x24]
	ldrh r1, [r4, 0x20]
	adds r0, r1
	strh r0, [r4, 0x30]
	ldrh r0, [r4, 0x26]
	ldrh r1, [r4, 0x22]
	adds r0, r1
	strh r0, [r4, 0x34]
	ldr r5, =gUnknown_02038437
	ldrb r0, [r5]
	movs r1, 0x2
	bl sub_80A5C6C
	lsls r0, 24
	lsrs r0, 24
	strh r0, [r4, 0x32]
	ldrb r0, [r5]
	movs r1, 0x3
	bl sub_80A5C6C
	lsls r0, 24
	lsrs r0, 24
	strh r0, [r4, 0x36]
	ldr r0, =sub_80A64D0
	str r0, [r4, 0x1C]
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_80A65EC

	thumb_func_start sub_80A6630
sub_80A6630: @ 80A6630
	push {r4,lr}
	adds r3, r0, 0
	ldrh r1, [r3, 0x2E]
	movs r2, 0x2E
	ldrsh r0, [r3, r2]
	cmp r0, 0
	ble _080A6674
	subs r0, r1, 0x1
	strh r0, [r3, 0x2E]
	ldr r2, =gUnknown_02020630
	movs r4, 0x34
	ldrsh r1, [r3, r4]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrh r1, [r3, 0x30]
	ldrh r4, [r0, 0x24]
	adds r1, r4
	strh r1, [r0, 0x24]
	movs r0, 0x34
	ldrsh r1, [r3, r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrh r1, [r3, 0x32]
	ldrh r2, [r0, 0x26]
	adds r1, r2
	strh r1, [r0, 0x26]
	b _080A667A
	.pool
_080A6674:
	adds r0, r3, 0
	bl sub_80A62DC
_080A667A:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_80A6630

	thumb_func_start sub_80A6680
sub_80A6680: @ 80A6680
	push {r4,lr}
	adds r4, r0, 0
	ldrh r1, [r4, 0x2E]
	movs r2, 0x2E
	ldrsh r0, [r4, r2]
	cmp r0, 0
	ble _080A66D0
	subs r0, r1, 0x1
	strh r0, [r4, 0x2E]
	ldrh r1, [r4, 0x30]
	ldrh r0, [r4, 0x34]
	adds r1, r0
	strh r1, [r4, 0x34]
	ldrh r0, [r4, 0x32]
	ldrh r2, [r4, 0x36]
	adds r0, r2
	strh r0, [r4, 0x36]
	ldr r3, =gUnknown_02020630
	movs r0, 0x38
	ldrsh r2, [r4, r0]
	lsls r0, r2, 4
	adds r0, r2
	lsls r0, 2
	adds r0, r3
	lsls r1, 16
	asrs r1, 24
	strh r1, [r0, 0x24]
	movs r1, 0x38
	ldrsh r0, [r4, r1]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r3
	ldrh r0, [r4, 0x36]
	lsls r0, 16
	asrs r0, 24
	strh r0, [r1, 0x26]
	b _080A66D6
	.pool
_080A66D0:
	adds r0, r4, 0
	bl sub_80A62DC
_080A66D6:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_80A6680

	thumb_func_start sub_80A66DC
sub_80A66DC: @ 80A66DC
	push {r4,lr}
	adds r4, r0, 0
	ldrh r1, [r4, 0x2E]
	movs r2, 0x2E
	ldrsh r0, [r4, r2]
	cmp r0, 0
	ble _080A673E
	subs r0, r1, 0x1
	strh r0, [r4, 0x2E]
	ldrh r1, [r4, 0x32]
	lsls r0, r1, 16
	asrs r0, 24
	strh r0, [r4, 0x24]
	ldrh r0, [r4, 0x30]
	adds r1, r0
	strh r1, [r4, 0x32]
	ldrh r1, [r4, 0x36]
	lsls r0, r1, 16
	asrs r0, 24
	strh r0, [r4, 0x26]
	ldrh r0, [r4, 0x34]
	adds r1, r0
	strh r1, [r4, 0x36]
	movs r1, 0x2E
	ldrsh r0, [r4, r1]
	movs r2, 0x38
	ldrsh r1, [r4, r2]
	bl __modsi3
	cmp r0, 0
	bne _080A6744
	movs r1, 0x38
	ldrsh r0, [r4, r1]
	cmp r0, 0
	beq _080A6744
	adds r3, r4, 0
	adds r3, 0x3E
	ldrb r2, [r3]
	lsls r0, r2, 29
	lsrs r0, 31
	movs r1, 0x1
	eors r1, r0
	lsls r1, 2
	movs r0, 0x5
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	b _080A6744
_080A673E:
	adds r0, r4, 0
	bl sub_80A62DC
_080A6744:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_80A66DC

	thumb_func_start move_anim_8074EE0
move_anim_8074EE0: @ 80A674C
	push {r4,lr}
	adds r4, r0, 0
	bl obj_free_rotscale_entry
	adds r0, r4, 0
	bl move_anim_8072740
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end move_anim_8074EE0

	thumb_func_start sub_80A6760
sub_80A6760: @ 80A6760
	push {r4,r5,lr}
	adds r4, r0, 0
	ldrh r0, [r4, 0x24]
	ldrh r1, [r4, 0x20]
	adds r0, r1
	strh r0, [r4, 0x30]
	ldrh r0, [r4, 0x26]
	ldrh r1, [r4, 0x22]
	adds r0, r1
	strh r0, [r4, 0x34]
	ldr r5, =gUnknown_02038436
	ldrb r0, [r5]
	movs r1, 0x2
	bl sub_80A5C6C
	lsls r0, 24
	lsrs r0, 24
	strh r0, [r4, 0x32]
	ldrb r0, [r5]
	movs r1, 0x3
	bl sub_80A5C6C
	lsls r0, 24
	lsrs r0, 24
	strh r0, [r4, 0x36]
	ldr r0, =sub_80A64D0
	str r0, [r4, 0x1C]
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_80A6760

	thumb_func_start sub_80A67A4
sub_80A67A4: @ 80A67A4
	push {r4,lr}
	adds r4, r0, 0
	ldrh r0, [r4, 0x38]
	bl sub_80A1F58
	adds r0, r4, 0
	bl move_anim_8074EE0
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_80A67A4

	thumb_func_start sub_80A67BC
sub_80A67BC: @ 80A67BC
	push {lr}
	adds r2, r0, 0
	adds r0, 0x3F
	ldrb r1, [r0]
	movs r0, 0x20
	ands r0, r1
	cmp r0, 0
	beq _080A67D2
	adds r0, r2, 0
	bl sub_80A62DC
_080A67D2:
	pop {r0}
	bx r0
	thumb_func_end sub_80A67BC

	thumb_func_start sub_80A67D8
sub_80A67D8: @ 80A67D8
	push {lr}
	adds r2, r0, 0
	adds r0, 0x3F
	ldrb r1, [r0]
	movs r0, 0x10
	ands r0, r1
	cmp r0, 0
	beq _080A67EE
	adds r0, r2, 0
	bl sub_80A62DC
_080A67EE:
	pop {r0}
	bx r0
	thumb_func_end sub_80A67D8

	thumb_func_start sub_80A67F4
sub_80A67F4: @ 80A67F4
	push {r4,lr}
	adds r4, r0, 0
	movs r0, 0x50
	movs r1, 0
	bl SetGpuReg
	movs r0, 0x52
	movs r1, 0
	bl SetGpuReg
	adds r0, r4, 0
	bl move_anim_8072740
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_80A67F4

	thumb_func_start sub_80A6814
sub_80A6814: @ 80A6814
	push {r4,lr}
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	movs r0, 0x50
	movs r1, 0
	bl SetGpuReg
	movs r0, 0x52
	movs r1, 0
	bl SetGpuReg
	adds r0, r4, 0
	bl move_anim_task_del
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_80A6814

	thumb_func_start sub_80A6838
sub_80A6838: @ 80A6838
	push {r4,r5,lr}
	adds r5, r0, 0
	ldr r4, =gUnknown_02038436
	ldrb r0, [r4]
	movs r1, 0x2
	bl sub_80A5C6C
	lsls r0, 24
	lsrs r0, 24
	strh r0, [r5, 0x20]
	ldrb r0, [r4]
	movs r1, 0x3
	bl sub_80A5C6C
	lsls r0, 24
	lsrs r0, 24
	strh r0, [r5, 0x22]
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_80A6838

	thumb_func_start sub_80A6864
sub_80A6864: @ 80A6864
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	adds r4, r0, 0
	lsls r1, 16
	lsrs r5, r1, 16
	mov r8, r5
	ldr r7, =gUnknown_02038436
	ldrb r0, [r7]
	movs r1, 0
	bl sub_80A5C6C
	lsls r0, 24
	lsrs r6, r0, 24
	ldr r0, =gUnknown_02038437
	ldrb r0, [r0]
	movs r1, 0
	bl sub_80A5C6C
	lsls r0, 24
	lsrs r0, 24
	cmp r6, r0
	bhi _080A68B0
	cmp r6, r0
	bcs _080A68A4
	lsls r0, r5, 16
	b _080A68C0
	.pool
_080A68A4:
	ldrb r0, [r7]
	bl battle_side_get_owner
	lsls r0, 24
	cmp r0, 0
	beq _080A68BC
_080A68B0:
	ldrh r1, [r4, 0x20]
	lsls r0, r5, 16
	asrs r0, 16
	subs r1, r0
	strh r1, [r4, 0x20]
	b _080A68C8
_080A68BC:
	mov r1, r8
	lsls r0, r1, 16
_080A68C0:
	asrs r0, 16
	ldrh r1, [r4, 0x20]
	adds r0, r1
	strh r0, [r4, 0x20]
_080A68C8:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_80A6864

	thumb_func_start sub_80A68D4
sub_80A68D4: @ 80A68D4
	push {r4,r5,lr}
	adds r4, r0, 0
	ldrh r0, [r4, 0x20]
	movs r5, 0
	strh r0, [r4, 0x30]
	ldrh r0, [r4, 0x22]
	strh r0, [r4, 0x34]
	adds r0, r4, 0
	bl obj_translate_based_on_private_1_2_3_4
	movs r0, 0x2E
	ldrsh r1, [r4, r0]
	movs r0, 0x80
	lsls r0, 8
	bl __divsi3
	strh r0, [r4, 0x3A]
	strh r5, [r4, 0x3C]
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end sub_80A68D4

	thumb_func_start sub_80A6900
sub_80A6900: @ 80A6900
	push {r4,lr}
	adds r4, r0, 0
	bl sub_80A6F3C
	lsls r0, 24
	cmp r0, 0
	bne _080A692C
	ldrh r0, [r4, 0x3A]
	ldrh r1, [r4, 0x3C]
	adds r0, r1
	strh r0, [r4, 0x3C]
	lsls r0, 16
	lsrs r0, 24
	movs r2, 0x38
	ldrsh r1, [r4, r2]
	bl sine
	ldrh r1, [r4, 0x26]
	adds r0, r1
	strh r0, [r4, 0x26]
	movs r0, 0
	b _080A692E
_080A692C:
	movs r0, 0x1
_080A692E:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_80A6900

	thumb_func_start sub_80A6934
sub_80A6934: @ 80A6934
	push {r4,lr}
	adds r4, r0, 0
	bl sub_80A6F3C
	lsls r0, 24
	cmp r0, 0
	bne _080A6960
	ldrh r0, [r4, 0x3A]
	ldrh r1, [r4, 0x3C]
	adds r0, r1
	strh r0, [r4, 0x3C]
	lsls r0, 16
	lsrs r0, 24
	movs r2, 0x38
	ldrsh r1, [r4, r2]
	bl sine
	ldrh r1, [r4, 0x24]
	adds r0, r1
	strh r0, [r4, 0x24]
	movs r0, 0
	b _080A6962
_080A6960:
	movs r0, 0x1
_080A6962:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_80A6934

	thumb_func_start oamt_add_pos2_onto_pos1
oamt_add_pos2_onto_pos1: @ 80A6968
	ldrh r1, [r0, 0x24]
	ldrh r2, [r0, 0x20]
	adds r1, r2
	movs r2, 0
	strh r1, [r0, 0x20]
	ldrh r1, [r0, 0x26]
	ldrh r3, [r0, 0x22]
	adds r1, r3
	strh r1, [r0, 0x22]
	strh r2, [r0, 0x24]
	strh r2, [r0, 0x26]
	bx lr
	thumb_func_end oamt_add_pos2_onto_pos1

	thumb_func_start sub_80A6980
sub_80A6980: @ 80A6980
	push {r4,r5,lr}
	adds r5, r0, 0
	lsls r1, 24
	cmp r1, 0
	bne _080A69A8
	ldr r4, =gUnknown_02038437
	ldrb r0, [r4]
	movs r1, 0
	bl sub_80A60AC
	lsls r0, 24
	lsrs r0, 24
	strh r0, [r5, 0x20]
	ldrb r0, [r4]
	movs r1, 0x1
	bl sub_80A60AC
	lsls r0, 24
	lsrs r0, 24
	strh r0, [r5, 0x22]
_080A69A8:
	ldr r4, =gUnknown_0203841E
	movs r0, 0
	ldrsh r1, [r4, r0]
	adds r0, r5, 0
	bl sub_80A6864
	ldrh r0, [r4, 0x2]
	ldrh r1, [r5, 0x22]
	adds r0, r1
	strh r0, [r5, 0x22]
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_80A6980

	thumb_func_start sub_80A69CC
sub_80A69CC: @ 80A69CC
	push {r4,r5,lr}
	adds r5, r0, 0
	lsls r1, 24
	cmp r1, 0
	bne _080A69F0
	ldr r4, =gUnknown_02038436
	ldrb r0, [r4]
	movs r1, 0
	bl sub_80A60AC
	lsls r0, 24
	lsrs r0, 24
	strh r0, [r5, 0x20]
	ldrb r0, [r4]
	movs r1, 0x1
	b _080A6A04
	.pool
_080A69F0:
	ldr r4, =gUnknown_02038436
	ldrb r0, [r4]
	movs r1, 0x2
	bl sub_80A60AC
	lsls r0, 24
	lsrs r0, 24
	strh r0, [r5, 0x20]
	ldrb r0, [r4]
	movs r1, 0x3
_080A6A04:
	bl sub_80A60AC
	lsls r0, 24
	lsrs r0, 24
	strh r0, [r5, 0x22]
	ldr r4, =gUnknown_0203841E
	movs r0, 0
	ldrsh r1, [r4, r0]
	adds r0, r5, 0
	bl sub_80A6864
	ldrh r0, [r4, 0x2]
	ldrh r1, [r5, 0x22]
	adds r0, r1
	strh r0, [r5, 0x22]
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_80A69CC

	thumb_func_start battle_side_get_owner
battle_side_get_owner: @ 80A6A30
	lsls r0, 24
	lsrs r0, 24
	ldr r1, =gUnknown_02024076
	adds r0, r1
	ldrb r1, [r0]
	movs r0, 0x1
	ands r0, r1
	bx lr
	.pool
	thumb_func_end battle_side_get_owner

	thumb_func_start battle_get_per_side_status
battle_get_per_side_status: @ 80A6A44
	lsls r0, 24
	lsrs r0, 24
	ldr r1, =gUnknown_02024076
	adds r0, r1
	ldrb r0, [r0]
	bx lr
	.pool
	thumb_func_end battle_get_per_side_status

	thumb_func_start battle_get_side_with_given_state
battle_get_side_with_given_state: @ 80A6A54
	push {r4,lr}
	lsls r0, 24
	lsrs r3, r0, 24
	movs r1, 0
	ldr r0, =gUnknown_0202406C
	ldrb r2, [r0]
	cmp r1, r2
	bcs _080A6A7E
	ldr r4, =gUnknown_02024076
	ldrb r0, [r4]
	cmp r0, r3
	beq _080A6A7E
_080A6A6C:
	adds r0, r1, 0x1
	lsls r0, 24
	lsrs r1, r0, 24
	cmp r1, r2
	bcs _080A6A7E
	adds r0, r1, r4
	ldrb r0, [r0]
	cmp r0, r3
	bne _080A6A6C
_080A6A7E:
	adds r0, r1, 0
	pop {r4}
	pop {r1}
	bx r1
	.pool
	thumb_func_end battle_get_side_with_given_state

	thumb_func_start sub_80A6A90
sub_80A6A90: @ 80A6A90
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	adds r5, r4, 0
	bl sub_80A4DF0
	lsls r0, 24
	cmp r0, 0
	beq _080A6ABC
	ldr r0, =gUnknown_02038436
	ldrb r0, [r0]
	cmp r0, r4
	beq _080A6B0A
	ldr r0, =gUnknown_02038437
	ldrb r0, [r0]
	cmp r0, r4
	beq _080A6B0A
	b _080A6B18
	.pool
_080A6ABC:
	ldr r0, =gUnknown_02024076
	adds r0, r4, r0
	ldrb r0, [r0]
	cmp r0, 0xFF
	beq _080A6B18
	adds r0, r4, 0
	bl battle_side_get_owner
	lsls r0, 24
	cmp r0, 0
	beq _080A6AF0
	ldr r1, =gUnknown_0202406E
	lsls r0, r4, 1
	adds r0, r1
	ldrh r1, [r0]
	movs r0, 0x64
	muls r0, r1
	ldr r1, =gUnknown_02024744
	b _080A6AFE
	.pool
_080A6AF0:
	ldr r1, =gUnknown_0202406E
	lsls r0, r5, 1
	adds r0, r1
	ldrh r1, [r0]
	movs r0, 0x64
	muls r0, r1
	ldr r1, =gUnknown_020244EC
_080A6AFE:
	adds r0, r1
	movs r1, 0x39
	bl pokemon_getattr
	cmp r0, 0
	beq _080A6B18
_080A6B0A:
	movs r0, 0x1
	b _080A6B1A
	.pool
_080A6B18:
	movs r0, 0
_080A6B1A:
	pop {r4,r5}
	pop {r1}
	bx r1
	thumb_func_end sub_80A6A90

	thumb_func_start battle_type_is_double
battle_type_is_double: @ 80A6B20
	ldr r0, =gUnknown_02022FEC
	ldr r0, [r0]
	movs r1, 0x1
	ands r0, r1
	bx lr
	.pool
	thumb_func_end battle_type_is_double

	thumb_func_start sub_80A6B30
sub_80A6B30: @ 80A6B30
	push {r4,lr}
	adds r4, r0, 0
	bl sub_80A4DF0
	lsls r0, 24
	lsrs r1, r0, 24
	cmp r1, 0
	beq _080A6B64
	ldr r0, =gUnknown_0202305C
	ldr r0, [r0]
	str r0, [r4]
	ldr r0, =gUnknown_02023060
	ldr r0, [r0]
	str r0, [r4, 0x4]
	movs r1, 0
	movs r0, 0xE
	strb r0, [r4, 0x8]
	movs r0, 0x1
	strb r0, [r4, 0x9]
	strh r1, [r4, 0xA]
	b _080A6B7E
	.pool
_080A6B64:
	ldr r0, =gUnknown_0202305C
	ldr r0, [r0]
	str r0, [r4]
	ldr r0, =gUnknown_02023060
	ldr r0, [r0]
	str r0, [r4, 0x4]
	movs r0, 0x8
	strb r0, [r4, 0x8]
	movs r0, 0x1
	strb r0, [r4, 0x9]
	movs r0, 0x80
	lsls r0, 2
	strh r0, [r4, 0xA]
_080A6B7E:
	strh r1, [r4, 0xC]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_80A6B30

	thumb_func_start sub_80A6B90
sub_80A6B90: @ 80A6B90
	push {r4,r5,lr}
	adds r4, r0, 0
	adds r5, r1, 0
	bl sub_80A4DF0
	lsls r0, 24
	lsrs r1, r0, 24
	cmp r1, 0
	beq _080A6BC4
	ldr r0, =gUnknown_0202305C
	ldr r0, [r0]
	str r0, [r4]
	ldr r0, =gUnknown_02023060
	ldr r0, [r0]
	str r0, [r4, 0x4]
	movs r1, 0
	movs r0, 0xE
	strb r0, [r4, 0x8]
	movs r0, 0x1
	strb r0, [r4, 0x9]
	strh r1, [r4, 0xA]
	b _080A6BEA
	.pool
_080A6BC4:
	cmp r5, 0x1
	bne _080A6BD0
	adds r0, r4, 0
	bl sub_80A6B30
	b _080A6BEC
_080A6BD0:
	ldr r0, =gUnknown_0202305C
	ldr r0, [r0]
	str r0, [r4]
	ldr r0, =gUnknown_02023060
	ldr r0, [r0]
	str r0, [r4, 0x4]
	movs r0, 0x9
	strb r0, [r4, 0x8]
	movs r0, 0x2
	strb r0, [r4, 0x9]
	movs r0, 0xC0
	lsls r0, 2
	strh r0, [r4, 0xA]
_080A6BEA:
	strh r1, [r4, 0xC]
_080A6BEC:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_80A6B90

	thumb_func_start sub_80A6BFC
sub_80A6BFC: @ 80A6BFC
	push {r4,r5,lr}
	adds r4, r0, 0
	ldr r0, =gUnknown_0202305C
	ldr r0, [r0]
	str r0, [r4]
	ldr r0, =gUnknown_02023060
	ldr r0, [r0]
	str r0, [r4, 0x4]
	bl sub_80A4DF0
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0
	beq _080A6C30
	movs r0, 0
	movs r1, 0xE
	strb r1, [r4, 0x8]
	movs r1, 0x1
	strb r1, [r4, 0x9]
	strh r0, [r4, 0xA]
	strh r0, [r4, 0xC]
	b _080A6C60
	.pool
_080A6C30:
	ldr r0, =gUnknown_02038436
	ldrb r0, [r0]
	bl battle_get_per_side_status_permutated
	lsls r0, 24
	lsrs r1, r0, 24
	cmp r1, 0x1
	bne _080A6C50
	movs r0, 0x8
	strb r0, [r4, 0x8]
	strb r1, [r4, 0x9]
	movs r0, 0x80
	lsls r0, 2
	b _080A6C5C
	.pool
_080A6C50:
	movs r0, 0x9
	strb r0, [r4, 0x8]
	movs r0, 0x2
	strb r0, [r4, 0x9]
	movs r0, 0xC0
	lsls r0, 2
_080A6C5C:
	strh r0, [r4, 0xA]
	strh r5, [r4, 0xC]
_080A6C60:
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end sub_80A6BFC

	thumb_func_start sub_80A6C68
sub_80A6C68: @ 80A6C68
	push {lr}
	sub sp, 0x20
	adds r1, r0, 0
	add r0, sp, 0xC
	bl sub_80A6B90
	movs r0, 0
	str r0, [sp, 0x1C]
	add r0, sp, 0x1C
	ldr r1, [sp, 0xC]
	ldr r2, =0x05000800
	bl CpuSet
	add r0, sp, 0xC
	ldrb r0, [r0, 0x9]
	ldr r1, [sp, 0xC]
	movs r2, 0x80
	lsls r2, 6
	add r3, sp, 0xC
	ldrh r3, [r3, 0xA]
	bl LoadBgTiles
	add r0, sp, 0xC
	ldrb r0, [r0, 0x9]
	movs r1, 0x20
	str r1, [sp]
	movs r1, 0x40
	str r1, [sp, 0x4]
	movs r1, 0x11
	str r1, [sp, 0x8]
	movs r1, 0
	movs r2, 0
	movs r3, 0
	bl FillBgTilemapBufferRect
	add r0, sp, 0xC
	ldrb r0, [r0, 0x9]
	bl CopyBgTilemapBufferToVram
	add sp, 0x20
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_80A6C68

	thumb_func_start sub_80A6CC0
sub_80A6CC0: @ 80A6CC0
	push {r4-r6,lr}
	mov r6, r8
	push {r6}
	sub sp, 0x4
	adds r5, r0, 0
	mov r8, r1
	adds r6, r2, 0
	movs r0, 0
	str r0, [sp]
	ldr r4, =gUnknown_0202305C
	ldr r1, [r4]
	ldr r2, =0x05000800
	mov r0, sp
	bl CpuSet
	ldr r1, [r4]
	mov r0, r8
	bl LZDecompressWram
	lsls r5, 24
	lsrs r5, 24
	ldr r1, [r4]
	movs r2, 0x80
	lsls r2, 6
	lsls r6, 16
	lsrs r6, 16
	adds r0, r5, 0
	adds r3, r6, 0
	bl LoadBgTiles
	add sp, 0x4
	pop {r3}
	mov r8, r3
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_80A6CC0

	thumb_func_start sub_80A6D10
sub_80A6D10: @ 80A6D10
	push {r4,r5,lr}
	sub sp, 0xC
	adds r4, r0, 0
	adds r5, r1, 0
	lsls r4, 24
	lsrs r4, 24
	movs r0, 0x20
	str r0, [sp]
	movs r0, 0x40
	str r0, [sp, 0x4]
	movs r0, 0x11
	str r0, [sp, 0x8]
	adds r0, r4, 0
	movs r1, 0
	movs r2, 0
	movs r3, 0
	bl FillBgTilemapBufferRect
	adds r0, r4, 0
	adds r1, r5, 0
	movs r2, 0
	movs r3, 0
	bl CopyToBgTilemapBuffer
	add sp, 0xC
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end sub_80A6D10

	thumb_func_start sub_80A6D48
sub_80A6D48: @ 80A6D48
	push {r4,lr}
	adds r4, r0, 0
	bl sub_80A6D10
	lsls r4, 24
	lsrs r4, 24
	adds r0, r4, 0
	bl CopyBgTilemapBufferToVram
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_80A6D48

	thumb_func_start sub_80A6D60
sub_80A6D60: @ 80A6D60
	push {r4,r5,lr}
	adds r4, r0, 0
	adds r5, r2, 0
	ldrb r0, [r4, 0x9]
	bl sub_80A6D10
	bl sub_80A4DF0
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _080A6D86
	ldrb r0, [r4, 0x8]
	ldr r1, [r4, 0x4]
	lsls r3, r5, 24
	lsrs r3, 24
	movs r2, 0
	bl sub_80A4720
_080A6D86:
	ldrb r0, [r4, 0x9]
	bl CopyBgTilemapBufferToVram
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end sub_80A6D60

	thumb_func_start sub_80A6D94
sub_80A6D94: @ 80A6D94
	push {lr}
	bl sub_80A4DF0
	lsls r0, 24
	cmp r0, 0
	bne _080A6DA4
	movs r0, 0x2
	b _080A6DA6
_080A6DA4:
	movs r0, 0x1
_080A6DA6:
	pop {r1}
	bx r1
	thumb_func_end sub_80A6D94

	thumb_func_start sub_80A6DAC
sub_80A6DAC: @ 80A6DAC
	push {lr}
	lsls r0, 24
	cmp r0, 0
	beq _080A6DBE
	bl sub_80A4DF0
	lsls r0, 24
	cmp r0, 0
	beq _080A6DD4
_080A6DBE:
	movs r0, 0x3
	movs r1, 0
	movs r2, 0
	bl lcd_bg_operations
	movs r0, 0x3
	movs r1, 0x1
	movs r2, 0x1
	bl lcd_bg_operations
	b _080A6DE8
_080A6DD4:
	movs r0, 0x3
	movs r1, 0
	movs r2, 0x1
	bl lcd_bg_operations
	movs r0, 0x3
	movs r1, 0x1
	movs r2, 0
	bl lcd_bg_operations
_080A6DE8:
	pop {r0}
	bx r0
	thumb_func_end sub_80A6DAC

	thumb_func_start sub_80A6DEC
sub_80A6DEC: @ 80A6DEC
	push {r4,lr}
	adds r4, r0, 0
	ldrh r0, [r4, 0x20]
	strh r0, [r4, 0x30]
	ldrh r0, [r4, 0x22]
	strh r0, [r4, 0x34]
	adds r0, r4, 0
	bl sub_80A6E14
	ldr r1, =sub_80A65A8
	str r1, [r4, 0x1C]
	adds r0, r4, 0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_80A6DEC

	thumb_func_start sub_80A6E14
sub_80A6E14: @ 80A6E14
	push {r4-r6,lr}
	adds r5, r0, 0
	ldrh r0, [r5, 0x32]
	ldrh r1, [r5, 0x30]
	subs r0, r1
	ldrh r4, [r5, 0x36]
	ldrh r1, [r5, 0x34]
	subs r4, r1
	lsls r4, 24
	lsrs r4, 16
	lsls r0, 24
	asrs r0, 16
	movs r2, 0x2E
	ldrsh r1, [r5, r2]
	bl __divsi3
	movs r6, 0
	strh r0, [r5, 0x30]
	lsls r4, 16
	asrs r4, 16
	movs r0, 0x2E
	ldrsh r1, [r5, r0]
	adds r0, r4, 0
	bl __divsi3
	strh r0, [r5, 0x32]
	strh r6, [r5, 0x36]
	strh r6, [r5, 0x34]
	pop {r4-r6}
	pop {r0}
	bx r0
	thumb_func_end sub_80A6E14

	thumb_func_start obj_translate_based_on_private_1_2_3_4
obj_translate_based_on_private_1_2_3_4: @ 80A6E54
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	adds r7, r0, 0
	movs r0, 0x32
	ldrsh r1, [r7, r0]
	movs r2, 0x30
	ldrsh r0, [r7, r2]
	subs r1, r0
	movs r3, 0x36
	ldrsh r2, [r7, r3]
	movs r3, 0x34
	ldrsh r0, [r7, r3]
	subs r2, r0
	lsrs r0, r1, 31
	mov r8, r0
	lsrs r3, r2, 31
	mov r9, r3
	cmp r1, 0
	bge _080A6E80
	negs r1, r1
_080A6E80:
	lsls r0, r1, 24
	lsrs r6, r0, 16
	adds r0, r2, 0
	cmp r0, 0
	bge _080A6E8C
	negs r0, r0
_080A6E8C:
	lsls r0, 24
	lsrs r5, r0, 16
	movs r0, 0x2E
	ldrsh r4, [r7, r0]
	adds r0, r6, 0
	adds r1, r4, 0
	bl __divsi3
	lsls r0, 16
	lsrs r6, r0, 16
	adds r0, r5, 0
	adds r1, r4, 0
	bl __divsi3
	lsls r0, 16
	lsrs r5, r0, 16
	mov r2, r8
	cmp r2, 0
	beq _080A6EB8
	movs r0, 0x1
	orrs r6, r0
	b _080A6EBC
_080A6EB8:
	ldr r0, =0x0000fffe
	ands r6, r0
_080A6EBC:
	mov r3, r9
	cmp r3, 0
	beq _080A6ECC
	movs r0, 0x1
	orrs r5, r0
	b _080A6ED0
	.pool
_080A6ECC:
	ldr r0, =0x0000fffe
	ands r5, r0
_080A6ED0:
	movs r0, 0
	strh r6, [r7, 0x30]
	strh r5, [r7, 0x32]
	strh r0, [r7, 0x36]
	strh r0, [r7, 0x34]
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end obj_translate_based_on_private_1_2_3_4

	thumb_func_start sub_80A6EEC
sub_80A6EEC: @ 80A6EEC
	push {r4,lr}
	adds r4, r0, 0
	ldrh r0, [r4, 0x20]
	strh r0, [r4, 0x30]
	ldrh r0, [r4, 0x22]
	strh r0, [r4, 0x34]
	adds r0, r4, 0
	bl obj_translate_based_on_private_1_2_3_4
	ldr r1, =sub_80A6F98
	str r1, [r4, 0x1C]
	adds r0, r4, 0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_80A6EEC

	thumb_func_start sub_80A6F14
sub_80A6F14: @ 80A6F14
	push {r4,lr}
	adds r4, r0, 0
	ldrh r0, [r4, 0x20]
	strh r0, [r4, 0x30]
	ldrh r0, [r4, 0x22]
	strh r0, [r4, 0x34]
	adds r0, r4, 0
	bl obj_translate_based_on_private_1_2_3_4
	ldr r1, =sub_80A6FB4
	str r1, [r4, 0x1C]
	adds r0, r4, 0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_80A6F14

	thumb_func_start sub_80A6F3C
sub_80A6F3C: @ 80A6F3C
	push {r4-r6,lr}
	adds r2, r0, 0
	movs r1, 0x2E
	ldrsh r0, [r2, r1]
	cmp r0, 0
	bne _080A6F4C
	movs r0, 0x1
	b _080A6F90
_080A6F4C:
	ldrh r1, [r2, 0x30]
	ldrh r4, [r2, 0x32]
	ldrh r6, [r2, 0x34]
	ldrh r5, [r2, 0x36]
	adds r0, r6, r1
	lsls r3, r0, 16
	lsrs r6, r3, 16
	adds r0, r5, r4
	lsls r0, 16
	lsrs r5, r0, 16
	movs r0, 0x1
	ands r1, r0
	cmp r1, 0
	beq _080A6F6E
	lsrs r0, r3, 24
	negs r0, r0
	b _080A6F70
_080A6F6E:
	lsrs r0, r3, 24
_080A6F70:
	strh r0, [r2, 0x24]
	movs r0, 0x1
	ands r4, r0
	cmp r4, 0
	beq _080A6F80
	lsrs r0, r5, 8
	negs r0, r0
	b _080A6F82
_080A6F80:
	lsrs r0, r5, 8
_080A6F82:
	strh r0, [r2, 0x26]
	strh r6, [r2, 0x34]
	strh r5, [r2, 0x36]
	ldrh r0, [r2, 0x2E]
	subs r0, 0x1
	strh r0, [r2, 0x2E]
	movs r0, 0
_080A6F90:
	pop {r4-r6}
	pop {r1}
	bx r1
	thumb_func_end sub_80A6F3C

	thumb_func_start sub_80A6F98
sub_80A6F98: @ 80A6F98
	push {r4,lr}
	adds r4, r0, 0
	bl sub_80A6F3C
	lsls r0, 24
	cmp r0, 0
	beq _080A6FAC
	adds r0, r4, 0
	bl sub_80A62DC
_080A6FAC:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_80A6F98

	thumb_func_start sub_80A6FB4
sub_80A6FB4: @ 80A6FB4
	push {r4,lr}
	adds r4, r0, 0
	bl sub_8039E9C
	adds r0, r4, 0
	bl sub_80A6F3C
	lsls r0, 24
	cmp r0, 0
	beq _080A6FCE
	adds r0, r4, 0
	bl sub_80A62DC
_080A6FCE:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_80A6FB4

	thumb_func_start sub_80A6FD4
sub_80A6FD4: @ 80A6FD4
	push {r4,lr}
	adds r4, r0, 0
	movs r0, 0x32
	ldrsh r1, [r4, r0]
	movs r2, 0x30
	ldrsh r0, [r4, r2]
	subs r0, r1, r0
	cmp r0, 0
	bge _080A6FE8
	negs r0, r0
_080A6FE8:
	lsls r0, 8
	movs r2, 0x2E
	ldrsh r1, [r4, r2]
	bl __divsi3
	strh r0, [r4, 0x2E]
	adds r0, r4, 0
	bl obj_translate_based_on_private_1_2_3_4
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_80A6FD4

	thumb_func_start sub_80A7000
sub_80A7000: @ 80A7000
	push {r4,lr}
	adds r4, r0, 0
	ldrh r0, [r4, 0x20]
	strh r0, [r4, 0x30]
	ldrh r0, [r4, 0x22]
	strh r0, [r4, 0x34]
	adds r0, r4, 0
	bl sub_80A6FD4
	ldr r1, =sub_80A6F98
	str r1, [r4, 0x1C]
	adds r0, r4, 0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_80A7000

	thumb_func_start sub_80A7028
sub_80A7028: @ 80A7028
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	adds r7, r0, 0
	movs r0, 0x32
	ldrsh r1, [r7, r0]
	movs r2, 0x30
	ldrsh r0, [r7, r2]
	subs r1, r0
	movs r3, 0x36
	ldrsh r2, [r7, r3]
	movs r3, 0x34
	ldrsh r0, [r7, r3]
	subs r2, r0
	lsrs r0, r1, 31
	mov r8, r0
	lsrs r3, r2, 31
	mov r9, r3
	cmp r1, 0
	bge _080A7054
	negs r1, r1
_080A7054:
	lsls r0, r1, 20
	lsrs r6, r0, 16
	adds r0, r2, 0
	cmp r0, 0
	bge _080A7060
	negs r0, r0
_080A7060:
	lsls r0, 20
	lsrs r5, r0, 16
	movs r0, 0x2E
	ldrsh r4, [r7, r0]
	adds r0, r6, 0
	adds r1, r4, 0
	bl __divsi3
	lsls r0, 16
	lsrs r6, r0, 16
	adds r0, r5, 0
	adds r1, r4, 0
	bl __divsi3
	lsls r0, 16
	lsrs r5, r0, 16
	mov r2, r8
	cmp r2, 0
	beq _080A708C
	movs r0, 0x1
	orrs r6, r0
	b _080A7090
_080A708C:
	ldr r0, =0x0000fffe
	ands r6, r0
_080A7090:
	mov r3, r9
	cmp r3, 0
	beq _080A70A0
	movs r0, 0x1
	orrs r5, r0
	b _080A70A4
	.pool
_080A70A0:
	ldr r0, =0x0000fffe
	ands r5, r0
_080A70A4:
	movs r0, 0
	strh r6, [r7, 0x30]
	strh r5, [r7, 0x32]
	strh r0, [r7, 0x36]
	strh r0, [r7, 0x34]
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_80A7028

	thumb_func_start sub_80A70C0
sub_80A70C0: @ 80A70C0
	push {r4,lr}
	adds r4, r0, 0
	ldrh r0, [r4, 0x20]
	strh r0, [r4, 0x30]
	ldrh r0, [r4, 0x22]
	strh r0, [r4, 0x34]
	adds r0, r4, 0
	bl sub_80A7028
	ldr r1, =sub_80A7144
	str r1, [r4, 0x1C]
	adds r0, r4, 0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_80A70C0

	thumb_func_start sub_80A70E8
sub_80A70E8: @ 80A70E8
	push {r4-r6,lr}
	adds r2, r0, 0
	movs r1, 0x2E
	ldrsh r0, [r2, r1]
	cmp r0, 0
	bne _080A70F8
	movs r0, 0x1
	b _080A713C
_080A70F8:
	ldrh r1, [r2, 0x30]
	ldrh r4, [r2, 0x32]
	ldrh r6, [r2, 0x34]
	ldrh r5, [r2, 0x36]
	adds r0, r6, r1
	lsls r3, r0, 16
	lsrs r6, r3, 16
	adds r0, r5, r4
	lsls r0, 16
	lsrs r5, r0, 16
	movs r0, 0x1
	ands r1, r0
	cmp r1, 0
	beq _080A711A
	lsrs r0, r3, 20
	negs r0, r0
	b _080A711C
_080A711A:
	lsrs r0, r3, 20
_080A711C:
	strh r0, [r2, 0x24]
	movs r0, 0x1
	ands r4, r0
	cmp r4, 0
	beq _080A712C
	lsrs r0, r5, 4
	negs r0, r0
	b _080A712E
_080A712C:
	lsrs r0, r5, 4
_080A712E:
	strh r0, [r2, 0x26]
	strh r6, [r2, 0x34]
	strh r5, [r2, 0x36]
	ldrh r0, [r2, 0x2E]
	subs r0, 0x1
	strh r0, [r2, 0x2E]
	movs r0, 0
_080A713C:
	pop {r4-r6}
	pop {r1}
	bx r1
	thumb_func_end sub_80A70E8

	thumb_func_start sub_80A7144
sub_80A7144: @ 80A7144
	push {r4,lr}
	adds r4, r0, 0
	bl sub_80A70E8
	lsls r0, 24
	cmp r0, 0
	beq _080A7158
	adds r0, r4, 0
	bl sub_80A62DC
_080A7158:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_80A7144

	thumb_func_start sub_80A7160
sub_80A7160: @ 80A7160
	push {r4,lr}
	adds r4, r0, 0
	movs r0, 0x32
	ldrsh r1, [r4, r0]
	movs r2, 0x30
	ldrsh r0, [r4, r2]
	subs r0, r1, r0
	cmp r0, 0
	bge _080A7174
	negs r0, r0
_080A7174:
	lsls r0, 4
	movs r2, 0x2E
	ldrsh r1, [r4, r2]
	bl __divsi3
	strh r0, [r4, 0x2E]
	adds r0, r4, 0
	bl sub_80A7028
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_80A7160

	thumb_func_start sub_80A718C
sub_80A718C: @ 80A718C
	push {r4,lr}
	adds r4, r0, 0
	ldrh r0, [r4, 0x20]
	strh r0, [r4, 0x30]
	ldrh r0, [r4, 0x22]
	strh r0, [r4, 0x34]
	adds r0, r4, 0
	bl sub_80A7160
	ldr r1, =sub_80A7144
	str r1, [r4, 0x1C]
	adds r0, r4, 0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_80A718C

	thumb_func_start obj_id_set_rotscale
obj_id_set_rotscale: @ 80A71B4
	push {r4,r5,lr}
	sub sp, 0x10
	lsls r0, 24
	lsrs r4, r0, 24
	lsls r1, 16
	lsls r3, 16
	lsrs r3, 16
	ldr r5, =0xffff0000
	lsls r2, 16
	lsrs r1, 16
	orrs r1, r2
	str r1, [sp]
	ldr r0, [sp, 0x4]
	ands r0, r5
	orrs r0, r3
	str r0, [sp, 0x4]
	bl sub_80A7238
	lsls r0, 24
	cmp r0, 0
	beq _080A71F0
	mov r0, sp
	ldrh r0, [r0]
	negs r0, r0
	lsls r0, 16
	lsrs r0, 16
	ldr r1, [sp]
	ands r1, r5
	orrs r1, r0
	str r1, [sp]
_080A71F0:
	ldr r1, =gUnknown_02020630
	lsls r0, r4, 4
	adds r0, r4
	lsls r0, 2
	adds r0, r1
	ldrb r4, [r0, 0x3]
	lsls r4, 26
	lsrs r4, 27
	add r5, sp, 0x8
	mov r0, sp
	adds r1, r5, 0
	movs r2, 0x1
	movs r3, 0x2
	bl ObjAffineSet
	ldr r0, =gUnknown_02021BC0
	lsls r4, 3
	adds r4, r0
	ldrh r0, [r5]
	strh r0, [r4]
	ldrh r0, [r5, 0x2]
	strh r0, [r4, 0x2]
	ldrh r0, [r5, 0x4]
	strh r0, [r4, 0x4]
	ldrh r0, [r5, 0x6]
	strh r0, [r4, 0x6]
	add sp, 0x10
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end obj_id_set_rotscale

	thumb_func_start sub_80A7238
sub_80A7238: @ 80A7238
	push {r4,lr}
	bl sub_80A4DF0
	lsls r0, 24
	cmp r0, 0
	beq _080A7268
	ldr r4, =gUnknown_02020630
	movs r0, 0
	bl obj_id_for_side_relative_to_move
	lsls r0, 24
	lsrs r0, 24
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r4
	movs r2, 0x32
	ldrsh r0, [r1, r2]
	cmp r0, 0xC9
	beq _080A7268
	movs r0, 0x1
	b _080A726A
	.pool
_080A7268:
	movs r0, 0
_080A726A:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_80A7238

	thumb_func_start sub_80A7270
sub_80A7270: @ 80A7270
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsls r0, 24
	lsrs r6, r0, 24
	lsls r1, 24
	lsrs r1, 24
	mov r8, r1
	ldr r1, =gUnknown_02020630
	lsls r0, r6, 4
	adds r0, r6
	lsls r0, 2
	adds r4, r0, r1
	ldrh r0, [r4, 0x2E]
	lsls r0, 24
	lsrs r7, r0, 24
	bl sub_80A4DF0
	lsls r0, 24
	cmp r0, 0
	bne _080A72A6
	adds r0, r7, 0
	bl b_side_obj__get_some_boolean
	lsls r0, 24
	cmp r0, 0
	beq _080A72B4
_080A72A6:
	adds r2, r4, 0
	adds r2, 0x3E
	ldrb r1, [r2]
	movs r0, 0x5
	negs r0, r0
	ands r0, r1
	strb r0, [r2]
_080A72B4:
	ldr r1, =gUnknown_02020630
	lsls r4, r6, 4
	adds r0, r4, r6
	lsls r0, 2
	adds r5, r0, r1
	movs r0, 0x3
	mov r1, r8
	ands r1, r0
	lsls r1, 2
	ldrb r2, [r5, 0x1]
	movs r0, 0xD
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, 0x1]
	adds r2, r5, 0
	adds r2, 0x2C
	ldrb r0, [r2]
	movs r1, 0x80
	orrs r0, r1
	strb r0, [r2]
	bl sub_80A4DF0
	lsls r0, 24
	cmp r0, 0
	bne _080A7312
	ldrb r0, [r5, 0x1]
	lsls r0, 30
	cmp r0, 0
	bne _080A7312
	ldr r0, =gUnknown_020244D0
	ldr r0, [r0]
	ldr r1, [r0, 0x4]
	lsls r0, r7, 1
	adds r0, r7
	lsls r0, 2
	adds r0, r1
	ldrb r1, [r0, 0x6]
	movs r0, 0x1F
	ands r1, r0
	lsls r1, 1
	ldrb r2, [r5, 0x3]
	movs r0, 0x3F
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, 0x3]
_080A7312:
	ldr r1, =gUnknown_02020630
	adds r0, r4, r6
	lsls r0, 2
	adds r0, r1
	ldrb r3, [r0, 0x1]
	movs r1, 0x3
	orrs r3, r1
	strb r3, [r0, 0x1]
	lsrs r1, r3, 6
	ldrb r2, [r0, 0x3]
	lsrs r2, 6
	lsls r3, 30
	lsrs r3, 30
	bl CalcVecFromObjectCenterToObjectUpperLeft
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_80A7270

	thumb_func_start sub_80A7344
sub_80A7344: @ 80A7344
	push {r4,lr}
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	movs r2, 0x80
	lsls r2, 1
	adds r0, r4, 0
	adds r1, r2, 0
	movs r3, 0
	bl obj_id_set_rotscale
	ldr r1, =gUnknown_02020630
	lsls r0, r4, 4
	adds r0, r4
	lsls r0, 2
	adds r0, r1
	ldrb r2, [r0, 0x1]
	movs r1, 0x4
	negs r1, r1
	ands r1, r2
	movs r2, 0x1
	orrs r1, r2
	movs r2, 0xD
	negs r2, r2
	ands r1, r2
	strb r1, [r0, 0x1]
	adds r3, r0, 0
	adds r3, 0x2C
	ldrb r2, [r3]
	movs r1, 0x7F
	ands r1, r2
	strb r1, [r3]
	ldrb r3, [r0, 0x1]
	lsrs r1, r3, 6
	ldrb r2, [r0, 0x3]
	lsrs r2, 6
	lsls r3, 30
	lsrs r3, 30
	bl CalcVecFromObjectCenterToObjectUpperLeft
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_80A7344

	thumb_func_start sub_80A73A0
sub_80A73A0: @ 80A73A0
	push {lr}
	lsls r0, 24
	lsrs r0, 24
	ldr r2, =gUnknown_02020630
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r2, r1, r2
	ldrb r0, [r2, 0x3]
	lsls r0, 26
	lsrs r0, 27
	ldr r1, =gUnknown_02021BC0
	lsls r0, 3
	adds r0, r1
	ldrh r1, [r0, 0x4]
	movs r3, 0x4
	ldrsh r0, [r0, r3]
	cmp r0, 0
	bge _080A73CC
	negs r0, r0
	lsls r0, 16
	lsrs r1, r0, 16
_080A73CC:
	lsls r0, r1, 16
	asrs r0, 19
	strh r0, [r2, 0x26]
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_80A73A0

	thumb_func_start sub_80A73E0
sub_80A73E0: @ 80A73E0
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, 0x10
	adds r4, r0, 0
	ldr r0, [sp, 0x28]
	lsls r1, 24
	lsrs r6, r1, 24
	lsls r2, 16
	lsrs r5, r2, 16
	lsls r3, 16
	lsrs r7, r3, 16
	lsls r0, 16
	lsrs r0, 16
	mov r8, r0
	ldrb r0, [r4, 0x1]
	lsls r0, 30
	lsrs r0, 30
	movs r1, 0x1
	ands r0, r1
	cmp r0, 0
	beq _080A7486
	adds r0, r4, 0
	adds r0, 0x2C
	ldrb r1, [r0]
	movs r2, 0x80
	orrs r1, r2
	strb r1, [r0]
	cmp r6, 0
	beq _080A742E
	ldrb r3, [r4, 0x1]
	lsrs r1, r3, 6
	ldrb r2, [r4, 0x3]
	lsrs r2, 6
	lsls r3, 30
	lsrs r3, 30
	adds r0, r4, 0
	bl CalcVecFromObjectCenterToObjectUpperLeft
_080A742E:
	ldr r6, =0xffff0000
	lsls r0, r7, 16
	orrs r5, r0
	str r5, [sp]
	ldr r0, [sp, 0x4]
	ands r0, r6
	mov r1, r8
	orrs r0, r1
	str r0, [sp, 0x4]
	bl sub_80A7238
	lsls r0, 24
	cmp r0, 0
	beq _080A745C
	mov r0, sp
	ldrh r0, [r0]
	negs r0, r0
	lsls r0, 16
	lsrs r0, 16
	ldr r1, [sp]
	ands r1, r6
	orrs r1, r0
	str r1, [sp]
_080A745C:
	ldrb r4, [r4, 0x3]
	lsls r4, 26
	lsrs r4, 27
	add r5, sp, 0x8
	mov r0, sp
	adds r1, r5, 0
	movs r2, 0x1
	movs r3, 0x2
	bl ObjAffineSet
	ldr r0, =gUnknown_02021BC0
	lsls r4, 3
	adds r4, r0
	ldrh r0, [r5]
	strh r0, [r4]
	ldrh r0, [r5, 0x2]
	strh r0, [r4, 0x2]
	ldrh r0, [r5, 0x4]
	strh r0, [r4, 0x4]
	ldrh r0, [r5, 0x6]
	strh r0, [r4, 0x6]
_080A7486:
	add sp, 0x10
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_80A73E0

	thumb_func_start sub_80A749C
sub_80A749C: @ 80A749C
	push {r4,lr}
	sub sp, 0x4
	adds r4, r0, 0
	movs r3, 0x80
	lsls r3, 1
	movs r0, 0
	str r0, [sp]
	adds r0, r4, 0
	movs r1, 0x1
	adds r2, r3, 0
	bl sub_80A73E0
	adds r2, r4, 0
	adds r2, 0x2C
	ldrb r1, [r2]
	movs r0, 0x7F
	ands r0, r1
	strb r0, [r2]
	ldrb r3, [r4, 0x1]
	lsrs r1, r3, 6
	ldrb r2, [r4, 0x3]
	lsrs r2, 6
	lsls r3, 30
	lsrs r3, 30
	adds r0, r4, 0
	bl CalcVecFromObjectCenterToObjectUpperLeft
	add sp, 0x4
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_80A749C

	thumb_func_start sub_80A74DC
sub_80A74DC: @ 80A74DC
	push {lr}
	lsls r0, 16
	asrs r0, 16
	lsls r1, 16
	asrs r1, 16
	bl ArcTan2
	lsls r0, 16
	lsrs r0, 16
	pop {r1}
	bx r1
	thumb_func_end sub_80A74DC

	thumb_func_start sub_80A74F4
sub_80A74F4: @ 80A74F4
	push {lr}
	lsls r0, 16
	asrs r0, 16
	lsls r1, 16
	asrs r1, 16
	bl sub_80A74DC
	lsls r0, 16
	negs r0, r0
	lsrs r0, 16
	pop {r1}
	bx r1
	thumb_func_end sub_80A74F4

	thumb_func_start sub_80A750C
sub_80A750C: @ 80A750C
	push {r4-r7,lr}
	lsls r1, 24
	lsls r0, 20
	lsrs r0, 16
	cmp r1, 0
	bne _080A7588
	ldr r2, =gUnknown_02037714
	ldr r1, =gUnknown_02037B14
	lsls r0, 1
	adds r4, r0, r1
	adds r5, r0, r2
	movs r6, 0xF
_080A7524:
	ldr r0, [r5]
	lsls r2, r0, 27
	lsrs r2, 27
	lsls r1, r0, 22
	lsrs r1, 27
	adds r2, r1
	lsls r0, 17
	lsrs r0, 27
	adds r0, r2
	movs r1, 0x3
	bl __udivsi3
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x1F
	ands r0, r1
	ldrb r1, [r4]
	movs r3, 0x20
	negs r3, r3
	adds r2, r3, 0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4]
	lsls r3, r0, 5
	ldrh r1, [r4]
	ldr r7, =0xfffffc1f
	adds r2, r7, 0
	ands r1, r2
	orrs r1, r3
	strh r1, [r4]
	lsls r0, 2
	ldrb r1, [r4, 0x1]
	movs r3, 0x7D
	negs r3, r3
	adds r2, r3, 0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, 0x1]
	adds r4, 0x2
	adds r5, 0x2
	subs r6, 0x1
	cmp r6, 0
	bge _080A7524
	b _080A7598
	.pool
_080A7588:
	lsls r1, r0, 1
	ldr r0, =gUnknown_02037714
	adds r0, r1, r0
	ldr r2, =gUnknown_02037B14
	adds r1, r2
	ldr r2, =0x04000008
	bl CpuSet
_080A7598:
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_80A750C

	thumb_func_start sub_80A75AC
sub_80A75AC: @ 80A75AC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x8
	ldr r4, [sp, 0x28]
	ldr r5, [sp, 0x2C]
	ldr r6, [sp, 0x30]
	lsls r0, 24
	lsls r1, 24
	lsrs r7, r1, 24
	lsls r2, 24
	lsrs r2, 24
	mov r8, r2
	lsls r3, 24
	lsrs r3, 24
	mov r9, r3
	lsls r4, 24
	lsrs r4, 24
	mov r10, r4
	lsls r5, 24
	lsrs r5, 24
	str r5, [sp]
	lsls r6, 24
	lsrs r6, 24
	str r6, [sp, 0x4]
	movs r4, 0
	cmp r0, 0
	beq _080A7602
	bl sub_80A4DF0
	lsls r0, 24
	cmp r0, 0
	bne _080A75F6
	movs r4, 0xE
	b _080A7602
_080A75F6:
	bl sub_80A6D94
	lsls r0, 24
	lsrs r0, 24
	movs r4, 0x1
	lsls r4, r0
_080A7602:
	cmp r7, 0
	beq _080A7614
	ldr r0, =gUnknown_02038436
	ldrb r0, [r0]
	adds r1, r0, 0
	adds r1, 0x10
	movs r0, 0x1
	lsls r0, r1
	orrs r4, r0
_080A7614:
	mov r0, r8
	cmp r0, 0
	beq _080A7628
	ldr r0, =gUnknown_02038437
	ldrb r0, [r0]
	adds r1, r0, 0
	adds r1, 0x10
	movs r0, 0x1
	lsls r0, r1
	orrs r4, r0
_080A7628:
	mov r0, r9
	cmp r0, 0
	beq _080A764E
	ldr r6, =gUnknown_02038436
	ldrb r0, [r6]
	movs r5, 0x2
	eors r0, r5
	bl b_side_obj__get_some_boolean
	lsls r0, 24
	cmp r0, 0
	beq _080A764E
	ldrb r0, [r6]
	eors r0, r5
	adds r1, r0, 0
	adds r1, 0x10
	movs r0, 0x1
	lsls r0, r1
	orrs r4, r0
_080A764E:
	mov r0, r10
	cmp r0, 0
	beq _080A7674
	ldr r6, =gUnknown_02038437
	ldrb r0, [r6]
	movs r5, 0x2
	eors r0, r5
	bl b_side_obj__get_some_boolean
	lsls r0, 24
	cmp r0, 0
	beq _080A7674
	ldrb r0, [r6]
	eors r0, r5
	adds r1, r0, 0
	adds r1, 0x10
	movs r0, 0x1
	lsls r0, r1
	orrs r4, r0
_080A7674:
	ldr r0, [sp]
	cmp r0, 0
	beq _080A769A
	bl sub_80A4DF0
	lsls r0, 24
	cmp r0, 0
	bne _080A7694
	movs r0, 0x80
	lsls r0, 1
	b _080A7698
	.pool
_080A7694:
	movs r0, 0x80
	lsls r0, 7
_080A7698:
	orrs r4, r0
_080A769A:
	ldr r0, [sp, 0x4]
	cmp r0, 0
	beq _080A76B0
	bl sub_80A4DF0
	lsls r0, 24
	cmp r0, 0
	bne _080A76B0
	movs r0, 0x80
	lsls r0, 2
	orrs r4, r0
_080A76B0:
	adds r0, r4, 0
	add sp, 0x8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_80A75AC

	thumb_func_start sub_80A76C4
sub_80A76C4: @ 80A76C4
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsls r0, 24
	lsrs r5, r0, 24
	lsls r1, 24
	lsrs r6, r1, 24
	lsls r2, 24
	lsrs r7, r2, 24
	lsls r3, 24
	lsrs r3, 24
	mov r8, r3
	movs r4, 0
	bl sub_80A4DF0
	lsls r0, 24
	cmp r0, 0
	beq _080A76F2
	cmp r5, 0
	beq _080A77A0
	movs r4, 0x80
	lsls r4, 11
	b _080A77A0
_080A76F2:
	cmp r5, 0
	beq _080A771A
	movs r0, 0
	bl battle_get_side_with_given_state
	lsls r0, 24
	lsrs r0, 24
	bl b_side_obj__get_some_boolean
	lsls r0, 24
	cmp r0, 0
	beq _080A771A
	movs r0, 0
	bl battle_get_side_with_given_state
	lsls r0, 24
	lsrs r0, 24
	adds r0, 0x10
	movs r4, 0x1
	lsls r4, r0
_080A771A:
	cmp r6, 0
	beq _080A7746
	movs r0, 0x2
	bl battle_get_side_with_given_state
	lsls r0, 24
	lsrs r0, 24
	bl b_side_obj__get_some_boolean
	lsls r0, 24
	cmp r0, 0
	beq _080A7746
	movs r0, 0x2
	bl battle_get_side_with_given_state
	lsls r0, 24
	lsrs r0, 24
	adds r1, r0, 0
	adds r1, 0x10
	movs r0, 0x1
	lsls r0, r1
	orrs r4, r0
_080A7746:
	cmp r7, 0
	beq _080A7772
	movs r0, 0x1
	bl battle_get_side_with_given_state
	lsls r0, 24
	lsrs r0, 24
	bl b_side_obj__get_some_boolean
	lsls r0, 24
	cmp r0, 0
	beq _080A7772
	movs r0, 0x1
	bl battle_get_side_with_given_state
	lsls r0, 24
	lsrs r0, 24
	adds r1, r0, 0
	adds r1, 0x10
	movs r0, 0x1
	lsls r0, r1
	orrs r4, r0
_080A7772:
	mov r0, r8
	cmp r0, 0
	beq _080A77A0
	movs r0, 0x3
	bl battle_get_side_with_given_state
	lsls r0, 24
	lsrs r0, 24
	bl b_side_obj__get_some_boolean
	lsls r0, 24
	cmp r0, 0
	beq _080A77A0
	movs r0, 0x3
	bl battle_get_side_with_given_state
	lsls r0, 24
	lsrs r0, 24
	adds r1, r0, 0
	adds r1, 0x10
	movs r0, 0x1
	lsls r0, r1
	orrs r4, r0
_080A77A0:
	adds r0, r4, 0
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_80A76C4

	thumb_func_start sub_80A77AC
sub_80A77AC: @ 80A77AC
	lsls r0, 24
	lsrs r0, 24
	bx lr
	thumb_func_end sub_80A77AC

	thumb_func_start sub_80A77B4
sub_80A77B4: @ 80A77B4
	push {lr}
	lsls r0, 24
	lsrs r0, 24
	bl battle_get_side_with_given_state
	lsls r0, 24
	lsrs r0, 24
	pop {r1}
	bx r1
	thumb_func_end sub_80A77B4

	thumb_func_start sub_80A77C8
sub_80A77C8: @ 80A77C8
	push {r4,lr}
	adds r4, r0, 0
	movs r1, 0x2E
	ldrsh r0, [r4, r1]
	cmp r0, 0
	bne _080A7806
	ldr r2, =gUnknown_0203841E
	movs r3, 0x6
	ldrsh r0, [r2, r3]
	movs r1, 0
	cmp r0, 0
	bne _080A77E2
	movs r1, 0x1
_080A77E2:
	movs r3, 0x4
	ldrsh r0, [r2, r3]
	cmp r0, 0
	bne _080A77F8
	adds r0, r4, 0
	bl sub_80A69CC
	b _080A77FE
	.pool
_080A77F8:
	adds r0, r4, 0
	bl sub_80A6980
_080A77FE:
	ldrh r0, [r4, 0x2E]
	adds r0, 0x1
	strh r0, [r4, 0x2E]
	b _080A781A
_080A7806:
	adds r0, r4, 0
	adds r0, 0x3F
	ldrb r1, [r0]
	movs r0, 0x30
	ands r0, r1
	cmp r0, 0
	beq _080A781A
	adds r0, r4, 0
	bl move_anim_8074EE0
_080A781A:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_80A77C8

	thumb_func_start sub_80A7820
sub_80A7820: @ 80A7820
	push {r4-r7,lr}
	adds r5, r0, 0
	ldr r6, =gUnknown_0203841E
	movs r1, 0xA
	ldrsh r0, [r6, r1]
	movs r1, 0xFF
	lsls r1, 8
	ands r0, r1
	movs r1, 0
	cmp r0, 0
	bne _080A7838
	movs r1, 0x1
_080A7838:
	ldrb r0, [r6, 0xA]
	movs r7, 0x1
	cmp r0, 0
	bne _080A7842
	movs r7, 0x3
_080A7842:
	adds r0, r5, 0
	bl sub_80A69CC
	ldr r0, =gUnknown_02038436
	ldrb r0, [r0]
	bl battle_side_get_owner
	lsls r0, 24
	cmp r0, 0
	beq _080A785C
	ldrh r0, [r6, 0x4]
	negs r0, r0
	strh r0, [r6, 0x4]
_080A785C:
	ldrh r0, [r6, 0x8]
	strh r0, [r5, 0x2E]
	ldr r4, =gUnknown_02038437
	ldrb r0, [r4]
	movs r1, 0x2
	bl sub_80A5C6C
	lsls r0, 24
	lsrs r0, 24
	ldrh r1, [r6, 0x4]
	adds r0, r1
	strh r0, [r5, 0x32]
	ldrb r0, [r4]
	adds r1, r7, 0
	bl sub_80A5C6C
	lsls r0, 24
	lsrs r0, 24
	ldrh r6, [r6, 0x6]
	adds r0, r6
	strh r0, [r5, 0x36]
	ldr r0, =sub_80A6EEC
	str r0, [r5, 0x1C]
	ldr r1, =move_anim_8072740
	adds r0, r5, 0
	bl oamt_set_x3A_32
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_80A7820

	thumb_func_start sub_80A78AC
sub_80A78AC: @ 80A78AC
	push {r4-r6,lr}
	adds r6, r0, 0
	movs r1, 0x1
	bl sub_80A69CC
	ldr r0, =gUnknown_02038436
	ldrb r0, [r0]
	bl battle_side_get_owner
	lsls r0, 24
	cmp r0, 0
	beq _080A78CC
	ldr r1, =gUnknown_0203841E
	ldrh r0, [r1, 0x4]
	negs r0, r0
	strh r0, [r1, 0x4]
_080A78CC:
	ldr r4, =gUnknown_0203841E
	ldrh r0, [r4, 0x8]
	strh r0, [r6, 0x2E]
	ldr r5, =gUnknown_02038437
	ldrb r0, [r5]
	movs r1, 0x2
	bl sub_80A5C6C
	lsls r0, 24
	lsrs r0, 24
	ldrh r1, [r4, 0x4]
	adds r0, r1
	strh r0, [r6, 0x32]
	ldrb r0, [r5]
	movs r1, 0x3
	bl sub_80A5C6C
	lsls r0, 24
	lsrs r0, 24
	ldrh r1, [r4, 0x6]
	adds r0, r1
	strh r0, [r6, 0x36]
	ldrh r0, [r4, 0xA]
	strh r0, [r6, 0x38]
	adds r0, r6, 0
	bl sub_80A68D4
	ldr r0, =sub_80A791C
	str r0, [r6, 0x1C]
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_80A78AC

	thumb_func_start sub_80A791C
sub_80A791C: @ 80A791C
	push {r4,lr}
	adds r4, r0, 0
	bl sub_80A6900
	lsls r0, 24
	cmp r0, 0
	beq _080A7930
	adds r0, r4, 0
	bl move_anim_8072740
_080A7930:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_80A791C

	thumb_func_start sub_80A7938
sub_80A7938: @ 80A7938
	push {r4-r7,lr}
	adds r5, r0, 0
	ldr r0, =gUnknown_0203841E
	movs r2, 0xC
	ldrsh r1, [r0, r2]
	cmp r1, 0
	bne _080A7950
	movs r4, 0x1
	movs r7, 0x3
	b _080A7954
	.pool
_080A7950:
	movs r4, 0
	movs r7, 0x1
_080A7954:
	movs r1, 0xA
	ldrsh r0, [r0, r1]
	cmp r0, 0
	bne _080A796C
	adds r0, r5, 0
	adds r1, r4, 0
	bl sub_80A69CC
	ldr r0, =gUnknown_02038436
	b _080A7976
	.pool
_080A796C:
	adds r0, r5, 0
	adds r1, r4, 0
	bl sub_80A6980
	ldr r0, =gUnknown_02038437
_080A7976:
	ldrb r6, [r0]
	ldr r0, =gUnknown_02038436
	ldrb r0, [r0]
	bl battle_side_get_owner
	lsls r0, 24
	cmp r0, 0
	beq _080A798E
	ldr r1, =gUnknown_0203841E
	ldrh r0, [r1, 0x4]
	negs r0, r0
	strh r0, [r1, 0x4]
_080A798E:
	adds r0, r5, 0
	adds r1, r4, 0
	bl sub_80A6980
	ldr r4, =gUnknown_0203841E
	ldrh r0, [r4, 0x8]
	strh r0, [r5, 0x2E]
	adds r0, r6, 0
	movs r1, 0x2
	bl sub_80A5C6C
	lsls r0, 24
	lsrs r0, 24
	ldrh r2, [r4, 0x4]
	adds r0, r2
	strh r0, [r5, 0x32]
	adds r0, r6, 0
	adds r1, r7, 0
	bl sub_80A5C6C
	lsls r0, 24
	lsrs r0, 24
	ldrh r4, [r4, 0x6]
	adds r0, r4
	strh r0, [r5, 0x36]
	ldr r0, =sub_80A6EEC
	str r0, [r5, 0x1C]
	ldr r1, =move_anim_8072740
	adds r0, r5, 0
	bl oamt_set_x3A_32
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_80A7938

	thumb_func_start duplicate_obj_of_side_rel2move_in_transparent_mode
duplicate_obj_of_side_rel2move_in_transparent_mode: @ 80A79E8
	push {r4-r6,lr}
	lsls r0, 24
	lsrs r0, 24
	bl obj_id_for_side_relative_to_move
	lsls r0, 24
	lsrs r1, r0, 24
	cmp r1, 0xFF
	beq _080A7A52
	movs r6, 0
	ldr r2, =gUnknown_02020630
	lsls r0, r1, 4
	adds r0, r1
	lsls r1, r0, 2
_080A7A04:
	lsls r0, r6, 4
	adds r0, r6
	lsls r0, 2
	adds r4, r0, r2
	adds r5, r4, 0
	adds r5, 0x3E
	ldrb r0, [r5]
	lsls r0, 31
	cmp r0, 0
	bne _080A7A48
	adds r0, r4, 0
	adds r1, r2
	movs r2, 0x44
	bl memcpy
	ldrb r1, [r4, 0x1]
	movs r2, 0xD
	negs r2, r2
	adds r0, r2, 0
	ands r1, r0
	movs r0, 0x4
	orrs r1, r0
	strb r1, [r4, 0x1]
	ldrb r0, [r5]
	adds r2, 0x8
	adds r1, r2, 0
	ands r0, r1
	strb r0, [r5]
	lsls r0, r6, 16
	asrs r0, 16
	b _080A7A56
	.pool
_080A7A48:
	adds r0, r6, 0x1
	lsls r0, 16
	lsrs r6, r0, 16
	cmp r6, 0x3F
	bls _080A7A04
_080A7A52:
	movs r0, 0x1
	negs r0, r0
_080A7A56:
	pop {r4-r6}
	pop {r1}
	bx r1
	thumb_func_end duplicate_obj_of_side_rel2move_in_transparent_mode

	thumb_func_start obj_delete_but_dont_free_vram
obj_delete_but_dont_free_vram: @ 80A7A5C
	push {lr}
	adds r3, r0, 0
	adds r3, 0x3F
	ldrb r1, [r3]
	movs r2, 0x40
	orrs r1, r2
	strb r1, [r3]
	bl RemoveObjectAndFreeTiles
	pop {r0}
	bx r0
	thumb_func_end obj_delete_but_dont_free_vram

	thumb_func_start sub_80A7A74
sub_80A7A74: @ 80A7A74
	push {r4-r6,lr}
	lsls r0, 24
	lsrs r5, r0, 24
	movs r6, 0
	movs r3, 0
	ldr r2, =gUnknown_0203841E
	movs r0, 0x4
	ldrsh r1, [r2, r0]
	movs r4, 0
	ldrsh r0, [r2, r4]
	cmp r1, r0
	ble _080A7A8E
	movs r3, 0x1
_080A7A8E:
	cmp r1, r0
	bge _080A7A94
	ldr r3, =0x0000ffff
_080A7A94:
	movs r0, 0x6
	ldrsh r1, [r2, r0]
	movs r4, 0x2
	ldrsh r0, [r2, r4]
	cmp r1, r0
	ble _080A7AA2
	movs r6, 0x1
_080A7AA2:
	cmp r1, r0
	bge _080A7AA8
	ldr r6, =0x0000ffff
_080A7AA8:
	ldr r0, =gTasks
	lsls r4, r5, 2
	adds r4, r5
	lsls r4, 3
	adds r4, r0
	movs r1, 0
	strh r1, [r4, 0x8]
	ldrh r0, [r2, 0x8]
	strh r0, [r4, 0xA]
	strh r1, [r4, 0xC]
	ldrh r0, [r2]
	strh r0, [r4, 0xE]
	ldrh r0, [r2, 0x2]
	strh r0, [r4, 0x10]
	strh r3, [r4, 0x12]
	strh r6, [r4, 0x14]
	ldrh r0, [r2, 0x4]
	strh r0, [r4, 0x16]
	ldrh r0, [r2, 0x6]
	strh r0, [r4, 0x18]
	ldrh r1, [r2, 0x2]
	lsls r1, 8
	ldrh r0, [r2]
	orrs r1, r0
	lsls r1, 16
	lsrs r1, 16
	movs r0, 0x52
	bl SetGpuReg
	ldr r0, =sub_80A7AFC
	str r0, [r4]
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_80A7A74

	thumb_func_start sub_80A7AFC
sub_80A7AFC: @ 80A7AFC
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r5, r0, 24
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	ldr r1, =gTasks
	adds r4, r0, r1
	ldrh r0, [r4, 0x8]
	adds r0, 0x1
	strh r0, [r4, 0x8]
	lsls r0, 16
	asrs r0, 16
	movs r2, 0xA
	ldrsh r1, [r4, r2]
	cmp r0, r1
	ble _080A7B90
	movs r0, 0
	strh r0, [r4, 0x8]
	ldrh r0, [r4, 0xC]
	adds r0, 0x1
	strh r0, [r4, 0xC]
	movs r1, 0x1
	ands r0, r1
	cmp r0, 0
	beq _080A7B4C
	ldrh r2, [r4, 0xE]
	movs r3, 0xE
	ldrsh r1, [r4, r3]
	movs r3, 0x16
	ldrsh r0, [r4, r3]
	cmp r1, r0
	beq _080A7B60
	ldrh r0, [r4, 0x12]
	adds r0, r2, r0
	strh r0, [r4, 0xE]
	b _080A7B60
	.pool
_080A7B4C:
	ldrh r2, [r4, 0x10]
	movs r0, 0x10
	ldrsh r1, [r4, r0]
	movs r3, 0x18
	ldrsh r0, [r4, r3]
	cmp r1, r0
	beq _080A7B60
	ldrh r0, [r4, 0x14]
	adds r0, r2, r0
	strh r0, [r4, 0x10]
_080A7B60:
	ldrh r1, [r4, 0x10]
	lsls r1, 8
	ldrh r0, [r4, 0xE]
	orrs r1, r0
	lsls r1, 16
	lsrs r1, 16
	movs r0, 0x52
	bl SetGpuReg
	movs r0, 0xE
	ldrsh r1, [r4, r0]
	movs r2, 0x16
	ldrsh r0, [r4, r2]
	cmp r1, r0
	bne _080A7B90
	movs r3, 0x10
	ldrsh r1, [r4, r3]
	movs r2, 0x18
	ldrsh r0, [r4, r2]
	cmp r1, r0
	bne _080A7B90
	adds r0, r5, 0
	bl move_anim_task_del
_080A7B90:
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end sub_80A7AFC

	thumb_func_start sub_80A7B98
sub_80A7B98: @ 80A7B98
	push {r4,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	ldr r0, =gUnknown_0203841E
	ldrb r0, [r0]
	bl obj_id_for_side_relative_to_move
	lsls r0, 24
	lsrs r3, r0, 24
	cmp r3, 0xFF
	bne _080A7BBC
	adds r0, r4, 0
	bl move_anim_task_del
	b _080A7BE2
	.pool
_080A7BBC:
	ldr r1, =gTasks
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r0, r1
	ldr r2, =gUnknown_02020630
	lsls r1, r3, 4
	adds r1, r3
	lsls r1, 2
	adds r1, r2
	ldrb r1, [r1, 0x5]
	lsrs r1, 4
	lsls r1, 4
	ldr r3, =0x00000101
	adds r2, r3, 0
	adds r1, r2
	strh r1, [r0, 0x8]
	bl sub_80A7BF4
_080A7BE2:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_80A7B98

	thumb_func_start sub_80A7BF4
sub_80A7BF4: @ 80A7BF4
	ldr r3, =gUnknown_0203841E
	ldrh r1, [r3, 0x2]
	movs r2, 0
	strh r1, [r0, 0xA]
	strh r2, [r0, 0xC]
	ldrh r1, [r3, 0x4]
	strh r1, [r0, 0xE]
	strh r2, [r0, 0x10]
	ldrh r1, [r3, 0x6]
	strh r1, [r0, 0x12]
	strh r2, [r0, 0x14]
	ldrh r1, [r3, 0x8]
	strh r1, [r0, 0x16]
	ldr r1, =sub_80A7C1C
	str r1, [r0]
	bx lr
	.pool
	thumb_func_end sub_80A7BF4

	thumb_func_start sub_80A7C1C
sub_80A7C1C: @ 80A7C1C
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r0, 24
	adds r5, r0, 0
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	ldr r1, =gTasks
	adds r4, r0, r1
	ldrh r0, [r4, 0x10]
	adds r0, 0x1
	strh r0, [r4, 0x10]
	lsls r0, 16
	asrs r0, 16
	movs r2, 0x12
	ldrsh r1, [r4, r2]
	cmp r0, r1
	blt _080A7CAC
	movs r0, 0
	strh r0, [r4, 0x10]
	movs r1, 0x14
	ldrsh r0, [r4, r1]
	cmp r0, 0
	bne _080A7C78
	ldrh r2, [r4, 0xC]
	adds r2, 0x1
	strh r2, [r4, 0xC]
	ldrh r0, [r4, 0x8]
	lsls r2, 24
	lsrs r2, 24
	ldrh r3, [r4, 0xA]
	movs r1, 0xF
	bl pal_fade_1
	movs r2, 0xC
	ldrsh r1, [r4, r2]
	movs r2, 0xE
	ldrsh r0, [r4, r2]
	cmp r1, r0
	bne _080A7CAC
	movs r0, 0x1
	strh r0, [r4, 0x14]
	b _080A7CAC
	.pool
_080A7C78:
	ldrh r2, [r4, 0xC]
	subs r2, 0x1
	strh r2, [r4, 0xC]
	ldrh r0, [r4, 0x8]
	lsls r2, 24
	lsrs r2, 24
	ldrh r3, [r4, 0xA]
	movs r1, 0xF
	bl pal_fade_1
	movs r0, 0xC
	ldrsh r1, [r4, r0]
	cmp r1, 0
	bne _080A7CAC
	ldrh r0, [r4, 0x16]
	subs r0, 0x1
	strh r0, [r4, 0x16]
	lsls r0, 16
	cmp r0, 0
	beq _080A7CA6
	strh r1, [r4, 0x10]
	strh r1, [r4, 0x14]
	b _080A7CAC
_080A7CA6:
	adds r0, r5, 0
	bl move_anim_task_del
_080A7CAC:
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end sub_80A7C1C

	thumb_func_start sub_80A7CB4
sub_80A7CB4: @ 80A7CB4
	push {r4,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	ldr r0, =gUnknown_0203841E
	ldrh r0, [r0]
	bl IndexOfObjectPaletteTag
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, 0xFF
	bne _080A7CD8
	adds r0, r4, 0
	bl move_anim_task_del
	b _080A7CEE
	.pool
_080A7CD8:
	ldr r1, =gTasks
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r0, r1
	lsls r1, r2, 4
	ldr r2, =0x00000101
	adds r1, r2
	strh r1, [r0, 0x8]
	bl sub_80A7BF4
_080A7CEE:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_80A7CB4

	thumb_func_start sub_80A7CFC
sub_80A7CFC: @ 80A7CFC
	push {r4,lr}
	adds r3, r0, 0
	adds r4, r1, 0
	lsls r4, 24
	lsrs r4, 24
	movs r1, 0
	strh r1, [r3, 0x16]
	strh r1, [r3, 0x18]
	strh r1, [r3, 0x1A]
	strh r4, [r3, 0x26]
	movs r0, 0x80
	lsls r0, 1
	strh r0, [r3, 0x1C]
	strh r0, [r3, 0x1E]
	strh r1, [r3, 0x20]
	adds r0, r3, 0
	adds r0, 0x22
	adds r3, 0x24
	adds r1, r3, 0
	bl sub_80A8048
	adds r0, r4, 0
	movs r1, 0
	bl sub_80A7270
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_80A7CFC

	thumb_func_start sub_80A7D34
sub_80A7D34: @ 80A7D34
	push {r4-r6,lr}
	adds r4, r0, 0
	ldr r5, =gUnknown_02038444
	movs r1, 0x22
	ldrsh r0, [r4, r1]
	movs r2, 0x24
	ldrsh r1, [r4, r2]
	bl sub_80A8050
	movs r3, 0x16
	ldrsh r1, [r4, r3]
	lsls r1, 3
	adds r1, r0, r1
	str r1, [r5]
	movs r6, 0
	ldrsh r2, [r1, r6]
	ldr r0, =0x00007ffe
	cmp r2, r0
	beq _080A7DDC
	cmp r2, r0
	bgt _080A7E3C
	subs r0, 0x1
	cmp r2, r0
	beq _080A7DE2
	ldrb r0, [r1, 0x5]
	cmp r0, 0
	bne _080A7D82
	ldrh r0, [r1]
	strh r0, [r4, 0x1C]
	ldrh r0, [r1, 0x2]
	strh r0, [r4, 0x1E]
	ldrb r0, [r1, 0x4]
	strh r0, [r4, 0x20]
	ldrh r0, [r4, 0x16]
	adds r0, 0x1
	strh r0, [r4, 0x16]
	adds r0, r1, 0
	adds r0, 0x8
	str r0, [r5]
_080A7D82:
	ldr r1, [r5]
	ldrh r0, [r1]
	ldrh r2, [r4, 0x1C]
	adds r0, r2
	strh r0, [r4, 0x1C]
	ldrh r0, [r1, 0x2]
	ldrh r3, [r4, 0x1E]
	adds r0, r3
	strh r0, [r4, 0x1E]
	ldrh r0, [r4, 0x20]
	ldrb r1, [r1, 0x4]
	adds r0, r1
	strh r0, [r4, 0x20]
	ldrh r0, [r4, 0x26]
	lsls r0, 24
	lsrs r0, 24
	movs r6, 0x1C
	ldrsh r1, [r4, r6]
	movs r3, 0x1E
	ldrsh r2, [r4, r3]
	ldrh r3, [r4, 0x20]
	bl obj_id_set_rotscale
	ldrh r0, [r4, 0x26]
	lsls r0, 24
	lsrs r0, 24
	bl sub_80A7E6C
	ldrh r0, [r4, 0x18]
	adds r0, 0x1
	strh r0, [r4, 0x18]
	lsls r0, 16
	asrs r0, 16
	ldr r1, [r5]
	ldrb r1, [r1, 0x5]
	cmp r0, r1
	blt _080A7E62
	movs r0, 0
	strh r0, [r4, 0x18]
	b _080A7E34
	.pool
_080A7DDC:
	ldrh r0, [r1, 0x2]
	strh r0, [r4, 0x16]
	b _080A7E62
_080A7DE2:
	ldrh r2, [r1, 0x2]
	movs r6, 0x2
	ldrsh r0, [r1, r6]
	cmp r0, 0
	beq _080A7E34
	ldrh r1, [r4, 0x1A]
	movs r3, 0x1A
	ldrsh r0, [r4, r3]
	cmp r0, 0
	beq _080A7E02
	subs r0, r1, 0x1
	strh r0, [r4, 0x1A]
	lsls r0, 16
	cmp r0, 0
	bne _080A7E04
	b _080A7E34
_080A7E02:
	strh r2, [r4, 0x1A]
_080A7E04:
	movs r6, 0x16
	ldrsh r0, [r4, r6]
	cmp r0, 0
	beq _080A7E62
	ldr r3, =gUnknown_02038444
	ldr r5, =0x00007ffd
_080A7E10:
	ldrh r2, [r4, 0x16]
	subs r1, r2, 0x1
	strh r1, [r4, 0x16]
	ldr r0, [r3]
	subs r0, 0x8
	str r0, [r3]
	movs r6, 0
	ldrsh r0, [r0, r6]
	cmp r0, r5
	beq _080A7E60
	lsls r0, r1, 16
	cmp r0, 0
	bne _080A7E10
	b _080A7E62
	.pool
_080A7E34:
	ldrh r0, [r4, 0x16]
	adds r0, 0x1
	strh r0, [r4, 0x16]
	b _080A7E62
_080A7E3C:
	ldr r2, =gUnknown_02020630
	movs r0, 0x26
	ldrsh r1, [r4, r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	movs r1, 0
	strh r1, [r0, 0x26]
	ldrh r0, [r4, 0x26]
	lsls r0, 24
	lsrs r0, 24
	bl sub_80A7344
	movs r0, 0
	b _080A7E64
	.pool
_080A7E60:
	strh r2, [r4, 0x16]
_080A7E62:
	movs r0, 0x1
_080A7E64:
	pop {r4-r6}
	pop {r1}
	bx r1
	thumb_func_end sub_80A7D34

	thumb_func_start sub_80A7E6C
sub_80A7E6C: @ 80A7E6C
	push {r4,r5,lr}
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	adds r0, r4, 0
	bl sub_80A7F18
	lsls r0, 16
	lsrs r0, 15
	movs r1, 0x40
	subs r5, r1, r0
	ldr r1, =gUnknown_02020630
	lsls r0, r4, 4
	adds r0, r4
	lsls r0, 2
	adds r4, r0, r1
	ldrb r1, [r4, 0x3]
	lsls r1, 26
	lsrs r1, 27
	lsls r0, r5, 8
	ldr r2, =gUnknown_02021BC0
	lsls r1, 3
	adds r1, r2
	movs r2, 0x6
	ldrsh r1, [r1, r2]
	bl __divsi3
	cmp r0, 0x80
	ble _080A7EA8
	movs r0, 0x80
_080A7EA8:
	subs r0, r5, r0
	lsrs r1, r0, 31
	adds r0, r1
	asrs r0, 1
	strh r0, [r4, 0x26]
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_80A7E6C

	thumb_func_start sub_80A7EC0
sub_80A7EC0: @ 80A7EC0
	push {r4,r5,lr}
	adds r4, r0, 0
	adds r0, r1, 0
	lsls r4, 24
	lsrs r4, 24
	lsls r0, 24
	lsrs r0, 24
	bl sub_80A7F18
	lsls r0, 16
	lsrs r0, 15
	movs r1, 0x40
	subs r5, r1, r0
	ldr r1, =gUnknown_02020630
	lsls r0, r4, 4
	adds r0, r4
	lsls r0, 2
	adds r4, r0, r1
	ldrb r1, [r4, 0x3]
	lsls r1, 26
	lsrs r1, 27
	lsls r0, r5, 8
	ldr r2, =gUnknown_02021BC0
	lsls r1, 3
	adds r1, r2
	movs r2, 0x6
	ldrsh r1, [r1, r2]
	bl __divsi3
	cmp r0, 0x80
	ble _080A7F00
	movs r0, 0x80
_080A7F00:
	subs r0, r5, r0
	lsrs r1, r0, 31
	adds r0, r1
	asrs r0, 1
	strh r0, [r4, 0x26]
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_80A7EC0

	thumb_func_start sub_80A7F18
sub_80A7F18: @ 80A7F18
	push {r4-r7,lr}
	lsls r0, 24
	lsrs r2, r0, 24
	ldr r1, =gUnknown_02020630
	lsls r0, r2, 4
	adds r0, r2
	lsls r0, 2
	adds r0, r1
	ldrh r0, [r0, 0x2E]
	lsls r0, 24
	lsrs r5, r0, 24
	movs r4, 0
	ldr r1, =gUnknown_020241E4
	ldr r7, =0x00000181
	ldr r0, =gUnknown_020244E4
	adds r6, r5, r0
_080A7F38:
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, r2
	beq _080A7F42
	b _080A8034
_080A7F42:
	bl sub_80A4DF0
	lsls r0, 24
	cmp r0, 0
	beq _080A7F78
	ldr r0, =gUnknown_02039F34
	ldr r0, [r0]
	ldr r0, [r0, 0x18]
	ldrh r2, [r0]
	ldr r1, =gUnknown_083021D8
	lsls r0, r2, 2
	adds r0, r1
	ldrb r0, [r0, 0x1]
	b _080A8042
	.pool
_080A7F78:
	lsls r0, r4, 24
	lsrs r0, 24
	bl battle_side_get_owner
	lsls r0, 24
	cmp r0, 0
	bne _080A7FD8
	ldr r0, =gUnknown_020244D0
	ldr r0, [r0]
	ldr r1, [r0]
	lsls r0, r5, 2
	adds r1, r0, r1
	ldrh r0, [r1, 0x2]
	cmp r0, 0
	bne _080A7FC0
	ldr r1, =gUnknown_0202406E
	lsls r0, r4, 1
	adds r0, r1
	ldrh r1, [r0]
	movs r0, 0x64
	muls r0, r1
	ldr r1, =gUnknown_020244EC
	adds r0, r1
	movs r1, 0xB
	bl pokemon_getattr
	lsls r0, 16
	lsrs r2, r0, 16
	b _080A7FC2
	.pool
_080A7FC0:
	ldrh r2, [r1, 0x2]
_080A7FC2:
	cmp r2, r7
	bne _080A7FD0
	ldr r0, =gUnknown_08525F8C
	b _080A8018
	.pool
_080A7FD0:
	ldr r0, =gUnknown_083021D8
	b _080A8026
	.pool
_080A7FD8:
	ldr r0, =gUnknown_020244D0
	ldr r0, [r0]
	ldr r1, [r0]
	lsls r0, r5, 2
	adds r1, r0, r1
	ldrh r0, [r1, 0x2]
	cmp r0, 0
	bne _080A8010
	ldr r1, =gUnknown_0202406E
	lsls r0, r4, 1
	adds r0, r1
	ldrh r1, [r0]
	movs r0, 0x64
	muls r0, r1
	ldr r1, =gUnknown_02024744
	adds r0, r1
	movs r1, 0xB
	bl pokemon_getattr
	lsls r0, 16
	lsrs r2, r0, 16
	b _080A8012
	.pool
_080A8010:
	ldrh r2, [r1, 0x2]
_080A8012:
	cmp r2, r7
	bne _080A8024
	ldr r0, =gUnknown_08525F88
_080A8018:
	ldrb r1, [r6]
	adds r1, r0
	ldrb r0, [r1]
	b _080A8042
	.pool
_080A8024:
	ldr r0, =gUnknown_08300D38
_080A8026:
	lsls r1, r2, 2
	adds r1, r0
	ldrb r0, [r1, 0x1]
	b _080A8042
	.pool
_080A8034:
	adds r0, r4, 0x1
	lsls r0, 16
	lsrs r4, r0, 16
	cmp r4, 0x3
	bhi _080A8040
	b _080A7F38
_080A8040:
	movs r0, 0x40
_080A8042:
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_80A7F18

	thumb_func_start sub_80A8048
sub_80A8048: @ 80A8048
	strh r2, [r0]
	asrs r2, 16
	strh r2, [r1]
	bx lr
	thumb_func_end sub_80A8048

	thumb_func_start sub_80A8050
sub_80A8050: @ 80A8050
	lsls r0, 16
	lsrs r0, 16
	lsls r1, 16
	orrs r0, r1
	bx lr
	thumb_func_end sub_80A8050

	thumb_func_start sub_80A805C
sub_80A805C: @ 80A805C
	push {r4-r6,lr}
	mov r6, r8
	push {r6}
	mov r8, r0
	adds r5, r3, 0
	ldr r0, [sp, 0x14]
	ldr r4, [sp, 0x18]
	ldr r6, [sp, 0x1C]
	lsls r1, 24
	lsrs r1, 24
	lsls r2, 16
	lsrs r2, 16
	lsls r5, 16
	lsrs r5, 16
	lsls r0, 16
	lsrs r0, 16
	lsls r4, 16
	lsrs r4, 16
	lsls r6, 16
	lsrs r6, 16
	mov r3, r8
	strh r6, [r3, 0x18]
	strh r1, [r3, 0x26]
	strh r2, [r3, 0x1A]
	strh r5, [r3, 0x1C]
	strh r0, [r3, 0x22]
	strh r4, [r3, 0x24]
	lsls r0, 16
	asrs r0, 16
	lsls r2, 16
	asrs r2, 16
	subs r0, r2
	adds r1, r6, 0
	bl __divsi3
	mov r1, r8
	strh r0, [r1, 0x1E]
	lsls r4, 16
	asrs r4, 16
	lsls r5, 16
	asrs r5, 16
	subs r4, r5
	adds r0, r4, 0
	adds r1, r6, 0
	bl __divsi3
	mov r3, r8
	strh r0, [r3, 0x20]
	pop {r3}
	mov r8, r3
	pop {r4-r6}
	pop {r0}
	bx r0
	thumb_func_end sub_80A805C

	thumb_func_start sub_80A80C8
sub_80A80C8: @ 80A80C8
	push {r4,lr}
	adds r4, r0, 0
	ldrh r1, [r4, 0x18]
	movs r2, 0x18
	ldrsh r0, [r4, r2]
	cmp r0, 0
	bne _080A80DA
	movs r0, 0
	b _080A8136
_080A80DA:
	subs r0, r1, 0x1
	strh r0, [r4, 0x18]
	lsls r0, 16
	cmp r0, 0
	beq _080A80F4
	ldrh r0, [r4, 0x1E]
	ldrh r3, [r4, 0x1A]
	adds r0, r3
	strh r0, [r4, 0x1A]
	ldrh r0, [r4, 0x20]
	ldrh r1, [r4, 0x1C]
	adds r0, r1
	b _080A80FA
_080A80F4:
	ldrh r0, [r4, 0x22]
	strh r0, [r4, 0x1A]
	ldrh r0, [r4, 0x24]
_080A80FA:
	strh r0, [r4, 0x1C]
	ldrh r0, [r4, 0x26]
	lsls r0, 24
	lsrs r0, 24
	movs r2, 0x1A
	ldrsh r1, [r4, r2]
	movs r3, 0x1C
	ldrsh r2, [r4, r3]
	movs r3, 0
	bl obj_id_set_rotscale
	movs r0, 0x18
	ldrsh r3, [r4, r0]
	cmp r3, 0
	beq _080A8124
	ldrh r0, [r4, 0x26]
	lsls r0, 24
	lsrs r0, 24
	bl sub_80A7E6C
	b _080A8134
_080A8124:
	ldr r2, =gUnknown_02020630
	movs r0, 0x26
	ldrsh r1, [r4, r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	strh r3, [r0, 0x26]
_080A8134:
	ldrb r0, [r4, 0x18]
_080A8136:
	pop {r4}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_80A80C8

	thumb_func_start sub_80A8140
sub_80A8140: @ 80A8140
	push {lr}
	lsls r0, 24
	lsrs r2, r0, 24
	ldr r0, =gUnknown_0203841A
	ldrb r0, [r0]
	movs r1, 0
	cmp r0, 0x1E
	bls _080A815E
	movs r1, 0x1
	cmp r0, 0x64
	bls _080A815E
	movs r1, 0x3
	cmp r0, 0xC8
	bhi _080A815E
	movs r1, 0x2
_080A815E:
	ldr r0, =gUnknown_0203841E
	strh r1, [r0, 0xE]
	adds r0, r2, 0
	bl move_anim_task_del
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_80A8140

	thumb_func_start sub_80A8174
sub_80A8174: @ 80A8174
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsls r0, 24
	lsrs r4, r0, 24
	adds r7, r4, 0
	ldr r6, =gUnknown_02038437
	ldrb r0, [r6]
	bl b_side_obj__get_some_boolean
	lsls r0, 24
	cmp r0, 0
	beq _080A81B4
	ldr r2, =gUnknown_02020630
	ldr r1, =gUnknown_020241E4
	ldrb r0, [r6]
	adds r0, r1
	ldrb r0, [r0]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r2
	movs r0, 0x3
	adds r2, r4, 0
	ands r2, r0
	lsls r2, 2
	ldrb r3, [r1, 0x5]
	movs r0, 0xD
	negs r0, r0
	ands r0, r3
	orrs r0, r2
	strb r0, [r1, 0x5]
_080A81B4:
	ldr r0, =gUnknown_02038436
	mov r8, r0
	ldrb r0, [r0]
	bl b_side_obj__get_some_boolean
	lsls r0, 24
	cmp r0, 0
	beq _080A81EC
	ldr r2, =gUnknown_02020630
	ldr r1, =gUnknown_020241E4
	mov r3, r8
	ldrb r0, [r3]
	adds r0, r1
	ldrb r0, [r0]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r2
	movs r0, 0x3
	adds r2, r4, 0
	ands r2, r0
	lsls r2, 2
	ldrb r3, [r1, 0x5]
	movs r0, 0xD
	negs r0, r0
	ands r0, r3
	orrs r0, r2
	strb r0, [r1, 0x5]
_080A81EC:
	ldrb r0, [r6]
	movs r5, 0x2
	eors r0, r5
	bl b_side_obj__get_some_boolean
	lsls r0, 24
	cmp r0, 0
	beq _080A8224
	ldr r2, =gUnknown_02020630
	ldr r1, =gUnknown_020241E4
	ldrb r0, [r6]
	eors r0, r5
	adds r0, r1
	ldrb r0, [r0]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r2
	movs r0, 0x3
	adds r2, r4, 0
	ands r2, r0
	lsls r2, 2
	ldrb r3, [r1, 0x5]
	movs r0, 0xD
	negs r0, r0
	ands r0, r3
	orrs r0, r2
	strb r0, [r1, 0x5]
_080A8224:
	mov r1, r8
	ldrb r0, [r1]
	eors r0, r5
	bl b_side_obj__get_some_boolean
	lsls r0, 24
	cmp r0, 0
	beq _080A825C
	ldr r2, =gUnknown_02020630
	ldr r1, =gUnknown_020241E4
	mov r3, r8
	ldrb r0, [r3]
	eors r0, r5
	adds r0, r1
	ldrb r0, [r0]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r2
	movs r0, 0x3
	ands r7, r0
	lsls r3, r7, 2
	ldrb r2, [r1, 0x5]
	movs r0, 0xD
	negs r0, r0
	ands r0, r2
	orrs r0, r3
	strb r0, [r1, 0x5]
_080A825C:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_80A8174

	thumb_func_start sub_80A8278
sub_80A8278: @ 80A8278
	push {r4-r6,lr}
	movs r5, 0
	ldr r0, =gUnknown_0202406C
	ldrb r0, [r0]
	cmp r5, r0
	bge _080A82D2
	ldr r6, =gUnknown_02020630
_080A8286:
	lsls r0, r5, 24
	lsrs r4, r0, 24
	adds r0, r4, 0
	bl b_side_obj__get_some_boolean
	lsls r0, 24
	cmp r0, 0
	beq _080A82C8
	adds r0, r4, 0
	bl sub_80A82E4
	ldr r3, =gUnknown_020241E4
	adds r3, r5, r3
	ldrb r2, [r3]
	lsls r1, r2, 4
	adds r1, r2
	lsls r1, 2
	adds r1, r6
	adds r1, 0x43
	strb r0, [r1]
	ldrb r1, [r3]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r6
	ldrb r2, [r0, 0x5]
	movs r3, 0xD
	negs r3, r3
	adds r1, r3, 0
	ands r2, r1
	movs r1, 0x8
	orrs r2, r1
	strb r2, [r0, 0x5]
_080A82C8:
	adds r5, 0x1
	ldr r0, =gUnknown_0202406C
	ldrb r0, [r0]
	cmp r5, r0
	blt _080A8286
_080A82D2:
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_80A8278

	thumb_func_start sub_80A82E4
sub_80A82E4: @ 80A82E4
	push {r4,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	bl sub_80A4DF0
	lsls r0, 24
	cmp r0, 0
	beq _080A8300
	cmp r4, 0x2
	bne _080A82FC
	movs r0, 0x1E
	b _080A8320
_080A82FC:
	movs r0, 0x28
	b _080A8320
_080A8300:
	adds r0, r4, 0
	bl battle_get_per_side_status
	lsls r0, 24
	lsrs r0, 24
	movs r1, 0x1E
	cmp r0, 0
	beq _080A831E
	movs r1, 0x14
	cmp r0, 0x2
	beq _080A831E
	movs r1, 0x32
	cmp r0, 0x1
	bne _080A831E
	movs r1, 0x28
_080A831E:
	adds r0, r1, 0
_080A8320:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_80A82E4

	thumb_func_start sub_80A8328
sub_80A8328: @ 80A8328
	push {r4,lr}
	lsls r0, 24
	lsrs r0, 24
	bl battle_get_per_side_status
	lsls r0, 24
	lsrs r4, r0, 24
	bl sub_80A4DF0
	lsls r0, 24
	cmp r0, 0
	beq _080A8344
	movs r0, 0x2
	b _080A835C
_080A8344:
	cmp r4, 0
	beq _080A834C
	cmp r4, 0x3
	bne _080A8350
_080A834C:
	movs r0, 0x2
	b _080A8352
_080A8350:
	movs r0, 0x1
_080A8352:
	movs r1, 0x4
	bl sub_8118140
	lsls r0, 24
	lsrs r0, 24
_080A835C:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_80A8328

	thumb_func_start battle_get_per_side_status_permutated
battle_get_per_side_status_permutated: @ 80A8364
	push {r4,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	bl sub_80A4DF0
	lsls r0, 24
	cmp r0, 0
	bne _080A838A
	adds r0, r4, 0
	bl battle_get_per_side_status
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0
	beq _080A8386
	cmp r0, 0x3
	bne _080A838A
_080A8386:
	movs r0, 0x2
	b _080A838C
_080A838A:
	movs r0, 0x1
_080A838C:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end battle_get_per_side_status_permutated

	thumb_func_start sub_80A8394
sub_80A8394: @ 80A8394
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x10
	ldr r4, [sp, 0x30]
	ldr r5, [sp, 0x34]
	ldr r6, [sp, 0x38]
	mov r8, r6
	lsls r0, 16
	lsrs r6, r0, 16
	lsls r1, 24
	lsrs r1, 24
	mov r9, r1
	lsls r2, 24
	lsrs r7, r2, 24
	lsls r3, 16
	lsrs r3, 16
	mov r10, r3
	lsls r4, 16
	lsrs r4, 16
	str r4, [sp, 0x4]
	lsls r5, 24
	lsrs r5, 24
	str r5, [sp, 0x8]
	lsls r0, r7, 3
	ldr r1, =gUnknown_08525FC0
	adds r0, r1
	bl LoadObjectPic
	lsls r0, 16
	lsrs r0, 16
	str r0, [sp, 0xC]
	ldr r1, =gUnknown_08525F90
	lsls r0, r7, 1
	adds r0, r7
	lsls r0, 3
	adds r0, r1
	ldrh r0, [r0, 0x2]
	bl AllocObjectPalette
	lsls r0, 24
	lsrs r5, r0, 24
	ldr r4, =gUnknown_020244D4
	ldr r0, [r4]
	cmp r0, 0
	beq _080A8412
	movs r1, 0xBE
	lsls r1, 1
	adds r0, r1
	ldr r0, [r0]
	cmp r0, 0
	bne _080A8412
	movs r0, 0x80
	lsls r0, 6
	bl AllocZeroed
	ldr r1, [r4]
	movs r2, 0xBE
	lsls r2, 1
	adds r1, r2
	str r0, [r1]
_080A8412:
	mov r3, r9
	cmp r3, 0
	bne _080A84B0
	adds r0, r6, 0
	ldr r1, [sp, 0x3C]
	mov r2, r8
	bl species_and_otid_get_pal
	lsls r1, r5, 20
	movs r2, 0x80
	lsls r2, 17
	adds r1, r2
	lsrs r1, 16
	movs r2, 0x20
	bl decompress_palette
	ldr r3, [sp, 0x44]
	cmp r3, 0x1
	beq _080A845E
	ldr r0, [sp, 0x40]
	lsls r1, r0, 24
	lsrs r1, 24
	movs r0, 0x5
	bl sub_80688F8
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	beq _080A845E
	ldr r0, =gUnknown_020244D0
	ldr r0, [r0]
	ldr r1, [r0]
	ldr r2, [sp, 0x40]
	lsls r0, r2, 2
	adds r0, r1
	ldrh r0, [r0, 0x2]
	cmp r0, 0
	beq _080A8488
_080A845E:
	lsls r0, r6, 3
	ldr r1, =gMonFrontPicTable
	adds r0, r1
	ldr r1, =gUnknown_020244D4
	ldr r1, [r1]
	movs r3, 0xBE
	lsls r3, 1
	adds r1, r3
	ldr r1, [r1]
	movs r2, 0x1
	b _080A850A
	.pool
_080A8488:
	lsls r0, r6, 3
	ldr r1, =gMonFrontPicTable
	adds r0, r1
	ldr r1, =gUnknown_020244D4
	ldr r1, [r1]
	movs r2, 0xBE
	lsls r2, 1
	adds r1, r2
	ldr r1, [r1]
	movs r2, 0x1
	str r2, [sp]
	adds r2, r6, 0
	mov r3, r8
	bl DecompressMonPic_2
	b _080A8540
	.pool
_080A84B0:
	adds r0, r6, 0
	ldr r1, [sp, 0x3C]
	mov r2, r8
	bl species_and_otid_get_pal
	lsls r1, r5, 20
	movs r3, 0x80
	lsls r3, 17
	adds r1, r3
	lsrs r1, 16
	movs r2, 0x20
	bl decompress_palette
	ldr r0, [sp, 0x44]
	cmp r0, 0x1
	beq _080A84F6
	ldr r2, [sp, 0x40]
	lsls r1, r2, 24
	lsrs r1, 24
	movs r0, 0x5
	bl sub_80688F8
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	beq _080A84F6
	ldr r0, =gUnknown_020244D0
	ldr r0, [r0]
	ldr r1, [r0]
	ldr r3, [sp, 0x40]
	lsls r0, r3, 2
	adds r0, r1
	ldrh r2, [r0, 0x2]
	cmp r2, 0
	beq _080A8524
_080A84F6:
	lsls r0, r6, 3
	ldr r1, =gMonBackPicTable
	adds r0, r1
	ldr r1, =gUnknown_020244D4
	ldr r1, [r1]
	movs r2, 0xBE
	lsls r2, 1
	adds r1, r2
	ldr r1, [r1]
	movs r2, 0
_080A850A:
	str r2, [sp]
	adds r2, r6, 0
	mov r3, r8
	bl DecompressMonPicWithoutDuplicatingDeoxysTiles
	b _080A8540
	.pool
_080A8524:
	lsls r0, r6, 3
	ldr r1, =gMonBackPicTable
	adds r0, r1
	ldr r1, =gUnknown_020244D4
	ldr r1, [r1]
	movs r3, 0xBE
	lsls r3, 1
	adds r1, r3
	ldr r1, [r1]
	str r2, [sp]
	adds r2, r6, 0
	mov r3, r8
	bl DecompressMonPic_2
_080A8540:
	ldr r5, =gUnknown_020244D4
	ldr r0, [r5]
	movs r4, 0xBE
	lsls r4, 1
	adds r0, r4
	ldr r0, [r0]
	ldr r2, [sp, 0xC]
	lsls r1, r2, 5
	ldr r3, =0x06010000
	adds r1, r3
	movs r2, 0x80
	lsls r2, 4
	movs r3, 0x1
	bl RequestDma3Copy
	ldr r0, [r5]
	adds r0, r4
	ldr r0, [r0]
	bl Free
	ldr r0, [r5]
	adds r0, r4
	movs r1, 0
	str r1, [r0]
	mov r0, r9
	cmp r0, 0
	bne _080A85A0
	lsls r0, r7, 1
	adds r0, r7
	lsls r0, 3
	ldr r1, =gUnknown_08525F90
	adds r0, r1
	mov r2, r10
	lsls r1, r2, 16
	asrs r1, 16
	ldr r3, =gUnknown_08300D38
	b _080A85B2
	.pool
_080A85A0:
	lsls r0, r7, 1
	adds r0, r7
	lsls r0, 3
	ldr r1, =gUnknown_08525F90
	adds r0, r1
	mov r2, r10
	lsls r1, r2, 16
	asrs r1, 16
	ldr r3, =gUnknown_083021D8
_080A85B2:
	lsls r2, r6, 2
	adds r2, r3
	ldrb r2, [r2, 0x1]
	ldr r3, [sp, 0x4]
	adds r2, r3
	lsls r2, 16
	asrs r2, 16
	ldr r3, [sp, 0x8]
	bl AddObjectToFront
	lsls r0, 24
	lsrs r4, r0, 24
	bl sub_80A4DF0
	lsls r0, 24
	cmp r0, 0
	beq _080A85EE
	ldr r3, =gUnknown_02020630
	lsls r0, r4, 4
	adds r0, r4
	lsls r0, 2
	adds r1, r3, 0
	adds r1, 0x10
	adds r1, r0, r1
	ldr r2, =gUnknown_082FF6C0
	str r2, [r1]
	adds r0, r3
	movs r1, 0
	bl StartObjectRotScalAnim
_080A85EE:
	adds r0, r4, 0
	add sp, 0x10
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_80A8394

	thumb_func_start sub_80A8610
sub_80A8610: @ 80A8610
	push {lr}
	bl RemoveObjectAndFreeResources
	pop {r0}
	bx r0
	thumb_func_end sub_80A8610

	thumb_func_start sub_80A861C
sub_80A861C: @ 80A861C
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	lsls r1, 24
	lsrs r1, 24
	mov r9, r1
	bl sub_80A4DF0
	lsls r0, 24
	cmp r0, 0
	beq _080A86C4
	ldr r0, =gUnknown_02039F34
	ldr r0, [r0]
	ldr r2, [r0, 0x18]
	ldrb r1, [r2, 0x4]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _080A8654
	ldrh r7, [r2, 0x2]
	ldr r2, [r2, 0x10]
	b _080A8658
	.pool
_080A8654:
	ldrh r7, [r2]
	ldr r2, [r2, 0x8]
_080A8658:
	cmp r7, 0xC9
	bne _080A86A4
	movs r0, 0xC0
	lsls r0, 18
	ands r0, r2
	lsrs r0, 18
	movs r1, 0xC0
	lsls r1, 10
	ands r1, r2
	lsrs r1, 12
	orrs r0, r1
	movs r1, 0xC0
	lsls r1, 2
	ands r1, r2
	lsrs r1, 6
	orrs r0, r1
	movs r1, 0x3
	ands r1, r2
	orrs r0, r1
	movs r1, 0x1C
	bl __umodsi3
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0
	bne _080A8690
	movs r0, 0xC9
	b _080A869A
_080A8690:
	movs r1, 0xCE
	lsls r1, 1
	adds r0, r1
	lsls r0, 16
	lsrs r0, 16
_080A869A:
	lsls r1, r0, 2
	ldr r0, =gUnknown_083021D8
	b _080A8864
	.pool
_080A86A4:
	ldr r0, =0x00000181
	cmp r7, r0
	bne _080A86AC
	b _080A8834
_080A86AC:
	movs r0, 0xCE
	lsls r0, 1
	cmp r7, r0
	bhi _080A877C
	lsls r1, r7, 2
	ldr r0, =gUnknown_083021D8
	b _080A8864
	.pool
_080A86C4:
	mov r0, r8
	bl battle_side_get_owner
	lsls r0, 24
	cmp r0, 0
	bne _080A8790
	ldr r0, =gUnknown_020244D0
	ldr r0, [r0]
	ldr r0, [r0]
	mov r1, r8
	lsls r2, r1, 2
	adds r1, r2, r0
	ldrh r0, [r1, 0x2]
	cmp r0, 0
	bne _080A871C
	ldr r0, =gUnknown_0202406E
	mov r1, r8
	lsls r4, r1, 1
	adds r4, r0
	ldrh r0, [r4]
	movs r6, 0x64
	muls r0, r6
	ldr r5, =gUnknown_020244EC
	adds r0, r5
	movs r1, 0xB
	bl pokemon_getattr
	lsls r0, 16
	lsrs r7, r0, 16
	ldrh r0, [r4]
	muls r0, r6
	adds r0, r5
	movs r1, 0
	bl pokemon_getattr
	adds r2, r0, 0
	b _080A8724
	.pool
_080A871C:
	ldrh r7, [r1, 0x2]
	ldr r0, =gUnknown_020244BC
	adds r0, r2, r0
	ldr r2, [r0]
_080A8724:
	cmp r7, 0xC9
	bne _080A8774
	movs r0, 0xC0
	lsls r0, 18
	ands r0, r2
	lsrs r0, 18
	movs r1, 0xC0
	lsls r1, 10
	ands r1, r2
	lsrs r1, 12
	orrs r0, r1
	movs r1, 0xC0
	lsls r1, 2
	ands r1, r2
	lsrs r1, 6
	orrs r0, r1
	movs r1, 0x3
	ands r1, r2
	orrs r0, r1
	movs r1, 0x1C
	bl __umodsi3
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0
	bne _080A8760
	movs r0, 0xC9
	b _080A876A
	.pool
_080A8760:
	movs r1, 0xCE
	lsls r1, 1
	adds r0, r1
	lsls r0, 16
	lsrs r0, 16
_080A876A:
	lsls r1, r0, 2
	ldr r0, =gUnknown_083021D8
	b _080A8864
	.pool
_080A8774:
	movs r0, 0xCE
	lsls r0, 1
	cmp r7, r0
	bls _080A8784
_080A877C:
	ldr r4, =gUnknown_083021D8
	b _080A8866
	.pool
_080A8784:
	lsls r1, r7, 2
	ldr r0, =gUnknown_083021D8
	b _080A8864
	.pool
_080A8790:
	ldr r0, =gUnknown_020244D0
	ldr r0, [r0]
	ldr r0, [r0]
	mov r1, r8
	lsls r2, r1, 2
	adds r1, r2, r0
	ldrh r0, [r1, 0x2]
	cmp r0, 0
	bne _080A87DC
	ldr r0, =gUnknown_0202406E
	mov r1, r8
	lsls r4, r1, 1
	adds r4, r0
	ldrh r0, [r4]
	movs r6, 0x64
	muls r0, r6
	ldr r5, =gUnknown_02024744
	adds r0, r5
	movs r1, 0xB
	bl pokemon_getattr
	lsls r0, 16
	lsrs r7, r0, 16
	ldrh r0, [r4]
	muls r0, r6
	adds r0, r5
	movs r1, 0
	bl pokemon_getattr
	adds r2, r0, 0
	b _080A87E4
	.pool
_080A87DC:
	ldrh r7, [r1, 0x2]
	ldr r0, =gUnknown_020244BC
	adds r0, r2, r0
	ldr r2, [r0]
_080A87E4:
	cmp r7, 0xC9
	bne _080A882E
	movs r0, 0xC0
	lsls r0, 18
	ands r0, r2
	lsrs r0, 18
	movs r1, 0xC0
	lsls r1, 10
	ands r1, r2
	lsrs r1, 12
	orrs r0, r1
	movs r1, 0xC0
	lsls r1, 2
	ands r1, r2
	lsrs r1, 6
	orrs r0, r1
	movs r1, 0x3
	ands r1, r2
	orrs r0, r1
	movs r1, 0x1C
	bl __umodsi3
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0
	bne _080A8820
	movs r0, 0xC9
	b _080A882A
	.pool
_080A8820:
	movs r1, 0xCE
	lsls r1, 1
	adds r0, r1
	lsls r0, 16
	lsrs r0, 16
_080A882A:
	lsls r1, r0, 2
	b _080A8862
_080A882E:
	ldr r0, =0x00000181
	cmp r7, r0
	bne _080A8850
_080A8834:
	ldr r0, =gUnknown_020244E4
	add r0, r8
	ldrb r0, [r0]
	lsls r0, 2
	ldr r1, =gUnknown_08525F78
	adds r4, r0, r1
	b _080A8866
	.pool
_080A8850:
	movs r0, 0xCE
	lsls r0, 1
	cmp r7, r0
	bls _080A8860
	ldr r4, =gUnknown_08300D38
	b _080A8866
	.pool
_080A8860:
	lsls r1, r7, 2
_080A8862:
	ldr r0, =gUnknown_08300D38
_080A8864:
	adds r4, r1, r0
_080A8866:
	mov r0, r9
	cmp r0, 0x6
	bhi _080A8916
	lsls r0, 2
	ldr r1, =_080A8880
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_080A8880:
	.4byte _080A889C
	.4byte _080A88A6
	.4byte _080A88D2
	.4byte _080A88EA
	.4byte _080A88AE
	.4byte _080A88C0
	.4byte _080A8902
_080A889C:
	ldrb r1, [r4]
	movs r0, 0xF
	ands r0, r1
	lsls r0, 3
	b _080A8918
_080A88A6:
	ldrb r0, [r4]
	lsrs r0, 4
	lsls r0, 3
	b _080A8918
_080A88AE:
	mov r0, r8
	movs r1, 0x2
	bl sub_80A5C6C
	lsls r0, 24
	lsrs r0, 24
	ldrb r1, [r4]
	lsrs r1, 4
	b _080A88E4
_080A88C0:
	mov r0, r8
	movs r1, 0x2
	bl sub_80A5C6C
	lsls r0, 24
	lsrs r0, 24
	ldrb r1, [r4]
	lsrs r1, 4
	b _080A88FC
_080A88D2:
	mov r0, r8
	movs r1, 0x3
	bl sub_80A5C6C
	lsls r0, 24
	lsrs r0, 24
	ldrb r2, [r4]
	movs r1, 0xF
	ands r1, r2
_080A88E4:
	lsls r1, 2
	subs r0, r1
	b _080A8918
_080A88EA:
	mov r0, r8
	movs r1, 0x3
	bl sub_80A5C6C
	lsls r0, 24
	lsrs r0, 24
	ldrb r2, [r4]
	movs r1, 0xF
	ands r1, r2
_080A88FC:
	lsls r1, 2
	adds r0, r1
	b _080A8918
_080A8902:
	mov r0, r8
	movs r1, 0x1
	bl sub_80A5C6C
	lsls r0, 24
	lsrs r0, 24
	adds r0, 0x1F
	ldrb r1, [r4, 0x1]
	subs r0, r1
	b _080A8918
_080A8916:
	movs r0, 0
_080A8918:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_80A861C

	thumb_func_start sub_80A8924
sub_80A8924: @ 80A8924
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	mov r9, r2
	mov r10, r3
	lsls r0, 24
	lsrs r4, r0, 24
	lsls r1, 24
	cmp r1, 0
	bne _080A8942
	movs r5, 0
	movs r6, 0x1
	b _080A8946
_080A8942:
	movs r5, 0x2
	movs r6, 0x3
_080A8946:
	adds r0, r4, 0
	adds r1, r5, 0
	bl sub_80A5C6C
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	adds r0, r4, 0
	adds r1, r6, 0
	bl sub_80A5C6C
	lsls r0, 24
	lsrs r7, r0, 24
	bl battle_type_is_double
	lsls r0, 24
	cmp r0, 0
	beq _080A8998
	bl sub_80A4DF0
	lsls r0, 24
	cmp r0, 0
	bne _080A8998
	movs r0, 0x2
	eors r4, r0
	adds r0, r4, 0
	adds r1, r5, 0
	bl sub_80A5C6C
	lsls r0, 24
	lsrs r5, r0, 24
	adds r0, r4, 0
	adds r1, r6, 0
	bl sub_80A5C6C
	lsls r0, 24
	lsrs r3, r0, 24
	mov r0, r8
	lsls r1, r0, 16
	lsls r2, r7, 16
	b _080A89A4
_080A8998:
	mov r0, r8
	lsls r1, r0, 16
	lsrs r5, r1, 16
	lsls r0, r7, 16
	lsrs r3, r0, 16
	adds r2, r0, 0
_080A89A4:
	asrs r0, r1, 16
	adds r0, r5
	asrs r0, 1
	mov r1, r9
	strh r0, [r1]
	asrs r0, r2, 16
	adds r0, r3
	asrs r0, 1
	mov r1, r10
	strh r0, [r1]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_80A8924

	thumb_func_start sub_80A89C8
sub_80A89C8: @ 80A89C8
	push {r4-r6,lr}
	mov r6, r10
	mov r5, r9
	mov r4, r8
	push {r4-r6}
	sub sp, 0x4
	lsls r6, r1, 24
	lsrs r6, 24
	ldr r0, =DummyObjectCallback
	mov r10, r0
	bl object_new_hidden_with_callback
	mov r8, r0
	mov r0, r8
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	ldr r0, =gUnknown_02020630
	mov r9, r0
	mov r0, r8
	lsls r3, r0, 4
	add r3, r8
	lsls r3, 2
	mov r0, r9
	adds r5, r3, r0
	lsls r4, r6, 4
	adds r4, r6
	lsls r4, 2
	add r4, r9
	adds r0, r5, 0
	adds r1, r4, 0
	movs r2, 0x44
	str r3, [sp]
	bl memcpy
	adds r2, r5, 0
	adds r2, 0x3F
	ldrb r0, [r2]
	movs r1, 0x40
	orrs r0, r1
	strb r0, [r2]
	ldrb r2, [r5, 0x5]
	movs r1, 0xD
	negs r1, r1
	adds r0, r1, 0
	ands r0, r2
	strb r0, [r5, 0x5]
	ldrb r0, [r5, 0x1]
	ands r1, r0
	movs r0, 0x8
	orrs r1, r0
	strb r1, [r5, 0x1]
	ldrh r1, [r4, 0x4]
	lsls r1, 22
	lsrs r1, 22
	ldrh r2, [r5, 0x4]
	ldr r0, =0xfffffc00
	ands r0, r2
	orrs r0, r1
	strh r0, [r5, 0x4]
	movs r0, 0x1C
	add r9, r0
	ldr r3, [sp]
	add r3, r9
	mov r0, r10
	str r0, [r3]
	mov r0, r8
	add sp, 0x4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r6}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_80A89C8

	thumb_func_start sub_80A8A6C
sub_80A8A6C: @ 80A8A6C
	push {r4,lr}
	adds r4, r0, 0
	bl sub_80A6838
	ldr r0, =gUnknown_02038436
	ldrb r0, [r0]
	bl battle_side_get_owner
	lsls r0, 24
	cmp r0, 0
	beq _080A8AAC
	ldr r2, =gUnknown_0203841E
	ldrh r0, [r4, 0x20]
	ldrh r1, [r2]
	subs r0, r1
	strh r0, [r4, 0x20]
	ldrh r0, [r2, 0x6]
	negs r0, r0
	strh r0, [r2, 0x6]
	adds r3, r4, 0
	adds r3, 0x3F
	ldrb r0, [r3]
	movs r1, 0x1
	orrs r0, r1
	strb r0, [r3]
	adds r1, r2, 0
	b _080A8AB6
	.pool
_080A8AAC:
	ldr r1, =gUnknown_0203841E
	ldrh r0, [r1]
	ldrh r2, [r4, 0x20]
	adds r0, r2
	strh r0, [r4, 0x20]
_080A8AB6:
	ldrh r0, [r1, 0x2]
	ldrh r2, [r4, 0x22]
	adds r0, r2
	strh r0, [r4, 0x22]
	ldrh r0, [r1, 0x4]
	strh r0, [r4, 0x2E]
	ldrh r0, [r1, 0x6]
	strh r0, [r4, 0x30]
	ldrh r0, [r1, 0x8]
	strh r0, [r4, 0x34]
	ldrh r0, [r1, 0xA]
	strh r0, [r4, 0x38]
	ldr r1, =move_anim_8074EE0
	adds r0, r4, 0
	bl oamt_set_x3A_32
	ldr r0, =sub_80A66DC
	str r0, [r4, 0x1C]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_80A8A6C

	thumb_func_start sub_80A8AEC
sub_80A8AEC: @ 80A8AEC
	push {r4,lr}
	adds r4, r0, 0
	ldr r0, =gUnknown_02038436
	ldrb r0, [r0]
	bl battle_side_get_owner
	lsls r0, 24
	cmp r0, 0
	beq _080A8B1C
	ldr r2, =gUnknown_0203841E
	ldrh r0, [r4, 0x20]
	ldrh r1, [r2]
	subs r0, r1
	strh r0, [r4, 0x20]
	movs r1, 0x6
	ldrsh r0, [r2, r1]
	negs r0, r0
	strh r0, [r2, 0x6]
	adds r1, r2, 0
	b _080A8B26
	.pool
_080A8B1C:
	ldr r1, =gUnknown_0203841E
	ldrh r0, [r1]
	ldrh r2, [r4, 0x20]
	adds r0, r2
	strh r0, [r4, 0x20]
_080A8B26:
	ldrh r0, [r1, 0x2]
	ldrh r2, [r4, 0x22]
	adds r0, r2
	strh r0, [r4, 0x22]
	ldrh r0, [r1, 0x4]
	strh r0, [r4, 0x2E]
	ldrh r0, [r1, 0x6]
	strh r0, [r4, 0x30]
	ldrh r0, [r1, 0x8]
	strh r0, [r4, 0x34]
	ldrh r0, [r1, 0xA]
	strh r0, [r4, 0x38]
	ldrb r1, [r1, 0xC]
	adds r0, r4, 0
	bl StartObjectImageAnim
	ldr r1, =move_anim_8074EE0
	adds r0, r4, 0
	bl oamt_set_x3A_32
	ldr r0, =sub_80A66DC
	str r0, [r4, 0x1C]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_80A8AEC

	thumb_func_start sub_80A8B64
sub_80A8B64: @ 80A8B64
	push {r4,lr}
	adds r4, r0, 0
	bl sub_80A6838
	ldr r0, =gUnknown_02038436
	ldrb r0, [r0]
	bl battle_side_get_owner
	lsls r0, 24
	cmp r0, 0
	beq _080A8B90
	ldr r0, =gUnknown_0203841E
	ldrh r1, [r4, 0x20]
	ldrh r2, [r0]
	subs r1, r2
	strh r1, [r4, 0x20]
	b _080A8B9C
	.pool
_080A8B90:
	ldr r1, =gUnknown_0203841E
	ldrh r0, [r1]
	ldrh r2, [r4, 0x20]
	adds r0, r2
	strh r0, [r4, 0x20]
	adds r0, r1, 0
_080A8B9C:
	ldrh r0, [r0, 0x2]
	ldrh r1, [r4, 0x22]
	adds r0, r1
	strh r0, [r4, 0x22]
	ldr r0, =sub_80A67D8
	str r0, [r4, 0x1C]
	ldr r1, =move_anim_8072740
	adds r0, r4, 0
	bl oamt_set_x3A_32
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_80A8B64

	thumb_func_start sub_80A8BC4
sub_80A8BC4: @ 80A8BC4
	push {r4-r7,lr}
	lsls r0, 24
	lsrs r0, 24
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	ldr r0, =gTasks
	adds r5, r1, r0
	movs r0, 0
	bl obj_id_for_side_relative_to_move
	lsls r0, 24
	lsrs r0, 24
	movs r6, 0
	strh r0, [r5, 0x8]
	ldr r7, =gUnknown_02038436
	ldrb r0, [r7]
	bl battle_side_get_owner
	lsls r0, 24
	movs r1, 0x8
	cmp r0, 0
	beq _080A8BF8
	movs r0, 0x8
	negs r0, r0
	adds r1, r0, 0
_080A8BF8:
	strh r1, [r5, 0xA]
	strh r6, [r5, 0xC]
	strh r6, [r5, 0xE]
	ldr r4, =gUnknown_02020630
	movs r0, 0x8
	ldrsh r1, [r5, r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	ldrh r1, [r0, 0x24]
	ldrh r2, [r5, 0x8]
	subs r1, r2
	strh r1, [r0, 0x24]
	ldr r0, =0x00002771
	bl AllocObjectPalette
	lsls r0, 24
	lsrs r0, 24
	strh r0, [r5, 0x10]
	strh r6, [r5, 0x12]
	movs r1, 0x10
	ldrsh r0, [r5, r1]
	adds r0, 0x10
	lsls r0, 20
	lsrs r6, r0, 16
	movs r0, 0x8
	ldrsh r1, [r5, r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	ldrb r0, [r0, 0x5]
	lsrs r0, 4
	adds r0, 0x10
	lsls r4, r0, 4
	ldrb r0, [r7]
	bl sub_80A82E4
	lsls r0, 24
	lsrs r0, 24
	strh r0, [r5, 0x14]
	cmp r0, 0x14
	beq _080A8C54
	cmp r0, 0x28
	bne _080A8C68
_080A8C54:
	movs r0, 0x2
	b _080A8C6A
	.pool
_080A8C68:
	movs r0, 0x3
_080A8C6A:
	strh r0, [r5, 0x14]
	lsls r0, r4, 1
	ldr r1, =gUnknown_02037714
	adds r0, r1
	lsls r1, r6, 1
	ldr r2, =gUnknown_02037B14
	adds r1, r2
	ldr r2, =0x04000008
	bl CpuSet
	ldr r0, =gUnknown_0203841E
	ldrb r2, [r0, 0x2]
	ldrh r3, [r0]
	adds r0, r6, 0
	movs r1, 0x10
	bl pal_fade_1
	ldr r0, =sub_80A8CAC
	str r0, [r5]
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_80A8BC4

	thumb_func_start sub_80A8CAC
sub_80A8CAC: @ 80A8CAC
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r5, r0, 24
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	ldr r1, =gTasks
	adds r4, r0, r1
	movs r1, 0xC
	ldrsh r0, [r4, r1]
	cmp r0, 0x1
	beq _080A8D10
	cmp r0, 0x1
	bgt _080A8CD4
	cmp r0, 0
	beq _080A8CDA
	b _080A8D6C
	.pool
_080A8CD4:
	cmp r0, 0x2
	beq _080A8D58
	b _080A8D6C
_080A8CDA:
	adds r0, r4, 0
	adds r1, r5, 0
	bl sub_80A8D78
	ldr r2, =gUnknown_02020630
	movs r0, 0x8
	ldrsh r1, [r4, r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrh r1, [r4, 0xA]
	ldrh r2, [r0, 0x24]
	adds r1, r2
	strh r1, [r0, 0x24]
	ldrh r1, [r4, 0xE]
	adds r0, r1, 0x1
	strh r0, [r4, 0xE]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x5
	bne _080A8D6C
	strh r1, [r4, 0xE]
	b _080A8D4A
	.pool
_080A8D10:
	adds r0, r4, 0
	adds r1, r5, 0
	bl sub_80A8D78
	ldr r3, =gUnknown_02020630
	movs r0, 0x8
	ldrsh r1, [r4, r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	ldrh r1, [r0, 0x24]
	ldrh r2, [r4, 0xA]
	subs r1, r2
	strh r1, [r0, 0x24]
	ldrh r0, [r4, 0xE]
	subs r0, 0x1
	strh r0, [r4, 0xE]
	lsls r0, 16
	asrs r2, r0, 16
	cmp r2, 0
	bne _080A8D6C
	movs r1, 0x8
	ldrsh r0, [r4, r1]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r3
	strh r2, [r1, 0x24]
_080A8D4A:
	ldrh r0, [r4, 0xC]
	adds r0, 0x1
	strh r0, [r4, 0xC]
	b _080A8D6C
	.pool
_080A8D58:
	movs r2, 0x12
	ldrsh r0, [r4, r2]
	cmp r0, 0
	bne _080A8D6C
	ldr r0, =0x00002771
	bl FreeObjectPaletteByTag
	adds r0, r5, 0
	bl move_anim_task_del
_080A8D6C:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_80A8CAC

	thumb_func_start sub_80A8D78
sub_80A8D78: @ 80A8D78
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	adds r6, r0, 0
	lsls r1, 24
	lsrs r1, 24
	mov r8, r1
	movs r0, 0
	bl duplicate_obj_of_side_rel2move_in_transparent_mode
	lsls r0, 16
	lsrs r7, r0, 16
	asrs r0, 16
	cmp r0, 0
	blt _080A8DE8
	ldr r5, =gUnknown_02020630
	lsls r4, r0, 4
	adds r4, r0
	lsls r4, 2
	adds r3, r4, r5
	movs r0, 0x3
	ldrb r1, [r6, 0x14]
	ands r1, r0
	lsls r1, 2
	ldrb r2, [r3, 0x5]
	movs r0, 0xD
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, 0x5]
	ldrb r1, [r6, 0x10]
	lsls r1, 4
	movs r2, 0xF
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, 0x5]
	movs r0, 0x8
	strh r0, [r3, 0x2E]
	mov r0, r8
	strh r0, [r3, 0x30]
	strh r7, [r3, 0x32]
	movs r0, 0x8
	ldrsh r1, [r6, r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	ldrh r0, [r0, 0x24]
	strh r0, [r3, 0x24]
	adds r5, 0x1C
	adds r4, r5
	ldr r0, =sub_80A8DFC
	str r0, [r4]
	ldrh r0, [r6, 0x12]
	adds r0, 0x1
	strh r0, [r6, 0x12]
_080A8DE8:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_80A8D78

	thumb_func_start sub_80A8DFC
sub_80A8DFC: @ 80A8DFC
	push {lr}
	adds r3, r0, 0
	ldrh r0, [r3, 0x2E]
	subs r0, 0x1
	strh r0, [r3, 0x2E]
	lsls r0, 16
	cmp r0, 0
	bne _080A8E26
	ldr r2, =gTasks
	movs r0, 0x30
	ldrsh r1, [r3, r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 3
	adds r0, r2
	ldrh r1, [r0, 0x12]
	subs r1, 0x1
	strh r1, [r0, 0x12]
	adds r0, r3, 0
	bl obj_delete_but_dont_free_vram
_080A8E26:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_80A8DFC

	thumb_func_start sub_80A8E30
sub_80A8E30: @ 80A8E30
	push {r4,r5,lr}
	adds r5, r0, 0
	ldr r4, =gUnknown_02038436
	ldrb r0, [r4]
	movs r1, 0x2
	bl sub_80A5C6C
	lsls r0, 24
	lsrs r0, 24
	strh r0, [r5, 0x20]
	ldrb r0, [r4]
	movs r1, 0x3
	bl sub_80A5C6C
	lsls r0, 24
	lsrs r0, 24
	strh r0, [r5, 0x22]
	ldrb r0, [r4]
	bl battle_side_get_owner
	lsls r0, 24
	cmp r0, 0
	bne _080A8E68
	movs r0, 0x5
	b _080A8E6A
	.pool
_080A8E68:
	ldr r0, =0x0000fff6
_080A8E6A:
	strh r0, [r5, 0x2E]
	ldr r0, =0x0000ffd8
	strh r0, [r5, 0x30]
	ldr r0, =sub_80A8E88
	str r0, [r5, 0x1C]
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_80A8E30

	thumb_func_start sub_80A8E88
sub_80A8E88: @ 80A8E88
	push {r4,r5,lr}
	adds r4, r0, 0
	ldrh r0, [r4, 0x2E]
	ldrh r1, [r4, 0x32]
	adds r0, r1
	strh r0, [r4, 0x32]
	ldrh r5, [r4, 0x30]
	ldrh r2, [r4, 0x34]
	adds r0, r5, r2
	strh r0, [r4, 0x34]
	movs r1, 0x32
	ldrsh r0, [r4, r1]
	movs r1, 0xA
	bl __divsi3
	strh r0, [r4, 0x24]
	movs r2, 0x34
	ldrsh r0, [r4, r2]
	movs r1, 0xA
	bl __divsi3
	strh r0, [r4, 0x26]
	lsls r0, r5, 16
	asrs r0, 16
	movs r1, 0x14
	negs r1, r1
	cmp r0, r1
	bge _080A8EC4
	adds r0, r5, 0x1
	strh r0, [r4, 0x30]
_080A8EC4:
	movs r1, 0x22
	ldrsh r0, [r4, r1]
	movs r2, 0x26
	ldrsh r1, [r4, r2]
	adds r0, r1
	movs r1, 0x20
	negs r1, r1
	cmp r0, r1
	bge _080A8EDC
	adds r0, r4, 0
	bl move_anim_8072740
_080A8EDC:
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end sub_80A8E88

	thumb_func_start sub_80A8EE4
sub_80A8EE4: @ 80A8EE4
	push {r4,r5,lr}
	adds r4, r0, 0
	ldr r5, =gUnknown_0203841E
	ldrh r0, [r5, 0x4]
	strh r0, [r4, 0x2E]
	ldrh r0, [r5, 0x8]
	ldrh r1, [r4, 0x20]
	adds r0, r1
	strh r0, [r4, 0x32]
	ldrh r0, [r5, 0xA]
	ldrh r1, [r4, 0x22]
	adds r0, r1
	strh r0, [r4, 0x36]
	ldr r0, =gUnknown_02038437
	ldrb r0, [r0]
	bl battle_side_get_owner
	lsls r0, 24
	cmp r0, 0
	bne _080A8F24
	ldrh r0, [r5, 0x8]
	adds r0, 0x1E
	ldrh r1, [r4, 0x20]
	adds r0, r1
	strh r0, [r4, 0x20]
	ldrh r0, [r5, 0xA]
	subs r0, 0x14
	b _080A8F32
	.pool
_080A8F24:
	ldrh r0, [r5, 0x8]
	subs r0, 0x1E
	ldrh r1, [r4, 0x20]
	adds r0, r1
	strh r0, [r4, 0x20]
	ldrh r0, [r5, 0xA]
	subs r0, 0x50
_080A8F32:
	strh r0, [r4, 0x22]
	ldr r0, =sub_80A6EEC
	str r0, [r4, 0x1C]
	ldr r1, =move_anim_8072740
	adds r0, r4, 0
	bl oamt_set_x3A_32
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_80A8EE4

	.align 2, 0 @ Don't pad with nop.
