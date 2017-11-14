const_value set 2
	const NAVELROCKROOF_GREEN
	const NAVELROCKROOF_CHRIS
	const NAVELROCKROOF_KRIS

NavelRockRoof_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 1

	; callbacks

	dbw MAPCALLBACK_SPRITES, .DailyLeafRematchCallback

.DailyLeafRematchCallback:
	disappear NAVELROCKROOF_GREEN
	checkflag ENGINE_LEAF_IN_NAVEL_ROCK
	iftrue .Disappear
	appear NAVELROCKROOF_GREEN
.Disappear
	return

.Appear:
	appear NAVELROCKROOF_GREEN
	return

Leaf:
	special Special_FadeOutMusic
	faceplayer
	opentext
	writetext LeafText
	waitbutton
	closetext
	winlosstext LeafWinLossText, LeafWinLossText
	loadtrainer LEAF, 1
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	special Special_FadeOutMusic
	faceplayer
	opentext
	writetext LeafAfterText
	waitbutton
	closetext
	special Special_FadeBlackQuickly
	special Special_ReloadSpritesNoPalettes
	disappear NAVELROCKROOF_GREEN
	pause 15
	special Special_FadeInQuickly
	pause 30
	special HealParty
	refreshscreen $0
	checknite
	iffalse .Sun
	changeblock $6, $0, $76
	changeblock $8, $0, $77
	changeblock $6, $2, $7a
	changeblock $8, $2, $7b
.Sun
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .FemaleEndingSequence
	checkcode VAR_FACING
	if_equal UP, .LeftMaleEndingSequence
	spriteface PLAYER, UP
	moveperson NAVELROCKROOF_CHRIS, 8, 8
	appear NAVELROCKROOF_CHRIS
	jump .EndingSequence

.LeftMaleEndingSequence:
	applymovement PLAYER, NavelRockRoofStepUpMovementData
	appear NAVELROCKROOF_CHRIS
	jump .EndingSequence

.FemaleEndingSequence:
	checkcode VAR_FACING
	if_equal UP, .LeftFemaleEndingSequence
	spriteface PLAYER, UP
	moveperson NAVELROCKROOF_KRIS, 8, 8
	appear NAVELROCKROOF_KRIS
	jump .EndingSequence

.LeftFemaleEndingSequence:
	applymovement PLAYER, NavelRockRoofStepUpMovementData
	appear NAVELROCKROOF_KRIS
.EndingSequence:
	applymovement PLAYER, NavelRockRoofHidePlayerMovementData
	pause 30
	applymovement PLAYER, NavelRockRoofPanUpMovementData
	pause 80
	disappear NAVELROCKROOF_CHRIS
	disappear NAVELROCKROOF_KRIS
	credits
	end

LeafText:
	text "<......><......>"
	line "<......><......>!"
	done

LeafWinLossText:
	text "…!"
	done

LeafAfterText:
	text "<......><......>"
	line "<......><......>"
	done

NavelRockRoofHidePlayerMovementData:
	hide_person
	step_end

NavelRockRoofPanUpMovementData:
	slow_step_up
	slow_step_up
	slow_step_up
	slow_step_up
NavelRockRoofStepUpMovementData:
	slow_step_up
	step_end

NavelRockRoof_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 1
	warp_def $f, $9, 14, NAVEL_ROCK_INSIDE

.XYTriggers:
	db 0

.Signposts:
	db 0

.PersonEvents:
	db 3
	person_event SPRITE_LEAF, 8, 7, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_SCRIPT, 0, Leaf, EVENT_LEAF_IN_NAVEL_ROCK
	person_event SPRITE_CHRIS, 8, 7, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, ObjectEvent, EVENT_CHRIS_IN_NAVEL_ROCK
	person_event SPRITE_KRIS, 8, 7, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, ObjectEvent, EVENT_KRIS_IN_NAVEL_ROCK
