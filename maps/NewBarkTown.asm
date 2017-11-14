const_value set 2
	const NEWBARKTOWN_TEACHER
	const NEWBARKTOWN_FISHER
	const NEWBARKTOWN_SILVER
	const NEWBARKTOWN_LYRA

NewBarkTown_MapScriptHeader:
.MapTriggers:
	db 2

	; triggers
	maptrigger .Trigger0
	maptrigger .Trigger1

.MapCallbacks:
	db 1

	; callbacks
	dbw MAPCALLBACK_NEWMAP, .FlyPoint

.Trigger0:
	end

.Trigger1:
	end

.FlyPoint:
	setflag ENGINE_FLYPOINT_NEW_BARK
	clearevent EVENT_FIRST_TIME_BANKING_WITH_MOM
	return

NewBarkTown_TeacherStopsYouTrigger1:
	playmusic MUSIC_MOM
	spriteface NEWBARKTOWN_TEACHER, LEFT
	opentext
	writetext Text_WaitPlayer
	waitbutton
	closetext
	spriteface PLAYER, RIGHT
	applymovement NEWBARKTOWN_TEACHER, Movement_TeacherRunsToYou1_NBT
	opentext
	writetext Text_WhatDoYouThinkYoureDoing
	waitbutton
	closetext
	follow NEWBARKTOWN_TEACHER, PLAYER
	applymovement NEWBARKTOWN_TEACHER, Movement_TeacherBringsYouBack1_NBT
	stopfollow
	opentext
	writetext Text_ItsDangerousToGoAlone
	waitbutton
	closetext
	special RestartMapMusic
	end

NewBarkTown_TeacherStopsYouTrigger2:
	playmusic MUSIC_MOM
	spriteface NEWBARKTOWN_TEACHER, LEFT
	opentext
	writetext Text_WaitPlayer
	waitbutton
	closetext
	spriteface PLAYER, RIGHT
	applymovement NEWBARKTOWN_TEACHER, Movement_TeacherRunsToYou2_NBT
	spriteface PLAYER, UP
	opentext
	writetext Text_WhatDoYouThinkYoureDoing
	waitbutton
	closetext
	follow NEWBARKTOWN_TEACHER, PLAYER
	applymovement NEWBARKTOWN_TEACHER, Movement_TeacherBringsYouBack2_NBT
	stopfollow
	opentext
	writetext Text_ItsDangerousToGoAlone
	waitbutton
	closetext
	special RestartMapMusic
	end

NewBarkTown_LyraIntroTrigger:
	appear NEWBARKTOWN_LYRA
	special Special_FadeOutMusic
	applymovement NEWBARKTOWN_LYRA, Movement_LyraEnters_NBT
	showemote EMOTE_SHOCK, NEWBARKTOWN_LYRA, 15
	applymovement NEWBARKTOWN_LYRA, Movement_LyraApproaches_NBT
	spriteface PLAYER, LEFT
	playmusic MUSIC_LYRA_ENCOUNTER_HGSS
	opentext
	writetext Text_LyraIntro
	waitbutton
	closetext
	follow PLAYER, NEWBARKTOWN_LYRA
	applymovement PLAYER, Movement_PlayerOrLyraEntersLab_NBT
	stopfollow
	playsound SFX_EXIT_BUILDING
	disappear PLAYER
	applymovement NEWBARKTOWN_LYRA, Movement_PlayerOrLyraEntersLab_NBT
	playsound SFX_EXIT_BUILDING
	disappear NEWBARKTOWN_LYRA
	dotrigger $2
	special FadeOutPalettes
	pause 15
	warpfacing UP, ELMS_LAB, $4, $b
	end

NewBarkTown_LyraFinalTrigger1:
	moveperson NEWBARKTOWN_LYRA, $e, $b
	jump NewBarkTown_LyraFinalTrigger

