const_value set 2
	const CELADONDEPTSTORE3F_CLERK1
	const CELADONDEPTSTORE3F_CLERK2
	const CELADONDEPTSTORE3F_YOUNGSTER
	const CELADONDEPTSTORE3F_SUPER_NERD
	const CELADONDEPTSTORE3F_CLERK3
	const CELADONDEPTSTORE3F_SNES
	const CELADONDEPTSTORE3F_N64
	const CELADONDEPTSTORE3F_GAMECUBE
	const CELADONDEPTSTORE3F_WII

CeladonDeptStore3F_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

ClerkScript_0x70d29:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_CELADON_3F
	closetext
	end

CeladonDeptStore3FClerk2Script:
	faceplayer
	opentext
	checkevent EVENT_LISTENED_TO_COUNTER_INTRO
	iftrue CeladonDeptStore3FTutorCounterScript
	writetext CeladonDeptStore3FClerk2Text
	waitbutton
	setevent EVENT_LISTENED_TO_COUNTER_INTRO
CeladonDeptStore3FTutorCounterScript:
	writetext Text_CeladonDeptStore3FTutorCounter
	waitbutton
	checkitem SILVER_LEAF
	iffalse .NoSilverLeaf
	writetext Text_CeladonDeptStore3FTutorQuestion
	yesorno
	iffalse .TutorRefused
	writebyte COUNTER
	writetext Text_CeladonDeptStore3FTutorClear
	special Special_MoveTutor
	if_equal $0, .TeachMove
.TutorRefused
	writetext Text_CeladonDeptStore3FTutorRefused
	waitbutton
	closetext
	end

.NoSilverLeaf
	writetext Text_CeladonDeptStore3FTutorNoSilverLeaf
	waitbutton
	closetext
	end

.TeachMove
	takeitem SILVER_LEAF
	writetext Text_CeladonDeptStore3FTutorTaught
	waitbutton
	closetext
	end

VideoGameClerkScript:
	jumptextfaceplayer VideoGameClerkText

VideoGameClerkNoSaleScript:
	writetext VideoGameClerkNoSaleText
	waitbutton
	closetext
	end

VideoGameClerkNoMoneyScript:
	writetext VideoGameClerkNoMoneyText
	waitbutton
	closetext
	end

CeladonDeptStore3FSnesScript:
	opentext
	checkevent EVENT_DECO_SNES
	iftrue .OwnSnes
	writetext VideoGameClerkSellSnesText
	special PlaceMoneyTopRight
	yesorno
	iffalse VideoGameClerkNoSaleScript
	checkmoney $0, 20000
	if_equal $2, VideoGameClerkNoMoneyScript
	takemoney $0, 20000
	setevent EVENT_DECO_SNES
	writetext BoughtSnesText
	playsound SFX_TRANSACTION
	waitbutton
	writetext SnesSentText
	waitbutton
	closetext
	end

.OwnSnes:
	writetext CeladonDeptStore3FSnesText
	waitbutton
	closetext
	end

CeladonDeptStore3FN64Script:
	opentext
	checkevent EVENT_DECO_N64
	iftrue .OwnN64
	writetext VideoGameClerkSellN64Text
	special PlaceMoneyTopRight
	yesorno
	iffalse VideoGameClerkNoSaleScript
	checkmoney $0, 25000
	if_equal $2, VideoGameClerkNoMoneyScript
	takemoney $0, 25000
	setevent EVENT_DECO_N64
	writetext BoughtN64Text
	playsound SFX_TRANSACTION
	waitbutton
	writetext N64SentText
	waitbutton
	closetext
	end

.OwnN64:
	writetext CeladonDeptStore3FN64Text
	waitbutton
	closetext
	end

