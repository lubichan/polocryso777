const_value set 2
	const YELLOWFORESTGATE_OFFICER
	const YELLOWFORESTGATE_NURSE
	const YELLOWFORESTGATE_CHANSEY
	const YELLOWFORESTGATE_CLERK

YellowForestGate_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

YellowForestGateOfficerScript:
	jumptextfaceplayer YellowForestGateOfficerText

YellowForestGateNurseScript:
	faceplayer
	opentext
	writetext YellowForestGateNurseText
	waitbutton
	closetext
	special Special_FadeBlackQuickly
	special Special_ReloadSpritesNoPalettes
	playmusic MUSIC_HEAL
	special HealParty
	pause 60
	special Special_FadeInQuickly
	special RestartMapMusic
	opentext
	writetext YellowForestGateNurseHealedText
	waitbutton
	closetext
	end

YellowForestGateChanseyScript:
	opentext
	writetext YellowForestGateChanseyText
	cry CHANSEY
	waitbutton
	closetext
	end

YellowForestGateClerkScript:
	opentext
	pokemart MARTTYPE_INFORMAL, MART_YELLOW_FOREST
	closetext
	end

YellowForestGateOfficerText:
	text "There are rare"
	line "#mon in"
	cont "Yellow Forest!"
	
	para "Don't forget to"
	line "bring # Balls!"

	para "That guy is sell-"
	line "ing some spares."
	done

YellowForestGateNurseText:
	text "Your #mon look"
	line "worn out."

	para "Let me heal them"
	line "for you."
	done

YellowForestGateNurseHealedText:
	text "All done!"

	para "Your #mon"
	line "are fully healed."
	done

YellowForestGateChanseyText:
	text "Chansey: Sii!"
	done

YellowForestGate_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 4
	warp_def $0, $4, 1, YELLOW_FOREST
	warp_def $0, $5, 2, YELLOW_FOREST
	warp_def $7, $4, 1, ROUTE_48
	warp_def $7, $5, 1, ROUTE_48

.XYTriggers:
	db 0

.Signposts:
	db 0

.PersonEvents:
	db 4
	person_event SPRITE_OFFICER, 4, 0, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, YellowForestGateOfficerScript, -1
	person_event SPRITE_NURSE, 4, 9, SPRITEMOVEDATA_STANDING_LEFT, 1, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, YellowForestGateNurseScript, -1
	person_event SPRITE_CHANSEY, 3, 9, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, YellowForestGateChanseyScript, -1
	person_event SPRITE_CLERK, 4, 6, SPRITEMOVEDATA_WALK_UP_DOWN, 1, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, YellowForestGateClerkScript, -1
