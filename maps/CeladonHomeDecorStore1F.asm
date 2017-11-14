const_value set 2
	const CELADONHOMEDECORSTORE1F_RECEPTIONIST
	const CELADONHOMEDECORSTORE1F_CLERK
	const CELADONHOMEDECORSTORE1F_GRIMER_DOLL
	const CELADONHOMEDECORSTORE1F_MACHOP_DOLL
	const CELADONHOMEDECORSTORE1F_STARYU_DOLL
	const CELADONHOMEDECORSTORE1F_COOLTRAINER_F

CeladonHomeDecorStore1F_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

CeladonHomeDecorStore1FVendingMachine:
	opentext
	writetext CeladonHomeDecorStore1FVendingText
.Start:
	special PlaceMoneyTopRight
	loadmenudata .MenuData
	verticalmenu
	closewindow
	if_equal $1, .FreshWater
	if_equal $2, .SodaPop
	if_equal $3, .Lemonade
	closetext
	end

.FreshWater:
	checkmoney $0, 200
	if_equal $2, .NotEnoughMoney
	giveitem FRESH_WATER
	iffalse .NotEnoughSpace
	takemoney $0, 200
	itemtotext FRESH_WATER, $0
	jump .VendItem

.SodaPop:
	checkmoney $0, 300
	if_equal $2, .NotEnoughMoney
	giveitem SODA_POP
	iffalse .NotEnoughSpace
	takemoney $0, 300
	itemtotext SODA_POP, $0
	jump .VendItem

.Lemonade:
	checkmoney $0, 350
	if_equal $2, .NotEnoughMoney
	giveitem LEMONADE
	iffalse .NotEnoughSpace
	takemoney $0, 350
	itemtotext LEMONADE, $0
	jump .VendItem

.VendItem:
	pause 10
	playsound SFX_ENTER_DOOR
	writetext CeladonHomeDecorStore1FClangText
	buttonsound
	itemnotify
	jump .Start

.NotEnoughMoney:
	writetext CeladonHomeDecorStore1FVendingNoMoneyText
	waitbutton
	jump .Start

.NotEnoughSpace:
	writetext CeladonHomeDecorStore1FVendingNoSpaceText
	waitbutton
	jump .Start

.MenuData:
	db $40 ; flags
	db 02, 00 ; start coords
	db 11, 19 ; end coords
	dw .MenuData2
	db 1 ; default option

.MenuData2:
	db $80 ; flags
	db 4 ; items
	db "Fresh Water  ¥200@"
	db "Soda Pop     ¥300@"
	db "Lemonade     ¥350@"
	db "Cancel@"

CeladonHomeDecorStore1FClerkScript:
	faceplayer
	opentext
	writetext CeladonHomeDecorStore1FClerkText
.Start:
	special PlaceMoneyTopRight
	loadmenudata .MenuData
	verticalmenu
	closewindow
	if_equal $1, .GrimerDoll
	if_equal $2, .MachopDoll
	if_equal $3, .StaryuDoll
	closetext
	end

.GrimerDoll:
	checkmoney $0, 4800
	if_equal $2, .NotEnoughMoney
	checkevent EVENT_DECO_GRIMER_DOLL
	iftrue .AlreadyBought
	takemoney $0, 4800
	setevent EVENT_DECO_GRIMER_DOLL
	writetext BoughtGrimerDollText
	playsound SFX_TRANSACTION
	waitbutton
	writetext GrimerDollSentText
	waitbutton
	jump .Start

.MachopDoll:
	checkmoney $0, 6400
	if_equal $2, .NotEnoughMoney
	checkevent EVENT_DECO_MACHOP_DOLL
	iftrue .AlreadyBought
	takemoney $0, 6400
	setevent EVENT_DECO_MACHOP_DOLL
	writetext BoughtMachopDollText
	playsound SFX_TRANSACTION
	waitbutton
	writetext MachopDollSentText
	waitbutton
	jump .Start

.StaryuDoll:
	checkmoney $0, 8000
	if_equal $2, .NotEnoughMoney
	checkevent EVENT_DECO_STARYU_DOLL
	iftrue .AlreadyBought
	takemoney $0, 8000
	setevent EVENT_DECO_STARYU_DOLL
	writetext BoughtStaryuDollText
	playsound SFX_TRANSACTION
	waitbutton
	writetext StaryuDollSentText
	waitbutton
	jump .Start

.NotEnoughMoney:
	writetext CeladonHomeDecorStore1FNoMoneyText
	waitbutton
	jump .Start

.AlreadyBought:
	writetext CeladonHomeDecorStore1FAlreadyBoughtText
	waitbutton
	jump .Start

.MenuData:
	db $40 ; flags
	db 02, 00 ; start coords
	db 11, 19 ; end coords
	dw .MenuData2
	db 1 ; default option