CeladonDeptStore3FGameCubeScript:
	opentext
	checkevent EVENT_DECO_GAMECUBE
	iftrue .OwnGameCube
	writetext VideoGameClerkSellGameCubeText
	special PlaceMoneyTopRight
	yesorno
	iffalse VideoGameClerkNoSaleScript
	checkmoney $0, 30000
	if_equal $2, VideoGameClerkNoMoneyScript
	takemoney $0, 30000
	setevent EVENT_DECO_GAMECUBE
	writetext BoughtGameCubeText
	playsound SFX_TRANSACTION
	waitbutton
	writetext GameCubeSentText
	waitbutton
	closetext
	end

.OwnGameCube:
	writetext CeladonDeptStore3FGameCubeText
	waitbutton
	closetext
	end

CeladonDeptStore3FWiiScript:
	opentext
	checkevent EVENT_DECO_WII
	iftrue .OwnWii
	writetext VideoGameClerkSellWiiText
	special PlaceMoneyTopRight
	yesorno
	iffalse VideoGameClerkNoSaleScript
	checkmoney $0, 40000
	if_equal $2, VideoGameClerkNoMoneyScript
	takemoney $0, 40000
	setevent EVENT_DECO_WII
	writetext BoughtWiiText
	playsound SFX_TRANSACTION
	waitbutton
	writetext WiiSentText
	waitbutton
	closetext
	end

.OwnWii:
	writetext CeladonDeptStore3FWiiText
	waitbutton
	closetext
	end

YoungsterScript_0x70d31:
	jumptextfaceplayer UnknownText_0x70d53

SuperNerdScript_0x70d4a:
	jumptextfaceplayer UnknownText_0x70e61

CeladonDeptStore3FElevatorButton:
	jumpstd elevatorbutton

CeladonDeptStore3FDirectory:
	jumptext CeladonDeptStore3FDirectoryText

CeladonDeptStore3FRPG:
	jumptext CeladonDeptStore3FRPGText

CeladonDeptStore3FSportsGame:
	jumptext CeladonDeptStore3FSportsGameText

CeladonDeptStore3FPuzzleGame:
	jumptext CeladonDeptStore3FPuzzleGameText

CeladonDeptStore3FFightingGame:
	jumptext CeladonDeptStore3FFightingGameText

CeladonDeptStore3FClerk2Text:
	text "There's a neat move"
	line "called Counter."

	para "Not the kind of"
	line "counter I'm leaning"
	cont "on, mind you!"
	done

Text_CeladonDeptStore3FTutorCounter:
	text "I'll teach your"
	line "#mon how to use"

	para "Counter if you pay"
	line "me a Silver Leaf."
	done

Text_CeladonDeptStore3FTutorNoSilverLeaf:
	text "You don't have a"
	line "Silver Leaf…"
	done

Text_CeladonDeptStore3FTutorQuestion:
	text "Should I teach"
	line "your #mon"
	cont "Counter?"
	done

Text_CeladonDeptStore3FTutorRefused:
	text "Never mind."
	done

Text_CeladonDeptStore3FTutorClear:
	text ""
	done

Text_CeladonDeptStore3FTutorTaught:
	text "Now your #mon"
	line "knows Counter."
	done

VideoGameClerkText:
	text "We sell brand-new"
	line "and vintage game"
	cont "systems!"

	para "Try them out for"
	line "yourself!"
	done

VideoGameClerkNoSaleText:
	text "Clerk: Well, if"
	line "you say so."
	done

VideoGameClerkNoMoneyText:
	text "Clerk: You can't"
	line "afford it!"
	done

VideoGameClerkSellSnesText:
	text "Clerk: That SNES"
	line "can be yours for"

	para "just ¥20,000!"
	line "Want one?"
	done

VideoGameClerkSellN64Text:
	text "Clerk: That N64"
	line "can be yours for"

	para "just ¥25,000!"
	line "Want one?"
	done

VideoGameClerkSellGameCubeText:
	text "Clerk: That Game-"
	line "Cube can be yours"

	para "for just ¥30,000!"
	line "Want one?"
	done

VideoGameClerkSellWiiText:
	text "Clerk: That Wii"
	line "can be yours for"

	para "just ¥40,000!"
	line "Want one?"
	done

BoughtSnesText:
	text "<PLAYER> bought"
	line "Super NES."
	done

