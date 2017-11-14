FruitTreeScript:: ; 44000
	callasm GetCurTreeFruit
	opentext
	copybytetovar CurFruit
	itemtotext $0, $0
	writetext FruitBearingTreeText
	buttonsound
	callasm TryResetFruitTrees
	callasm CheckFruitTree
	iffalse .fruit
	writetext NothingHereText
	waitbutton
	jump .end

.fruit
	writetext HeyItsFruitText
	callasm GetFruitTreeCount
	if_equal $1, .try_one
	if_equal $2, .try_two
	callasm GetCurTreeFruit
	copybytetovar CurFruit
	giveitem ITEM_FROM_MEM, 3
	iffalse .try_two
	buttonsound
	writetext ObtainedThreeFruitText
	jump .continue
.try_two
	callasm GetCurTreeFruit
	copybytetovar CurFruit
	giveitem ITEM_FROM_MEM, 2
	iffalse .try_one
	buttonsound
	writetext ObtainedTwoFruitText
	jump .continue
.try_one
	callasm GetCurTreeFruit
	copybytetovar CurFruit
	giveitem ITEM_FROM_MEM
	iffalse .packisfull
	buttonsound
	writetext ObtainedOneFruitText
.continue
	callasm PickedFruitTree
	specialsound
	itemnotify
	jump .end

.packisfull
	buttonsound
	writetext FruitPackIsFullText
	waitbutton

.end
	closetext
	end
; 44041

GetCurTreeFruit: ; 44041
	ld a, [CurFruitTree]
	dec a
	call GetFruitTreeItem
	ld [CurFruit], a
	ret
; 4404c

TryResetFruitTrees: ; 4404c
	ld hl, DailyFlags
	bit 4, [hl] ; ENGINE_ALL_FRUIT_TREES
	ret nz
	jp ResetFruitTrees
; 44055

CheckFruitTree: ; 44055
	ld b, 2
	call GetFruitTreeFlag
	ld a, c
	ld [ScriptVar], a
	ret
; 4405f

PickedFruitTree: ; 4405f
	ld b, 1
	jp GetFruitTreeFlag
; 4406a

ResetFruitTrees: ; 4406a
	xor a
	ld hl, FruitTreeFlags
rept 3
	ld [hli], a
endr
	ld [hl], a
	ld hl, DailyFlags
	set 4, [hl] ; ENGINE_ALL_FRUIT_TREES
	ret
; 44078

GetFruitTreeFlag: ; 44078
	push hl
	push de
	ld a, [CurFruitTree]
	dec a
	ld e, a
	ld d, 0
	ld hl, FruitTreeFlags
	call FlagAction
	pop de
	pop hl
	ret
; 4408a

GetFruitTreeItem: ; 4408a
	push hl
	push de
	ld e, a
	ld d, 0
	ld hl, FruitTreeItems
	add hl, de
	ld a, [hl]
	pop de
	pop hl
	ret
; 44097

FruitTreeItems: ; 44097
	db BERRY ; FRUITTREE_ROUTE_29
	db BERRY ; FRUITTREE_ROUTE_30_1
	db PSNCUREBERRY ; FRUITTREE_ROUTE_30_2
	db BITTER_BERRY ; FRUITTREE_ROUTE_31
	db PRZCUREBERRY ; FRUITTREE_VIOLET_CITY
	db PSNCUREBERRY ; FRUITTREE_ROUTE_33
	db WHT_APRICORN ; FRUITTREE_AZALEA_TOWN
	db MYSTERYBERRY ; FRUITTREE_ROUTE_35
	db ICE_BERRY ; FRUITTREE_ROUTE_36
	db RED_APRICORN ; FRUITTREE_ROUTE_37_1
	db BLU_APRICORN ; FRUITTREE_ROUTE_37_2
	db BLK_APRICORN ; FRUITTREE_ROUTE_37_3
	db GOLD_BERRY ; FRUITTREE_ROUTE_38
	db MINT_BERRY ; FRUITTREE_ROUTE_39
	db PNK_APRICORN ; FRUITTREE_ROUTE_42_1
	db GRN_APRICORN ; FRUITTREE_ROUTE_42_2
	db YLW_APRICORN ; FRUITTREE_ROUTE_42_3
	db BITTER_BERRY ; FRUITTREE_ROUTE_43
	db BURNT_BERRY ; FRUITTREE_ROUTE_44
	db MYSTERYBERRY ; FRUITTREE_ROUTE_45_1
	db MIRACLEBERRY ; FRUITTREE_ROUTE_45_2
	db PRZCUREBERRY ; FRUITTREE_ROUTE_46_1
	db MINT_BERRY ; FRUITTREE_ROUTE_46_2
	db MIRACLEBERRY ; FRUITTREE_ROUTE_27
	db GOLD_BERRY ; FRUITTREE_ROUTE_26
	db MIRACLEBERRY ; FRUITTREE_ROUTE_8
	db GOLD_BERRY ; FRUITTREE_ROUTE_11
	db GOLD_BERRY ; FRUITTREE_FUCHSIA_CITY
	db ICE_BERRY ; FRUITTREE_PEWTER_CITY_1
	db BURNT_BERRY ; FRUITTREE_PEWTER_CITY_2
	db MYSTERYBERRY ; FRUITTREE_ROUTE_2
	db GOLD_BERRY ; FRUITTREE_ROUTE_1
; 440b5

GetFruitTreeCount:
	ld a, 3
	call RandomRange
	inc a
	ld [ScriptVar], a
	ret

FruitBearingTreeText: ; 440b5
	text_jump _FruitBearingTreeText
	db "@"
; 440ba

HeyItsFruitText: ; 440ba
	text_jump _HeyItsFruitText
	db "@"
; 440bf

ObtainedOneFruitText: ; 440bf
	text_jump _ObtainedOneFruitText
	db "@"
; 440c4

ObtainedTwoFruitText:
	text_jump _ObtainedTwoFruitText
	db "@"

ObtainedThreeFruitText:
	text_jump _ObtainedThreeFruitText
	db "@"

FruitPackIsFullText: ; 440c4
	text_jump _FruitPackIsFullText
	db "@"
; 440c9

NothingHereText: ; 440c9
	text_jump _NothingHereText
	db "@"
; 440ce
