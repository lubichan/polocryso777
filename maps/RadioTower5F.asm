const_value set 2
	const RADIOTOWER5F_DIRECTOR
	const RADIOTOWER5F_ROCKET
	const RADIOTOWER5F_ROCKET_GIRL
	const RADIOTOWER5F_ROCKER
	const RADIOTOWER5F_POKE_BALL

RadioTower5F_MapScriptHeader:
.MapTriggers:
	db 3

	; triggers
	maptrigger .Trigger0
	maptrigger .Trigger1
	maptrigger .Trigger2

.MapCallbacks:
	db 0

.Trigger0:
	end

.Trigger1:
	end

.Trigger2:
	end

FakeDirectorScript:
	spriteface RADIOTOWER5F_DIRECTOR, UP
	showemote EMOTE_SHOCK, RADIOTOWER5F_DIRECTOR, 15
	opentext
	writetext FakeDirectorTextBefore1
	waitbutton
	closetext
	applymovement RADIOTOWER5F_DIRECTOR, FakeDirectorMovement
	playmusic MUSIC_ROCKET_ENCOUNTER
	opentext
	writetext FakeDirectorTextBefore2
	waitbutton
	closetext
	winlosstext FakeDirectorWinText, 0
	setlasttalked RADIOTOWER5F_DIRECTOR
	loadtrainer PETREL, PETREL1
	startbattle
	reloadmapafterbattle
	opentext
	writetext FakeDirectorTextAfter
	buttonsound
	verbosegiveitem BASEMENT_KEY
	closetext
	dotrigger $1
	setevent EVENT_BEAT_PETREL_1
	end

Director:
	faceplayer
	opentext
	checkevent EVENT_CLEARED_RADIO_TOWER
	iftrue .TrueDirector
	writetext FakeDirectorTextAfter
	waitbutton
	closetext
	end

.TrueDirector:
	writetext RadioTower5FDirectorText
	waitbutton
	closetext
	end

TrainerAriana1:
	trainer EVENT_BEAT_ARIANA_1, ARIANA, ARIANA1, Ariana1SeenText, Ariana1BeatenText, 0, Ariana1Script

Ariana1Script:
	end_if_just_battled
	opentext
	writetext Ariana1AfterText
	waitbutton
	closetext
	end

RadioTower5FRocketBossTrigger:
	applymovement PLAYER, MovementData_0x60125
	playmusic MUSIC_ROCKET_ENCOUNTER
	spriteface RADIOTOWER5F_ROCKET, RIGHT
	opentext
	writetext RadioTower5FRocketBossBeforeText
	waitbutton
	closetext
	winlosstext RadioTower5FRocketBossWinText, 0
	setlasttalked RADIOTOWER5F_ROCKET
	loadtrainer ARCHER, ARCHER1
	startbattle
	reloadmapafterbattle
	opentext
	writetext RadioTower5FRocketBossAfterText
	waitbutton
	closetext
	special Special_FadeBlackQuickly
	special Special_ReloadSpritesNoPalettes
	disappear RADIOTOWER5F_ROCKET
	disappear RADIOTOWER5F_ROCKET_GIRL
	pause 15
	special Special_FadeInQuickly
	setevent EVENT_BEAT_ARCHER_1
	setevent EVENT_CLEARED_RADIO_TOWER
	clearflag ENGINE_ROCKETS_IN_RADIO_TOWER
	setevent EVENT_GOLDENROD_CITY_ROCKET_SCOUT
	setevent EVENT_GOLDENROD_CITY_ROCKET_TAKEOVER
	setevent EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	clearevent EVENT_MAHOGANY_MART_OWNERS
	clearflag ENGINE_ROCKETS_IN_MAHOGANY
	clearevent EVENT_GOLDENROD_CITY_CIVILIANS
	clearevent EVENT_RADIO_TOWER_CIVILIANS_AFTER
	setevent EVENT_BLACKTHORN_CITY_DRAGON_TAMER_BLOCKS_GYM
	clearevent EVENT_BLACKTHORN_CITY_DRAGON_TAMER_DOES_NOT_BLOCK_GYM
	special PlayMapMusic
	disappear RADIOTOWER5F_DIRECTOR
	moveperson RADIOTOWER5F_DIRECTOR, $c, $0
	appear RADIOTOWER5F_DIRECTOR
	applymovement RADIOTOWER5F_DIRECTOR, RadioTower5FDirectorWalksIn
	spriteface PLAYER, RIGHT
	opentext
	writetext RadioTower5FDirectorThankYouText
	buttonsound
	verbosegiveitem CLEAR_BELL
	writetext RadioTower5FDirectorDescribeClearBellText
	waitbutton
	closetext
	dotrigger $2
	domaptrigger ECRUTEAK_HOUSE, $0
	setevent EVENT_GOT_CLEAR_BELL
	setevent EVENT_TEAM_ROCKET_DISBANDED
	jump .UselessJump

