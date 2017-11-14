const_value set 2
	const POKEMONMANSION1F_BURGLAR1
	const POKEMONMANSION1F_BURGLAR2
	const POKEMONMANSION1F_POKE_BALL1
	const POKEMONMANSION1F_POKE_BALL2
	const POKEMONMANSION1F_POKE_BALL3
	const POKEMONMANSION1F_POKE_BALL4

PokemonMansion1F_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

TrainerBurglarPete:
	trainer EVENT_BEAT_BURGLAR_PETE, BURGLAR, PETE, BurglarPeteSeenText, BurglarPeteBeatenText, 0, BurglarPeteScript

BurglarPeteScript:
	end_if_just_battled
	opentext
	writetext BurglarPeteAfterText
	waitbutton
	closetext
	end

TrainerBurglarLouis:
	trainer EVENT_BEAT_BURGLAR_LOUIS, BURGLAR, LOUIS, BurglarLouisSeenText, BurglarLouisBeatenText, 0, BurglarLouisScript

BurglarLouisScript:
	end_if_just_battled
	opentext
	writetext BurglarLouisAfterText
	waitbutton
	closetext
	end

PokemonMansion1FMoonStone:
	itemball MOON_STONE

PokemonMansion1FEscapeRope:
	itemball ESCAPE_ROPE

PokemonMansion1FProtein:
	itemball PROTEIN

PokemonMansion1FIron:
	itemball IRON

PokemonMansion1FHiddenFullRestore:
	dwb EVENT_POKEMON_MANSION_1F_HIDDEN_FULL_RESTORE, FULL_RESTORE

PokemonMansion1FHiddenPPUp:
	checkevent EVENT_POKEMON_MANSION_1F_HIDDEN_PP_UP
	iftrue PokemonMansion1FFlowerPot
	giveitem PP_UP
	iffalse .PackFull
	opentext
	itemtotext PP_UP, $0
	writetext PokemonMansion1FFoundPPUpText
	playsound SFX_ITEM
	waitsfx
	itemnotify
	closetext
	setevent EVENT_POKEMON_MANSION_1F_HIDDEN_PP_UP
	end

.PackFull:
	opentext
	itemtotext PP_UP, $0
	writetext PokemonMansion1FFoundPPUpText
	buttonsound
	writetext PokemonMansion1FNoRoomForPPUpText
	waitbutton
	closetext
	end

PokemonMansion1FMewtwoStatue:
	jumptext PokemonMansion1FMewtwoStatueText

PokemonMansion1FFlowerPot:
	jumptext PokemonMansion1FFlowerPotText

BurglarPeteSeenText:
	text "Who are you? There"
	line "shouldn't be"
	cont "anyone here."
	done

BurglarPeteBeatenText:
	text "Ouch!"
	done

BurglarPeteAfterText:
	text "Some valuable"
	line "items probably"

	para "survived the"
	line "eruption."
	done

BurglarLouisSeenText:
	text "This place is"
	line "creepy!"
	done

BurglarLouisBeatenText:
	text "Ayah!"
	done

BurglarLouisAfterText:
	text "I just want to"
	line "find some loot"
	cont "and get out."
	done

PokemonMansion1FFoundPPUpText:
	text "<PLAYER> found"
	line "@"
	text_from_ram StringBuffer3
	text "!"
	done

PokemonMansion1FNoRoomForPPUpText:
	text "But <PLAYER> can't"
	line "hold another item…"
	done

PokemonMansion1FMewtwoStatueText:
	text "A #mon statue…"

	para "It looks very"
	line "threatening."
	done

PokemonMansion1FFlowerPotText:
	text "It's filled with"
	line "soil and ashes…"
	done

PokemonMansion1F_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 3
	warp_def $1b, $5, 3, CINNABAR_ISLAND
	warp_def $1b, $6, 3, CINNABAR_ISLAND
	warp_def $17, $15, 1, POKEMON_MANSION_B1F

.XYTriggers:
	db 0

.Signposts:
	db 8
	signpost 12, 21, SIGNPOST_ITEM, PokemonMansion1FHiddenFullRestore
	signpost 23, 14, SIGNPOST_READ, PokemonMansion1FHiddenPPUp
	signpost 5, 2, SIGNPOST_READ, PokemonMansion1FMewtwoStatue
	signpost 23, 15, SIGNPOST_READ, PokemonMansion1FFlowerPot
	signpost 23, 18, SIGNPOST_READ, PokemonMansion1FFlowerPot
	signpost 23, 19, SIGNPOST_READ, PokemonMansion1FFlowerPot
	signpost 19, 18, SIGNPOST_READ, PokemonMansion1FFlowerPot
	signpost 19, 19, SIGNPOST_READ, PokemonMansion1FFlowerPot

.PersonEvents:
	db 6
	person_event SPRITE_PHARMACIST, 10, 9, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, (1 << 3) | PAL_OW_PURPLE, PERSONTYPE_TRAINER, 3, TrainerBurglarPete, -1
	person_event SPRITE_PHARMACIST, 14, 27, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, (1 << 3) | PAL_OW_PURPLE, PERSONTYPE_TRAINER, 3, TrainerBurglarLouis, -1
	person_event SPRITE_POKE_BALL, 4, 6, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, PokemonMansion1FMoonStone, EVENT_POKEMON_MANSION_1F_MOON_STONE
	person_event SPRITE_POKE_BALL, 3, 14, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, PokemonMansion1FEscapeRope, EVENT_POKEMON_MANSION_1F_ESCAPE_ROPE
	person_event SPRITE_POKE_BALL, 22, 17, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, PokemonMansion1FProtein, EVENT_POKEMON_MANSION_1F_PROTEIN
	person_event SPRITE_POKE_BALL, 22, 27, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, PokemonMansion1FIron, EVENT_POKEMON_MANSION_1F_IRON
