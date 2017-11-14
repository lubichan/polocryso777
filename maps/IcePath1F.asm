const_value set 2
	const ICEPATH1F_SKIER
	const ICEPATH1F_BOARDER
	const ICEPATH1F_POKE_BALL1
	const ICEPATH1F_POKE_BALL2
	const ICEPATH1F_POKE_BALL3

IcePath1F_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

TrainerSkierMaria:
	trainer EVENT_BEAT_SKIER_MARIA, SKIER, MARIA, SkierMariaSeenText, SkierMariaBeatenText, 0, SkierMariaScript

SkierMariaScript:
	end_if_just_battled
	opentext
	writetext SkierMariaAfterText
	waitbutton
	closetext
	end

TrainerBoarderStefan:
	trainer EVENT_BEAT_BOARDER_STEFAN, BOARDER, STEFAN, BoarderStefanSeenText, BoarderStefanBeatenText, 0, BoarderStefanScript

BoarderStefanScript:
	end_if_just_battled
	opentext
	writetext BoarderStefanAfterText
	waitbutton
	closetext
	end

IcePath1FHMWaterfall:
	itemball HM_WATERFALL

IcePath1FPPUp:
	itemball PP_UP

IcePath1FProtein:
	itemball PROTEIN

SkierMariaSeenText:
	text "Were you admiring"
	line "my ski technique?"
	done

SkierMariaBeatenText:
	text "Your battling"
	line "technique is"
	cont "admirable!"
	done

SkierMariaAfterText:
	text "It took me a while"
	line "to get comfortable"
	cont "on skis."
	done

BoarderStefanSeenText:
	text "Brrr… It's so"
	line "cold!"

	para "Let's warm up with"
	line "a #mon battle!"
	done

BoarderStefanBeatenText:
	text "This cold is the"
	line "shame of defeat…"
	done

BoarderStefanAfterText:
	text "I'll keep warm by"
	line "snowboarding!"
	done

IcePath1F_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 4
	warp_def $13, $4, 1, ROUTE_44
	warp_def $1b, $24, 7, BLACKTHORN_CITY
	warp_def $5, $25, 1, ICE_PATH_B1F
	warp_def $d, $25, 7, ICE_PATH_B1F

.XYTriggers:
	db 0

.Signposts:
	db 0

.PersonEvents:
	db 5
	person_event SPRITE_BUENA, 10, 29, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_TRAINER, 3, TrainerSkierMaria, -1
	person_event SPRITE_ROCKER, 3, 28, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_TRAINER, 4, TrainerBoarderStefan, -1
	person_event SPRITE_POKE_BALL, 7, 31, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_ITEMBALL, 0, IcePath1FHMWaterfall, EVENT_GOT_HM07_WATERFALL
	person_event SPRITE_POKE_BALL, 23, 32, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, IcePath1FPPUp, EVENT_ICE_PATH_1F_PP_UP
	person_event SPRITE_POKE_BALL, 9, 35, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, IcePath1FProtein, EVENT_ICE_PATH_1F_PROTEIN
