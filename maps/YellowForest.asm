const_value set 2
	const YELLOWFOREST_TWIN1
	const YELLOWFOREST_TWIN2
	const YELLOWFOREST_TEACHER
	const YELLOWFOREST_COOLTRAINER_M1
	const YELLOWFOREST_COOLTRAINER_M2
	const YELLOWFOREST_WALKER
	const YELLOWFOREST_SKARMORY
	const YELLOWFOREST_YELLOW
	const YELLOWFOREST_POKE_BALL1
	const YELLOWFOREST_POKE_BALL2
	const YELLOWFOREST_POKE_BALL3
	const YELLOWFOREST_POKE_BALL4
	const YELLOWFOREST_POKE_BALL5

YellowForest_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

TrainerSchoolgirlSarah:
	trainer EVENT_BEAT_SCHOOLGIRL_SARAH, SCHOOLGIRL, SARAH, SchoolgirlSarahSeenText, SchoolgirlSarahBeatenText, 0, SchoolgirlSarahScript

SchoolgirlSarahScript:
	end_if_just_battled
	opentext
	writetext SchoolgirlSarahAfterText
	waitbutton
	closetext
	end

TrainerSchoolgirlIsabel:
	trainer EVENT_BEAT_SCHOOLGIRL_ISABEL, SCHOOLGIRL, ISABEL, SchoolgirlIsabelSeenText, SchoolgirlIsabelBeatenText, 0, SchoolgirlIsabelScript

SchoolgirlIsabelScript:
	end_if_just_battled
	opentext
	writetext SchoolgirlIsabelAfterText
	waitbutton
	closetext
	end

TrainerTeacherKathryn:
	trainer EVENT_BEAT_TEACHER_KATHRYN, TEACHER, KATHRYN, TeacherKathrynSeenText, TeacherKathrynBeatenText, 0, TeacherKathrynScript

TeacherKathrynScript:
	end_if_just_battled
	opentext
	writetext TeacherKathrynAfterText
	waitbutton
	closetext
	end

TrainerCooltrainermHenri:
	trainer EVENT_BEAT_COOLTRAINERM_HENRI, COOLTRAINERM, HENRI, CooltrainermHenriSeenText, CooltrainermHenriBeatenText, 0, CooltrainermHenriScript

CooltrainermHenriScript:
	end_if_just_battled
	opentext
	writetext CooltrainermHenriAfterText
	waitbutton
	closetext
	end

YellowForestWalkerScript:
	faceplayer
	opentext
	writetext YellowForestWalkerSeenText
	waitbutton
	closetext
	winlosstext YellowForestWalkerBeatenText, 0
	setlasttalked YELLOWFOREST_WALKER
	loadtrainer WALKER, 1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_WALKER
	opentext
	writetext YellowForestWalkerAfterText
	buttonsound
	verbosegiveitem HM_FLY
	setevent EVENT_GOT_HM02_FLY
	writetext YellowForestWalkerFinalText
	waitbutton
	closetext
	appear YELLOWFOREST_SKARMORY
	playsound SFX_BALL_POOF
	spriteface YELLOWFOREST_WALKER, RIGHT
	waitsfx
	pause 15
	cry SKARMORY
	waitsfx
	spriteface YELLOWFOREST_WALKER, DOWN
	opentext
	writetext YellowForestWalkerFlyText
	waitbutton
	closetext
	playsound SFX_FLY
	special Special_FadeBlackQuickly
	special Special_ReloadSpritesNoPalettes
	disappear YELLOWFOREST_WALKER
	disappear YELLOWFOREST_SKARMORY
	waitsfx
	pause 15
	special Special_FadeInQuickly
	end

YellowForestYellowScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_YELLOW
	iffalse YellowForestYellowBattleScript
	checkevent EVENT_GOT_LIGHT_BALL_FROM_YELLOW
	iffalse YellowBattleAfterBallScript
	writetext YellowForestYellowGoodbyeText
	waitbutton
	closetext
	end

YellowForestYellowBattleScript:
	writetext YellowForestYellowGreetingText
	waitbutton
	closetext
	winlosstext YellowForestYellowWinLossText, 0
	setlasttalked YELLOWFOREST_YELLOW
	loadtrainer YELLOW, 1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_YELLOW
	opentext
	writetext YellowForestYellowAfterText
	scall YellowTryGiveLightBallScript
	end

YellowBattleAfterBallScript:
	faceplayer
	opentext
	writetext YellowForestYellowAfterText
YellowTryGiveLightBallScript:
	buttonsound
	verbosegiveitem LIGHT_BALL
	iffalse NoRoomForLightBallScript
	setevent EVENT_GOT_LIGHT_BALL_FROM_YELLOW
	writetext YellowForestYellowGoodbyeText
	waitbutton
NoRoomForLightBallScript:
	closetext
	end

YellowForestCooltrainerMScript:
	faceplayer
	opentext
	checkevent EVENT_LISTENED_TO_SEED_BOMB_INTRO
	iftrue YellowForestTutorSeedBombScript
	writetext YellowForestCooltrainerMText
	waitbutton
	setevent EVENT_LISTENED_TO_SEED_BOMB_INTRO