.MenuData2:
	db $80 ; flags
	db 4 ; items
	db "Grimer      ¥4800@"
	db "Machop      ¥6400@"
	db "Staryu      ¥8000@"
	db "Cancel@"

CeladonHomeDecorStore1FReceptionistScript:
	jumptextfaceplayer CeladonHomeDecorStore1FReceptionistText

CeladonHomeDecorStore1FGrimerDollScript:
	jumptext CeladonHomeDecorStore1FGrimerDollText

CeladonHomeDecorStore1FMachopDollScript:
	jumptext CeladonHomeDecorStore1FMachopDollText

CeladonHomeDecorStore1FStaryuDollScript:
	jumptext CeladonHomeDecorStore1FStaryuDollText

CeladonHomeDecorStore1FCooltrainerfScript:
	jumptextfaceplayer CeladonHomeDecorStore1FCooltrainerfText

CeladonHomeDecorStore1FDirectory:
	jumptext CeladonHomeDecorStore1FDirectoryText

CeladonHomeDecorStore1FReceptionistText:
	text "Hello! Welcome to"
	line "Celadon Dept."
	cont "Store Home Decor!"

	para "The directory is"
	line "on the wall."
	done

CeladonHomeDecorStore1FClerkText:
	text "Welcome! Would you"
	line "like a doll as a"
	cont "Celadon souvenir?"
	done

BoughtGrimerDollText:
	text "<PLAYER> bought"
	line "Grimer Doll."
	done

GrimerDollSentText:
	text "Grimer Doll"
	line "was sent home."
	done

BoughtMachopDollText:
	text "<PLAYER> bought"
	line "Machop Doll."
	done

MachopDollSentText:
	text "Machop Doll"
	line "was sent home."
	done

BoughtStaryuDollText:
	text "<PLAYER> bought"
	line "Staryu Doll."
	done

StaryuDollSentText:
	text "Staryu Doll"
	line "was sent home."
	done

CeladonHomeDecorStore1FNoMoneyText:
	text "You can't afford"
	line "that!"
	done

CeladonHomeDecorStore1FAlreadyBoughtText:
	text "You already have"
	line "that!"
	done

CeladonHomeDecorStore1FGrimerDollText:
	text "It's a quirky"
	line "Grimer doll!"
	done

CeladonHomeDecorStore1FMachopDollText:
	text "It's a tough"
	line "Machop doll!"
	done

CeladonHomeDecorStore1FStaryuDollText:
	text "It's a pretty"
	line "Staryu doll!"
	done

CeladonHomeDecorStore1FCooltrainerfText:
	text "This new wing"
	line "feels more upscale"

	para "than the main"
	line "Dept.Store."
	done

CeladonHomeDecorStore1FVendingText:
	text "A vending machine!"
	line "Here's the menu."
	done

CeladonHomeDecorStore1FClangText:
	text "Clang!"

	para "@"
	text_from_ram StringBuffer3
	text ""
	line "popped out."
	done

CeladonHomeDecorStore1FVendingNoMoneyText:
	text "Oops, not enough"
	line "money…"
	done

CeladonHomeDecorStore1FVendingNoSpaceText:
	text "There's no more"
	line "room for stuff…"
	done

CeladonHomeDecorStore1FDirectoryText:
	text "1F: Lobby"

	para "2F: Beds"

	para "3F: Carpets"

	para "4F: Jumbo Dolls"
	done

CeladonHomeDecorStore1F_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 3
	warp_def $7, $3, 12, CELADON_CITY
	warp_def $7, $4, 12, CELADON_CITY
	warp_def $0, $9, 1, CELADON_HOME_DECOR_STORE_2F

.XYTriggers:
	db 0

.Signposts:
	db 3
	signpost 0, 8, SIGNPOST_READ, CeladonHomeDecorStore1FDirectory
	signpost 1, 0, SIGNPOST_UP, CeladonHomeDecorStore1FVendingMachine
	signpost 1, 1, SIGNPOST_UP, CeladonHomeDecorStore1FVendingMachine

.PersonEvents:
	db 6
	person_event SPRITE_RECEPTIONIST, 1, 4, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, CeladonHomeDecorStore1FReceptionistScript, -1
	person_event SPRITE_CLERK, 1, 5, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, CeladonHomeDecorStore1FClerkScript, -1
	person_event SPRITE_GRIMER, 5, 7, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, (1 << 3) | PAL_OW_PURPLE, PERSONTYPE_SCRIPT, 0, CeladonHomeDecorStore1FGrimerDollScript, -1
	person_event SPRITE_MACHOP, 5, 8, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, CeladonHomeDecorStore1FMachopDollScript, -1
	person_event SPRITE_STARYU, 5, 9, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_SCRIPT, 0, CeladonHomeDecorStore1FStaryuDollScript, -1
	person_event SPRITE_COOLTRAINER_F, 4, 0, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, CeladonHomeDecorStore1FCooltrainerfScript, -1