NewBarkTown_LyraFinalTrigger2:
	moveperson NEWBARKTOWN_LYRA, $e, $c
	jump NewBarkTown_LyraFinalTrigger

NewBarkTown_LyraFinalTrigger3:
	moveperson NEWBARKTOWN_LYRA, $e, $d
	jump NewBarkTown_LyraFinalTrigger

NewBarkTown_LyraFinalTrigger4:
	moveperson NEWBARKTOWN_LYRA, $e, $e

NewBarkTown_LyraFinalTrigger:
	variablesprite SPRITE_NEW_BARK_LYRA, SPRITE_LYRA
	special RunCallback_04
	appear NEWBARKTOWN_LYRA
	applymovement NEWBARKTOWN_LYRA, Movement_LyraSaysGoodbye1_NBT
	showemote EMOTE_SHOCK, NEWBARKTOWN_LYRA, 15
	special Special_FadeOutMusic
	pause 15
	applymovement NEWBARKTOWN_LYRA, Movement_LyraSaysGoodbye2_NBT
	spriteface PLAYER, LEFT
	playmusic MUSIC_LYRA_ENCOUNTER_HGSS
	opentext
	writetext Text_LyraGoodbye1
	waitbutton
	closetext
	setevent EVENT_LYRA_NEW_BARK_TOWN
	variablesprite SPRITE_NEW_BARK_LYRA, SPRITE_LASS
	winlosstext Text_LyraGoodbyeWin, Text_LyraGoodbyeLoss
	setlasttalked NEWBARKTOWN_LYRA
	checkevent EVENT_GOT_TOTODILE_FROM_ELM
	iftrue .Totodile
	checkevent EVENT_GOT_CHIKORITA_FROM_ELM
	iftrue .Chikorita
	loadtrainer LYRA, LYRA_10
	jump .AfterBattle

.Totodile:
	loadtrainer LYRA, LYRA_11
	jump .AfterBattle

.Chikorita:
	loadtrainer LYRA, LYRA_12
.AfterBattle
	startbattle
	dontrestartmapmusic
	variablesprite SPRITE_NEW_BARK_LYRA, SPRITE_LYRA
	reloadmapafterbattle
	playmusic MUSIC_LYRA_DEPARTURE_HGSS
	opentext
	writetext Text_LyraGoodbye2
	waitbutton
	closetext
	applymovement NEWBARKTOWN_LYRA, Movement_LyraSaysGoodbye3_NBT
	disappear NEWBARKTOWN_LYRA
	variablesprite SPRITE_NEW_BARK_LYRA, SPRITE_LASS
	special RunCallback_04
	dotrigger $2
	playmapmusic
	end

NewBarkTownTeacherScript:
	faceplayer
	opentext
	checkevent EVENT_TALKED_TO_MOM_AFTER_MYSTERY_EGG_QUEST
	iftrue .CallMom
	checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	iftrue .TellMomYoureLeaving
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue .MonIsAdorable
	writetext Text_GearIsImpressive
	waitbutton
	closetext
	end

.MonIsAdorable:
	writetext Text_YourMonIsAdorable
	waitbutton
	closetext
	end

.TellMomYoureLeaving:
	writetext Text_TellMomIfLeaving
	waitbutton
	closetext
	end

.CallMom:
	writetext Text_CallMomOnGear
	waitbutton
	closetext
	end

NewBarkTownFisherScript:
	jumptextfaceplayer Text_ElmDiscoveredNewMon

NewBarkTownSilverScript:
	opentext
	writetext NewBarkTownRivalText1
	waitbutton
	closetext
	spriteface NEWBARKTOWN_SILVER, LEFT
	opentext
	writetext NewBarkTownRivalText2
	waitbutton
	closetext
	follow PLAYER, NEWBARKTOWN_SILVER
	applymovement PLAYER, Movement_SilverPushesYouAway_NBT
	stopfollow
	pause 5
	spriteface NEWBARKTOWN_SILVER, DOWN
	pause 5
	playsound SFX_TACKLE
	applymovement PLAYER, Movement_SilverShovesYouOut_NBT
	applymovement NEWBARKTOWN_SILVER, Movement_SilverReturnsToTheShadows_NBT
	end

