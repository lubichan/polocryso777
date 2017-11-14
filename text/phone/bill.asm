BillPhoneMornGreetingText: ; 0x1b4427
	text "Good morning!"

	para "This is the #-"
	line "mon Storage System"

	para "Administration"
	line "Service."
	done

BillPhoneDayGreetingText: ; 0x1b4470
	text "Good day!"

	para "This is the #-"
	line "mon Storage System"

	para "Administration"
	line "Service."
	done

BillPhoneNiteGreetingText: ; 0x1b44b5
	text "Good evening!"

	para "This is the #-"
	line "mon Storage System"

	para "Administration"
	line "Service."
	done

BillPhoneGenericText: ; 0x1b44fe
	text "Who's calling?"

	para "<PLAY_G>, is it?"
	line "Hang on a sec…"

	para $56
	line $56
	done

BillPhoneNotFullText: ; 0x1b452a
	text "Thanks for"
	line "waiting!"

	para "<PLAY_G>, your Box"
	line "has room for @"
	text_from_ram StringBuffer3
	text ""
	cont "more #mon."

	para "Get out there and"
	line "fill it up!"
	done

BillPhoneNearlyFullText: ; 0x1b4587
	text "Thanks for"
	line "waiting!"

	para "<PLAY_G>, your Box"
	line "has room for only"
	cont "@"
	text_from_ram StringBuffer3
	text " more #mon."

	para "Maybe you should"
	line "switch your Box."
	done

BillPhoneFullText: ; 0x1b45ed
	text "Thanks for"
	line "waiting!"

	para "<PLAY_G>, your Box"
	line "is full!"

	para "You'll have to"
	line "switch Boxes if"

	para "you want to catch"
	line "more #mon."
	prompt

BillPhoneNewlyFullText: ; 0x1b4652
	text "Hi, <PLAY_G>?"
	line "It's me, Bill!"

	para "Thanks for using"
	line "my Storage System."

	para "That last #mon"
	line "you sent filled"
	cont "your Box up."

	para "You'll have to"
	line "switch Boxes if"

	para "you want to catch"
	line "more #mon."
	prompt

BillWholePCFullText:
	text "Wow, you filled"
	line "a whole server."

	para "You'll have to"
	line "release #mon"
	cont "to make space."
	done

BillWantNextBox:
	text "I'll swap to the"
	line "next Box with"
	cont "space for you."

	para "However…"
	prompt

BillThankYouText:
	text "Thank you for"
	line "using the PC"
	cont "Storage System!"
	done

BillCallMeToSwitch:
	text "Okay, I'll leave"
	line "it alone."

	para "Call me back if"
	line "you change your"
	cont "mind."

	para "You can also"
	line "change boxes your-"
	cont "self via PC."
	prompt
