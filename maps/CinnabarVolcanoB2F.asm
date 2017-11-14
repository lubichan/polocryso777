const_value set 2
	const CINNABARVOLCANOB2F_MOLTRES
	const CINNABARVOLCANOB2F_ROCK
	const CINNABARVOLCANOB2F_LAWRENCE

CinnabarVolcanoB2F_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 1

	; callbacks
	dbw MAPCALLBACK_TILES, .BouldersLand

.BouldersLand:
	checkevent EVENT_BOULDER_IN_CINNABAR_VOLCANO_B1F
	iffalse .skip1
	changeblock $6, $6, $5f
.skip1
	return

CinnabarVolcanoB2FLawrenceEncounterScript:
	showemote EMOTE_SHOCK, PLAYER, 15
	special Special_FadeOutMusic
	pause 15
	checkcode VAR_FACING
	if_equal UP, .up
	if_equal DOWN, .down
	if_equal LEFT, .left
.right
	appear CINNABARVOLCANOB2F_LAWRENCE
	applymovement CINNABARVOLCANOB2F_LAWRENCE, CinnabarVolcanoB2FMovementData_LawrenceApproachLeftRight
	spriteface PLAYER, DOWN
	jump .continue
.up
	moveperson CINNABARVOLCANOB2F_LAWRENCE, 13, 24
	appear CINNABARVOLCANOB2F_LAWRENCE
	applymovement CINNABARVOLCANOB2F_LAWRENCE, CinnabarVolcanoB2FMovementData_LawrenceApproachUp
	spriteface CINNABARVOLCANOB2F_LAWRENCE, UP
	spriteface PLAYER, DOWN
	jump .continue
.down
	moveperson CINNABARVOLCANOB2F_LAWRENCE, 13, 24
	appear CINNABARVOLCANOB2F_LAWRENCE
	applymovement CINNABARVOLCANOB2F_LAWRENCE, CinnabarVolcanoB2FMovementData_LawrenceApproachDown
	jump .continue
.left
	moveperson CINNABARVOLCANOB2F_LAWRENCE, 14, 24
	appear CINNABARVOLCANOB2F_LAWRENCE
	applymovement CINNABARVOLCANOB2F_LAWRENCE, CinnabarVolcanoB2FMovementData_LawrenceApproachLeftRight
	spriteface CINNABARVOLCANOB2F_LAWRENCE, UP
	spriteface PLAYER, DOWN
.continue
	playmusic MUSIC_LAWRENCE
	opentext
	writetext CinnabarVolcanoB2FLawrenceSpeechText
	waitbutton
	closetext
	spriteface CINNABARVOLCANOB2F_LAWRENCE, UP
	opentext
	writetext SeafoamIslandsB4FLawrenceEscapeRopeText
	pause 15
	closetext
	playsound SFX_WARP_TO
	special Special_FadeBlackQuickly
	special Special_ReloadSpritesNoPalettes
	disappear CINNABARVOLCANOB2F_LAWRENCE
	waitsfx
	special Special_FadeInQuickly
	setevent EVENT_HEARD_LAWRENCES_FINAL_SPEECH
	clearevent EVENT_LAWRENCE_VICTORY_ROAD
	special RestartMapMusic
	end

CinnabarVolcanoMoltres:
	faceplayer
	opentext
	writetext MoltresText
	cry MOLTRES
	pause 15
	closetext
	loadwildmon MOLTRES, 70
	writecode VAR_BATTLETYPE, BATTLETYPE_KANTO_LEGEND
	startbattle
	disappear CINNABARVOLCANOB2F_MOLTRES
	setevent EVENT_CINNABAR_VOLCANO_MOLTRES
	reloadmapafterbattle
	checkevent EVENT_SEAFOAM_ISLANDS_ARTICUNO
	iffalse .end
	checkevent EVENT_ROUTE_10_ZAPDOS
	iffalse .end
	special SpecialBirdsCheck
	iffalse .end
	jump CinnabarVolcanoB2FLawrenceEncounterScript
.end
	end

CinnabarVolcanoB2FRock:
	jumpstd smashrock

MoltresText:
	text "Gyaoo!"
	done

CinnabarVolcanoB2FLawrenceSpeechText:
	text "Lawrence: Hello"
	line "again, <PLAYER>."

	para "So you are search-"
	line "ing for Moltres"
	cont "here too."
	cont "Did I inspire you?"

	para "…What?! You caught"
	line "it already?"
	cont "Impossible."

	para "I spent years"
	line "hunting through"

	para "Victory Road, and"
	line "the islands south"
	cont "of Kanto…"

	para "Why have you"
	line "succeeded where I"
	cont "failed?"

	para "Can you appreciate"
	line "the majesty of the"
	cont "winged mirages?"

	para "Have you even"
	line "heard of the"

	para "guardian of the"
	line "sea before?"

	para "This is unaccept-"
	line "able."

	para "Meet me in Victory"
	line "Road."

	para "I'll show you that"
	line "I deserve to own"
	cont "those Pokemon."
	done

CinnabarVolcanoB2FMovementData_LawrenceApproachUp:
	step_right
	step_right
	step_right
	step_right
	step_right
	step_end

CinnabarVolcanoB2FMovementData_LawrenceApproachLeftRight:
	step_right
	step_right
	step_right
	step_right
	step_right
	step_up
	step_end

CinnabarVolcanoB2FMovementData_LawrenceApproachDown:
	step_right
	step_right
	step_right
	step_right
	step_right
	step_up
	step_up
	step_end

CinnabarVolcanoB2F_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 3
	warp_def $3, $d, 5, CINNABAR_VOLCANO_B1F
	warp_def $13, $19, 6, CINNABAR_VOLCANO_B1F
	warp_def $6, $6, 7, CINNABAR_VOLCANO_B1F ; hole

.XYTriggers:
	db 0

.Signposts:
	db 0

.PersonEvents:
	db 3
	person_event SPRITE_MOLTRES, 22, 18, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, CinnabarVolcanoMoltres, EVENT_CINNABAR_VOLCANO_MOLTRES
	person_event SPRITE_ROCK, 19, 21, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, CinnabarVolcanoB2FRock, -1
	person_event SPRITE_LAWRENCE, 24, 12, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, ObjectEvent, EVENT_LAWRENCE_FINAL_BIRD