.UselessJump:
	applymovement RADIOTOWER5F_DIRECTOR, RadioTower5FDirectorWalksOut
	playsound SFX_EXIT_BUILDING
	disappear RADIOTOWER5F_DIRECTOR
	end

Ben:
	jumptextfaceplayer BenText

RadioTower5FUltraBall:
	itemball ULTRA_BALL

MapRadioTower5FSignpost0Script:
	jumptext SignpostRadioTower5FOffice

MapRadioTower5FSignpost2Script:
	jumptext SignpostRadioTower5FStudio

RadioTower5FBookshelf:
	jumpstd magazinebookshelf

FakeDirectorMovement:
	step_left
	step_left
	step_left
	step_up
	step_up
	step_end

RadioTower5FDirectorWalksIn:
	step_down
	step_down
	step_right
	step_right
	step_right
	step_right
	step_down
	step_down
	step_down
	step_left
	step_end

RadioTower5FDirectorWalksOut:
	step_right
	step_up
	step_up
	step_up
	step_left
	step_left
	step_left
	step_left
	step_up
	step_up
	step_end

MovementData_0x60125:
	step_left
	step_left
	step_end

FakeDirectorTextBefore1:
	text "Y-you! You came to"
	line "rescue me?"
	done

FakeDirectorTextBefore2:
	text "Is that what you"
	line "were expecting?"

	para "Wrong!"
	line "I'm an imposter!"

	para "I pretended to be"
	line "the real thing to"

	para "prepare for our"
	line "takeover."

	para "Do you want to"
	line "know where we hid"
	cont "the real Director?"

	para "Sure, I'll tell"
	line "you. But only if"
	cont "you can beat me!"
	done

FakeDirectorWinText:
	text "OK, OK. I'll tell"
	line "you where he is."
	done

FakeDirectorTextAfter:
	text "We stashed the"
	line "real Director in"

	para "the Underground"
	line "Warehouse."

	para "It's at the far"
	line "end of the Under-"
	cont "ground."

	para "But I doubt you'll"
	line "get that far."
	done

Ariana1SeenText:
	text "Remember me from"
	line "the hideout in"
	cont "Mahogany Town?"

	para "I lost then, but I"
	line "won't this time."
	done

Ariana1BeatenText:
	text "This can't be"
	line "happening!"

	para "I fought hard, but"
	line "I still lost…"
	done

Ariana1AfterText:
	text "<PLAYER>, isn't it?"

	para "A brat like you"
	line "won't appreciate"

	para "the magnificence"
	line "of Team Rocket."

	para "That's too bad."
	line "I really admire"
	cont "your power."
	done

RadioTower5FRocketBossBeforeText:
	text "Oh? You managed to"
	line "get this far?"

	para "You must be quite"
	line "the trainer."

	para "We intend to take"
	line "over this Radio"

	para "Station and an-"
	line "nounce our come-"
	cont "back."

	para "That should bring"
	line "our boss Giovanni"

	para "back from his solo"
	line "training."

	para "We are going to"
	line "regain our former"
	cont "glory."

	para "I won't allow you"
	line "to interfere with"
	cont "our plans."
	done

