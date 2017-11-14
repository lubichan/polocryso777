const_value set 2
	const GOLDENRODGYM_WHITNEY
	const GOLDENRODGYM_LASS1
	const GOLDENRODGYM_LASS2
	const GOLDENRODGYM_LASS3
	const GOLDENRODGYM_BUENA1
	const GOLDENRODGYM_BUENA2
	const GOLDENRODGYM_GYM_GUY

GoldenrodGym_MapScriptHeader:
.MapTriggers:
	db 2

	; triggers
	dw UnknownScript_0x5400a, 0
	dw UnknownScript_0x5400b, 0

.MapCallbacks:
	db 0

UnknownScript_0x5400a:
	end

UnknownScript_0x5400b:
	end

WhitneyScript_0x5400c:
	faceplayer
	checkevent EVENT_BEAT_WHITNEY
	iftrue .FightDone
	opentext
	writetext UnknownText_0x54122
	waitbutton
	closetext
	winlosstext UnknownText_0x541a5, 0
	loadtrainer WHITNEY, 1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_WHITNEY
	setevent EVENT_MADE_WHITNEY_CRY
	dotrigger $1
	setevent EVENT_BEAT_BEAUTY_VICTORIA
	setevent EVENT_BEAT_BEAUTY_SAMANTHA
	setevent EVENT_BEAT_LASS_CARRIE
	setevent EVENT_BEAT_SR_AND_JR_JO_AND_CATH
.FightDone:
	opentext
	checkevent EVENT_MADE_WHITNEY_CRY
	iffalse .StoppedCrying
	writetext UnknownText_0x541f4
	waitbutton
	closetext
	end

.StoppedCrying:
	checkevent EVENT_GOT_TM45_ATTRACT
	iftrue UnknownScript_0x54077
	checkflag ENGINE_PLAINBADGE
	iftrue UnknownScript_0x54064
	writetext UnknownText_0x54222
	buttonsound
	waitsfx
	writetext UnknownText_0x54273
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_PLAINBADGE
	checkcode VAR_BADGES
	scall GoldenrodGymTriggerRockets
UnknownScript_0x54064:
	writetext UnknownText_0x5428b
	buttonsound
	verbosegiveitem TM_ATTRACT
	iffalse UnknownScript_0x5407b
	setevent EVENT_GOT_TM45_ATTRACT
	writetext UnknownText_0x54302
	waitbutton
	closetext
	end

UnknownScript_0x54077:
	writetext UnknownText_0x54360
	waitbutton
UnknownScript_0x5407b:
	closetext
	end

GoldenrodGymTriggerRockets:
	if_equal 7, .RadioTowerRockets
	if_equal 6, .GoldenrodRockets
	end

.GoldenrodRockets:
	jumpstd goldenrodrockets

.RadioTowerRockets:
	jumpstd radiotowerrockets

TrainerLassCarrie:
	trainer EVENT_BEAT_LASS_CARRIE, LASS, CARRIE, LassCarrieSeenText, LassCarrieBeatenText, 0, LassCarrieScript

LassCarrieScript:
	end_if_just_battled
	opentext
	writetext LassCarrieOWText
	waitbutton
	closetext
	end

WhitneyCriesScript:
	showemote EMOTE_SHOCK, GOLDENRODGYM_LASS2, 15
	applymovement GOLDENRODGYM_LASS2, JoWalksUpMovement
	spriteface PLAYER, DOWN
	opentext
	writetext JoWhitneyCriesText
	waitbutton
	closetext
	applymovement GOLDENRODGYM_LASS2, JoWalksAwayMovement
	dotrigger $0
	clearevent EVENT_MADE_WHITNEY_CRY
	end

TrainerSrandjrJoandcath1:
	trainer EVENT_BEAT_SR_AND_JR_JO_AND_CATH, SR_AND_JR, JOANDCATH1, SrandjrJoandcath1SeenText, SrandjrJoandcath1BeatenText, 0, SrandjrJoandcath1Script