YellowForestTutorSeedBombScript:
	writetext Text_YellowForestTutorSeedBomb
	waitbutton
	checkitem SILVER_LEAF
	iffalse .NoSilverLeaf
	writetext Text_YellowForestTutorQuestion
	yesorno
	iffalse .TutorRefused
	writebyte SEED_BOMB
	writetext Text_YellowForestTutorClear
	special Special_MoveTutor
	if_equal $0, .TeachMove
.TutorRefused
	writetext Text_YellowForestTutorRefused
	waitbutton
	closetext
	end

.NoSilverLeaf
	writetext Text_YellowForestTutorNoSilverLeaf
	waitbutton
	closetext
	end

.TeachMove
	takeitem SILVER_LEAF
	writetext Text_YellowForestTutorTaught
	waitbutton
	closetext
	end

YellowForestThunderStone:
	itemball THUNDERSTONE

YellowForestMiracleSeed:
	itemball MIRACLE_SEED

YellowForestUltraBall:
	itemball ULTRA_BALL

YellowForestLemonade:
	itemball LEMONADE

YellowForestSurfPikachuDoll:
	disappear YELLOWFOREST_POKE_BALL5
	setevent EVENT_DECO_SURFING_PIKACHU_DOLL
	opentext
	writetext YellowForestSurfPikachuDollText
	playsound SFX_ITEM
	pause 60
	waitbutton
	writetext YellowForestSurfPikachuDollSentText
	waitbutton
	closetext
	end

YellowForestHiddenBigMushroom1:
	dwb EVENT_YELLOW_FOREST_HIDDEN_BIG_MUSHROOM_1, BIG_MUSHROOM

YellowForestHiddenBigMushroom2:
	dwb EVENT_YELLOW_FOREST_HIDDEN_BIG_MUSHROOM_2, BIG_MUSHROOM

YellowForestHiddenGoldLeaf1:
	dwb EVENT_YELLOW_FOREST_HIDDEN_GOLD_LEAF_1, GOLD_LEAF

YellowForestHiddenGoldLeaf2:
	dwb EVENT_YELLOW_FOREST_HIDDEN_GOLD_LEAF_2, GOLD_LEAF

SchoolgirlSarahSeenText:
	text "Ooh, a trainer!"
	line "I want to battle!"
	done

SchoolgirlSarahBeatenText:
	text "Sniff…"
	line "You made me lose!"
	done

SchoolgirlSarahAfterText:
	text "If we were at my"
	line "school, I'd have"
	cont "beaten you!"
	done

SchoolgirlIsabelSeenText:
	text "Do you have cute"
	line "#mon like the"
	cont "ones here?"
	done

SchoolgirlIsabelBeatenText:
	text "You have really"
	line "strong #mon!"
	done

SchoolgirlIsabelAfterText:
	text "We're learning"
	line "about how #mon"

	para "thrive together"
	line "in the wild."
	done

TeacherKathrynSeenText:
	text "You there!"
	line "You're a trainer?"

	para "You had better not"
	line "make my students"
	cont "cry!"
	done

TeacherKathrynBeatenText:
	text "I won't let this"
	line "make me cry…"
	done

TeacherKathrynAfterText:
	text "Keeping an eye on"
	line "everyone during a"

	para "field trip is"
	line "hard work."
	done

CooltrainermHenriSeenText:
	text "Can you handle my"
	line "balanced team of"
	cont "#mon?"
	done

CooltrainermHenriBeatenText:
	text "I guess you can!"
	done

CooltrainermHenriAfterText:
	text "Having a diverse"
	line "team to support"

	para "each others' weak-"
	line "nesses is key."
	done

YellowForestWalkerSeenText:
	text "Hello there!"
	line "The name's Walker."

	para "I was once the Gym"
	line "Leader of Violet"

	para "City, but I left"
	line "that to my son."

	para "Now I wander"
	line "through Johto and"

	para "take in the"
	line "sights."

	para "Walker: You're"
	line "collecting Gym"
	cont "badges, huh?"

	para "Then my son lost"
	line "to you!"

	para "Now I want to"
	line "test your skill"
	cont "for myself."

	para "I don't have a"
	line "badge, but you'll"

	para "get something"
	line "nice if you win!"
	done

YellowForestWalkerBeatenText:
	text "My bird #mon…"
	line "Taken down!"
	done

YellowForestWalkerAfterText:
	text "Walker: Well, I"
	line "can see why you"

	para "won against"
	line "Falkner."

	para "You know your"
	line "#mon inside"
	cont "and out!"

	para "You've earned"
	line "this HM."
	done

YellowForestWalkerFinalText:
	text "Walker: Bird"
	line "#mon soar"

	para "through the sky"
	line "because that's"

	para "what they want to"
	line "do with all their"
	cont "heart."

	para "If you want some-"
	line "thing that badly,"

	para "I know you can"
	line "reach it."

	para "What I want is"
	line "to keep wandering."

	para "Goodbye!"
	done

