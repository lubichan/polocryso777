const_value set 2
	const VIRIDIANFORESTPEWTERGATE_OFFICER

ViridianForestPewterGate_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

ViridianForestPewterGateOfficerScript:
	jumptextfaceplayer ViridianForestPewterGateOfficerText

ViridianForestPewterGateOfficerText:
	text "Are you headed"
	line "to Pewter City?"
	
	para "Be sure to check"
	line "out the Museum!"
	done

ViridianForestPewterGate_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 4
	warp_def $7, $4, 1, VIRIDIAN_FOREST
	warp_def $7, $5, 1, VIRIDIAN_FOREST
	warp_def $0, $4, 7, ROUTE_2
	warp_def $0, $5, 8, ROUTE_2

.XYTriggers:
	db 0

.Signposts:
	db 0

.PersonEvents:
	db 1
	person_event SPRITE_OFFICER, 4, 0, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, ViridianForestPewterGateOfficerScript, -1
