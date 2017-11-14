CheckUniqueDVTrainerPokemon:
; return z if dvs are unique
	ld hl, UniqueDVTrainerPokemon
.loop
	ld a, [hli] ; TrainerClass
	cp -1
	jr z, .notunique
	ld b, a
	ld a, [OtherTrainerClass]
	cp b
	jr nz, .inc5andloop
	ld a, [hli] ; TrainerID
	ld b, a
	ld a, [OtherTrainerID]
	cp b
	jr nz, .inc4andloop
	ld a, [hli] ; PartySpecies
	ld b, a
	ld a, [CurPartySpecies]
	cp b
	jr nz, .inc3andloop
	ld a, [hli] ; Level
	ld b, a
	ld a, [CurPartyLevel]
	cp b
	jr nz, .inc2andloop
.unique
	ld a, [hli]
	ld b, a
	ld a, [hli]
	ld c, a
	xor a
	and a
	ret
.inc5andloop
	inc hl
.inc4andloop
	inc hl
.inc3andloop
	inc hl
.inc2andloop
	inc hl
	inc hl
	jp .loop
.notunique
	ld a, 1
	and a
	ret

UniqueDVTrainerPokemon:
	; TrainerClass, TrainerID, PartySpecies, Level, AtkDefDV, SpdSpcDV

	; Shiny
	db BEAUTY, CHARLOTTE, BELLOSSOM, 20, ATKDEFDV_SHINY_FEMALE, SPDSPCDV_SHINY
	db MYSTICALMAN, EUSINE, ELECTRODE, 28, ATKDEFDV_SHINY, SPDSPCDV_SHINY
	db LAWRENCE, 1, CHARIZARD, 66, ATKDEFDV_SHINY, SPDSPCDV_SHINY
	db CHAMPION, LANCE, DRAGONITE, 59, ATKDEFDV_SHINY, SPDSPCDV_SHINY
	db CHAMPION, LANCE2, DRAGONITE, 80, ATKDEFDV_SHINY, SPDSPCDV_SHINY
	db RED, 1, GYARADOS, 87, ATKDEFDV_SHINY, SPDSPCDV_SHINY
	db BREEDER, THERESA, ELEKID, 14, ATKDEFDV_SHINY, SPDSPCDV_SHINY
	db BREEDER, CARLENE, DITTO, 55, ATKDEFDV_SHINY, SPDSPCDV_SHINY

	; Hidden Power types
	db JASMINE, 2, MAGNEZONE, 72, ATKDEFDV_TIMID_HP_GRASS, $FF
	db JASMINE, 2, MAGNEZONE, 73, ATKDEFDV_MODEST_HP_FIRE, $FF
	db PRYCE, 2, GLACEON, 71, ATKDEFDV_MODEST_HP_GROUND, $FF
	db WILL, 2, ALAKAZAM, 69, ATKDEFDV_MODEST_HP_FIGHTING, $FF
	db LT_SURGE, 2, JOLTEON, 73, ATKDEFDV_HP_ICE, $FF
	db LT_SURGE, 2, MAGNEZONE, 72, ATKDEFDV_HP_FIRE, $FF
	db ERIKA, 2, BELLOSSOM, 75, ATKDEFDV_HP_ROCK, $FF
	db LEAF, 1, MOLTRES, 98, ATKDEFDV_TIMID_HP_GRASS, $FF

	; Natures
	db CHAMPION, LANCE2, GYARADOS, 75, ATKDEVDV_ADAMANT, $FF
	db CHAMPION, LANCE2, AERODACTYL, 76, ATKDEVDV_ADAMANT, $FF
	db CHAMPION, LANCE2, CHARIZARD, 75, ATKDEVDV_ADAMANT, $FF
	db RED, 1, ESPEON, 84, ATKDEVDV_MODEST, $FF
	db RED, 1, SNORLAX, 85, ATKDEVDV_ADAMANT, $FF
	db RED, 1, CHARIZARD, 88, ATKDEVDV_ADAMANT, $FF
	db LEAF, 1, LAPRAS, 96, ATKDEVDV_MODEST, $FF
	db LEAF, 1, SYLVEON, 95, ATKDEVDV_MODEST, $FF
	db LEAF, 1, AERODACTYL, 98, ATKDEVDV_ADAMANT, $FF
	db LEAF, 1, MEW, 99, ATKDEVDV_MODEST, $FF

	; Top percentage Rattata
	db YOUNGSTER, JOEY1, RATTATA, 5, $FF, $FF
	db YOUNGSTER, JOEY2, RATTATA, 15, $FF, $FF
	db YOUNGSTER, JOEY3, RATICATE, 25, $FF, $FF
	db YOUNGSTER, JOEY4, RATICATE, 30, $FF, $FF
	db YOUNGSTER, JOEY5, RATICATE, 40, $FF, $FF

	db -1 ; end
