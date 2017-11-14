const_value set 2
	const CELADONGAMECORNERPRIZEROOM_GENTLEMAN
	const CELADONGAMECORNERPRIZEROOM_PHARMACIST

CeladonGameCornerPrizeRoom_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

CeladonGameCornerPrizeRoomGentlemanScript:
	jumptextfaceplayer CeladonGameCornerPrizeRoomGentlemanText

CeladonGameCornerPrizeRoomPharmacistScript:
	jumptextfaceplayer CeladonGameCornerPrizeRoomPharmacistText

CeladonGameCornerTMVendor:
	faceplayer
	opentext
	writetext CeladonPrizeRoom_PrizeVendorIntroText
	waitbutton
	checkitem COIN_CASE
	iffalse CeladonPrizeRoom_NoCoinCase
	writetext CeladonPrizeRoom_AskWhichPrizeText
CeladonPrizeRoom_tmcounterloop:
	special Special_DisplayCoinCaseBalance
	loadmenudata CeladonPrizeRoom_TMMenuDataHeader
	verticalmenu
	closewindow
	if_equal $1, .doubleteam
	if_equal $2, .toxic
	if_equal $3, .hyperbeam
	jump CeladonPrizeRoom_cancel

.doubleteam
	checkitem TM_DOUBLE_TEAM
	iftrue CeladonPrizeRoom_alreadyhavetm
	checkcoins 1500
	if_equal $2, CeladonPrizeRoom_notenoughcoins
	itemtotext TM_DOUBLE_TEAM, $0
	scall CeladonPrizeRoom_askbuy
	iffalse CeladonPrizeRoom_cancel
	giveitem TM_DOUBLE_TEAM
	iffalse CeladonPrizeRoom_notenoughroom
	takecoins 1500
	jump CeladonPrizeRoom_purchased

.toxic
	checkitem TM_TOXIC
	iftrue CeladonPrizeRoom_alreadyhavetm
	checkcoins 3500
	if_equal $2, CeladonPrizeRoom_notenoughcoins
	itemtotext TM_TOXIC, $0
	scall CeladonPrizeRoom_askbuy
	iffalse CeladonPrizeRoom_cancel
	giveitem TM_TOXIC
	iffalse CeladonPrizeRoom_notenoughroom
	takecoins 3500
	jump CeladonPrizeRoom_purchased

.hyperbeam
	checkitem TM_HYPER_BEAM
	iftrue CeladonPrizeRoom_alreadyhavetm
	checkcoins 7500
	if_equal $2, CeladonPrizeRoom_notenoughcoins
	itemtotext TM_HYPER_BEAM, $0
	scall CeladonPrizeRoom_askbuy
	iffalse CeladonPrizeRoom_cancel
	giveitem TM_HYPER_BEAM
	iffalse CeladonPrizeRoom_notenoughroom
	takecoins 7500
	jump CeladonPrizeRoom_purchased

CeladonPrizeRoom_askbuy:
	writetext CeladonPrizeRoom_ConfirmPurchaseText
	yesorno
	end

CeladonPrizeRoom_purchased:
	waitsfx
	playsound SFX_TRANSACTION
	writetext CeladonPrizeRoom_HereYouGoText
	waitbutton
	jump CeladonPrizeRoom_tmcounterloop

CeladonPrizeRoom_alreadyhavetm:
	writetext CeladonPrizeRoom_AlreadyHaveTMText
	waitbutton
	jump CeladonPrizeRoom_tmcounterloop

CeladonPrizeRoom_notenoughcoins:
	writetext CeladonPrizeRoom_NotEnoughCoinsText
	waitbutton
	closetext
	end

CeladonPrizeRoom_notenoughroom:
	writetext CeladonPrizeRoom_NotEnoughRoomText
	waitbutton
	closetext
	end

CeladonPrizeRoom_cancel:
	writetext CeladonPrizeRoom_ComeAgainText
	waitbutton
	closetext
	end

CeladonPrizeRoom_NoCoinCase:
	writetext CeladonPrizeRoom_NoCoinCaseText
	waitbutton
	closetext
	end


CeladonPrizeRoom_TMMenuDataHeader:
	db $40 ; flags
	db 02, 00 ; start coords
	db 11, 15 ; end coords
	dw .MenuData2
	db 1 ; default option

.MenuData2:
	db $80 ; flags
	db 4 ; items
	db "TM32    1500@"
	db "TM06    3500@"
	db "TM15    7500@"
	db "Cancel@"


CeladonGameCornerPokemonVendor:
	faceplayer
	opentext
	writetext CeladonPrizeRoom_PrizeVendorIntroText
	waitbutton
	checkitem COIN_CASE
	iffalse CeladonPrizeRoom_NoCoinCase
