const_value set 2
	const ICEPATHB3F_POKE_BALL
	const ICEPATHB3F_ROCK
	const ICEPATHB3F_LORELEI

IcePathB3F_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

IcePathB3FNevermeltice:
	itemball NEVERMELTICE

IcePathB3FRock:
	jumpstd smashrock

MapIcePathB3FIceRockScript:
	jumptext Text_IcePathB3FIceRock

LoreleiScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue LoreleiRematchScript
	checkevent EVENT_BEAT_LORELEI
	iftrue LoreleiAfterScript
	checkevent EVENT_INTRODUCED_LORELEI
	iftrue LoreleiAfterIntroScript
	writetext LoreleiIntroText
	waitbutton
	setevent EVENT_INTRODUCED_LORELEI
LoreleiAfterIntroScript:
	writetext LoreleiAfterIntroText
	yesorno
	iffalse LoreleiNoBattleScript
	writetext LoreleiSeenText
	waitbutton
	closetext
	winlosstext LoreleiBeatenText, 0
	setlasttalked ICEPATHB3F_LORELEI
	loadtrainer LORELEI, 1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_LORELEI
	opentext
	writetext LoreleiRewardText
	buttonsound
	verbosegiveitem TM_AVALANCHE
	setevent EVENT_GOT_TM42_AVALANCHE_FROM_LORELEI
LoreleiAfterScript:
	writetext LoreleiAfterText
	waitbutton
	closetext
	end

LoreleiNoBattleScript:
	writetext LoreleiNoBattleText
	waitbutton
	closetext
	end

LoreleiRematchScript:
	checkevent EVENT_BEAT_LORELEI_AGAIN
	iftrue LoreleiRematchAfterScript
	checkevent EVENT_INTRODUCED_LORELEI
	iftrue LoreleiReintroductionScript
	writetext LoreleiIntroText
	waitbutton
	setevent EVENT_INTRODUCED_LORELEI
LoreleiAfterRematchIntroScript:
	writetext LoreleiRematchSeenText
	waitbutton
	closetext
	winlosstext LoreleiRematchBeatenText, 0
	setlasttalked ICEPATHB3F_LORELEI
	loadtrainer LORELEI, 3
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_LORELEI_AGAIN
	opentext
	checkevent EVENT_GOT_TM42_AVALANCHE_FROM_LORELEI
	iftrue LoreleiRematchAfterScript
	writetext LoreleiRewardText
	buttonsound
	verbosegiveitem TM_AVALANCHE
	setevent EVENT_GOT_TM42_AVALANCHE_FROM_LORELEI
LoreleiRematchAfterScript:
	writetext LoreleiRematchAfterText
	waitbutton
	closetext
	end

LoreleiReintroductionScript:
	writetext LoreleiRematchIntroAgainText
	waitbutton
	jump LoreleiAfterRematchIntroScript

Text_IcePathB3FIceRock:
	text "The boulder is"
	line "coated with ice."

	para "It is bone-chill-"
	line "ing to touch."
	done

LoreleiIntroText:
	text "Lorelei: Hello"
	line "there, trainer."
	cont "I am Lorelei."

	para "See that icy rock"
	line "over there?"

	para "It emits an energy"
	line "I've never seen in"
	cont "Kanto."

	para "As an expert on"
	line "Ice-type #mon,"
	cont "I had to investi-"
	cont "gate it."

	para "And what are you"
	line "doing here?"
	done

LoreleiAfterIntroText:
	text "Lorelei: You're"
	line "taking the #mon"

	para "League challenge."
	line "I see."
	cont "How ironic."

	para "Why don't I test"
	line "your skill?"
	done

LoreleiNoBattleText:
	text "If you can't face"
	line "me, you'll never"

	para "be able to beat"
	line "the Champion."
	done

LoreleiSeenText:
	text "Hahaha! Get ready"
	line "to be frozen"
	cont "solid!"
	done

LoreleiBeatenText:
	text "You're better than"
	line "I thought!"
	done

LoreleiRewardText:
	text "You know how to"
	line "handle Ice-type"
	cont "#mon."

	para "Then you can use"
	line "this TM."
	done

LoreleiAfterText:
	text "Go on ahead. You"
	line "can challenge the"

	para "#mon League"
	line "with one more"
	cont "Badge."

	para "If you do beat"
	line "them, meet me here"
	cont "for a rematch."
	done

LoreleiRematchIntroAgainText:
	text "Lorelei: Hello"
	line "again, <PLAY_G>."
	done

LoreleiRematchSeenText:
	text "So you battled"
	line "the Elite Four?"

	para "I hope you took"
	line "Karen down a peg."

	para "<......><......> You're the"
	line "new Champion."
	cont "I'm impressed."

	para "Then I won't have"
	line "to hold back!"
	done

LoreleiRematchBeatenText:
	text "As expected of"
	line "the Champion!"
	done

LoreleiRematchAfterText:
	text "Your journey isn't"
	line "over, you know."

	para "You can earn more"
	line "badges in Kanto,"

	para "catch new species"
	line "of #mon,"

	para "improve yourself"
	line "and your team."

	para "Becoming a"
	line "#mon master is"
	cont "a life's work."
	done

IcePathB3F_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 2
	warp_def $5, $3, 2, ICE_PATH_B2F_MAHOGANY_SIDE
	warp_def $5, $f, 2, ICE_PATH_B2F_BLACKTHORN_SIDE

.XYTriggers:
	db 0

.Signposts:
	db 1
	signpost 3, 16, SIGNPOST_READ, MapIcePathB3FIceRockScript

.PersonEvents:
	db 3
	person_event SPRITE_POKE_BALL, 7, 5, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, IcePathB3FNevermeltice, EVENT_ICE_PATH_B3F_NEVERMELTICE
	person_event SPRITE_ROCK, 6, 6, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, IcePathB3FRock, -1
	person_event SPRITE_LORELEI, 2, 10, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, LoreleiScript, -1