SrandjrJoandcath1Script:
	end_if_just_battled
	opentext
	writetext SrandjrJoandcath1OWText
	waitbutton
	closetext
	end

TrainerSrandjrJoandcath2:
	trainer EVENT_BEAT_SR_AND_JR_JO_AND_CATH, SR_AND_JR, JOANDCATH2, SrandjrJoandcath2SeenText, SrandjrJoandcath2BeatenText, 0, SrandjrJoandcath2Script

SrandjrJoandcath2Script:
	end_if_just_battled
	opentext
	writetext SrandjrJoandcath2OWText
	waitbutton
	closetext
	end

TrainerBeautyVictoria:
	trainer EVENT_BEAT_BEAUTY_VICTORIA, BEAUTY, VICTORIA, BeautyVictoriaSeenText, BeautyVictoriaBeatenText, 0, BeautyVictoriaScript

BeautyVictoriaScript:
	end_if_just_battled
	opentext
	writetext BeautyVictoriaOWText
	waitbutton
	closetext
	end

TrainerBeautySamantha:
	trainer EVENT_BEAT_BEAUTY_SAMANTHA, BEAUTY, SAMANTHA, BeautySamanthaSeenText, BeautySamanthaBeatenText, 0, BeautySamanthaScript

BeautySamanthaScript:
	end_if_just_battled
	opentext
	writetext BeautySamanthaOWText
	waitbutton
	closetext
	end

GoldenrodGymGuyScript:
	faceplayer
	checkevent EVENT_BEAT_WHITNEY
	iftrue .GoldenrodGymGuyWinScript
	opentext
	writetext GoldenrodGymGuyText
	waitbutton
	closetext
	end

.GoldenrodGymGuyWinScript:
	opentext
	writetext GoldenrodGymGuyWinText
	waitbutton
	closetext
	end

GoldenrodGymStatue:
	checkflag ENGINE_PLAINBADGE
	iftrue .Beaten
	jumpstd gymstatue1
.Beaten:
	trainertotext WHITNEY, 1, $1
	jumpstd gymstatue2

JoWalksUpMovement:
	step_left
	turn_head_up
	step_end

JoWalksAwayMovement:
	step_right
	turn_head_left
	step_end

UnknownText_0x54122:
	text "Hi! I'm Whitney!"

	para "Everyone was into"
	line "#mon, so I got"
	cont "into it too!"

	para "#mon are"
	line "super-cute!"

	para "You want to bat-"
	line "tle? I'm warning"
	cont "you--I'm good!"
	done

UnknownText_0x541a5:
	text "Sob…"

	para "…Waaaaaaah!"
	line "You're mean!"

	para "You shouldn't be"
	line "so serious! You…"
	cont "you child, you!"
	done

UnknownText_0x541f4:
	text "Waaaaah!"

	para "Waaaaah!"

	para "…Snivel, hic…"
	line "…You meanie!"
	done

UnknownText_0x54222:
	text "…Sniff…"

	para "What? What do you"
	line "want? A Badge?"

	para "Oh, right."
	line "I forgot. Here's"
	cont "the Plain Badge."
	done

UnknownText_0x54273:
	text "<PLAYER> received"
	line "the Plain Badge."
	done

UnknownText_0x5428b:
	text "The Plain Badge"
	line "lets your #mon"

	para "use Strength out-"
	line "side of battle."

	para "Oh, you can have"
	line "this too!"
	done

UnknownText_0x54302:
	text "It's Attract!"
	line "It makes full use"

	para "of a #mon's"
	line "charm."

	para "Isn't it just per-"
	line "fect for a cutie"
	cont "like me?"
	done

UnknownText_0x54360:
	text "Ah, that was a"
	line "good cry!"

	para "Come for a visit"
	line "again! Bye-bye!"
	done

LassCarrieSeenText:
	text "Don't let my"
	line "#mon's cute"

	para "looks fool you."
	line "They can whip you!"
	done