.loop
	writetext CeladonPrizeRoom_AskWhichPrizeText
	special Special_DisplayCoinCaseBalance
	loadmenudata .MenuDataHeader
	verticalmenu
	closewindow
	if_equal $1, .mr__mime
	if_equal $2, .eevee
	if_equal $3, .porygon
	jump CeladonPrizeRoom_cancel

.mr__mime
	checkcoins 3333
	if_equal $2, CeladonPrizeRoom_notenoughcoins
	checkcode VAR_PARTYCOUNT
	if_equal $6, CeladonPrizeRoom_notenoughroom
	pokenamemem MR__MIME, $0
	scall CeladonPrizeRoom_askbuy
	iffalse CeladonPrizeRoom_cancel
	waitsfx
	playsound SFX_TRANSACTION
	writetext CeladonPrizeRoom_HereYouGoText
	waitbutton
	writebyte MR__MIME
	special Special_GameCornerPrizeMonCheckDex
	givepoke MR__MIME, 10
	takecoins 3333
	jump .loop

.eevee
	checkcoins 6666
	if_equal $2, CeladonPrizeRoom_notenoughcoins
	checkcode VAR_PARTYCOUNT
	if_equal $6, CeladonPrizeRoom_notenoughroom
	pokenamemem EEVEE, $0
	scall CeladonPrizeRoom_askbuy
	iffalse CeladonPrizeRoom_cancel
	waitsfx
	playsound SFX_TRANSACTION
	writetext CeladonPrizeRoom_HereYouGoText
	waitbutton
	writebyte EEVEE
	special Special_GameCornerPrizeMonCheckDex
	givepoke EEVEE, 20
	takecoins 6666
	jump .loop

.porygon
	checkcoins 9999
	if_equal $2, CeladonPrizeRoom_notenoughcoins
	checkcode VAR_PARTYCOUNT
	if_equal $6, CeladonPrizeRoom_notenoughroom
	pokenamemem PORYGON, $0
	scall CeladonPrizeRoom_askbuy
	iffalse CeladonPrizeRoom_cancel
	waitsfx
	playsound SFX_TRANSACTION
	writetext CeladonPrizeRoom_HereYouGoText
	waitbutton
	writebyte PORYGON
	special Special_GameCornerPrizeMonCheckDex
	givepoke PORYGON, 30
	takecoins 9999
	jump .loop


.MenuDataHeader:
	db $40 ; flags
	db 02, 00 ; start coords
	db 11, 17 ; end coords
	dw .MenuData2
	db 1 ; default option

.MenuData2:
	db $80 ; flags
	db 4 ; items
	db "Mr. Mime   3333@"
	db "Eevee      6666@"
	db "Porygon    9999@"
	db "Cancel@"


CeladonGameCornerPrizeRoomGentlemanText:
	text "I wanted Porygon,"
	line "but I was short by"
	cont "100 coins…"
	done

CeladonGameCornerPrizeRoomPharmacistText:
	text "Whew…"

	para "I've got to stay"
	line "calm and cool…"

	para "I can't lose my"
	line "cool, or I'll lose"
	cont "all my money…"
	done

CeladonPrizeRoom_PrizeVendorIntroText:
	text "Welcome!"

	para "We exchange your"
	line "coins for fabulous"
	cont "prizes!"
	done

CeladonPrizeRoom_AskWhichPrizeText:
	text "Which prize would"
	line "you like?"
	done

CeladonPrizeRoom_ConfirmPurchaseText:
	text "OK, so you wanted"
	line "a @"
	text_from_ram StringBuffer3
	text "?"
	done

CeladonPrizeRoom_HereYouGoText:
	text "Here you go!"
	done

CeladonPrizeRoom_AlreadyHaveTMText:
	text "You already have"
	line "that TM."
	done

CeladonPrizeRoom_NotEnoughCoinsText:
	text "You don't have"
	line "enough coins."
	done

CeladonPrizeRoom_NotEnoughRoomText:
	text "You have no room"
	line "for it."
	done

CeladonPrizeRoom_ComeAgainText:
	text "Oh. Please come"
	line "back with coins!"
	done

CeladonPrizeRoom_NoCoinCaseText:
	text "Oh? You don't have"
	line "a Coin Case."
	done

CeladonGameCornerPrizeRoom_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 2
	warp_def $5, $2, 7, CELADON_CITY
	warp_def $5, $3, 7, CELADON_CITY

.XYTriggers:
	db 0

.Signposts:
	db 2
	signpost 1, 2, SIGNPOST_READ, CeladonGameCornerTMVendor
	signpost 1, 4, SIGNPOST_READ, CeladonGameCornerPokemonVendor

.PersonEvents:
	db 2
	person_event SPRITE_GENTLEMAN, 2, 0, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, CeladonGameCornerPrizeRoomGentlemanScript, -1
	person_event SPRITE_PHARMACIST, 4, 4, SPRITEMOVEDATA_WALK_UP_DOWN, 1, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_SCRIPT, 0, CeladonGameCornerPrizeRoomPharmacistScript, -1
