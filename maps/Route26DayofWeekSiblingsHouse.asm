const_value set 2
	const ROUTE26DAYOFWEEKSIBLINGSHOUSE_POKEDEX

Route26DayofWeekSiblingsHouse_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

PokedexScript_0x7b1e4:
	opentext
	writetext UnknownText_0x7b1f9
	yesorno
	iffalse UnknownText_0x7b1f7
	writetext UnknownText_0x7b222
	yesorno
	iffalse UnknownText_0x7b1f7
	writetext UnknownText_0x7b2b9
	waitbutton
UnknownText_0x7b1f7:
	closetext
	end

UnknownText_0x7b1f9:
	text "There's something"
	line "written here."

	para "Read it?"
	done

UnknownText_0x7b222:
	text "To my brothers and"
	line "sisters:"

	para "We take pride in"
	line "serving #mon"
	cont "trainers."

	para "When trainers talk"
	line "to you, give them"
	cont "something useful."

	para "Love,"
	line "Monica"

	para "Keep reading?"
	done

UnknownText_0x7b2b9:
	text "Monday, Monica"
	line "Route 40"

	para "Tuesday, Tuscany"
	line "Route 29"

	para "Wednesday, Wesley"
	line "Lake of Rage"

	para "Thursday, Arthur"
	line "Route 36"

	para "Friday, Frieda"
	line "Route 32"

	para "Saturday, Santos"
	line "Blackthorn City"

	para "Sunday, Sunny"
	line "Route 37"
	done

Route26DayofWeekSiblingsHouse_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 2
	warp_def $7, $2, 3, ROUTE_26
	warp_def $7, $3, 3, ROUTE_26

.XYTriggers:
	db 0

.Signposts:
	db 0

.PersonEvents:
	db 1
	person_event SPRITE_POKEDEX, 3, 3, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, PokedexScript_0x7b1e4, -1
