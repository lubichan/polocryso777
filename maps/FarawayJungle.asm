const_value set 2
	const FARAWAYJUNGLE_MEW

FarawayJungle_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

FarawayJungleMew:
	faceplayer
	opentext
	writetext MewText
	cry MEW
	pause 15
	closetext
	loadwildmon MEW, 30
	writecode VAR_BATTLETYPE, BATTLETYPE_KANTO_LEGEND
	startbattle
	disappear FARAWAYJUNGLE_MEW
	setevent EVENT_FARAWAY_JUNGLE_MEW
	reloadmapafterbattle
	end

MewText:
	text "Mew!"
	done

FarawayJungle_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 2
	warp_def $12, $c, 1, FARAWAY_ISLAND
	warp_def $12, $d, 2, FARAWAY_ISLAND

.XYTriggers:
	db 0

.Signposts:
	db 0

.PersonEvents:
	db 1
	person_event SPRITE_MEW, 10, 12, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, FarawayJungleMew, EVENT_FARAWAY_JUNGLE_MEW
