const_value set 2
	const MOUNTMORTAR1FOUTSIDE_COOLTRAINER_F1
	const MOUNTMORTAR1FOUTSIDE_COOLTRAINER_F2
	const MOUNTMORTAR1FOUTSIDE_POKE_BALL1
	const MOUNTMORTAR1FOUTSIDE_POKE_BALL2

MountMortar1FOutside_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

TrainerBattleGirlSubaru:
	trainer EVENT_BEAT_BATTLE_GIRL_SUBARU, BATTLE_GIRL, SUBARU, BattleGirlSubaruSeenText, BattleGirlSubaruBeatenText, 0, BattleGirlSubaruScript

BattleGirlSubaruScript:
	end_if_just_battled
	opentext
	writetext BattleGirlSubaruAfterText
	waitbutton
	closetext
	end

TrainerBattleGirlDiane:
	trainer EVENT_BEAT_BATTLE_GIRL_DIANE, BATTLE_GIRL, DIANE, BattleGirlDianeSeenText, BattleGirlDianeBeatenText, 0, BattleGirlDianeScript

BattleGirlDianeScript:
	end_if_just_battled
	opentext
	writetext BattleGirlDianeAfterText
	waitbutton
	closetext
	end

MountMortar1FOutsideEther:
	itemball ETHER

MountMortar1FOutsideRevive:
	itemball REVIVE

MountMortar1FOutsideHiddenHyperPotion:
	dwb EVENT_MOUNT_MORTAR_1F_OUTSIDE_HIDDEN_HYPER_POTION, HYPER_POTION

BattleGirlSubaruSeenText:
	text "Kiyaah!"
	done

BattleGirlSubaruBeatenText:
	text "Ooof!"
	done

BattleGirlSubaruAfterText:
	text "All this climbing"
	line "and I'm still not"
	cont "the toughest…"
	done

BattleGirlDianeSeenText:
	text "Hii-yaah!"
	done

BattleGirlDianeBeatenText:
	text "This round goes"
	line "to you."
	done

BattleGirlDianeAfterText:
	text "I bow to you."
	done

MountMortar1FOutside_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 9
	warp_def $21, $3, 3, ROUTE_42
	warp_def $21, $11, 4, ROUTE_42
	warp_def $21, $25, 5, ROUTE_42
	warp_def $5, $11, 1, MOUNT_MORTAR_2F_INSIDE
	warp_def $15, $b, 1, MOUNT_MORTAR_1F_INSIDE
	warp_def $15, $1d, 2, MOUNT_MORTAR_1F_INSIDE
	warp_def $1d, $11, 2, MOUNT_MORTAR_B1F
	warp_def $d, $7, 3, MOUNT_MORTAR_1F_INSIDE
	warp_def $d, $21, 4, MOUNT_MORTAR_1F_INSIDE

.XYTriggers:
	db 0

.Signposts:
	db 1
	signpost 22, 25, SIGNPOST_ITEM, MountMortar1FOutsideHiddenHyperPotion

.PersonEvents:
	db 4
	person_event SPRITE_COOLTRAINER_F, 15, 9, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_TRAINER, 3, TrainerBattleGirlSubaru, -1
	person_event SPRITE_COOLTRAINER_F, 11, 30, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_TRAINER, 4, TrainerBattleGirlDiane, -1
	person_event SPRITE_POKE_BALL, 15, 13, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, MountMortar1FOutsideEther, EVENT_MOUNT_MORTAR_1F_OUTSIDE_ETHER
	person_event SPRITE_POKE_BALL, 18, 31, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, MountMortar1FOutsideRevive, EVENT_MOUNT_MORTAR_1F_OUTSIDE_REVIVE
