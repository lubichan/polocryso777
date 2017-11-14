const_value set 2
	const CIANWOODCITYPHOTOSTUDIO_FISHING_GURU

CianwoodCityPhotoStudio_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

FishingGuruScript_0x9e0e0:
	faceplayer
	opentext
	checkflag ENGINE_DAILY_PHOTOGRAPH
	iftrue .AlreadyTookPhoto
	writetext PhotoStudioGreetingText
	yesorno
	iffalse .RefusedPhoto
	writetext PhotoStudioWhichMonText
	buttonsound
	special Special_CianwoodPhotograph
	if_equal $0, .NoPicture
	if_equal $1, .EggPicture
	setflag ENGINE_DAILY_PHOTOGRAPH
	writetext PhotoStudioHoldStillText
	waitbutton
	closetext
	special FadeOutPalettes
	pause 10
	playsound SFX_DOUBLE_SLAP
	waitsfx
	pause 10
	special FadeInPalettes
	opentext
	writetext PhotoStudioPrestoText
	special PlayCurMonCry
	waitbutton
	writetext PhotoStudioComeAgainText
	waitbutton
	closetext
	end

.AlreadyTookPhoto:
	writetext PhotoStudioAlreadyDoneText
	waitbutton
	closetext
	end

.RefusedPhoto:
	writetext PhotoStudioRefusedText
	waitbutton
	closetext
	end

.NoPicture:
	writetext PhotoStudioNoPictureText
	waitbutton
	closetext
	end

.EggPicture:
	writetext PhotoStudioEggPictureText
	waitbutton
	closetext
	end

PhotoStudioGreetingText:
	text "I am Cameron"
	line "the Photographer."

	para "You have magnifi-"
	line "cent #mon with"
	cont "you."

	para "How about a photo"
	line "for a souvenir?"
	done

PhotoStudioWhichMonText:
	text "OK! Big smile now!"

	para "Which #mon"
	line "should I photo-"
	cont "graph?"
	done

PhotoStudioHoldStillText:
	text "All righty. Hold"
	line "still for a bit."
	done

PhotoStudioPrestoText:
	text "Presto! All done."

	para "Your #mon"
	line "looks happier!"
	done

PhotoStudioComeAgainText:
	text "Come again, OK?"
	done

PhotoStudioAlreadyDoneText:
	text "I've already taken"
	line "a photo for you"
	cont "today."

	para "Come back again"
	line "tomorrow."
	done

PhotoStudioRefusedText:
	text "Oh, that's too"
	line "bad. I thought it"

	para "would be a great"
	line "memento…"
	done

PhotoStudioNoPictureText:
	text "Oh, no picture?"
	line "Come again, OK?"
	done

PhotoStudioEggPictureText:
	text "An Egg? My talent"
	line "is worth more…"
	done

CianwoodCityPhotoStudio_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 2
	warp_def $7, $2, 5, CIANWOOD_CITY
	warp_def $7, $3, 5, CIANWOOD_CITY

.XYTriggers:
	db 0

.Signposts:
	db 0

.PersonEvents:
	db 1
	person_event SPRITE_FISHING_GURU, 3, 2, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, FishingGuruScript_0x9e0e0, -1
