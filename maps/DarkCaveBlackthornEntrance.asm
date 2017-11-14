const_value set 2
	const DARKCAVEBLACKTHORNENTRANCE_PHARMACIST
	const DARKCAVEBLACKTHORNENTRANCE_POKE_BALL1
	const DARKCAVEBLACKTHORNENTRANCE_POKE_BALL2

DarkCaveBlackthornEntrance_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

PharmacistScript_0x18c720:
	faceplayer
	opentext
	checkevent EVENT_GOT_BLACKGLASSES_IN_DARK_CAVE
	iftrue UnknownScript_0x18c735
	writetext UnknownText_0x18c73f
	buttonsound
	verbosegiveitem BLACKGLASSES
	iffalse UnknownScript_0x18c739
	setevent EVENT_GOT_BLACKGLASSES_IN_DARK_CAVE
UnknownScript_0x18c735:
	writetext UnknownText_0x18c80c
	waitbutton
UnknownScript_0x18c739:
	closetext
	end

DarkCaveBlackthornEntranceRevive:
	itemball REVIVE

DarkCaveBlackthornEntranceTMDarkPulse:
	itemball TM_DARK_PULSE

UnknownText_0x18c73f:
	text "Whoa! You startled"
	line "me there!"

	para "I had my Black-"
	line "Glasses on, so I"

	para "didn't notice you"
	line "at all."

	para "What am I doing"
	line "here?"

	para "Hey, don't you"
	line "worry about it."

	para "I'll give you a"
	line "pair of Black-"
	cont "Glasses, so forget"
	cont "you saw me, OK?"
	done

UnknownText_0x18c80c:
	text "BlackGlasses ups"
	line "the power of Dark-"
	cont "type moves."
	done

DarkCaveBlackthornEntrance_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 2
	warp_def $3, $17, 1, ROUTE_45
	warp_def $19, $3, 2, DARK_CAVE_VIOLET_ENTRANCE

.XYTriggers:
	db 0

.Signposts:
	db 0

.PersonEvents:
	db 3
	person_event SPRITE_PHARMACIST, 3, 7, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, PharmacistScript_0x18c720, -1
	person_event SPRITE_POKE_BALL, 24, 21, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, DarkCaveBlackthornEntranceRevive, EVENT_DARK_CAVE_BLACKTHORN_ENTRANCE_REVIVE
	person_event SPRITE_POKE_BALL, 22, 7, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_ITEMBALL, 0, DarkCaveBlackthornEntranceTMDarkPulse, EVENT_DARK_CAVE_BLACKTHORN_ENTRANCE_TM_DARK_PULSE