RadioTower5FRocketBossWinText:
	text "No! Forgive me,"
	line "Giovanni!"
	done

RadioTower5FRocketBossAfterText:
	text "How could this be?"

	para "Our dreams have"
	line "come to naught."

	para "I wasn't up to the"
	line "task after all."

	para "Like Giovanni did"
	line "before me, I will"

	para "disband Team"
	line "Rocket here today."

	para "Farewell."
	done

RadioTower5FDirectorThankYouText:
	text "Director: <PLAY_G>,"
	line "thank you!"

	para "Your courageous"
	line "actions have saved"

	para "#mon nation-"
	line "wide."

	para "I know it's not"
	line "much, but please"
	cont "take this."
	done

RadioTower5FDirectorDescribeClearBellText:
	text "There used to be a"
	line "tower right here"
	cont "in Goldenrod City."

	para "But it was old and"
	line "creaky."

	para "So we replaced it"
	line "with our Radio"
	cont "Tower."

	para "We dug up that"
	line "bell during"
	cont "construction."

	para "I heard that all"
	line "sorts of #mon"

	para "lived in Goldenrod"
	line "in the past."

	para "Perhaps…"

	para "That bell has some"
	line "connection to the"

	para "Bell Tower in"
	line "Ecruteak City…"

	para "Ah!"

	para "That reminds me…"

	para "I overheard Team"
	line "Rocket whispering."

	para "Apparently, some-"
	line "thing is going on"
	cont "at the Bell Tower."

	para "I have no idea"
	line "what is happening,"

	para "but you might look"
	line "into it."

	para "OK, I better go to"
	line "my office."
	done

RadioTower5FDirectorText:
	text "Director: Hello,"
	line "<PLAY_G>!"

	para "You know, I love"
	line "#mon."

	para "I built this Radio"
	line "Tower so I could"

	para "express my love"
	line "of #mon."

	para "It would be nice"
	line "if people enjoyed"
	cont "our programs."
	done

BenText:
	text "Ben: Do you listen"
	line "to our music?"
	done

SignpostRadioTower5FOffice:
	text "5F Director's"
	line "   Office"
	done

SignpostRadioTower5FStudio:
	text "5F Studio 1"
	done

RadioTower5F_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 2
	warp_def $0, $0, 1, RADIO_TOWER_4F
	warp_def $0, $c, 3, RADIO_TOWER_4F

.XYTriggers:
	db 2
	xy_trigger 0, $3, $0, $0, FakeDirectorScript, $0, $0
	xy_trigger 1, $5, $10, $0, RadioTower5FRocketBossTrigger, $0, $0

.Signposts:
	db 5
	signpost 0, 3, SIGNPOST_READ, MapRadioTower5FSignpost0Script
	signpost 0, 11, SIGNPOST_READ, MapRadioTower5FSignpost2Script
	signpost 0, 15, SIGNPOST_READ, MapRadioTower5FSignpost2Script
	signpost 1, 16, SIGNPOST_READ, RadioTower5FBookshelf
	signpost 1, 17, SIGNPOST_READ, RadioTower5FBookshelf

.PersonEvents:
	db 5
	person_event SPRITE_GENTLEMAN, 6, 3, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, Director, -1
	person_event SPRITE_ROCKET, 5, 13, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, ObjectEvent, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	person_event SPRITE_ROCKET_GIRL, 2, 17, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_TRAINER, 1, TrainerAriana1, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	person_event SPRITE_ROCKER, 5, 13, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, Ben, EVENT_RADIO_TOWER_CIVILIANS_AFTER
	person_event SPRITE_POKE_BALL, 5, 8, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, RadioTower5FUltraBall, EVENT_RADIO_TOWER_5F_ULTRA_BALL
