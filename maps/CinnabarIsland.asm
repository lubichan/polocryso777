const_value set 2
	const CINNABARISLAND_BLUE
	const CINNABARISLAND_POKE_BALL

CinnabarIsland_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 1

	; callbacks
	dbw MAPCALLBACK_NEWMAP, .FlyPoint

.FlyPoint:
	setflag ENGINE_FLYPOINT_CINNABAR
	return

CinnabarIslandBlue:
	faceplayer
	opentext
	writetext CinnabarIslandBlueText
	waitbutton
	closetext
	playsound SFX_WARP_TO
	applymovement CINNABARISLAND_BLUE, CinnabarIslandBlueTeleport
	disappear CINNABARISLAND_BLUE
	clearevent EVENT_VIRIDIAN_GYM_BLUE
	end

CinnabarIslandMagmarizer:
	itemball MAGMARIZER

CinnabarIslandPokeCenterSign:
	jumpstd pokecentersign

CinnabarIslandGymSign:
	jumptext CinnabarIslandGymSignText

CinnabarIslandSign:
	jumptext CinnabarIslandSignText

CinnabarIslandVolcanoWarningSign:
	jumptext CinnabarIslandVolcanoWarningSignText

CinnabarIslandHiddenRareCandy:
	dwb EVENT_CINNABAR_ISLAND_HIDDEN_RARE_CANDY, RARE_CANDY

CinnabarIslandBlueTeleport:
	teleport_from
	step_end

CinnabarIslandBlueText:
	text "Who are you?"

	para "Well, it's plain"
	line "to see that you're"
	cont "a trainer…"

	para "My name's Blue."

	para "I was once the"
	line "Champion, although"

	para "it was for only a"
	line "short time…"

	para "That meddling Red"
	line "did me in…"

	para "Anyway, what do"
	line "you want? You want"

	para "to challenge me or"
	line "something?"

	para "…I hate to say"
	line "it, but I'm not in"

	para "the mood for a"
	line "battle now."

	para "Take a good look"
	line "around you…"

	para "A volcano erupts,"
	line "and just like"

	para "that, a whole town"
	line "disappears."

	para "We can go on win-"
	line "ning and losing in"

	para "#mon. But if"
	line "nature so much as"

	para "twitches, we can"
	line "lose in a second."

	para "…"

	para "That's the way it"
	line "is…"

	para "But, anyway, I'm"
	line "still a trainer."

	para "If I see a strong"
	line "opponent, it makes"
	cont "me want to battle."

	para "If you want to"
	line "battle me, come to"
	cont "the Viridian Gym."

	para "I'll take you on"
	line "then."
	done

CinnabarIslandGymSignText:
	text "There's a notice"
	line "here…"

	para "Cinnabar Gym has"
	line "relocated to Sea-"
	cont "foam Islands."

	para "Blaine"
	done

CinnabarIslandSignText:
	text "Cinnabar Island"

	para "The Fiery Town of"
	line "Burning Desire"
	done

CinnabarIslandVolcanoWarningSignText:
	text "CAUTION"

	para "Cinnabar Volcano"
	line "is dormant, but"
	cont "still active!"

	para "Do not explore"
	line "the volcano"
	cont "without a means"
	cont "of escape!"
	done

CinnabarIsland_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 3
	warp_def $f, $b, 1, CINNABAR_POKECENTER_1F
	warp_def $9, $12, 1, CINNABAR_VOLCANO_1F
	warp_def $7, $7, 1, POKEMON_MANSION_1F

.XYTriggers:
	db 0

.Signposts:
	db 5
	signpost 15, 12, SIGNPOST_READ, CinnabarIslandPokeCenterSign
	signpost 15, 9, SIGNPOST_READ, CinnabarIslandGymSign
	signpost 11, 9, SIGNPOST_READ, CinnabarIslandSign
	signpost 11, 21, SIGNPOST_READ, CinnabarIslandVolcanoWarningSign
	signpost 12, 11, SIGNPOST_ITEM, CinnabarIslandHiddenRareCandy

.PersonEvents:
	db 2
	person_event SPRITE_BLUE, 14, 20, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, CinnabarIslandBlue, EVENT_BLUE_IN_CINNABAR
	person_event SPRITE_POKE_BALL, 2, 22, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, CinnabarIslandMagmarizer, EVENT_CINNABAR_ISLAND_MAGMARIZER
