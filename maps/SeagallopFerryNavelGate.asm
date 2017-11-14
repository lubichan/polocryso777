const_value set 2
	const SEAGALLOPFERRYNAVELGATE_SAILOR

SeagallopFerryNavelGate_MapScriptHeader:
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
	priorityjump SeagallopFerryNavelGate_PlayerArrives
	end

SeagallopFerryNavelGate_PlayerArrives:
	applymovement SEAGALLOPFERRYNAVELGATE_SAILOR, SeagallopFerryNavelGateSailorArrive1MovementData
	applymovement PLAYER, SeagallopFerryNavelGatePlayerArriveMovementData
	opentext
	writetext SeagallopFerryNavelRockRefusedText
	waitbutton
	closetext
	applymovement SEAGALLOPFERRYNAVELGATE_SAILOR, SeagallopFerryNavelGateSailorArrive2MovementData
	dotrigger $0
	end

SeagallopFerryNavelGateSailorScript:
	faceplayer
	opentext
	writetext SeagallopFerryNavelToVermilionQuestionText
	yesorno
	iffalse .RefuseFerry
	writetext SeagallopFerryNavelToVermilionText
	waitbutton
	closetext
	spriteface SEAGALLOPFERRYNAVELGATE_SAILOR, DOWN
	pause 10
	applymovement SEAGALLOPFERRYNAVELGATE_SAILOR, SeagallopFerryNavelGateSailorDepartMovementData
	playsound SFX_EXIT_BUILDING
	disappear SEAGALLOPFERRYNAVELGATE_SAILOR
	waitsfx
	applymovement PLAYER, SeagallopFerryNavelGatePlayerDepartMovementData
	playsound SFX_EXIT_BUILDING
	special FadeOutPalettes
	waitsfx
	appear SEAGALLOPFERRYNAVELGATE_SAILOR
	domaptrigger SEAGALLOP_FERRY_VERMILION_GATE, $1
	warp SEAGALLOP_FERRY_VERMILION_GATE, $6, $5
	end

.RefuseFerry
	writetext SeagallopFerryNavelRockRefusedText
	waitbutton
	closetext
	end

SeagallopFerryNavelGateSailorDepartMovementData:
	step_down
	step_end

SeagallopFerryNavelGatePlayerDepartMovementData:
	step_down
	step_down
	step_end

SeagallopFerryNavelGatePlayerArriveMovementData:
	step_up
	step_up
	step_up
	turn_head_down
	step_end

SeagallopFerryNavelGateSailorArrive1MovementData:
	step_up
	step_left
	turn_head_right
	step_end

SeagallopFerryNavelGateSailorArrive2MovementData:
	step_right
	step_down
	turn_head_up
	step_end

SeagallopFerryNavelToVermilionQuestionText:
	text "Ready to head back"
	line "to Vermilion City?"
	done

SeagallopFerryNavelToVermilionText:
	text "All right!"

	para "All aboard the"
	line "Seagallop Ferry!"
	done

SeagallopFerryNavelRockRefusedText:
	text "I'll be waiting"
	line "right here."
	done

SeagallopFerryNavelGate_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 1
	warp_def $0, $6, 1, NAVEL_ROCK_OUTSIDE

.XYTriggers:
	db 0

.Signposts:
	db 0

.PersonEvents:
	db 1
	person_event SPRITE_SAILOR, 4, 6, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, SeagallopFerryNavelGateSailorScript, EVENT_OLIVINE_PORT_SAILOR_AT_GANGWAY
