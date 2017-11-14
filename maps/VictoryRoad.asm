const_value set 2
	const VICTORYROAD_SILVER
	const VICTORYROAD_LAWRENCE
	const VICTORYROAD_VETERANM1
	const VICTORYROAD_VETERANF1
	const VICTORYROAD_VETERANF2
	const VICTORYROAD_VETERANM2
	const VICTORYROAD_POKE_BALL1
	const VICTORYROAD_POKE_BALL2
	const VICTORYROAD_POKE_BALL3
	const VICTORYROAD_POKE_BALL4
	const VICTORYROAD_POKE_BALL5
	const VICTORYROAD_POKE_BALL6

VictoryRoad_MapScriptHeader:
.MapTriggers:
	db 4

	; triggers
	maptrigger .Trigger0
	maptrigger .Trigger1

.MapCallbacks:
	db 0

.Trigger0:
	end

.Trigger1:
	end

UnknownScript_0x74492:
	moveperson VICTORYROAD_SILVER, $12, $b
	spriteface PLAYER, DOWN
	showemote EMOTE_SHOCK, PLAYER, 15
	special Special_FadeOutMusic
	pause 15
	appear VICTORYROAD_SILVER
	applymovement VICTORYROAD_SILVER, MovementData_0x74539
	scall UnknownScript_0x744d4
	applymovement VICTORYROAD_SILVER, MovementData_0x7454c
	disappear VICTORYROAD_SILVER
	dotrigger $1
	playmapmusic
	end

UnknownScript_0x744b5:
	spriteface PLAYER, DOWN
	showemote EMOTE_SHOCK, PLAYER, 15
	special Special_FadeOutMusic
	pause 15
	appear VICTORYROAD_SILVER
	applymovement VICTORYROAD_SILVER, MovementData_0x74542
	scall UnknownScript_0x744d4
	applymovement VICTORYROAD_SILVER, MovementData_0x74555
	disappear VICTORYROAD_SILVER
	dotrigger $1
	playmapmusic
	end

UnknownScript_0x744d4:
	spriteface PLAYER, DOWN
	playmusic MUSIC_RIVAL_ENCOUNTER
	opentext
	writetext UnknownText_0x7455f
	waitbutton
	closetext
	setevent EVENT_RIVAL_VICTORY_ROAD
	checkevent EVENT_GOT_TOTODILE_FROM_ELM
	iftrue UnknownScript_0x744ff
	checkevent EVENT_GOT_CHIKORITA_FROM_ELM
	iftrue UnknownScript_0x7450f
	winlosstext UnknownText_0x7463d, UnknownText_0x747aa
	setlasttalked VICTORYROAD_SILVER
	loadtrainer RIVAL1, RIVAL1_15
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	jump UnknownScript_0x7451f

UnknownScript_0x744ff:
	winlosstext UnknownText_0x7463d, UnknownText_0x747aa
	setlasttalked VICTORYROAD_SILVER
	loadtrainer RIVAL1, RIVAL1_13
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	jump UnknownScript_0x7451f

UnknownScript_0x7450f:
	winlosstext UnknownText_0x7463d, UnknownText_0x747aa
	setlasttalked VICTORYROAD_SILVER
	loadtrainer RIVAL1, RIVAL1_14
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	jump UnknownScript_0x7451f

UnknownScript_0x7451f:
	playmusic MUSIC_RIVAL_AFTER
	opentext
	writetext UnknownText_0x746ce
	waitbutton
	closetext
	end

VictoryRoadLawrenceScript:
	special Special_FadeOutMusic
	pause 15
	playmusic MUSIC_LAWRENCE
	faceplayer
	opentext
	writetext LawrenceSeenText
	waitbutton
	closetext
	winlosstext LawrenceBeatenText, 0
	setlasttalked VICTORYROAD_LAWRENCE
	loadtrainer LAWRENCE, 1
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	playmusic MUSIC_LAWRENCE
	opentext
	writetext LawrenceAfterText
	buttonsound
	verbosegiveitem SILVER_WING
	writetext LawrenceSilverWingText
	waitbutton
	closetext
	checkcode VAR_FACING
	if_equal UP, .up
	if_equal DOWN, .down
	if_equal LEFT, .left
.right
	spriteface VICTORYROAD_LAWRENCE, RIGHT
	jump .continue
.up
	spriteface VICTORYROAD_LAWRENCE, UP
	jump .continue
.down
	spriteface VICTORYROAD_LAWRENCE, DOWN
	jump .continue
.left
	spriteface VICTORYROAD_LAWRENCE, LEFT
.continue
	pause 40
	faceplayer
	opentext
	writetext LawrenceGoodbyeText
	waitbutton
	closetext
	spriteface VICTORYROAD_LAWRENCE, UP
	opentext
	writetext VictoryRoadLawrenceEscapeRopeText
	pause 15
	closetext
	playsound SFX_WARP_TO
	special Special_FadeBlackQuickly
	special Special_ReloadSpritesNoPalettes
	disappear VICTORYROAD_LAWRENCE
	waitsfx
	special Special_FadeInQuickly
	setevent EVENT_LAWRENCE_VICTORY_ROAD
	playmapmusic
	end