YellowForestWalkerFlyText:
	text "Skarmory,"
	line "let's Fly!"
	done

YellowForestYellowGreetingText:
	text "Yellow: Hi!"
	line "I'm Yellow!"

	para "This forest full"
	line "of Pikachu…"

	para "It reminds me of"
	line "home in Kanto."

	para "Where I caught my"
	line "first #mon."

	para "The trainer who"
	line "helped me catch it"
	cont "told me something."

	para "That if you care"
	line "for #mon with"

	para "all your heart,"
	line "they'll always be"
	cont "your friends!"

	para "I can sense that"
	line "you care about"

	para "your #mon."
	line "So let me see"

	para "what your friends"
	line "can do!"
	done

YellowForestYellowWinLossText:
	text "Haha! What a"
	line "battle!"
	done

YellowForestYellowAfterText:
	text "Yellow: Wow!"
	line "You really are a"

	para "good trainer."
	line "Here's something"

	para "that your friends"
	line "will appreciate!"
	done

YellowForestYellowGoodbyeText:
	text "Yellow: Give that"
	line "Light Ball to a"

	para "Pikachu to raise"
	line "its power."
	done

YellowForestCooltrainerMText:
	text "Seeds are surpris-"
	line "ingly powerful."

	para "Over many years,"
	line "a small seed can"

	para "grow into a huge"
	line "tree."

	para "And a big seed can"
	line "just fall down and"
	cont "hit you!"
	done

Text_YellowForestTutorSeedBomb:
	text "I can teach your"
	line "#mon how to"

	para "use Seed Bomb"
	line "for a Silver Leaf."
	done

Text_YellowForestTutorNoSilverLeaf:
	text "Aw, you don't have"
	line "a Silver Leaf."
	done

Text_YellowForestTutorQuestion:
	text "Should I teach"
	line "your #mon"
	cont "Seed Bomb?"
	done

Text_YellowForestTutorRefused:
	text "Talk to me if you"
	line "change your mind!"
	done

Text_YellowForestTutorClear:
	text ""
	done

Text_YellowForestTutorTaught:
	text "Now your #mon"
	line "knows how to use"
	cont "Seed Bomb!"
	done

YellowForestSurfPikachuDollText:
	text "<PLAYER> found"
	line "Surf Pikachu Doll."
	done

YellowForestSurfPikachuDollSentText:
	text "Surf Pikachu Doll"
	line "was sent home."
	done

YellowForest_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 2
	warp_def $2d, $1b, 1, YELLOW_FOREST_GATE
	warp_def $2d, $1c, 2, YELLOW_FOREST_GATE

.XYTriggers:
	db 0

.Signposts:
	db 4
	signpost 4, 30, SIGNPOST_ITEM, YellowForestHiddenBigMushroom1
	signpost 36, 34, SIGNPOST_ITEM, YellowForestHiddenBigMushroom2
	signpost 37, 5, SIGNPOST_ITEM, YellowForestHiddenGoldLeaf1
	signpost 16, 17, SIGNPOST_ITEM, YellowForestHiddenGoldLeaf2

.PersonEvents:
	db 13
	person_event SPRITE_TWIN, 39, 19, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, PERSONTYPE_TRAINER, 2, TrainerSchoolgirlSarah, -1
	person_event SPRITE_TWIN, 32, 13, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, PERSONTYPE_TRAINER, 2, TrainerSchoolgirlIsabel, -1
	person_event SPRITE_TEACHER, 36, 4, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_TRAINER, 3, TrainerTeacherKathryn, -1
	person_event SPRITE_COOLTRAINER_M, 35, 43, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_TRAINER, 3, TrainerCooltrainermHenri, -1
	person_event SPRITE_COOLTRAINER_M, 16, 15, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, YellowForestCooltrainerMScript, -1
	person_event SPRITE_WALKER, 22, 7, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 1, YellowForestWalkerScript, EVENT_YELLOW_FOREST_WALKER
	person_event SPRITE_SKARMORY, 22, 8, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, ObjectEvent, EVENT_YELLOW_FOREST_SKARMORY
	person_event SPRITE_YELLOW, 5, 48, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, YellowForestYellowScript, -1
	person_event SPRITE_POKE_BALL, 16, 25, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, YellowForestThunderStone, EVENT_YELLOW_FOREST_THUNDERSTONE
	person_event SPRITE_POKE_BALL, 24, 32, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, YellowForestMiracleSeed, EVENT_YELLOW_FOREST_MIRACLE_SEED
	person_event SPRITE_POKE_BALL, 21, 11, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, YellowForestUltraBall, EVENT_YELLOW_FOREST_ULTRA_BALL
	person_event SPRITE_POKE_BALL, 24, 49, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, YellowForestLemonade, EVENT_YELLOW_FOREST_LEMONADE
	person_event SPRITE_POKE_BALL, 16, 41, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, YellowForestSurfPikachuDoll, EVENT_DECO_SURFING_PIKACHU_DOLL
