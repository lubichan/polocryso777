const_value set 2
	const FASTSHIPCABINS_SW_SSW_NW_FISHER
	const FASTSHIPCABINS_SW_SSW_NW_BUG_CATCHER
	const FASTSHIPCABINS_SW_SSW_NW_RICH_BOY
	const FASTSHIPCABINS_SW_SSW_NW_BUENA
	const FASTSHIPCABINS_SW_SSW_NW_ROCKER

FastShipCabins_SW_SSW_NW_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

TrainerFirebreatherLyle:
	trainer EVENT_BEAT_FIREBREATHER_LYLE, FIREBREATHER, LYLE, FirebreatherLyleSeenText, FirebreatherLyleBeatenText, 0, FirebreatherLyleScript

FirebreatherLyleScript:
	end_if_just_battled
	opentext
	writetext UnknownText_0x75b52
	waitbutton
	closetext
	end

TrainerBug_catcherKen:
	trainer EVENT_BEAT_BUG_CATCHER_KEN, BUG_CATCHER, KEN, Bug_catcherKenSeenText, Bug_catcherKenBeatenText, 0, Bug_catcherKenScript

Bug_catcherKenScript:
	end_if_just_battled
	opentext
	writetext UnknownText_0x75bd5
	waitbutton
	closetext
	end

TrainerRichBoyWinston:
	trainer EVENT_BEAT_RICH_BOY_WINSTON, RICH_BOY, WINSTON, RichBoyWinstonSeenText, RichBoyWinstonBeatenText, 0, RichBoyWinstonScript

RichBoyWinstonScript:
	end_if_just_battled
	opentext
	writetext RichBoyWinstonAfterText
	waitbutton
	closetext
	end

TrainerBeautyCassie:
	trainer EVENT_BEAT_BEAUTY_CASSIE, BEAUTY, CASSIE, BeautyCassieSeenText, BeautyCassieBeatenText, 0, BeautyCassieScript

BeautyCassieScript:
	end_if_just_battled
	opentext
	writetext UnknownText_0x75c43
	waitbutton
	closetext
	end

TrainerGuitaristmClyde:
	trainer EVENT_BEAT_GUITARISTM_CLYDE, GUITARISTM, CLYDE, GuitaristmClydeSeenText, GuitaristmClydeBeatenText, 0, GuitaristmClydeScript

GuitaristmClydeScript:
	end_if_just_battled
	opentext
	writetext UnknownText_0x75d65
	waitbutton
	closetext
	end

FastShipBed:
	opentext
	writetext FastShipBedText1
	waitbutton
	closetext
	special Special_FadeBlackQuickly
	special Special_ReloadSpritesNoPalettes
	special HealParty
	playmusic MUSIC_HEAL
	pause 60
	special RestartMapMusic
	special Special_FadeInQuickly
	opentext
	writetext FastShipBedText2
	waitbutton
	closetext
	checkevent EVENT_FAST_SHIP_HAS_ARRIVED
	iftrue UnknownScript_0x75ae1
	checkevent EVENT_FAST_SHIP_FOUND_GIRL
	iftrue UnknownScript_0x75ae2
	checkevent EVENT_FAST_SHIP_FIRST_TIME
	iftrue UnknownScript_0x75ae2
UnknownScript_0x75ae1:
	end

UnknownScript_0x75ae2:
	playsound SFX_ELEVATOR_END
	pause 30
	checkevent EVENT_FAST_SHIP_DESTINATION_OLIVINE
	iftrue UnknownScript_0x75af7
	opentext
	writetext FastShipArrivedVermilionText
	waitbutton
	closetext
	setevent EVENT_FAST_SHIP_HAS_ARRIVED
	end

UnknownScript_0x75af7:
	opentext
	writetext FastShipArrivedOlivineText
	waitbutton
	closetext
	setevent EVENT_FAST_SHIP_HAS_ARRIVED
	end

FastShipCabinsNorthwestCabinTrashcan:
	jumpstd trashcan

FirebreatherLyleSeenText:
	text "I'm going to Kanto"
	line "to put on fire-"
	cont "breathing shows!"
	done

