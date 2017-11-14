const_value set 2
	const WISETRIOSROOM_SAGE1
	const WISETRIOSROOM_SAGE2
	const WISETRIOSROOM_SAGE3
	const WISETRIOSROOM_SAGE4
	const WISETRIOSROOM_SAGE5
	const WISETRIOSROOM_SAGE6

WiseTriosRoom_MapScriptHeader:
.MapTriggers:
	db 2

	; triggers
	dw UnknownScript_0x98572, 0
	dw UnknownScript_0x98573, 0

.MapCallbacks:
	db 1

	; callbacks

	dbw MAPCALLBACK_OBJECTS, UnknownScript_0x98574

UnknownScript_0x98572:
	end

UnknownScript_0x98573:
	end

UnknownScript_0x98574:
	checkevent EVENT_FOUGHT_SUICUNE
	iftrue UnknownScript_0x98593
	checkevent EVENT_KOJI_ALLOWS_YOU_PASSAGE_TO_TIN_TOWER
	iftrue UnknownScript_0x9858c
	checkitem CLEAR_BELL
	iftrue UnknownScript_0x9858c
	clearevent EVENT_WISE_TRIOS_ROOM_WISE_TRIO_1
	setevent EVENT_WISE_TRIOS_ROOM_WISE_TRIO_2
	return

UnknownScript_0x9858c:
	setevent EVENT_WISE_TRIOS_ROOM_WISE_TRIO_1
	clearevent EVENT_WISE_TRIOS_ROOM_WISE_TRIO_2
	return

UnknownScript_0x98593:
	setevent EVENT_WISE_TRIOS_ROOM_WISE_TRIO_1
	setevent EVENT_WISE_TRIOS_ROOM_WISE_TRIO_2
	return

SageScript_0x9859a:
	jumptextfaceplayer UnknownText_0x9862b

SageScript_0x9859d:
	jumptextfaceplayer UnknownText_0x9868b

SageScript_0x985a0:
	jumptextfaceplayer UnknownText_0x987af

UnknownScript_0x985a3:
	spriteface WISETRIOSROOM_SAGE3, UP
	spriteface PLAYER, DOWN
	showemote EMOTE_SHOCK, WISETRIOSROOM_SAGE3, 20
	follow PLAYER, WISETRIOSROOM_SAGE3
	applymovement PLAYER, MovementData_0x98622
	stopfollow
	spriteface PLAYER, RIGHT
	opentext
	writetext UnknownText_0x98712
	waitbutton
	closetext
	applymovement WISETRIOSROOM_SAGE3, MovementData_0x98625
	spriteface WISETRIOSROOM_SAGE3, LEFT
	end

TrainerElderGaku:
	trainer EVENT_BEAT_ELDER_GAKU, ELDER, GAKU, ElderGakuSeenText, ElderGakuBeatenText, 0, ElderGakuScript

ElderGakuScript:
	opentext
	writetext UnknownText_0x98938
	waitbutton
	closetext
	end

TrainerElderMasa:
	trainer EVENT_BEAT_ELDER_MASA, ELDER, MASA, ElderMasaSeenText, ElderMasaBeatenText, 0, ElderMasaScript

ElderMasaScript:
	opentext
	writetext UnknownText_0x98a35
	waitbutton
	closetext
	end

TrainerElderKoji:
	trainer EVENT_BEAT_ELDER_KOJI, ELDER, KOJI, ElderKojiSeenText, ElderKojiBeatenText, 0, ElderKojiScript

ElderKojiScript:
	checkevent EVENT_KOJI_ALLOWS_YOU_PASSAGE_TO_TIN_TOWER
	iftrue UnknownScript_0x9861b
	pause 10
	showemote EMOTE_SHOCK, WISETRIOSROOM_SAGE6, 20
	opentext
	writetext UnknownText_0x98c6c
	buttonsound
	writetext UnknownText_0x98cac
	waitbutton
	closetext
	applymovement WISETRIOSROOM_SAGE6, MovementData_0x98628
	spriteface WISETRIOSROOM_SAGE6, UP
	setevent EVENT_KOJI_ALLOWS_YOU_PASSAGE_TO_TIN_TOWER
	dotrigger $1
	end

UnknownScript_0x9861b:
	opentext
	writetext UnknownText_0x98db5
	waitbutton
	closetext
	end

MovementData_0x98622:
	step_left
	step_left
	step_end

MovementData_0x98625:
	step_right
	step_down
	step_end

MovementData_0x98628:
	step_right
	step_down
	step_end

UnknownText_0x9862b:
	text "Astounding…"

	para "Suicune, Entei and"
	line "Raikou have arisen"
	cont "from their sleep…"

	para "Is the legend"
	line "coming true?"
	done

UnknownText_0x9868b:
	text "We train at the"
	line "Burned Tower, but"

	para "we've never heard"
	line "of a hole opening"

	para "up there before."
	line "It must have been"

	para "deliberately made"
	line "by someone."
	done

