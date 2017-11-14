const_value set 2
	const MRPSYCHICSHOUSE_FISHING_GURU

MrPsychicsHouse_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

MrPsychic:
	faceplayer
	opentext
	checkevent EVENT_LISTENED_TO_ZEN_HEADBUTT_INTRO
	iftrue MrPsychicsHouseTutorZenHeadbuttScript
	writetext MrPsychicText
	waitbutton
	setevent EVENT_LISTENED_TO_ZEN_HEADBUTT_INTRO
MrPsychicsHouseTutorZenHeadbuttScript:
	writetext Text_MrPsychicsHouseTutorZenHeadbutt
	waitbutton
	checkitem SILVER_LEAF
	iffalse .NoSilverLeaf
	writetext Text_MrPsychicsHouseTutorQuestion
	yesorno
	iffalse .TutorRefused
	writebyte ZEN_HEADBUTT
	writetext Text_MrPsychicsHouseTutorClear
	special Special_MoveTutor
	if_equal $0, .TeachMove
.TutorRefused
	writetext Text_MrPsychicsHouseTutorRefused
	waitbutton
	closetext
	end

.NoSilverLeaf
	writetext Text_MrPsychicsHouseTutorNoSilverLeaf
	waitbutton
	closetext
	end

.TeachMove
	takeitem SILVER_LEAF
	writetext Text_MrPsychicsHouseTutorTaught
	waitbutton
	closetext
	end

MrPsychicsHouseBookshelf:
	jumpstd difficultbookshelf

MrPsychicText:
	text "…"

	para "…"

	para "…"

	para "…I got it!"

	para "You want to learn"
	line "Zen Headbutt!"
	done

Text_MrPsychicsHouseTutorZenHeadbutt:
	text "I will teach your"
	line "#mon to use Zen"

	para "Headbutt for a"
	line "Silver Leaf."
	done

Text_MrPsychicsHouseTutorNoSilverLeaf:
	text "You don't have a"
	line "Silver Leaf…"
	done

Text_MrPsychicsHouseTutorQuestion:
	text "Should I teach"
	line "your #mon"
	cont "Zen Headbutt?"
	done

Text_MrPsychicsHouseTutorRefused:
	text "…I was wrong?"
	done

Text_MrPsychicsHouseTutorClear:
	text ""
	done

Text_MrPsychicsHouseTutorTaught:
	text "Your #mon now"
	line "knows how to use"
	cont "Zen Headbutt."
	done

MrPsychicsHouse_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 2
	warp_def $7, $2, 5, SAFFRON_CITY
	warp_def $7, $3, 5, SAFFRON_CITY

.XYTriggers:
	db 0

.Signposts:
	db 2
	signpost 1, 0, SIGNPOST_READ, MrPsychicsHouseBookshelf
	signpost 1, 1, SIGNPOST_READ, MrPsychicsHouseBookshelf

.PersonEvents:
	db 1
	person_event SPRITE_FISHING_GURU, 3, 5, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_SCRIPT, 0, MrPsychic, -1