NewBarkTownSign:
	jumptext NewBarkTownSignText

MapNewBarkTownSignpost1Script:
	jumptext PlayersHouseSignText

MapNewBarkTownSignpost2Script:
	jumptext ElmsLabSignText

MapNewBarkTownSignpost3Script:
	jumptext LyrasHouseSignText

Movement_TeacherRunsToYou1_NBT:
	step_left
	step_left
	step_left
	step_left
	step_end

Movement_TeacherRunsToYou2_NBT:
	step_left
	step_left
	step_left
	step_left
	step_left
	turn_head_down
	step_end

Movement_TeacherBringsYouBack1_NBT:
	step_right
	step_right
	step_right
	step_right
	turn_head_left
	step_end

Movement_TeacherBringsYouBack2_NBT:
	step_right
	step_right
	step_right
	step_right
	step_right
	turn_head_left
	step_end

Movement_SilverPushesYouAway_NBT:
	turn_head_up
	step_down
	step_end

Movement_SilverShovesYouOut_NBT:
	turn_head_up
	fix_facing
	jump_step_down
	remove_fixed_facing
	step_end

Movement_SilverReturnsToTheShadows_NBT:
	step_right
	step_end

Movement_LyraEnters_NBT:
	step_right
	step_right
	step_end

Movement_LyraApproaches_NBT:
	step_right
	step_up
	step_up
	step_right
	step_end

Movement_PlayerOrLyraEntersLab_NBT:
	step_up
	step_end

Movement_LyraSaysGoodbye1_NBT:
	step_up
	step_up
	step_end

Movement_LyraSaysGoodbye2_NBT:
	step_right
	step_up
	step_up
	step_up
	step_right
	step_end

Movement_LyraSaysGoodbye3_NBT:
	step_left
	step_down
	step_down
	step_down
	step_down
	step_down
	step_end

Text_GearIsImpressive:
	text "Wow, your #gear"
	line "is impressive!"

	para "Did your mom get"
	line "it for you?"
	done

Text_WaitPlayer:
	text "Wait, <PLAY_G>!"
	done

Text_WhatDoYouThinkYoureDoing:
	text "What do you think"
	line "you're doing?"
	done

Text_ItsDangerousToGoAlone:
	text "It's dangerous to"
	line "go out without a"
	cont "#mon!"

	para "Wild #mon"
	line "jump out of the"

	para "grass on the way"
	line "to the next town."
	done

Text_YourMonIsAdorable:
	text "Oh! Your #mon"
	line "is adorable!"
	cont "I wish I had one!"
	done

Text_TellMomIfLeaving:
	text "Hi, <PLAY_G>!"
	line "Leaving again?"

	para "You should tell"
	line "your mom if you"
	cont "are leaving."
	done

Text_CallMomOnGear:
	text "Call your mom on"
	line "your #gear to"

	para "let her know how"
	line "you're doing."
	done

Text_ElmDiscoveredNewMon:
	text "Yo, <PLAYER>!"

	para "I hear Prof.Elm"
	line "discovered some"
	cont "new #mon."
	done

NewBarkTownRivalText1:
	text "<......>"

	para "So this is the"
	line "famous Elm #mon"
	cont "Lab…"
	done

NewBarkTownRivalText2:
	text "…What are you"
	line "staring at?"
	done

Text_LyraIntro:
	text "Lyra: Oh, hello,"
	line "<PLAYER>!"

	para "Are you meeting"
	line "Prof.Elm?"

	para "Let me come with"
	line "you! He always has"

	para "interesting things"
	line "to say about"
	cont "#mon."
	done

