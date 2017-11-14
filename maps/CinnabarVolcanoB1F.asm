const_value set 2
	const CINNABARVOLCANOB1F_BOULDER
	const CINNABARVOLCANOB1F_ROCK1
	const CINNABARVOLCANOB1F_ROCK2
	const CINNABARVOLCANOB1F_ROCK3
	const CINNABARVOLCANOB1F_POKE_BALL1
	const CINNABARVOLCANOB1F_POKE_BALL2

CinnabarVolcanoB1F_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 2

	; callbacks
	dbw MAPCALLBACK_TILES, .BouldersLand
	dbw MAPCALLBACK_CMDQUEUE, .BouldersFall

.BouldersLand:
	checkevent EVENT_BOULDER_IN_CINNABAR_VOLCANO_1F_1
	iffalse .skip1
	changeblock $c, $18, $5f
.skip1
	checkevent EVENT_BOULDER_IN_CINNABAR_VOLCANO_1F_2
	iffalse .skip2
	changeblock $18, $16, $5f
.skip2
	checkevent EVENT_BOULDER_IN_CINNABAR_VOLCANO_1F_3
	iffalse .skip3
	changeblock $16, $c, $5d
.skip3
	checkevent EVENT_BOULDER_IN_CINNABAR_VOLCANO_1F_4
	iffalse .skip4
	changeblock $e, $a, $5d
.skip4
	return

.BouldersFall:
	writecmdqueue .BoulderCmdQueue
	return

.BoulderCmdQueue:
	dbw CMDQUEUE_STONETABLE, .BoulderTable ; check if any stones are sitting on a warp
	dw 0 ; filler

.BoulderTable:
	stonetable 7, CINNABARVOLCANOB1F_BOULDER, .Disappear
	db -1 ; end

.Disappear:
	disappear CINNABARVOLCANOB1F_BOULDER
	jump .Fall

.Fall:
	pause 30
	scall .FX
	opentext
	writetext CinnabarVolcanoB1FBoulderFellText
	waitbutton
	closetext
	end

.FX:
	playsound SFX_STRENGTH
	earthquake 80
	end

CinnabarVolcanoB1FBoulder:
	jumpstd strengthboulder

CinnabarVolcanoB1FRock:
	jumpstd smashrock

CinnabarVolcanoB1FFireStone:
	itemball FIRE_STONE

CinnabarVolcanoB1FNugget:
	itemball NUGGET

CinnabarVolcanoB1FHiddenMaxRevive:
	dwb EVENT_CINNABAR_VOLCANO_B1F_HIDDEN_MAX_REVIVE, MAX_REVIVE

CinnabarVolcanoB1FHiddenDireHit:
	dwb EVENT_CINNABAR_VOLCANO_B1F_HIDDEN_DIRE_HIT, DIRE_HIT

CinnabarVolcanoB1FBoulderFellText:
	text "The boulder fell"
	line "through!"
	done

CinnabarVolcanoB1F_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 11
	warp_def $11, $9, 2, CINNABAR_VOLCANO_1F
	warp_def $19, $13, 3, CINNABAR_VOLCANO_1F
	warp_def $19, $1d, 4, CINNABAR_VOLCANO_1F
	warp_def $d, $1b, 5, CINNABAR_VOLCANO_1F
	warp_def $3, $13, 1, CINNABAR_VOLCANO_B2F
	warp_def $15, $21, 2, CINNABAR_VOLCANO_B2F
	warp_def $9, $8, 3, CINNABAR_VOLCANO_B2F
	warp_def $18, $c, 6, CINNABAR_VOLCANO_1F ; hole
	warp_def $18, $18, 7, CINNABAR_VOLCANO_1F ; hole
	warp_def $d, $17, 8, CINNABAR_VOLCANO_1F ; hole
	warp_def $b, $f, 9, CINNABAR_VOLCANO_1F ; hole

.XYTriggers:
	db 0

.Signposts:
	db 2
	signpost 7, 20, SIGNPOST_ITEM, CinnabarVolcanoB1FHiddenMaxRevive
	signpost 18, 28, SIGNPOST_ITEM, CinnabarVolcanoB1FHiddenDireHit

.PersonEvents:
	db 6
	person_event SPRITE_BOULDER, 5, 6, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, CinnabarVolcanoB1FBoulder, EVENT_BOULDER_IN_CINNABAR_VOLCANO_B1F
	person_event SPRITE_ROCK, 28, 8, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, CinnabarVolcanoB1FRock, -1
	person_event SPRITE_ROCK, 17, 28, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, CinnabarVolcanoB1FRock, -1
	person_event SPRITE_ROCK, 8, 20, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, CinnabarVolcanoB1FRock, -1
	person_event SPRITE_POKE_BALL, 18, 2, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, CinnabarVolcanoB1FNugget, EVENT_CINNABAR_VOLCANO_B1F_NUGGET
	person_event SPRITE_POKE_BALL, 29, 4, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, CinnabarVolcanoB1FFireStone, EVENT_CINNABAR_VOLCANO_B1F_FIRE_STONE