UnknownText_0x98712:
	text "Bell Tower may be"
	line "entered by those"

	para "bearing Ecruteak's"
	line "Gym Badge."

	para "However, now that"
	line "Suicune, Raikou"

	para "and Entei have"
	line "arisen, I ask you"

	para "to refrain from"
	line "entering!"
	done

UnknownText_0x987af:
	text "We, the Wise Trio,"
	line "are the protectors"

	para "of the legendary"
	line "#mon."
	done

ElderGakuSeenText:
	text "Legend has it that"
	line "upon the emergence"

	para "of a trainer who"
	line "has the ability to"

	para "touch the souls of"
	line "#mon, a #mon"

	para "will come forth to"
	line "put that trainer"

	para "to test at the"
	line "Bell Tower."

	para "The legend has"
	line "come true!"

	para "The legendary"
	line "#mon Suicune"
	cont "has arrived!"

	para "We, the Wise Trio,"
	line "shall test your"

	para "worthiness to go"
	line "inside!"
	done

ElderGakuBeatenText:
	text "Stronger than we"
	line "thought? Perhaps…"
	done

UnknownText_0x98938:
	text "Ah, so it is you"
	line "who claim to have"

	para "seen Suicune,"
	line "Entei and Raikou"
	cont "while they slept?"

	para "Unbelievable!"

	para "Legend has it that"
	line "they can't be seen"
	cont "while they sleep…"
	done

ElderMasaSeenText:
	text "Can you be trusted"
	line "with the truth?"

	para "I must ascertain"
	line "your worthiness."
	done

ElderMasaBeatenText:
	text "…I will tell you"
	line "the truth…"
	done

UnknownText_0x98a35:
	text "In the past, there"
	line "were two nine-tier"
	cont "towers here."

	para "The Gong Tower,"
	line "which was said to"

	para "waken #mon, and"
	line "the Bell Tower,"

	para "where #mon were"
	line "said to rest."

	para "The view from the"
	line "tops of the towers"

	para "must have been"
	line "magnificent."

	para "At the time, an"
	line "immense, silver-"

	para "colored #mon"
	line "was said to make"

	para "its roost atop the"
	line "Gong Tower."

	para "However…"

	para "About 150 years"
	line "ago, a lightning"

	para "bolt struck one of"
	line "the towers."

	para "It was engulfed in"
	line "flames that raged"
	cont "for three days."

	para "A sudden downpour"
	line "finally put out"
	cont "the blaze."

	para "And that is how"
	line "the Burned Tower"
	cont "came to be."
	done

ElderKojiSeenText:
	text "Let me see your"
	line "power!"
	done

ElderKojiBeatenText:
	text "Too strong!"
	line "Why?"
	done

UnknownText_0x98c6c:
	text "You… Are you the"
	line "trainer who is"

	para "awaited by the"
	line "legendary #mon?"
	done

UnknownText_0x98cac:
	text "I see…"

	para "We, the Wise Trio,"
	line "have been given "

	para "the responsibility"
	line "of protecting the"

	para "legendary #mon."
	line "We are to allow"

	para "passage only to"
	line "those people who"

	para "possess the power"
	line "and soul of truth."

	para "Please, do go on"
	line "and enter the"
	cont "Bell Tower ahead."

	para "Suicune will put"
	line "you to the test."
	done

UnknownText_0x98db5:
	text "Please, do go on."

	para "Suicune will put"
	line "you to the test."
	done

WiseTriosRoom_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 3
	warp_def $4, $7, 1, BELLCHIME_TRAIL
	warp_def $5, $7, 2, BELLCHIME_TRAIL
	warp_def $4, $1, 5, ECRUTEAK_HOUSE

.XYTriggers:
	db 1
	xy_trigger 0, $4, $7, $0, UnknownScript_0x985a3, $0, $0

.Signposts:
	db 0

.PersonEvents:
	db 6
	person_event SPRITE_SAGE, 2, 6, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, SageScript_0x9859a, EVENT_WISE_TRIOS_ROOM_WISE_TRIO_1
	person_event SPRITE_SAGE, 7, 6, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, -1, 0, PERSONTYPE_SCRIPT, 0, SageScript_0x9859d, EVENT_WISE_TRIOS_ROOM_WISE_TRIO_1
	person_event SPRITE_SAGE, 5, 7, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, SageScript_0x985a0, EVENT_WISE_TRIOS_ROOM_WISE_TRIO_1
	person_event SPRITE_SAGE, 2, 4, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_TRAINER, 2, TrainerElderGaku, EVENT_WISE_TRIOS_ROOM_WISE_TRIO_2
	person_event SPRITE_SAGE, 6, 4, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, PERSONTYPE_TRAINER, 2, TrainerElderMasa, EVENT_WISE_TRIOS_ROOM_WISE_TRIO_2
	person_event SPRITE_SAGE, 4, 6, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, PERSONTYPE_TRAINER, 2, TrainerElderKoji, EVENT_WISE_TRIOS_ROOM_WISE_TRIO_2
