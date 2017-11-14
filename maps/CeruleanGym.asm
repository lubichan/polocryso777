const_value set 2
	const CERULEANGYM_ROCKET
	const CERULEANGYM_MISTY
	const CERULEANGYM_SWIMMER_GIRL1
	const CERULEANGYM_SWIMMER_GIRL2
	const CERULEANGYM_SWIMMER_GIRL3
	const CERULEANGYM_SAILOR1
	const CERULEANGYM_SAILOR2
	const CERULEANGYM_GYM_GUY

CeruleanGym_MapScriptHeader:
.MapTriggers:
	db 2

	; triggers
	dw UnknownScript_0x1883d9, 0
	dw UnknownScript_0x1883da, 0

.MapCallbacks:
	db 0

UnknownScript_0x1883d9:
	end

UnknownScript_0x1883da:
	priorityjump UnknownScript_0x1883de
	end

UnknownScript_0x1883de:
	applymovement CERULEANGYM_ROCKET, MovementData_0x1884e3
	playsound SFX_TACKLE
	applymovement CERULEANGYM_ROCKET, MovementData_0x1884eb
	playmusic MUSIC_ROCKET_ENCOUNTER
	opentext
	writetext UnknownText_0x1884fb
	waitbutton
	closetext
	showemote EMOTE_SHOCK, CERULEANGYM_ROCKET, 15
	applymovement CERULEANGYM_ROCKET, MovementData_0x1884f7
	opentext
	writetext UnknownText_0x188574
	waitbutton
	closetext
	applymovement CERULEANGYM_ROCKET, MovementData_0x1884f5
	opentext
	writetext UnknownText_0x1885a5
	waitbutton
	closetext
	applymovement CERULEANGYM_ROCKET, MovementData_0x1884e8
	playsound SFX_EXIT_BUILDING
	disappear CERULEANGYM_ROCKET
	setevent EVENT_MET_ROCKET_GRUNT_AT_CERULEAN_GYM
	clearevent EVENT_ROUTE_24_ROCKET
	dotrigger $0
	domaptrigger POWER_PLANT, $0
	waitsfx
	special RestartMapMusic
	pause 15
	spriteface PLAYER, DOWN
	pause 15
	end

MistyScript_0x188432:
	faceplayer
	opentext
	checkflag ENGINE_CASCADEBADGE
	iftrue .FightDone
	writetext UnknownText_0x188674
	waitbutton
	closetext
	winlosstext UnknownText_0x18870c, 0
	loadtrainer MISTY, 1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_MISTY
	setevent EVENT_BEAT_SWIMMERF_DIANA
	setevent EVENT_BEAT_SWIMMERF_JOY
	setevent EVENT_BEAT_SWIMMERF_BRIANA
	setevent EVENT_BEAT_SAILOR_PARKER
	setevent EVENT_BEAT_SAILOR_EDDIE
	opentext
	writetext UnknownText_0x188768
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_CASCADEBADGE
.FightDone:
	checkevent EVENT_GOT_TM55_SCALD
	iftrue MistyAfterTMScript
	writetext MistyGiveTMText
	buttonsound
	verbosegiveitem TM_SCALD
	iffalse MistyCannotGiveTMScript
	setevent EVENT_GOT_TM55_SCALD
	writetext MistyOutroText
	waitbutton
	closetext
	end

MistyAfterTMScript:
	writetext UnknownText_0x188782
	waitbutton
MistyCannotGiveTMScript:
	closetext
	end

TrainerSwimmerfDiana:
	trainer EVENT_BEAT_SWIMMERF_DIANA, SWIMMERF, DIANA, SwimmerfDianaSeenText, SwimmerfDianaBeatenText, 0, SwimmerfDianaScript

SwimmerfDianaScript:
	end_if_just_battled
	opentext
	writetext UnknownText_0x188856
	waitbutton
	closetext
	end

TrainerSwimmerfJoy:
	trainer EVENT_BEAT_SWIMMERF_JOY, SWIMMERF, JOY, SwimmerfJoySeenText, SwimmerfJoyBeatenText, 0, SwimmerfJoyScript

SwimmerfJoyScript:
	end_if_just_battled
	opentext
	writetext SwimmerfJoyAfterText
	waitbutton
	closetext
	end

TrainerSwimmerfBriana:
	trainer EVENT_BEAT_SWIMMERF_BRIANA, SWIMMERF, BRIANA, SwimmerfBrianaSeenText, SwimmerfBrianaBeatenText, 0, SwimmerfBrianaScript