LassCarrieBeatenText:
	text "Darn… I thought"
	line "you were weak…"
	done

LassCarrieOWText:
	text "Do my #mon"
	line "think I'm cute?"
	done

SrandjrJoandcath1SeenText:
	text "Jo: If you want to"
	line "face Whitney,"

	para "you'll have to go"
	line "through me!"

	para "Cath, did that"
	line "sound cool?"
	done

SrandjrJoandcath1BeatenText:
	text "Jo: Losing isn't"
	line "cool at all!"
	done

SrandjrJoandcath1OWText:
	text "Jo: I'm helping my"
	line "junior Cath to"

	para "earn a badge"
	line "from Whitney."

	para "She's improving"
	line "gradually."
	done

SrandjrJoandcath2SeenText:
	text "Cath: I'm trying"
	line "to beat Whitney,"
	cont "but my senior and"

	para "I can beat you"
	line "first!"
	done

SrandjrJoandcath2BeatenText:
	text "Cath: Oh, no,"
	line "no, no!"
	done

SrandjrJoandcath2OWText:
	text "Cath: I keep on"
	line "losing to Whitney."
	cont "It's depressing."

	para "I'm okay! If I"
	line "lose, I'll just"

	para "try harder next"
	line "time!"
	done

JoWhitneyCriesText:
	text "Oh, no. You made"
	line "Whitney cry."

	para "It's OK. She'll"
	line "stop soon. She"

	para "always cries when"
	line "she loses."
	done

BeautyVictoriaSeenText:
	text "Oh, you are a cute"
	line "little trainer! "

	para "I like you, but I"
	line "won't hold back!"
	done

BeautyVictoriaBeatenText:
	text "Let's see… Oops,"
	line "it's over?"
	done

BeautyVictoriaOWText:
	text "Wow, you must be"
	line "good to beat me!"
	cont "Keep it up!"
	done

BeautySamanthaSeenText:
	text "Give it your best"
	line "shot, or I'll take"
	cont "you down!"
	done

BeautySamanthaBeatenText:
	text "No! Oh, Meowth,"
	line "I'm so sorry!"
	done

BeautySamanthaOWText:
	text "I taught Meowth"
	line "moves for taking"
	cont "on any type…"
	done

GoldenrodGymGuyText:
	text "Yo! Champ in"
	line "making!"

	para "This Gym is home"
	line "to Normal-type"
	cont "#mon trainers."

	para "I recommend you"
	line "use Fighting-type"
	cont "#mon."
	done

GoldenrodGymGuyWinText:
	text "You won? Great! I"
	line "was busy admiring"
	cont "the ladies here."
	done

GoldenrodGym_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 2
	warp_def $11, $2, 1, GOLDENROD_CITY
	warp_def $11, $3, 1, GOLDENROD_CITY

.XYTriggers:
	db 1
	xy_trigger 1, $5, $8, $0, WhitneyCriesScript, $0, $0

.Signposts:
	db 2
	signpost 15, 1, SIGNPOST_READ, GoldenrodGymStatue
	signpost 15, 4, SIGNPOST_READ, GoldenrodGymStatue

.PersonEvents:
	db 7
	person_event SPRITE_WHITNEY, 3, 8, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, WhitneyScript_0x5400c, -1
	person_event SPRITE_LASS, 13, 9, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_TRAINER, 4, TrainerLassCarrie, -1
	person_event SPRITE_LASS, 6, 9, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_TRAINER, 1, TrainerSrandjrJoandcath1, -1
	person_event SPRITE_LASS, 7, 9, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_TRAINER, 1, TrainerSrandjrJoandcath2, -1
	person_event SPRITE_BUENA, 2, 0, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_TRAINER, 3, TrainerBeautyVictoria, -1
	person_event SPRITE_BUENA, 5, 19, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_TRAINER, 3, TrainerBeautySamantha, -1
	person_event SPRITE_GYM_GUY, 15, 5, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, GoldenrodGymGuyScript, -1
