const_value set 2
	const SEAGALLOPFERRYVERMILIONGATE_SAILOR

SeagallopFerryVermilionGate_MapScriptHeader:
.MapTriggers:
	db 2

	; triggers
	dw .Trigger0, 0
	dw .Trigger1, 0

.MapCallbacks:
	db 0

.Trigger0:
	end

.Trigger1:
	priorityjump SeagallopFerryVermilionGate_PlayerArrives
	end

SeagallopFerryVermilionGate_PlayerArrives:
	applymovement SEAGALLOPFERRYVERMILIONGATE_SAILOR, SeagallopFerryVermilionGateSailorArrive1MovementData
	applymovement PLAYER, SeagallopFerryVermilionGatePlayerArriveMovementData
	opentext
	writetext SeagallopFerryVermilionCityRefusedText
	waitbutton
	closetext
	applymovement SEAGALLOPFERRYVERMILIONGATE_SAILOR, SeagallopFerryVermilionGateSailorArrive2MovementData
	dotrigger $0
	end

SeagallopFerryVermilionGateSailorScript:
	faceplayer
	opentext
	checkitem MYSTICTICKET
	iffalse .MaybeOldSeaMap
	checkitem OLD_SEA_MAP
	iffalse .JustMysticTicket
	jump .BothTicketAndMap
.MaybeOldSeaMap
	checkitem OLD_SEA_MAP
	iffalse .NeitherTicketNorMap
	jump .JustOldSeaMap

.NeitherTicketNorMap
	writetext SeagallopFerryClosedText
	waitbutton
	closetext
	end

.JustMysticTicket
	writetext SeagallopFerryNavelRockQuestionText
	yesorno
	iffalse .RefuseFerry
	jump .NavelRock

.JustOldSeaMap
	writetext SeagallopFerryFarawayIslandQuestionText
	yesorno
	iffalse .RefuseFerry
	jump .FarawayIsland

.BothTicketAndMap
	writetext SeagallopFerryWhichDestinationText
	loadmenudata .FerryMenuDataHeader
	verticalmenu
	closewindow
	if_equal $1, .NavelRock
	if_equal $2, .FarawayIsland
	jump .RefuseFerry

.NavelRock
	writetext SeagallopFerryNavelRockText
	waitbutton
	closetext
	spriteface SEAGALLOPFERRYVERMILIONGATE_SAILOR, DOWN
	pause 10
	applymovement SEAGALLOPFERRYVERMILIONGATE_SAILOR, SeagallopFerryVermilionGateSailorDepartMovementData
	playsound SFX_EXIT_BUILDING
	disappear SEAGALLOPFERRYVERMILIONGATE_SAILOR
	waitsfx
	applymovement PLAYER, SeagallopFerryVermilionGatePlayerDepartMovementData
	playsound SFX_EXIT_BUILDING
	special FadeOutPalettes
	waitsfx
	appear SEAGALLOPFERRYVERMILIONGATE_SAILOR
	domaptrigger SEAGALLOP_FERRY_NAVEL_GATE, $1
	warp SEAGALLOP_FERRY_NAVEL_GATE, $6, $5
	end

.FarawayIsland
	writetext SeagallopFerryFarawayIslandText
	waitbutton
	closetext
	spriteface SEAGALLOPFERRYVERMILIONGATE_SAILOR, DOWN
	pause 10
	applymovement SEAGALLOPFERRYVERMILIONGATE_SAILOR, SeagallopFerryVermilionGateSailorDepartMovementData
	playsound SFX_EXIT_BUILDING
	disappear SEAGALLOPFERRYVERMILIONGATE_SAILOR
	waitsfx
	applymovement PLAYER, SeagallopFerryVermilionGatePlayerDepartMovementData
	playsound SFX_EXIT_BUILDING
	special FadeOutPalettes
	waitsfx
	appear SEAGALLOPFERRYVERMILIONGATE_SAILOR
	domaptrigger FARAWAY_ISLAND, $1
	warp FARAWAY_ISLAND, $c, $2a
	end

.RefuseFerry
	writetext SeagallopFerryVermilionCityRefusedText
	waitbutton
	closetext
	end

.FerryMenuDataHeader:
	db $40 ; flags
	db 04, 00 ; start coords
	db 11, 17 ; end coords
	dw .MenuData2
	db 1 ; default option

.MenuData2:
	db $80 ; flags
	db 3 ; items
	db "Navel Rock@"
	db "Faraway Island@"
	db "Cancel@"

SeagallopFerryVermilionGateSailorDepartMovementData:
	step_down
	step_end

SeagallopFerryVermilionGatePlayerDepartMovementData:
	step_down
	step_down
	step_end

SeagallopFerryVermilionGatePlayerArriveMovementData:
	step_up
	step_up
	step_up
	turn_head_down
	step_end

SeagallopFerryVermilionGateSailorArrive1MovementData:
	step_up
	step_left
	turn_head_right
	step_end

SeagallopFerryVermilionGateSailorArrive2MovementData:
	step_right
	step_down
	turn_head_up
	step_end

SeagallopFerryClosedText:
	text "Welcome aboard the"
	line "Seagallop Ferry!"

	para "I'm sorry, you don't"
	line "have a ticket."
	done

SeagallopFerryNavelRockQuestionText:
	text "Welcome aboard the"
	line "Seagallop Ferry!"

	para "Oh! That's a"
	line "MysticTicket!"
	cont "Now that is rare."

	para "We'll be happy to"
	line "take you to Navel"
	cont "Rock any time."
	done

SeagallopFerryFarawayIslandQuestionText:
	text "Welcome aboard the"
	line "Seagallop Ferry!"

	para "Oh! That Old Sea"
	line "Map you have…"

	para "It looks like a"
	line "faraway island."

	para "We'll be happy to"
	line "take you there"
	cont "any time."
	done

SeagallopFerryWhichDestinationText:
	text "Welcome aboard the"
	line "Seagallop Ferry!"

	para "Where are you"
	line "bound for?"
	done

SeagallopFerryNavelRockText:
SeagallopFerryFarawayIslandText:
	text "All right!"

	para "All aboard the"
	line "Seagallop Ferry!"
	done

SeagallopFerryVermilionCityRefusedText:
	text "Come again!"
	done

SeagallopFerryVermilionGate_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 1
	warp_def $0, $6, 11, VERMILION_CITY

.XYTriggers:
	db 0

.Signposts:
	db 0

.PersonEvents:
	db 1
	person_event SPRITE_SAILOR, 4, 6, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, SeagallopFerryVermilionGateSailorScript, EVENT_OLIVINE_PORT_SAILOR_AT_GANGWAY