FirebreatherLyleBeatenText:
	text "Fizzle… The"
	line "flame's tiny…"
	done

UnknownText_0x75b52:
	text "I guess fire is"
	line "weak on the sea."

	para "It doesn't matter?"
	line "Really?"
	done

Bug_catcherKenSeenText:
	text "I'm visiting my"
	line "grandma to catch"
	cont "me some bugs!"
	done

Bug_catcherKenBeatenText:
	text "Ooh, wow."
	line "You're tough!"
	done

UnknownText_0x75bd5:
	text "You can find lots"
	line "of #mon in the"
	cont "trees of Johto!"
	done

RichBoyWinstonSeenText:
	text "There's no way you"
	line "could afford a"
	cont "ticket."

	para "It looks like we've"
	line "got a stowaway!"
	done

RichBoyWinstonBeatenText:
	text "Wow! Who'd you buy"
	line "your #mon from?"
	done

RichBoyWinstonAfterText:
	text "This boat is so"
	line "drab."
	done

BeautyCassieSeenText:
	text "I'm trying to"
	line "forget my woes."
	cont "Let's battle!"
	done

BeautyCassieBeatenText:
	text "My heart weeps…"
	done

UnknownText_0x75c43:
	text "A voyage is best"
	line "for getting over"
	cont "a broken heart."

	para "But a Fast Ship"
	line "trip is too short"
	cont "for grieving."
	done

GuitaristmClydeSeenText:
	text "I'm going to audi-"
	line "tion my songs at"

	para "Goldenrod's Radio"
	line "Station."
	done

GuitaristmClydeBeatenText:
	text "Yowza!"
	line "Total distortion!"
	done

UnknownText_0x75d65:
	text "Speaking of the"
	line "Radio Station,"

	para "what's this week's"
	line "lucky number?"
	done

FastShipBedText1:
	text "A comfy bed!"
	line "Time to sleep…"
	done

FastShipBedText2:
	text "Ah, refreshed and"
	line "restored!"
	done

FastShipArrivedOlivineText:
	text "Fast Ship S.S.Aqua"
	line "has arrived in"
	cont "Olivine City."
	done

FastShipArrivedVermilionText:
	text "Fast Ship S.S.Aqua"
	line "has arrived in"
	cont "Vermilion City."
	done

FastShipCabins_SW_SSW_NW_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 5
	warp_def $0, $2, 5, FAST_SHIP_1F
	warp_def $13, $2, 6, FAST_SHIP_1F
	warp_def $13, $3, 6, FAST_SHIP_1F
	warp_def $1f, $2, 7, FAST_SHIP_1F
	warp_def $1f, $3, 7, FAST_SHIP_1F

.XYTriggers:
	db 0

.Signposts:
	db 3
	signpost 1, 7, SIGNPOST_READ, FastShipBed
	signpost 2, 7, SIGNPOST_READ, FastShipBed
	signpost 7, 7, SIGNPOST_READ, FastShipCabinsNorthwestCabinTrashcan

.PersonEvents:
	db 5
	person_event SPRITE_FISHER, 15, 1, SPRITEMOVEDATA_SPINCOUNTERCLOCKWISE, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_TRAINER, 2, TrainerFirebreatherLyle, EVENT_FAST_SHIP_PASSENGERS_FIRST_TRIP
	person_event SPRITE_BUG_CATCHER, 15, 6, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_TRAINER, 2, TrainerBug_catcherKen, EVENT_FAST_SHIP_PASSENGERS_WESTBOUND
	person_event SPRITE_RICH_BOY, 27, 5, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_TRAINER, 3, TrainerRichBoyWinston, EVENT_FAST_SHIP_PASSENGERS_FIRST_TRIP
	person_event SPRITE_BUENA, 26, 1, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_TRAINER, 3, TrainerBeautyCassie, EVENT_FAST_SHIP_PASSENGERS_EASTBOUND
	person_event SPRITE_ROCKER, 28, 3, SPRITEMOVEDATA_SPINCOUNTERCLOCKWISE, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_TRAINER, 2, TrainerGuitaristmClyde, EVENT_FAST_SHIP_PASSENGERS_WESTBOUND
