const_value set 2
	const MANIASHOUSE_ROCKER

ManiasHouse_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

ManiaScript:
	faceplayer
	opentext
	checkevent EVENT_MANIA_TOOK_BUFFY_OR_LET_YOU_KEEP_HIM
	iftrue .default_postevent
	checkevent EVENT_GOT_BUFFY
	iftrue .alreadyhavebuffy
	writetext ManiaText_AskLookAfterWobbuffet
	yesorno
	iffalse .refusetotakebuffy
	special SpecialGiveWobbuffet
	iffalse .partyfull
	writetext ManiaText_TakeCareOfWobbuffet
	buttonsound
	waitsfx
	writetext ManiaText_GotWobbuffet
	playsound SFX_KEY_ITEM
	waitsfx
	closetext
	setevent EVENT_GOT_BUFFY
	end

.alreadyhavebuffy
	checkflag ENGINE_WOBBUFFET_GIVEN
	iffalse .returnbuffy
	writetext ManiaText_TakeCareOfWobbuffet
	waitbutton
	closetext
	end

.partyfull
	writetext ManiaText_PartyFull
	waitbutton
	closetext
	end

.refusetotakebuffy
	writetext ManiaText_IfHeComesBack
	waitbutton
	closetext
	end

.returnbuffy
	writetext ManiaText_CanIHaveMyMonBack
	yesorno
	iffalse .refused
	special SpecialReturnWobbuffet
	if_equal $0, .wrong
	if_equal $1, .refused
	if_equal $3, .superhappy
	if_equal $4, .default_postevent
	writetext ManiaText_ThankYou
	waitbutton
	closetext
	setevent EVENT_MANIA_TOOK_BUFFY_OR_LET_YOU_KEEP_HIM
	end

.wrong
	writetext ManiaText_WobbuffetNotThere
	waitbutton
	closetext
	end

.superhappy
	writetext ManiaText_WobbuffetLikesYou
	waitbutton
	closetext
	setevent EVENT_MANIA_TOOK_BUFFY_OR_LET_YOU_KEEP_HIM
	end

.refused
	writetext ManiaText_SameAsBeingRobbed
	waitbutton
	closetext
	end

.nothingleft
	writetext ManiaText_WobbuffetIsYourLastMon
	waitbutton
	closetext
	end

.default_postevent
	writetext ManiaText_HappinessSpeech
	waitbutton
	closetext
	end

UnknownScript_0x9d300:
	jumpstd picturebookshelf

ManiaText_AskLookAfterWobbuffet:
	text "I, I'm in shock!"

	para "A guy about your"
	line "age with piercing"

	para "eyes and long hair"
	line "came in."

	para "He scared me into"
	line "giving him my"
	cont "prized #mon!"

	para "I still have one"
	line "left, but what if"
	cont "he comes back?"

	para "You look strong."
	line "Could you look"

	para "after my #mon"
	line "for a while?"
	done

ManiaText_TakeCareOfWobbuffet:
	text "Oh, thank you!"

	para "Take good care of"
	line "it, please!"
	done

ManiaText_GotWobbuffet:
	text "<PLAYER> received a"
	line "#mon."
	done

ManiaText_PartyFull:
	text "Your #mon party"
	line "is full."
	done

ManiaText_IfHeComesBack:
	text "Oh, no… What'll"
	line "I do if he comes"
	cont "back?"
	done

ManiaText_CanIHaveMyMonBack:
	text "Hi! How's my #-"
	line "mon?"

	para "I think I'm safe"
	line "now, so may I have"
	cont "it back?"
	done

ManiaText_ThankYou:
	text "Thank you!"
	done

ManiaText_WobbuffetNotThere:
	text "Hey, you don't"
	line "have my #mon"
	cont "with you."
	done

ManiaText_WobbuffetLikesYou:
	text "My #mon has"
	line "come to like you."

	para "All right, you"
	line "should keep it."

	para "But promise to"
	line "be good to it!"
	done

ManiaText_SameAsBeingRobbed:
	text "Oh, no, no… That's"
	line "the same as being"
	cont "robbed."
	done

ManiaText_HappinessSpeech:
	text "For #mon, hap-"
	line "piness is being"

	para "with a person who"
	line "treats them well."
	done

ManiaText_WobbuffetIsYourLastMon:
	text "If I take my #-"
	line "mon back, what are"

	para "you going to use"
	line "in battle?"
	done

ManiasHouse_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 2
	warp_def $7, $2, 1, CIANWOOD_CITY
	warp_def $7, $3, 1, CIANWOOD_CITY

.XYTriggers:
	db 0

.Signposts:
	db 0

.PersonEvents:
	db 1
	person_event SPRITE_ROCKER, 4, 2, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, ManiaScript, -1
