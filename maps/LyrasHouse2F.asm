const_value set 2
	const LYRASHOUSE2F_LYRA
	const LYRASHOUSE2F_PIDGEOT

LyrasHouse2F_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

LyrasHouseLyra:
	jumptextfaceplayer LyrasHouseLyraText

LyrasHousePidgeot:
	opentext
	writetext LyrasHousePidgeotText
	cry PIDGEOT
	waitbutton
	closetext
	end

LyrasHouseRadio:
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue .NormalRadio
	checkevent EVENT_LISTENED_TO_INITIAL_RADIO
	iftrue .AbbreviatedRadio
	playmusic MUSIC_POKEMON_TALK
	opentext
	writetext LyrasRadioText1
	pause 45
	writetext LyrasRadioText2
	pause 45
	writetext LyrasRadioText3
	pause 45
	musicfadeout MUSIC_NEW_BARK_TOWN, 16
	writetext LyrasRadioText4
	pause 45
	closetext
	setevent EVENT_LISTENED_TO_INITIAL_RADIO
	end

.NormalRadio:
	jumpstd radio1

.AbbreviatedRadio:
	opentext
	writetext LyrasRadioText4
	pause 45
	closetext
	end

LyrasHousePC:
	jumptext LyrasHousePCText

LyrasHouseN64:
	jumptext LyrasHouseN64Text

LyrasHouseBookshelf:
	jumpstd picturebookshelf

LyrasHouseLyraText:
	text "Lyra: Hi, <PLAYER>!"

	para "Hmm… My #mon"
	line "may be putting"

	para "on some weight"
	line "lately…"
	done

LyrasHousePidgeotText:
	text "Pidgeot: Geot!"
	done

LyrasRadioText1:
	text "Prof.Oak's #mon"
	line "Talk! Please tune"
	cont "in next time!"
	done

LyrasRadioText2:
	text "#mon Channel!"
	done

LyrasRadioText3:
	text "This is DJ Mary,"
	line "your co-host!"
	done

LyrasRadioText4:
	text "#mon!"
	line "#mon Channel…"
	done

LyrasHousePCText:
	text "You shouldn't mess"
	line "with someone"
	cont "else's PC!"
	done

LyrasHouseN64Text:
	text "It's an N64."
	done

LyrasHouse2F_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 1
	warp_def $0, $0, 3, LYRAS_HOUSE_1F

.XYTriggers:
	db 0

.Signposts:
	db 4
	signpost 1, 4, SIGNPOST_READ, LyrasHousePC
	signpost 1, 5, SIGNPOST_READ, LyrasHouseRadio
	signpost 1, 7, SIGNPOST_READ, LyrasHouseBookshelf
	signpost 2, 6, SIGNPOST_READ, LyrasHouseN64

.PersonEvents:
	db 2
	person_event SPRITE_LYRA, 3, 2, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, LyrasHouseLyra, EVENT_LYRA_IN_HER_ROOM
	person_event SPRITE_PIDGEOT, 3, 3, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_SCRIPT, 0, LyrasHousePidgeot, EVENT_LYRA_IN_HER_ROOM
