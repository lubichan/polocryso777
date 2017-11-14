const_value set 2
	const ECRUTEAKPOKECENTER1F_NURSE
	const ECRUTEAKPOKECENTER1F_POKEFAN_M
	const ECRUTEAKPOKECENTER1F_COOLTRAINER_F
	const ECRUTEAKPOKECENTER1F_GYM_GUY
	const ECRUTEAKPOKECENTER1F_BILL

EcruteakPokeCenter1F_MapScriptHeader:
.MapTriggers:
	db 2

	; triggers
	maptrigger .Trigger0
	maptrigger .Trigger1

.MapCallbacks:
	db 0

.Trigger0:
	priorityjump .BillActivatesTimeCapsule
	end

.Trigger1:
	end

.BillActivatesTimeCapsule:
	pause 30
	moveperson ECRUTEAKPOKECENTER1F_BILL, 0, 7
	playsound SFX_EXIT_BUILDING
	appear ECRUTEAKPOKECENTER1F_BILL
	spriteface ECRUTEAKPOKECENTER1F_BILL, RIGHT
	waitsfx
	applymovement ECRUTEAKPOKECENTER1F_BILL, EcruteakPokeCenter1FBillMovement1
	pause 60
	applymovement ECRUTEAKPOKECENTER1F_BILL, EcruteakPokeCenter1FBillMovement2
	clearevent EVENT_ECRUTEAK_POKE_CENTER_BILL
	dotrigger $1
	end

EcruteakPokeCenter1FBillScript:
	faceplayer
	opentext
	checkevent EVENT_LISTENED_TO_BILL_INTRO
	iftrue .heardintro
	writetext EcruteakPokeCenter1FBillIntroText
	waitbutton
	setevent EVENT_LISTENED_TO_BILL_INTRO
.heardintro
	writetext UnknownText_0x54c74
	yesorno
	iffalse UnknownScript_0x54c19
	writetext UnknownText_0x54d3f
	buttonsound
	waitsfx
	checkcode VAR_PARTYCOUNT
	if_equal $6, UnknownScript_0x54c13
	writetext UnknownText_0x54dae
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke EEVEE, 5
	givepokeitem GiftEeveeMail
	setevent EVENT_GOT_EEVEE
	writetext UnknownText_0x54dc1
	waitbutton
	closetext
	checkcode VAR_FACING
	spriteface PLAYER, DOWN
	if_not_equal UP, .noleftstep
	applymovement ECRUTEAKPOKECENTER1F_BILL, EcruteakPokeCenter1FBillMovement3
.noleftstep
	applymovement ECRUTEAKPOKECENTER1F_BILL, EcruteakPokeCenter1FBillMovement4
	playsound SFX_EXIT_BUILDING
	disappear ECRUTEAKPOKECENTER1F_BILL
	clearevent EVENT_NEVER_MET_BILL
	waitsfx
	end

UnknownScript_0x54c13:
	writetext UnknownText_0x54e02
	waitbutton
	closetext
	end

UnknownScript_0x54c19:
	writetext UnknownText_0x54e2d
	waitbutton
	closetext
	end

GiftEeveeMail:
	db   EON_MAIL
	db   "Greetings from"
	next "Kanto! - Oak@"

	db 0

EcruteakPokeCenter1FNurseScript:
	jumpstd pokecenternurse

EcruteakPokeCenter1FPokefanMScript:
	jumptextfaceplayer EcruteakPokeCenter1FPokefanMText

EcruteakPokeCenter1FCooltrainerFScript:
	jumptextfaceplayer EcruteakPokeCenter1FCooltrainerFText

EcruteakPokeCenter1FGymGuyScript:
	jumptextfaceplayer EcruteakPokeCenter1FGymGuyText

EcruteakPokeCenter1FBillMovement1:
	step_right
	step_right
	step_up
	step_up
	step_up
	step_up
	step_right
	step_right
	step_right
	turn_head_up
	step_end

EcruteakPokeCenter1FBillMovement2:
	step_right
	turn_head_down
	step_end

EcruteakPokeCenter1FBillMovement3:
	step_left
	step_end

EcruteakPokeCenter1FBillMovement4:
	step_down
	step_down
	step_down
	step_down
	step_end

EcruteakPokeCenter1FBillIntroText:
	text "Hi, I'm Bill. And"
	line "who are you?"

	para "Hmm, <PLAYER>, huh?"
	line "You've come at the"
	cont "right time."

	para "I just finished"
	line "adjustments on my"
	cont "Time Capsule."

	para "Now Time Capsules"
	line "are running at all"
	cont "#mon Centers."
	done

UnknownText_0x54c74:
	text "Bill: This Eevee"
	line "came over when I"

	para "was making the"
	line "adjustments."

	para "Someone has to"
	line "take care of it,"

	para "but I don't like"
	line "being outside."

	para "Can I count on you"
	line "to play with it,"
	cont "<PLAYER>?"
	done

UnknownText_0x54d3f:
	text "Bill: I knew you'd"
	line "come through!"

	para "Way to go! You're"
	line "the real deal!"

	para "OK, I'm counting"
	line "on you."

	para "Take good care of"
	line "it!"
	done

UnknownText_0x54dae:
	text "<PLAYER> received"
	line "Eevee!"
	done

UnknownText_0x54e02:
	text "Whoa, wait. You"
	line "can't carry any"
	cont "more #mon."
	done

UnknownText_0x54dc1:
	text "Bill: Prof.Elm"
	line "claims Eevee may"

	para "evolve in new and"
	line "unknown ways."

	para "I have to hurry on"
	line "back to Goldenrod"
	cont "and see my folks,"

	para "and then it's back"
	line "to Kanto for me."

	para "Buh-bye!"
	done

UnknownText_0x54e2d:
	text "Oh… Now what to"
	line "do?"
	done

EcruteakPokeCenter1FPokefanMText:
	text "The way the Kimono"
	line "Girls dance is"

	para "marvelous. Just"
	line "like the way they"
	cont "use their #mon."
	done

EcruteakPokeCenter1FCooltrainerFText:
	text "Morty, the Gym"
	line "Leader, is soooo"
	cont "cool."

	para "His #mon are"
	line "really tough too."
	done

EcruteakPokeCenter1FGymGuyText:
	text "Lake of Rage…"

	para "The appearance of"
	line "a Gyarados swarm…"

	para "I smell a conspir-"
	line "acy. I know it!"
	done

EcruteakPokeCenter1F_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 3
	warp_def $7, $5, 6, ECRUTEAK_CITY
	warp_def $7, $6, 6, ECRUTEAK_CITY
	warp_def $7, $0, 1, POKECENTER_2F

.XYTriggers:
	db 0

.Signposts:
	db 0

.PersonEvents:
	db 5
	person_event SPRITE_NURSE, 1, 5, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, EcruteakPokeCenter1FNurseScript, -1
	person_event SPRITE_POKEFAN_M, 6, 11, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, EcruteakPokeCenter1FPokefanMScript, -1
	person_event SPRITE_COOLTRAINER_F, 4, 1, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, EcruteakPokeCenter1FCooltrainerFScript, -1
	person_event SPRITE_GYM_GUY, 1, 8, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_SCRIPT, 0, EcruteakPokeCenter1FGymGuyScript, -1
	person_event SPRITE_BILL, 3, 6, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, EcruteakPokeCenter1FBillScript, EVENT_ECRUTEAK_POKE_CENTER_BILL