SwimmerfBrianaScript:
	end_if_just_battled
	opentext
	writetext UnknownText_0x1888c0
	waitbutton
	closetext
	end

TrainerSailorParker:
	trainer EVENT_BEAT_SAILOR_PARKER, SAILOR, PARKER, SailorParkerSeenText, SailorParkerBeatenText, 0, SailorParkerScript

SailorParkerScript:
	end_if_just_battled
	opentext
	writetext SailorParkerAfterText
	waitbutton
	closetext
	end

TrainerSailorEddie:
	trainer EVENT_BEAT_SAILOR_EDDIE, SAILOR, EDDIE_SAILOR, SailorEddieSeenText, SailorEddieBeatenText, 0, SailorEddieScript

SailorEddieScript:
	end_if_just_battled
	opentext
	writetext SailorEddieAfterText
	waitbutton
	closetext
	end

CeruleanGymGuyScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_MISTY
	iftrue .CeruleanGymGuyWinScript
	writetext CeruleanGymGuyText
	waitbutton
	closetext
	end

.CeruleanGymGuyWinScript:
	writetext CeruleanGymGuyWinText
	waitbutton
	closetext
	end

CeruleanGymHiddenMachinePart:
	dwb EVENT_FOUND_MACHINE_PART_IN_CERULEAN_GYM, MACHINE_PART

CeruleanGymStatue1:
	checkevent EVENT_TRAINERS_IN_CERULEAN_GYM
	iffalse CeruleanGymStatue
	opentext
	writetext CeruleanGymNote1
	waitbutton
	closetext
	end

CeruleanGymStatue2:
	checkevent EVENT_TRAINERS_IN_CERULEAN_GYM
	iffalse CeruleanGymStatue
	opentext
	writetext CeruleanGymNote2
	waitbutton
	closetext
	end

CeruleanGymStatue:
	checkflag ENGINE_CASCADEBADGE
	iftrue .Beaten
	jumpstd gymstatue1
.Beaten:
	trainertotext MISTY, 1, $1
	jumpstd gymstatue2

MovementData_0x1884e3:
	big_step_down
	big_step_down
	big_step_down
	big_step_down
	step_end

MovementData_0x1884e8:
	big_step_right
	big_step_down
	step_end

MovementData_0x1884eb:
	fix_facing
	db $39 ; movement
	jump_step_up
	db $38 ; movement
	remove_fixed_facing
	step_sleep_8
	step_sleep_8
	step_down
	step_down
	step_end

MovementData_0x1884f5:
	big_step_down
	step_end

MovementData_0x1884f7:
	fix_facing
	slow_step_up
	remove_fixed_facing
	step_end

UnknownText_0x1884fb:
	text "Oops! I so sorry!"
	line "You not hurt,"
	cont "okay?"

	para "I very busy."
	line "No time for talk-"
	cont "ing with you. Not"
	cont "good for me if"
	cont "seen by somebody."
	done

UnknownText_0x188574:
	text "Oh no! You seen"
	line "me already! I make"
	cont "big mistake!"
	done

UnknownText_0x1885a5:
	text "Hey, you! Forget"
	line "you see me, okay?"

	para "You see, hear,"
	line "know nothing,"

	para "okay?"
	line "Bye, kid! Nothing!"

	para "Bye-bye a go-go!"
	done

CeruleanGymNote1:
	text "Sorry, I'll be out"
	line "for a while."
	cont "Misty, Gym Leader"
	done

CeruleanGymNote2:
	text "Since Misty's out,"
	line "we'll be away too."
	cont "Gym Trainers"
	done

UnknownText_0x188674:
	text "Misty: I was ex-"
	line "pecting you, you"
	cont "pest!"

	para "You may have a"
	line "lot of Johto Gym"

	para "Badges, but you'd"
	line "better not take me"
	cont "too lightly."

	para "My Water-type"
	line "#mon are tough!"
	done

UnknownText_0x18870c:
	text "Misty: You really"
	line "are good…"

	para "I'll admit that"
	line "you are skilled…"

	para "Here you go. It's"
	line "the Cascade Badge."
	done

UnknownText_0x188768:
	text "<PLAYER> received"
	line "the Cascade Badge."
	done

MistyGiveTMText:
	text "Misty: Here's"
	line "another memento"

	para "from this battle."
	line "Take it!"
	done

MistyOutroText:
	text "It contains the"
	line "move Scald. It can"

	para "sometimes burn"
	line "your foe."
	done

