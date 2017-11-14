Route16_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 1

	; callbacks

	dbw MAPCALLBACK_NEWMAP, UnknownScript_0x1ad318

UnknownScript_0x1ad318:
	checkcode VAR_YCOORD
	if_less_than $5, UnknownScript_0x1ad328
	checkcode VAR_XCOORD
	if_greater_than $d, UnknownScript_0x1ad328
	setflag ENGINE_ALWAYS_ON_BIKE
	return

UnknownScript_0x1ad328:
	clearflag ENGINE_ALWAYS_ON_BIKE
	return

OfficerfJennyScript:
	faceplayer
	opentext
	checknite
	iffalse .NoFight
	checkevent EVENT_BEAT_OFFICERF_JENNY
	iftrue .AfterScript
	playmusic MUSIC_OFFICER_ENCOUNTER
	writetext OfficerfJennySeenText
	waitbutton
	closetext
	winlosstext OfficerfJennyBeatenText, 0
	loadtrainer OFFICERF, JENNY
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_OFFICERF_JENNY
	closetext
	end

.AfterScript:
	writetext OfficerfJennyAfterText
	waitbutton
	closetext
	end

.NoFight:
	writetext OfficerfJennyDaytimeText
	waitbutton
	closetext
	end

CyclingRoadSign:
	jumptext CyclingRoadSignText

OfficerfJennySeenText:
	text "Hey you! Are you"
	line "causing trouble?"
	done

OfficerfJennyBeatenText:
	text "Hmph!"
	done

OfficerfJennyAfterText:
	text "Riding around late"
	line "at night just"
	cont "looks suspicious."
	done

OfficerfJennyDaytimeText:
	text "Bikers and"
	line "Roughnecks like"

	para "to make trouble"
	line "on this road."

	para "Don't you get"
	line "involved, got it?"
	done

CyclingRoadSignText:
	text "Cycling Road"

	para "Downhill coasting"
	line "all the way!"
	done

Route16_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 5
	warp_def $1, $3, 1, ROUTE_16_FUCHSIA_SPEECH_HOUSE
	warp_def $6, $e, 3, ROUTE_16_GATE
	warp_def $7, $e, 4, ROUTE_16_GATE
	warp_def $6, $9, 1, ROUTE_16_GATE
	warp_def $7, $9, 2, ROUTE_16_GATE

.XYTriggers:
	db 0

.Signposts:
	db 1
	signpost 5, 5, SIGNPOST_READ, CyclingRoadSign

.PersonEvents:
	db 1
	person_event SPRITE_OFFICER_F, 9, 4, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, OfficerfJennyScript, -1