Text_LyraGoodbye1:
	text "Lyra: <PLAYER>!"

	para "I heard that you"
	line "have all the Gym"
	cont "badges in Johto."

	para "…You're really"
	line "something,"
	cont "<PLAYER>."

	para "To think that we"
	line "both started our"

	para "journeys in this"
	line "town…"

	para "I do what I can"
	line "to help the prof-"
	cont "essor, but I could"

	para "never take on the"
	line "League Champion."

	para "…Before you go…"

	para "How about one"
	line "more battle?"

	para "I want to see the"
	line "kind of trainer"
	cont "you've become!"
	done

Text_LyraGoodbyeWin:
	text "You're as talented"
	line "as I expected!"
	done

Text_LyraGoodbyeLoss:
	text "I hope you didn't"
	line "let me win…"
	done

Text_LyraGoodbye2:
	text "…Thanks, <PLAYER>."

	para "I can tell how"
	line "much work and"

	para "love you put into"
	line "raising your"
	cont "#mon."

	para "…So, this is"
	line "goodbye."

	para "I know you can"
	line "beat the #mon"
	cont "League!"

	para "You're going to be"
	line "a great Champion!"
	done

NewBarkTownSignText:
	text "New Bark Town"

	para "The Town Where the"
	line "Winds of a New"
	cont "Beginning Blow"
	done

PlayersHouseSignText:
	text "<PLAYER>'s House"
	done

ElmsLabSignText:
	text "Elm #mon Lab"
	done

LyrasHouseSignText:
	text "Lyra's House"
	done

NewBarkTown_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 5
	warp_def $3, $6, 1, ELMS_LAB
	warp_def $5, $f, 1, KRISS_HOUSE_1F
	warp_def $b, $3, 1, KRISS_NEIGHBORS_HOUSE
	warp_def $d, $b, 1, LYRAS_HOUSE_1F
	warp_def $2, $a, 2, ELMS_HOUSE

.XYTriggers:
	db 7
	xy_trigger 0, $8, $1, $0, NewBarkTown_TeacherStopsYouTrigger1, $0, $0
	xy_trigger 0, $9, $1, $0, NewBarkTown_TeacherStopsYouTrigger2, $0, $0
	xy_trigger 0, $4, $6, $0, NewBarkTown_LyraIntroTrigger, $0, $0
	xy_trigger 1, $6, $11, $0, NewBarkTown_LyraFinalTrigger1, $0, $0
	xy_trigger 1, $7, $11, $0, NewBarkTown_LyraFinalTrigger2, $0, $0
	xy_trigger 1, $8, $11, $0, NewBarkTown_LyraFinalTrigger3, $0, $0
	xy_trigger 1, $9, $11, $0, NewBarkTown_LyraFinalTrigger4, $0, $0

.Signposts:
	db 4
	signpost 8, 8, SIGNPOST_READ, NewBarkTownSign
	signpost 5, 13, SIGNPOST_READ, MapNewBarkTownSignpost1Script
	signpost 3, 3, SIGNPOST_READ, MapNewBarkTownSignpost2Script
	signpost 13, 9, SIGNPOST_READ, MapNewBarkTownSignpost3Script

.PersonEvents:
	db 4
	person_event SPRITE_TEACHER, 8, 6, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 1, -1, -1, 0, PERSONTYPE_SCRIPT, 0, NewBarkTownTeacherScript, -1
	person_event SPRITE_FISHER, 9, 12, SPRITEMOVEDATA_WALK_UP_DOWN, 1, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_SCRIPT, 0, NewBarkTownFisherScript, -1
	person_event SPRITE_CHERRYGROVE_RIVAL, 2, 3, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, NewBarkTownSilverScript, EVENT_RIVAL_NEW_BARK_TOWN
	person_event SPRITE_NEW_BARK_LYRA, 6, 1, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, ObjectEvent, EVENT_LYRA_NEW_BARK_TOWN