UnknownText_0x188782:
	text "Misty: Are there"
	line "many strong train-"
	cont "ers in Johto? Like"
	cont "you, I mean."

	para "I'm going to"
	line "travel one day, so"

	para "I can battle some"
	line "skilled trainers."
	done

SwimmerfDianaSeenText:
	text "Sorry about being"
	line "away. Let's get on"
	cont "with it!"
	done

SwimmerfDianaBeatenText:
	text "I give up! You're"
	line "the winner!"
	done

UnknownText_0x188856:
	text "I'll be swimming"
	line "quietly."
	done

SwimmerfJoySeenText:
	text "Swimming isn't"
	line "just about speed!"

	para "It's also about"
	line "beauty and grace!"
	done

SwimmerfJoyBeatenText:
	text "I lost"
	line "beautifully…"
	done

SwimmerfJoyAfterText:
	text "Swimming is good"
	line "for both beauty"
	cont "and health!"

	para "Just look at"
	line "Misty, you'll see."
	done

SwimmerfBrianaSeenText:
	text "Don't let my ele-"
	line "gant swimming un-"
	cont "nerve you."
	done

SwimmerfBrianaBeatenText:
	text "Ooh, you calmly"
	line "disposed of me…"
	done

UnknownText_0x1888c0:
	text "Don't be too smug"
	line "about beating me."

	para "Misty will destroy"
	line "you if you get"
	cont "complacent."
	done

SailorParkerSeenText:
	text "Alright! Come"
	line "and get me!"
	done

SailorParkerBeatenText:
	text "This can't be…"
	done

SailorParkerAfterText:
	text "Misty has gotten"
	line "much better in the"
	cont "past few years."

	para "Don't let your"
	line "guard down, or"
	cont "you'll be crushed!"
	done

SailorEddieSeenText:
	text "I've been relaxing"
	line "poolside, so"
	cont "I've got enough"
	cont "strength!"
	done

SailorEddieBeatenText:
	text "You can't win with"
	line "strength alone."
	done

SailorEddieAfterText:
	text "Hey, let's go for"
	line "a swim!"

	para "Sailors have to"
	line "be able to swim!"
	done

CeruleanGymGuyText:
	text "Yo! Champ in"
	line "making!"

	para "Since Misty was"
	line "away, I went out"

	para "for some fun too."
	line "He-he-he."
	done

CeruleanGymGuyWinText:
	text "Hoo, you showed me"
	line "how tough you are."

	para "As always, that"
	line "was one heck of a"
	cont "great battle!"
	done

CeruleanGym_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 2
	warp_def $f, $4, 5, CERULEAN_CITY
	warp_def $f, $5, 5, CERULEAN_CITY

.XYTriggers:
	db 0

.Signposts:
	db 3
	signpost 8, 3, SIGNPOST_ITEM, CeruleanGymHiddenMachinePart
	signpost 13, 2, SIGNPOST_READ, CeruleanGymStatue1
	signpost 13, 6, SIGNPOST_READ, CeruleanGymStatue2

.PersonEvents:
	db 8
	person_event SPRITE_ROCKET, 10, 4, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, ObjectEvent, EVENT_CERULEAN_GYM_ROCKET
	person_event SPRITE_MISTY, 3, 5, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, MistyScript_0x188432, EVENT_TRAINERS_IN_CERULEAN_GYM
	person_event SPRITE_SWIMMER_GIRL, 6, 4, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_TRAINER, 3, TrainerSwimmerfDiana, EVENT_TRAINERS_IN_CERULEAN_GYM
	person_event SPRITE_SWIMMER_GIRL, 9, 1, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_TRAINER, 1, TrainerSwimmerfBriana, EVENT_TRAINERS_IN_CERULEAN_GYM
	person_event SPRITE_SWIMMER_GIRL, 9, 8, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_TRAINER, 3, TrainerSwimmerfJoy, EVENT_TRAINERS_IN_CERULEAN_GYM
	person_event SPRITE_SAILOR, 4, 0, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_TRAINER, 3, TrainerSailorParker, EVENT_TRAINERS_IN_CERULEAN_GYM
	person_event SPRITE_SAILOR, 4, 9, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_TRAINER, 3, TrainerSailorEddie, EVENT_TRAINERS_IN_CERULEAN_GYM
	person_event SPRITE_GYM_GUY, 13, 7, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, CeruleanGymGuyScript, EVENT_TRAINERS_IN_CERULEAN_GYM
