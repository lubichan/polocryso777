const_value set 2
	const VIRIDIANFORESTVIRIDIANGATE_OFFICER

ViridianForestViridianGate_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

ViridianForestViridianGateOfficerScript:
	jumptextfaceplayer ViridianForestViridianGateOfficerText

ViridianForestViridianGateOfficerText:
	text "Be careful,"
	line "Viridian Forest"
	
	para "is a natural"
	line "maze!"
	done

ViridianForestViridianGate_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 4
	warp_def $0, $4, 2, VIRIDIAN_FOREST
	warp_def $0, $5, 3, VIRIDIAN_FOREST
	warp_def $7, $4, 6, ROUTE_2
	warp_def $7, $5, 6, ROUTE_2

.XYTriggers:
	db 0

.Signposts:
	db 0

.PersonEvents:
	db 1
	person_event SPRITE_OFFICER, 4, 0, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, ViridianForestViridianGateOfficerScript, -1