TrainerVeteranmMatt:
	trainer EVENT_BEAT_VETERANM_MATT, VETERANM, MATT, VeteranmMattSeenText, VeteranmMattBeatenText, 0, VeteranmMattScript

VeteranmMattScript:
	end_if_just_battled
	opentext
	writetext VeteranmMattAfterText
	waitbutton
	closetext
	end

TrainerVeteranfJoanne:
	trainer EVENT_BEAT_VETERANF_JOANNE, VETERANF, JOANNE, VeteranfJoanneSeenText, VeteranfJoanneBeatenText, 0, VeteranfJoanneScript

VeteranfJoanneScript:
	end_if_just_battled
	opentext
	writetext VeteranfJoanneAfterText
	waitbutton
	closetext
	end

TrainerVeteranfSylvie:
	trainer EVENT_BEAT_VETERANF_SYLVIE, VETERANF, SYLVIE, VeteranfSylvieSeenText, VeteranfSylvieBeatenText, 0, VeteranfSylvieScript

VeteranfSylvieScript:
	end_if_just_battled
	opentext
	writetext VeteranfSylvieAfterText
	waitbutton
	closetext
	end

TrainerVeteranmRemy:
	trainer EVENT_BEAT_VETERANM_REMY, VETERANM, REMY, VeteranmRemySeenText, VeteranmRemyBeatenText, 0, VeteranmRemyScript

VeteranmRemyScript:
	end_if_just_battled
	opentext
	writetext VeteranmRemyAfterText
	waitbutton
	closetext
	end

VictoryRoadTMEarthquake:
	itemball TM_EARTHQUAKE

VictoryRoadMaxRevive:
	itemball MAX_REVIVE

VictoryRoadFullRestore:
	itemball FULL_RESTORE

VictoryRoadFullHeal:
	itemball FULL_HEAL

VictoryRoadHPUp:
	itemball HP_UP

VictoryRoadRazorFang
	itemball RAZOR_FANG

VictoryRoadHiddenMaxPotion:
	dwb EVENT_VICTORY_ROAD_HIDDEN_MAX_POTION, MAX_POTION

VictoryRoadHiddenFullHeal:
	dwb EVENT_VICTORY_ROAD_HIDDEN_FULL_HEAL, FULL_HEAL

MovementData_0x74539:
	step_left
	step_left
	step_left
	step_left
	step_left
	step_left
	step_up
	step_up
	step_end

MovementData_0x74542:
	step_up
	step_up
	step_left
	step_left
	step_left
	step_left
	step_left
	step_up
	step_up
	step_end

MovementData_0x7454c:
	step_down
	step_down
	step_right
	step_right
	step_right
	step_right
	step_right
	step_right
	step_end

MovementData_0x74555:
	step_down
	step_down
	step_right
	step_right
	step_right
	step_right
	step_right
	step_down
	step_down
	step_end

UnknownText_0x7455f:
	text "Hold it."

	para "…Are you going to"
	line "take the #mon"
	cont "League challenge?"

	para "…Don't make me"
	line "laugh."

	para "You're so much"
	line "weaker than I am."

	para "I'm not like I was"
	line "before."

	para "I now have the"
	line "best and strongest"

	para "#mon with me."
	line "I'm invincible!"

	para "<PLAYER>!"
	line "I challenge you!"
	done

UnknownText_0x7463d:
	text "…I couldn't win…"

	para "I gave it every-"
	line "thing I had…"

	para "What you possess,"
	line "and what I lack…"

	para "I'm beginning to"
	line "understand what"

	para "that dragon master"
	line "said to me…"
	done

UnknownText_0x746ce:
	text "…I haven't given up"
	line "on becoming the"
	cont "greatest trainer…"

	para "I'm going to find"
	line "out why I can't"

	para "win and become"
	line "stronger…"

	para "When I do, I will"
	line "challenge you."

	para "And I'll beat you"
	line "down with all my"
	cont "power."

	para "…Humph! You keep"
	line "at it until then."
	done

UnknownText_0x747aa:
	text "…Humph!"

	para "When it comes down"
	line "to it, nothing can"
	cont "beat power."

	para "I don't need any-"
	line "thing else."
	done

LawrenceSeenText:
	text "Lawrence: I sought"
	line "across many"

	para "regions to catch"
	line "Articuno, Zapdos,"
	cont "and Moltres."

	para "Without the"
	line "complete set, I"

	para "cannot awaken the"
	line "guardian of the"
	cont "sea…"

	para "You're going to"
	line "help me complete"
	cont "my collection!"
	done

LawrenceBeatenText:
	text "Unbelievable."
	line "You beat my legen-"
	cont "dary collection…"
	done

LawrenceAfterText:
	text "Lawrence: Your"
	line "#mon aren't"

	para "just a collection"
	line "to you, are they?"

	para "You treat them"
	line "almost like"
	cont "friends."

	para "Could that be how"
	line "you defeated my"
	cont "legendary #mon?"

	para "Well, I think you"
	line "earned this."
	done

