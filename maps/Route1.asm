const_value set 2
	const ROUTE1_YOUNGSTER1
	const ROUTE1_YOUNGSTER2
	const ROUTE1_COOLTRAINER_M
	const ROUTE1_COOLTRAINER_F
	const ROUTE1_FRUIT_TREE

Route1_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

TrainerSchoolboyDanny:
	trainer EVENT_BEAT_SCHOOLBOY_DANNY, SCHOOLBOY, DANNY, SchoolboyDannySeenText, SchoolboyDannyBeatenText, 0, SchoolboyDannyScript

SchoolboyDannyScript:
	end_if_just_battled
	opentext
	writetext UnknownText_0x1ac5d7
	waitbutton
	closetext
	end

TrainerSchoolboySherman:
	trainer EVENT_BEAT_SCHOOLBOY_SHERMAN, SCHOOLBOY, SHERMAN, SchoolboyShermanSeenText, SchoolboyShermanBeatenText, 0, SchoolboyShermanScript

SchoolboyShermanScript:
	end_if_just_battled
	opentext
	writetext SchoolboyShermanAfterText
	waitbutton
	closetext
	end

TrainerCooltrainermFrench:
	trainer EVENT_BEAT_COOLTRAINERM_FRENCH, COOLTRAINERM, FRENCH, CooltrainermFrenchSeenText, CooltrainermFrenchBeatenText, 0, CooltrainermFrenchScript

CooltrainermFrenchScript:
	end_if_just_battled
	opentext
	writetext CooltrainermFrenchAfterText
	waitbutton
	closetext
	end

TrainerCooltrainerfQuinn:
	trainer EVENT_BEAT_COOLTRAINERF_QUINN, COOLTRAINERF, QUINN, CooltrainerfQuinnSeenText, CooltrainerfQuinnBeatenText, 0, CooltrainerfQuinnScript

CooltrainerfQuinnScript:
	end_if_just_battled
	opentext
	writetext UnknownText_0x1ac640
	waitbutton
	closetext
	end

Route1Sign:
	jumptext Route1SignText

FruitTreeScript_0x1ac581:
	fruittree FRUITTREE_ROUTE_1

SchoolboyDannySeenText:
	text "If trainers meet,"
	line "the first thing to"
	cont "do is battle."
	done

SchoolboyDannyBeatenText:
	text "Awww… I've got a"
	line "losing record…"
	done

UnknownText_0x1ac5d7:
	text "For trainers, it's"
	line "a given that we'll"

	para "battle whenever we"
	line "meet."
	done

SchoolboyShermanSeenText:
	text "Right after class,"
	line "I head outside to"
	cont "practice!"
	done

SchoolboyShermanBeatenText:
	text "I need to follow"
	line "the textbook."
	done

SchoolboyShermanAfterText:
	text "I should record"
	line "all of today's"
	cont "mistakes."
	done

CooltrainermFrenchSeenText:
	text "You!"

	para "I've been waiting"
	line "for someone like"
	cont "you!"
	done

CooltrainermFrenchBeatenText:
	text "Yep, as strong as"
	line "expected!"
	done

CooltrainermFrenchAfterText:
	text "That was a great"
	line "fight!"
	cont "Don't you agree?"
	done

CooltrainerfQuinnSeenText:
	text "You there!"
	line "Want to battle?"
	done

CooltrainerfQuinnBeatenText:
	text "Down and out…"
	done

UnknownText_0x1ac640:
	text "You're strong."

	para "You obviously must"
	line "have trained hard."
	done

Route1SignText:
	text "Route 1"

	para "Pallet Town -"
	line "Viridian City"
	done

Route1_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 0

.XYTriggers:
	db 0

.Signposts:
	db 1
	signpost 27, 7, SIGNPOST_READ, Route1Sign

.PersonEvents:
	db 5
	person_event SPRITE_YOUNGSTER, 12, 4, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_TRAINER, 4, TrainerSchoolboyDanny, -1
	person_event SPRITE_YOUNGSTER, 14, 15, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_TRAINER, 3, TrainerSchoolboySherman, -1
	person_event SPRITE_COOLTRAINER_M, 21, 13, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_TRAINER, 2, TrainerCooltrainermFrench, -1
	person_event SPRITE_COOLTRAINER_F, 25, 9, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_TRAINER, 2, TrainerCooltrainerfQuinn, -1
	person_event SPRITE_FRUIT_TREE, 7, 3, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, FruitTreeScript_0x1ac581, -1
