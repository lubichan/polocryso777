const_value set 2
	const STATSJUDGESHOUSE_COOLTRAINERM

StatsJudgesHouse_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

StatsJudgeScript:
	faceplayer
	opentext
	special SpecialStatsJudge
	waitbutton
	closetext
	end

StatsJudgesHouse_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 2
	warp_def $7, $2, 7, CIANWOOD_CITY
	warp_def $7, $3, 7, CIANWOOD_CITY

.XYTriggers:
	db 0

.Signposts:
	db 0

.PersonEvents:
	db 1
	person_event SPRITE_COOLTRAINER_M, 3, 2, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, StatsJudgeScript, -1
