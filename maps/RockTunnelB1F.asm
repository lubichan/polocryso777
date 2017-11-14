const_value set 2
	const ROCKTUNNELB1F_FIREBREATHER
	const ROCKTUNNELB1F_HEX_MANIAC
	const ROCKTUNNELB1F_POKE_BALL1
	const ROCKTUNNELB1F_POKE_BALL2
	const ROCKTUNNELB1F_POKE_BALL3
	const ROCKTUNNELB1F_BOULDER

RockTunnelB1F_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

TrainerFirebreatherDick:
	trainer EVENT_BEAT_FIREBREATHER_DICK, FIREBREATHER, DICK, FirebreatherDickSeenText, FirebreatherDickBeatenText, 0, FirebreatherDickScript

FirebreatherDickScript:
	end_if_just_battled
	opentext
	writetext FirebreatherDickAfterText
	waitbutton
	closetext
	end

TrainerHexManiacVivian:
	trainer EVENT_BEAT_HEX_MANIAC_VIVIAN, HEX_MANIAC, VIVIAN, HexManiacVivianSeenText, HexManiacVivianBeatenText, 0, HexManiacVivianScript

HexManiacVivianScript:
	end_if_just_battled
	opentext
	writetext HexManiacVivianAfterText
	waitbutton
	closetext
	end

RockTunnelB1FIron:
	itemball IRON

RockTunnelB1FPPUp:
	itemball PP_UP

RockTunnelB1FRevive:
	itemball REVIVE

RockTunnelB1FHiddenMaxPotion:
	dwb EVENT_ROCK_TUNNEL_B1F_HIDDEN_MAX_POTION, MAX_POTION

RockTunnelB1FBoulder:
	jumpstd strengthboulder

FirebreatherDickSeenText:
	text "I'm using fire to"
	line "to see my way out!"
	done

FirebreatherDickBeatenText:
	text "Help! The fire"
	line "went out!"
	done

FirebreatherDickAfterText:
	text "A #mon that"
	line "knows Flash is"

	para "helpful in dark"
	line "caves like this."
	done

HexManiacVivianSeenText:
	text "Do you hear the"
	line "voices calling?"
	done

HexManiacVivianBeatenText:
	text "It was only an"
	line "echo?!"
	done

HexManiacVivianAfterText:
	text "This spooky hex"
	line "maniac persona"

	para "actually takes"
	line "effort."
	done

RockTunnelB1F_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 5
	warp_def $3, $3, 3, ROCK_TUNNEL_1F
	warp_def $9, $11, 4, ROCK_TUNNEL_1F
	warp_def $3, $17, 5, ROCK_TUNNEL_1F
	warp_def $13, $1b, 6, ROCK_TUNNEL_1F
	warp_def $d, $3, 7, ROCK_TUNNEL_1F

.XYTriggers:
	db 0

.Signposts:
	db 1
	signpost 18, 3, SIGNPOST_ITEM, RockTunnelB1FHiddenMaxPotion

.PersonEvents:
	db 6
	person_event SPRITE_FISHER, 14, 27, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_TRAINER, 3, TrainerFirebreatherDick, -1
	person_event SPRITE_HEX_MANIAC, 24, 24, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, (1 << 3) | PAL_OW_PURPLE, PERSONTYPE_TRAINER, 2, TrainerHexManiacVivian, -1
	person_event SPRITE_POKE_BALL, 24, 7, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, RockTunnelB1FIron, EVENT_ROCK_TUNNEL_B1F_IRON
	person_event SPRITE_POKE_BALL, 4, 8, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, RockTunnelB1FPPUp, EVENT_ROCK_TUNNEL_B1F_PP_UP
	person_event SPRITE_POKE_BALL, 2, 15, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, RockTunnelB1FRevive, EVENT_ROCK_TUNNEL_B1F_REVIVE
	person_event SPRITE_BOULDER, 25, 10, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, RockTunnelB1FBoulder, -1
