const_value set 2
	const GOLDENRODDEPTSTORE2F_CLERK1
	const GOLDENRODDEPTSTORE2F_CLERK2
	const GOLDENRODDEPTSTORE2F_YOUNGSTER
	const GOLDENRODDEPTSTORE2F_COOLTRAINER_F
	const GOLDENRODDEPTSTORE2F_GENTLEMAN

GoldenrodDeptStore2F_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

ClerkScript_0x55b5d:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_GOLDENROD_2F_1
	closetext
	end

ClerkScript_0x55b65:
	faceplayer
	opentext
	checkevent EVENT_GOT_EEVEE
	iftrue .eevee
	pokemart MARTTYPE_STANDARD, MART_GOLDENROD_2F_2_1
	closetext
	end

.eevee
	pokemart MARTTYPE_STANDARD, MART_GOLDENROD_2F_2_2
	closetext
	end

YoungsterScript_0x55b6d:
	jumptextfaceplayer UnknownText_0x55c25

CooltrainerFScript_0x55b70:
	jumptextfaceplayer UnknownText_0x55c7b

GentlemanScript_0x55b73:
	jumptextfaceplayer UnknownText_0x55cb7

GoldenrodDeptStore2FDirectory:
	jumptext GoldenrodDeptStore2FDirectoryText

GoldenrodDeptStore2FElevatorButton:
	jumpstd elevatorbutton

UnknownText_0x55c25:
	text "#gear can store"
	line "up to ten phone"
	cont "numbers."

	para "It's hard to de-"
	line "cide which numbers"
	cont "to keep."
	done

UnknownText_0x55c7b:
	text "I got my Abra at"
	line "the Game Corner."

	para "Now it's my best"
	line "partner."
	done

UnknownText_0x55cb7:
	text "This Dept.Store"
	line "makes me realize"

	para "that Goldenrod is"
	line "a big city."

	para "The selection here"
	line "is unmatched any-"
	cont "where else."
	done

GoldenrodDeptStore2FDirectoryText:
	text "Your Travel"
	line "Companion"

	para "2F Trainer's"
	line "   Market"
	done

GoldenrodDeptStore2F_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 3
	warp_def $0, $c, 1, GOLDENROD_DEPT_STORE_3F
	warp_def $0, $f, 3, GOLDENROD_DEPT_STORE_1F
	warp_def $0, $2, 1, GOLDENROD_DEPT_STORE_ELEVATOR

.XYTriggers:
	db 0

.Signposts:
	db 2
	signpost 0, 14, SIGNPOST_READ, GoldenrodDeptStore2FDirectory
	signpost 0, 3, SIGNPOST_READ, GoldenrodDeptStore2FElevatorButton

.PersonEvents:
	db 5
	person_event SPRITE_CLERK, 5, 13, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, ClerkScript_0x55b5d, -1
	person_event SPRITE_CLERK, 6, 13, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, ClerkScript_0x55b65, -1
	person_event SPRITE_YOUNGSTER, 6, 9, SPRITEMOVEDATA_WALK_UP_DOWN, 1, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, YoungsterScript_0x55b6d, -1
	person_event SPRITE_COOLTRAINER_F, 2, 6, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 2, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, CooltrainerFScript_0x55b70, -1
	person_event SPRITE_GENTLEMAN, 6, 2, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, GentlemanScript_0x55b73, -1