SnesSentText:
	text "Super NES"
	line "was sent home."
	done

BoughtN64Text:
	text "<PLAYER> bought"
	line "Nintendo 64."
	done

N64SentText:
	text "Nintendo 64"
	line "was sent home."
	done

BoughtGameCubeText:
	text "<PLAYER> bought"
	line "GameCube."
	done

GameCubeSentText:
	text "GameCube"
	line "was sent home."
	done

BoughtWiiText:
	text "<PLAYER> bought"
	line "Wii."
	done

WiiSentText:
	text "Wii"
	line "was sent home."
	done

UnknownText_0x70d53:
	text "I can't decide"
	line "which #mon I"

	para "should use this"
	line "TM on…"

	para "Good thing it"
	line "doesn't run out."
	done

UnknownText_0x70e61:
	text "The Tech Shop"
	line "sells some cool"
	cont "game systems."
	done

CeladonDeptStore3FDirectoryText:
	text "Make Your #mon"
	line "Stronger!"

	para "3F: Tech Shop"
	done

CeladonDeptStore3FSnesText:
	text "It's a Super NES!"

	para "I have one of"
	line "those at home!"
	done

CeladonDeptStore3FN64Text:
	text "It's an N64!"

	para "I have one of"
	line "those at home!"
	done

CeladonDeptStore3FGameCubeText:
	text "It's a GameCube!"

	para "I have one of"
	line "those at home!"
	done

CeladonDeptStore3FWiiText:
	text "It's a Wii!"

	para "I have one of"
	line "those at home!"
	done

CeladonDeptStore3FRPGText:
	text "An RPG! There's"
	line "no time for that!"
	done

CeladonDeptStore3FSportsGameText:
	text "A sports game!"
	line "Dad'll like that!"
	done

CeladonDeptStore3FPuzzleGameText:
	text "A puzzle game!"
	line "Looks addictive!"
	done

CeladonDeptStore3FFightingGameText:
	text "A fighting game!"
	line "Looks tough!"
	done

CeladonDeptStore3F_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 3
	warp_def $0, $c, 1, CELADON_DEPT_STORE_2F
	warp_def $0, $f, 2, CELADON_DEPT_STORE_4F
	warp_def $0, $2, 1, CELADON_DEPT_STORE_ELEVATOR

.XYTriggers:
	db 0

.Signposts:
	db 6
	signpost 0, 14, SIGNPOST_READ, CeladonDeptStore3FDirectory
	signpost 0, 3, SIGNPOST_READ, CeladonDeptStore3FElevatorButton
	signpost 3, 2, SIGNPOST_READ, CeladonDeptStore3FRPG
	signpost 3, 5, SIGNPOST_READ, CeladonDeptStore3FSportsGame
	signpost 5, 2, SIGNPOST_READ, CeladonDeptStore3FPuzzleGame
	signpost 5, 5, SIGNPOST_READ, CeladonDeptStore3FFightingGame

.PersonEvents:
	db 9
	person_event SPRITE_CLERK, 1, 9, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, ClerkScript_0x70d29, -1
	person_event SPRITE_CLERK, 1, 8, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, CeladonDeptStore3FClerk2Script, -1
	person_event SPRITE_YOUNGSTER, 5, 7, SPRITEMOVEDATA_WALK_UP_DOWN, 1, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_SCRIPT, 0, YoungsterScript_0x70d31, -1
	person_event SPRITE_SUPER_NERD, 4, 13, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, SuperNerdScript_0x70d4a, -1
	person_event SPRITE_CLERK, 4, 0, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, VideoGameClerkScript, -1
	person_event SPRITE_SNES, 3, 1, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, CeladonDeptStore3FSnesScript, -1
	person_event SPRITE_N64, 5, 1, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, CeladonDeptStore3FN64Script, -1
	person_event SPRITE_GAMECUBE, 3, 4, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, CeladonDeptStore3FGameCubeScript, -1
	person_event SPRITE_WII, 5, 4, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, CeladonDeptStore3FWiiScript, -1