LawrenceSilverWingText:
	text "That Silver Wing"
	line "feather comes from"

	para "the guardian of"
	line "the sea."

	para "The scent should"
	line "attract it, but"

	para "only if you've"
	line "mastered the three"

	para "winged mirages--"
	line "the birds of fire,"

	para "ice, and light-"
	line "ning."

	para "Or so the legends"
	line "say."
	done

LawrenceGoodbyeText:
	text "My dream was to"
	line "own that Pokemon,"

	para "but you've proven"
	line "yourself worthy."
	cont "Take it."

	para "I'll begin my"
	line "collection anew."

	para "Farewell."
	done

VictoryRoadLawrenceEscapeRopeText:
	text "Lawrence used an"
	line "Escape Rope!"
	done

VeteranmMattSeenText:
	text "I can see you're"
	line "good! Let me see"
	cont "exactly how good!"
	done

VeteranmMattBeatenText:
	text "I had a chance…"
	done

VeteranmMattAfterText:
	text "I concede, you're"
	line "better than me!"
	done

VeteranfJoanneSeenText:
	text "Victory Road is"
	line "the final test"
	cont "for trainers!"
	done

VeteranfJoanneBeatenText:
	text "Aiyah!"
	done

VeteranfJoanneAfterText:
	text "You earned the"
	line "right to be on"
	cont "Victory Road!"
	done

VeteranfSylvieSeenText:
	text "There's supposed"
	line "to be a Moltres"
	cont "roosting here."

	para "I'm going to catch"
	line "it!"
	done

VeteranfSylvieBeatenText:
	text "I'd have won if"
	line "I had a legendary"
	cont "#mon…"
	done

VeteranfSylvieAfterText:
	text "Did somebody"
	line "capture Moltres"
	cont "already?"
	done

VeteranmRemySeenText:
	text "If you can get"
	line "through here, you"

	para "can challenge the"
	line "Elite Four!"
	done

VeteranmRemyBeatenText:
	text "No!"
	line "Inconceivable!"
	done

VeteranmRemyAfterText:
	text "I can beat you"
	line "when it comes to"

	para "knowledge about"
	line "#mon!"
	done

VictoryRoad_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 10
	warp_def $43, $9, 5, VICTORY_ROAD_GATE
	warp_def $31, $1, 3, VICTORY_ROAD
	warp_def $23, $1, 2, VICTORY_ROAD
	warp_def $1f, $d, 5, VICTORY_ROAD
	warp_def $11, $d, 4, VICTORY_ROAD
	warp_def $21, $11, 7, VICTORY_ROAD
	warp_def $13, $11, 6, VICTORY_ROAD
	warp_def $b, $0, 9, VICTORY_ROAD
	warp_def $1b, $0, 8, VICTORY_ROAD
	warp_def $5, $d, 3, ROUTE_23

.XYTriggers:
	db 2
	xy_trigger 0, $8, $c, $0, UnknownScript_0x74492, $0, $0
	xy_trigger 0, $8, $d, $0, UnknownScript_0x744b5, $0, $0

.Signposts:
	db 2
	signpost 29, 3, SIGNPOST_ITEM, VictoryRoadHiddenMaxPotion
	signpost 65, 3, SIGNPOST_ITEM, VictoryRoadHiddenFullHeal

.PersonEvents:
	db 12
	person_event SPRITE_SILVER, 13, 18, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, ObjectEvent, EVENT_RIVAL_VICTORY_ROAD
	person_event SPRITE_LAWRENCE, 15, 3, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, VictoryRoadLawrenceScript, EVENT_LAWRENCE_VICTORY_ROAD
	person_event SPRITE_VETERAN_M, 52, 10, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_TRAINER, 3, TrainerVeteranmMatt, -1
	person_event SPRITE_VETERAN_F, 35, 9, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_TRAINER, 4, TrainerVeteranfJoanne, -1
	person_event SPRITE_VETERAN_F, 27, 2, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_TRAINER, 1, TrainerVeteranfSylvie, -1
	person_event SPRITE_VETERAN_M, 13, 14, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_TRAINER, 4, TrainerVeteranmRemy, -1
	person_event SPRITE_POKE_BALL, 28, 3, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_ITEMBALL, 0, VictoryRoadTMEarthquake, EVENT_VICTORY_ROAD_TM_EARTHQUAKE
	person_event SPRITE_POKE_BALL, 48, 12, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, VictoryRoadMaxRevive, EVENT_VICTORY_ROAD_MAX_REVIVE
	person_event SPRITE_POKE_BALL, 29, 18, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, VictoryRoadFullRestore, EVENT_VICTORY_ROAD_FULL_RESTORE
	person_event SPRITE_POKE_BALL, 48, 15, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, VictoryRoadFullHeal, EVENT_VICTORY_ROAD_FULL_HEAL
	person_event SPRITE_POKE_BALL, 38, 7, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, VictoryRoadHPUp, EVENT_VICTORY_ROAD_HP_UP
	person_event SPRITE_POKE_BALL, 19, 14, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, VictoryRoadRazorFang, EVENT_VICTORY_ROAD_RAZOR_FANG
