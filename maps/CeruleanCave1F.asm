const_value set 2
	const CERULEANCAVE1F_POKE_BALL1
	const CERULEANCAVE1F_POKE_BALL2
	const CERULEANCAVE1F_POKE_BALL3

CeruleanCave1F_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

CeruleanCave1FNugget:
	itemball NUGGET

CeruleanCave1FFullRestore:
	itemball FULL_RESTORE

CeruleanCave1FMaxRevive:
	itemball MAX_REVIVE

CeruleanCave1FHiddenUltraBall:
	dwb EVENT_CERULEAN_CAVE_1F_HIDDEN_ULTRA_BALL, ULTRA_BALL

CeruleanCave1FHiddenPPUp:
	dwb EVENT_CERULEAN_CAVE_1F_HIDDEN_PP_UP, PP_UP

CeruleanCave1FHiddenRareCandy:
	dwb EVENT_CERULEAN_CAVE_1F_HIDDEN_RARE_CANDY, RARE_CANDY

CeruleanCave1F_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 8
	warp_def $13, $1b, 7, CERULEAN_CITY
	warp_def $3, $9, 1, CERULEAN_CAVE_2F
	warp_def $3, $1d, 2, CERULEAN_CAVE_2F
	warp_def $5, $3, 3, CERULEAN_CAVE_2F
	warp_def $8, $2, 1, CERULEAN_CAVE_B1F
	warp_def $9, $19, 4, CERULEAN_CAVE_2F
	warp_def $b, $14, 5, CERULEAN_CAVE_2F
	warp_def $d, $5, 6, CERULEAN_CAVE_2F

.XYTriggers:
	db 0

.Signposts:
	db 3
	signpost 11, 10, SIGNPOST_ITEM, CeruleanCave1FHiddenUltraBall
	signpost 14, 5, SIGNPOST_ITEM, CeruleanCave1FHiddenPPUp
	signpost 13, 16, SIGNPOST_ITEM, CeruleanCave1FHiddenRareCandy

.PersonEvents:
	db 3
	person_event SPRITE_POKE_BALL, 4, 7, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, CeruleanCave1FNugget, EVENT_CERULEAN_CAVE_1F_NUGGET
	person_event SPRITE_POKE_BALL, 15, 9, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, CeruleanCave1FFullRestore, EVENT_CERULEAN_CAVE_1F_FULL_RESTORE
	person_event SPRITE_POKE_BALL, 5, 21, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, CeruleanCave1FMaxRevive, EVENT_CERULEAN_CAVE_1F_MAX_REVIVE
