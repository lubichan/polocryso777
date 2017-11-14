Trainers:

; All trainers follow a basic structure:
	; Name
		; String in format "TEXT@"
	; Type
		; 0: Level, species
		; 1: Level, species, moves
		; 2: Level, species, item
		; 3: Level, species, item, moves
	; Party
		; Up to six monsters following the data type
	; $ff


KayGroup:
; ================================
; ================

	; KAY
	db "Kay@"
	db 3 ; item + moves

	; party

	db 60, MEGANIUM, GOLD_BERRY
		db GIGA_DRAIN
		db PROTECT
		db LEECH_SEED
		db TOXIC

	db 60, TYPHLOSION, QUICK_CLAW
		db SUNNY_DAY
		db THUNDERPUNCH
		db FLAMETHROWER
		db SUBSTITUTE

	db 60, FERALIGATR, MIRACLEBERRY
		db SURF
		db CRUNCH
		db ICE_PUNCH
		db ROCK_SLIDE

	db 60, STEELIX, MINT_BERRY
		db IRON_TAIL
		db ROCK_SLIDE
		db EARTHQUAKE
		db REST

	db 60, UMBREON, LEFTOVERS
		db CONFUSE_RAY
		db CURSE
		db FEINT_ATTACK
		db PROTECT

	db 60, CLEFABLE, PINK_BOW
		db SING
		db MOONLIGHT
		db METRONOME
		db MOONBLAST

	db $ff ; end

; ================
; ================================


CalGroup:
; ================================
; ================

	; CAL
	db "Cal@"
	db 3 ; item + moves

	; party

	db 60, TYPHLOSION, QUICK_CLAW
		db SUNNY_DAY
		db THUNDERPUNCH
		db FLAMETHROWER
		db SUBSTITUTE

	db 60, MEGANIUM, GOLD_BERRY
		db GIGA_DRAIN
		db PROTECT
		db LEECH_SEED
		db TOXIC

	db 60, FERALIGATR, MIRACLEBERRY
		db SURF
		db CRUNCH
		db ICE_PUNCH
		db ROCK_SLIDE

	db 60, STEELIX, MINT_BERRY
		db IRON_TAIL
		db ROCK_SLIDE
		db EARTHQUAKE
		db REST

	db 60, UMBREON, LEFTOVERS
		db CONFUSE_RAY
		db CURSE
		db FEINT_ATTACK
		db PROTECT

	db 60, CLEFABLE, PINK_BOW
		db SING
		db MOONLIGHT
		db METRONOME
		db MOONBLAST

	db $ff ; end

; ================
; ================================


FalknerGroup:
; ================================
; ================

	; FALKNER
	db "Falkner@"
	db 3 ; item + moves

	; party

	db 10, PIDGEY, NO_ITEM
		db TACKLE
		db SAND_ATTACK
		db GUST
		db MUD_SLAP

	db 10, HOOTHOOT, NO_ITEM
		db TACKLE
		db GROWL
		db HYPNOSIS
		db MUD_SLAP

	db 13, PIDGEOTTO, MINT_BERRY
		db QUICK_ATTACK
		db SAND_ATTACK
		db GUST
		db MUD_SLAP

	db $ff ; end

; ================

	; FALKNER
	db "Falkner@"
	db 3 ; item + moves

	; party

	db 73, NOCTOWL, TWISTEDSPOON
		db AIR_SLASH
		db PSYCHIC_M
		db HYPNOSIS
		db DREAM_EATER

	db 70, GLISCOR, SCOPE_LENS
		db SWORDS_DANCE
		db EARTHQUAKE
		db X_SCISSOR
		db NIGHT_SLASH

	db 72, DODRIO, SILK_SCARF
		db DRILL_PECK
		db TRIPLE_KICK
		db PURSUIT
		db QUICK_ATTACK

	db 70, TOGEKISS, LEFTOVERS
		db ANCIENTPOWER
		db AIR_SLASH
		db NASTY_PLOT
		db SOFTBOILED

	db 72, HONCHKROW, BLACKGLASSES
		db DRILL_PECK
		db NIGHT_SLASH
		db PURSUIT
		db CONFUSE_RAY

	db 75, PIDGEOT, SHARP_BEAK
		db HURRICANE
		db TWISTER
		db STEEL_WING
		db WHIRLWIND

	db $ff ; end

; ================
; ================================


BugsyGroup:
; ================================
; ================

	; BUGSY
	db "Bugsy@"
	db 3 ; item + moves

	; party

	db 14, BUTTERFREE, NO_ITEM
		db TACKLE
		db POISONPOWDER
		db SLEEP_POWDER
		db CONFUSION

	db 14, BEEDRILL, NO_ITEM
		db POISON_STING
		db STRING_SHOT
		db HARDEN
		db FURY_ATTACK

	db 12, YANMA, NO_ITEM
		db TACKLE
		db FORESIGHT
		db QUICK_ATTACK
		db DOUBLE_TEAM

	db 17, SCYTHER, BERRY
		db QUICK_ATTACK
		db LEER
		db PURSUIT
		db FURY_CUTTER

	db $ff ; end

; ================

	; BUGSY
	db "Bugsy@"
	db 3 ; item + moves

	; party

	db 73, HERACROSS, BLACK_BELT
		db MEGAHORN
		db CROSS_CHOP
		db ROCK_SMASH
		db STONE_EDGE

	db 71, LEDIAN, KINGS_ROCK
		db REFLECT
		db LIGHT_SCREEN
		db BUG_BUZZ
		db ICE_PUNCH

	db 70, YANMEGA, QUICK_CLAW
		db BUG_BUZZ
		db AIR_SLASH
		db ANCIENTPOWER
		db PROTECT

	db 72, PARASECT, LEFTOVERS
		db SPORE
		db MORNING_SUN
		db SEED_BOMB
		db X_SCISSOR

	db 75, PINSIR, SCOPE_LENS
		db MEGAHORN
		db SWORDS_DANCE
		db SUBMISSION
		db EARTHQUAKE

	db 75, SCYTHER, EVIOLITE
		db SWORDS_DANCE
		db NIGHT_SLASH
		db X_SCISSOR
		db AERIAL_ACE

	db $ff ; end

; ================
; ================================


WhitneyGroup:
; ================================
; ================

	; WHITNEY
	db "Whitney@"
	db 3 ; item + moves

	; party

	db 18, CLEFAIRY, NO_ITEM
		db METRONOME
		db DISARM_VOICE
		db DOUBLE_SLAP
		db ATTRACT

	db 19, TEDDIURSA, NO_ITEM
		db SCRATCH
		db ATTRACT
		db LICK
		db FEINT_ATTACK

	db 18, MUNCHLAX, NO_ITEM
		db ATTRACT
		db METRONOME
		db DEFENSE_CURL
		db ROLLOUT

	db 17, JIGGLYPUFF, NO_ITEM
		db SING
		db DIZZY_PUNCH
		db ATTRACT
		db ROLLOUT

	db 20, MILTANK, MIRACLEBERRY
		db DEFENSE_CURL
		db STOMP
		db MILK_DRINK
		db ROLLOUT

	db $ff ; end

; ================

	; WHITNEY
	db "Whitney@"
	db 3 ; item + moves

	; party

	db 72, CLEFABLE, PINK_BOW
		db CALM_MIND
		db MOONBLAST
		db SOFTBOILED
		db THUNDER_WAVE

	db 70, URSARING, BLACK_BELT
		db SWORDS_DANCE
		db CROSS_CHOP
		db CRUNCH
		db PLAY_ROUGH

	db 71, GIRAFARIG, TWISTEDSPOON
		db NASTY_PLOT
		db PSYCHIC_M
		db HYPER_VOICE
		db SHADOW_BALL

	db 72, WIGGLYTUFF, LEFTOVERS
		db FOCUS_BLAST
		db HYPER_VOICE
		db DAZZLINGLEAM
		db ICE_BEAM

	db 74, TAUROS, SILK_SCARF
		db BULK_UP
		db EARTHQUAKE
		db STRENGTH
		db IRON_TAIL

	db 75, MILTANK, BRIGHTPOWDER
		db DEFENSE_CURL
		db ROLLOUT
		db MILK_DRINK
		db BODY_SLAM

	db $ff ; end

; ================
; ================================


MortyGroup:
; ================================
; ================

	; MORTY
	db "Morty@"
	db 3 ; item + moves

	; party

	db 21, GASTLY, NO_ITEM
		db LICK
		db CURSE
		db NIGHT_SHADE
		db CONFUSE_RAY

	db 21, HAUNTER, NO_ITEM
		db HYPNOSIS
		db CURSE
		db NIGHT_SHADE
		db SHADOW_BALL

	db 23, NOCTOWL, NO_ITEM
		db HYPNOSIS
		db PECK
		db CONFUSION
		db SHADOW_BALL

	db 23, MISDREAVUS, NO_ITEM
		db ASTONISH
		db CONFUSE_RAY
		db NASTY_PLOT
		db SHADOW_BALL

	db 25, GENGAR, GOLD_BERRY
		db HYPNOSIS
		db MEAN_LOOK
		db SHADOW_CLAW
		db DREAM_EATER

	db 23, HAUNTER, NO_ITEM
		db HYPNOSIS
		db DISABLE
		db CONFUSE_RAY
		db SHADOW_BALL

	db $ff ; end

; ================

	; MORTY
	db "Morty@"
	db 3 ; item + moves

	; party

	db 72, GENGAR, LEFTOVERS
		db WILL_O_WISP
		db SHADOW_BALL
		db FOCUS_BLAST
		db SUBSTITUTE

	db 70, NINETALES, CHARCOAL
		db NASTY_PLOT
		db SHADOW_BALL
		db FLAMETHROWER
		db WILL_O_WISP

	db 71, MAROWAK, THICK_CLUB
		db BONEMERANG
		db STONE_EDGE
		db ICE_PUNCH
		db SHADOW_CLAW

	db 73, MISMAGIUS, PINK_BOW
		db DAZZLINGLEAM
		db SHADOW_BALL
		db NASTY_PLOT
		db THUNDERBOLT

	db 74, HAUNTER, EVIOLITE
		db SHADOW_BALL
		db SLUDGE_BOMB
		db DESTINY_BOND
		db PAIN_SPLIT

	db 75, GENGAR, SPELL_TAG
		db NASTY_PLOT
		db SHADOW_BALL
		db THUNDERBOLT
		db DESTINY_BOND

	db $ff ; end

; ================
; ================================


ChuckGroup:
; ================================
; ================

	; CHUCK
	db "Chuck@"
	db 3 ; item + moves

	; party

	db 28, MACHOKE, NO_ITEM
		db KARATE_CHOP
		db BULLET_PUNCH
		db BULK_UP
		db DYNAMICPUNCH

	db 29, PRIMEAPE, NO_ITEM
		db KARATE_CHOP
		db SEISMIC_TOSS
		db SCREECH
		db DYNAMICPUNCH

	db 27, HITMONCHAN, NO_ITEM
		db THUNDERPUNCH
		db ICE_PUNCH
		db FIRE_PUNCH
		db MACH_PUNCH

	db 27, HITMONLEE, NO_ITEM
		db LOCK_ON
		db BULK_UP
		db LOW_KICK
		db HI_JUMP_KICK

	db 27, HITMONTOP, NO_ITEM
		db BULK_UP
		db QUICK_ATTACK
		db TRIPLE_KICK
		db RAPID_SPIN

	db 30, POLIWRATH, GOLD_BERRY
		db LOCK_ON
		db HYPNOSIS
		db WATERFALL
		db DYNAMICPUNCH

	db $ff ; end

; ================

	; CHUCK
	db "Chuck@"
	db 3 ; item + moves

	; party

	db 73, MACHAMP, FOCUS_BAND
		db STONE_EDGE
		db CROSS_CHOP
		db ICE_PUNCH
		db BULLET_PUNCH

	db 71, PRIMEAPE, DRAGON_FANG
		db EARTHQUAKE
		db STONE_EDGE
		db OUTRAGE
		db CROSS_CHOP

	db 72, HITMONCHAN, NEVERMELTICE
		db THUNDERPUNCH
		db ICE_PUNCH
		db FIRE_PUNCH
		db MACH_PUNCH

	db 72, HITMONLEE, QUICK_CLAW
		db HI_JUMP_KICK
		db LOCK_ON
		db BULK_UP
		db REVERSAL

	db 72, HITMONTOP, KINGS_ROCK
		db RAPID_SPIN
		db TOXIC
		db SUBMISSION
		db TRIPLE_KICK

	db 75, POLIWRATH, LEFTOVERS
		db WATERFALL
		db BULK_UP
		db ICE_PUNCH
		db CROSS_CHOP

	db $ff ; end

; ================
; ================================


JasmineGroup:
; ================================
; ================

	; JASMINE
	db "Jasmine@"
	db 3 ; item + moves

	; party

	db 32, SKARMORY, NO_ITEM
		db SAND_ATTACK
		db DRILL_PECK
		db SPIKES
		db STEEL_WING

	db 29, MAGNEMITE, NO_ITEM
		db SUPERSONIC
		db SONIC_BOOM
		db THUNDER_WAVE
		db THUNDERBOLT

	db 31, FORRETRESS, NO_ITEM
		db SPIKES
		db FLASH_CANNON
		db DEFENSE_CURL
		db ROLLOUT

	db 30, MAGNETON, NO_ITEM
		db SUPERSONIC
		db THUNDER_WAVE
		db THUNDERBOLT
		db TRI_ATTACK

	db 32, SCIZOR, NO_ITEM
		db PURSUIT
		db AERIAL_ACE
		db METAL_CLAW
		db SLASH

	db 35, STEELIX, GOLD_BERRY
		db BODY_SLAM
		db SCREECH
		db ROCK_SLIDE
		db IRON_TAIL

	db $ff ; end

; ================

	; JASMINE
	db "Jasmine@"
	db 3 ; item + moves

	; party

	db 74, SKARMORY, LEFTOVERS
		db SPIKES
		db WHIRLWIND
		db DRILL_PECK
		db STEEL_WING

	db 72, MAGNEZONE, MIRACLE_SEED
		db THUNDERBOLT
		db HIDDEN_POWER ; Grass
		db FLASH_CANNON
		db EXPLOSION

	db 70, FORRETRESS, SOFT_SAND
		db EARTHQUAKE
		db RAPID_SPIN
		db EXPLOSION
		db SPIKES

	db 73, MAGNEZONE, CHARCOAL
		db THUNDERBOLT
		db HIDDEN_POWER ; Fire
		db FLASH_CANNON
		db EXPLOSION

	db 73, SCIZOR, METAL_COAT
		db SWORDS_DANCE
		db BULLET_PUNCH
		db PURSUIT
		db IRON_HEAD

	db 75, STEELIX, LEFTOVERS
		db EARTHQUAKE
		db ROCK_SLIDE
		db CRUNCH
		db IRON_HEAD

	db $ff ; end

; ================
; ================================


PryceGroup:
; ================================
; ================

	; PRYCE
	db "Pryce@"
	db 3 ; item + moves

	; party

	db 37, DEWGONG, MINT_BERRY
		db WATERFALL
		db REST
		db RAIN_DANCE
		db AURORA_BEAM

	db 36, PILOSWINE, NO_ITEM
		db MAGNITUDE
		db ICE_SHARD
		db ICICLE_CRASH
		db FURY_ATTACK

	db 36, SNEASEL, NO_ITEM
		db SWORDS_DANCE
		db ICICLE_CRASH
		db SCREECH
		db SLASH

	db 37, CLOYSTER, NO_ITEM
		db DEFENSE_CURL
		db SUPERSONIC
		db WATER_PULSE
		db AURORA_BEAM

	db 38, LAPRAS, NO_ITEM
		db SING
		db CONFUSE_RAY
		db ANCIENTPOWER
		db ICE_BEAM

	db 40, MAMOSWINE, GOLD_BERRY
		db MAGNITUDE
		db ANCIENTPOWER
		db AVALANCHE
		db FURY_ATTACK

	db $ff ; end

; ================

	; PRYCE
	db "Pryce@"
	db 3 ; item + moves

	; party

	db 73, DEWGONG, FOCUS_BAND
		db PROTECT
		db TOXIC
		db SURF
		db ICE_BEAM

	db 73, CLOYSTER, KINGS_ROCK
		db SPIKES
		db SURF
		db EXPLOSION
		db ICICLE_CRASH

	db 72, WEAVILE, KINGS_ROCK
		db SWORDS_DANCE
		db ICICLE_CRASH
		db SLASH
		db CRUNCH

	db 71, GLACEON, NEVERMELTICE
		db ICE_BEAM
		db HIDDEN_POWER ; Ground
		db BARRIER
		db BATON_PASS

	db 73, LAPRAS, LEFTOVERS
		db SING
		db TOXIC
		db ICE_BEAM
		db THUNDERBOLT

	db 75, MAMOSWINE, HARD_STONE
		db EARTHQUAKE
		db AVALANCHE
		db STONE_EDGE
		db ANCIENTPOWER

	db $ff ; end

; ================
; ================================


ClairGroup:
; ================================
; ================

	; CLAIR
	db "Clair@"
	db 3 ; item + moves

	; party

	db 41, GYARADOS, NO_ITEM
		db CRUNCH
		db TWISTER
		db DRAGONBREATH
		db AQUA_TAIL

	db 40, AMPHAROS, NO_ITEM
		db THUNDER_WAVE
		db CONFUSE_RAY
		db DRAGON_PULSE
		db LIGHT_SCREEN

	db 42, DRAGONAIR, NO_ITEM
		db THUNDER_WAVE
		db AQUA_TAIL
		db FLAMETHROWER
		db DRAGONBREATH

	db 42, DRAGONAIR, NO_ITEM
		db THUNDER_WAVE
		db AQUA_TAIL
		db THUNDERBOLT
		db DRAGONBREATH

	db 42, DRAGONAIR, NO_ITEM
		db THUNDER_WAVE
		db AQUA_TAIL
		db ICE_BEAM
		db DRAGONBREATH

	db 45, KINGDRA, GOLD_BERRY
		db SMOKESCREEN
		db HYPER_BEAM
		db DRAGON_PULSE
		db SURF

	db $ff ; end

; ================

	; CLAIR
	db "Clair@"
	db 3 ; item + moves

	; party

	db 74, DRAGONAIR, EVIOLITE
		db AQUA_TAIL
		db FLY
		db THUNDER_WAVE
		db SAFEGUARD

	db 72, GYARADOS, MIRACLEBERRY
		db DRAGON_DANCE
		db WATERFALL
		db FLY
		db EARTHQUAKE

	db 73, DRAGONITE, SILK_SCARF
		db OUTRAGE
		db EXTREMESPEED
		db FIRE_PUNCH
		db EARTHQUAKE

	db 73, DRAGONITE, LEFTOVERS
		db DRAGON_DANCE
		db DRAGON_CLAW
		db WATERFALL
		db HYPER_BEAM

	db 74, DRAGONAIR, DRAGON_FANG
		db DRAGON_DANCE
		db EXTREMESPEED
		db OUTRAGE
		db AQUA_TAIL

	db 75, KINGDRA, MINT_BERRY
		db DRAGON_DANCE
		db WATERFALL
		db OUTRAGE
		db REST

	db $ff ; end

; ================
; ================================


WillGroup:
; ================================
; ================

	; WILL
	db "Will@"
	db 3 ; item + moves

	; party

	db 47, XATU, TWISTEDSPOON
		db QUICK_ATTACK
		db CONFUSE_RAY
		db RECOVER
		db PSYCHIC_M

	db 48, JYNX, BRIGHTPOWDER
		db NASTY_PLOT
		db DRAIN_KISS
		db ICE_BEAM
		db PSYCHIC_M

	db 49, EXEGGUTOR, MIRACLE_SEED
		db REFLECT
		db LEECH_SEED
		db SEED_BOMB
		db PSYCHIC_M

	db 49, ALAKAZAM, MIRACLEBERRY
		db CALM_MIND
		db RECOVER
		db LIGHT_SCREEN
		db PSYCHIC_M

	db 48, SLOWBRO, GOLD_BERRY
		db SURF
		db CALM_MIND
		db BODY_SLAM
		db PSYCHIC_M

	db 50, XATU, LEFTOVERS
		db QUICK_ATTACK
		db CONFUSE_RAY
		db PSYCHIC_M
		db FUTURE_SIGHT

	db $ff ; end

; ================

	; WILL
	db "Will@"
	db 3 ; item + moves

	; party

	db 67, XATU, TWISTEDSPOON
		db AIR_SLASH
		db FUTURE_SIGHT
		db CONFUSE_RAY
		db PSYCHIC_M

	db 68, JYNX, BRIGHTPOWDER
		db NASTY_PLOT
		db DRAIN_KISS
		db ICE_BEAM
		db PSYCHIC_M

	db 68, EXEGGUTOR, MIRACLE_SEED
		db REFLECT
		db GIGA_DRAIN
		db SLEEP_POWDER
		db PSYCHIC_M

	db 69, ALAKAZAM, MIRACLEBERRY
		db HIDDEN_POWER ; Fighting
		db RECOVER
		db SHADOW_BALL
		db PSYCHIC_M

	db 69, SLOWBRO, WISE_GLASSES
		db SURF
		db PSYCHIC_M
		db THUNDER_WAVE
		db REST

	db 70, XATU, LEFTOVERS
		db QUICK_ATTACK
		db FUTURE_SIGHT
		db CONFUSE_RAY
		db PSYCHIC_M

	db $ff ; end

; ================
; ================================


KogaGroup:
; ================================
; ================

	; KOGA
	db "Koga@"
	db 3 ; item + moves

	; party

	db 49, ARIADOS, GOLD_BERRY
		db DOUBLE_TEAM
		db GLARE
		db BATON_PASS
		db GIGA_DRAIN

	db 49, VENOMOTH, SILVERPOWDER
		db SUPERSONIC
		db BUG_BUZZ
		db PSYCHIC_M
		db TOXIC

	db 51, FORRETRESS, SILK_SCARF
		db PROTECT
		db EXPLOSION
		db SPIKES
		db IRON_HEAD

	db 50, MUK, BRIGHTPOWDER
		db MINIMIZE
		db SCREECH
		db SLUDGE_BOMB
		db TOXIC

	db 50, WEEZING, MAGNET
		db WILL_O_WISP
		db TOXIC
		db SLUDGE_BOMB
		db EXPLOSION

	db 52, CROBAT, LEFTOVERS
		db DOUBLE_TEAM
		db POISON_JAB
		db SUPER_FANG
		db TOXIC

	db $ff ; end

; ================

	; KOGA
	db "Koga@"
	db 3 ; item + moves

	; party

	db 69, TENTACRUEL, WISE_GLASSES
		db SUBSTITUTE
		db ICE_BEAM
		db SURF
		db SLUDGE_BOMB

	db 71, FORRETRESS, SILK_SCARF
		db PROTECT
		db TOXIC
		db EXPLOSION
		db SPIKES

	db 69, ARBOK, SOFT_SAND
		db SLUDGE_BOMB
		db GLARE
		db EARTHQUAKE
		db SCREECH

	db 70, MUK, BRIGHTPOWDER
		db MINIMIZE
		db FIRE_BLAST
		db GUNK_SHOT
		db TOXIC

	db 71, WEEZING, MAGNET
		db WILL_O_WISP
		db THUNDER
		db SLUDGE_BOMB
		db EXPLOSION

	db 72, CROBAT, LEFTOVERS
		db SCREECH
		db TOXIC
		db CRUNCH
		db AERIAL_ACE

	db $ff ; end

; ================
; ================================


BrunoGroup:
; ================================
; ================

	; BRUNO
	db "Bruno@"
	db 3 ; item + moves

	; party

	db 50, HITMONTOP, QUICK_CLAW
		db PURSUIT
		db TRIPLE_KICK
		db DIG
		db PROTECT

	db 52, PINSIR, SILVERPOWDER
		db SWORDS_DANCE
		db VITAL_THROW
		db EARTHQUAKE
		db X_SCISSOR

	db 50, HITMONLEE, FOCUS_BAND
		db SWAGGER
		db DOUBLE_KICK
		db HI_JUMP_KICK
		db FORESIGHT

	db 50, HITMONCHAN, NEVERMELTICE
		db THUNDERPUNCH
		db ICE_PUNCH
		db POISON_JAB
		db MACH_PUNCH

	db 52, ONIX, HARD_STONE
		db BODY_SLAM
		db EARTHQUAKE
		db CRUNCH
		db ROCK_SLIDE

	db 54, MACHAMP, LEFTOVERS
		db ROCK_SLIDE
		db FORESIGHT
		db VITAL_THROW
		db CROSS_CHOP

	db $ff ; end

; ================

	; BRUNO
	db "Bruno@"
	db 3 ; item + moves

	; party

	db 70, HITMONTOP, QUICK_CLAW
		db BULK_UP
		db TRIPLE_KICK
		db COUNTER
		db HI_JUMP_KICK

	db 71, PINSIR, SILVERPOWDER
		db SWORDS_DANCE
		db VITAL_THROW
		db EARTHQUAKE
		db MEGAHORN

	db 70, HITMONLEE, FOCUS_BAND
		db BULK_UP
		db RETURN
		db HI_JUMP_KICK
		db REVERSAL

	db 70, HITMONCHAN, NEVERMELTICE
		db THUNDERPUNCH
		db ICE_PUNCH
		db POISON_JAB
		db MACH_PUNCH

	db 72, STEELIX, LEFTOVERS
		db CURSE
		db EARTHQUAKE
		db STONE_EDGE
		db IRON_HEAD

	db 74, MACHAMP, MUSCLE_BAND
		db BULK_UP
		db STONE_EDGE
		db BODY_SLAM
		db CROSS_CHOP

	db $ff ; end

; ================
; ================================


KarenGroup:
; ================================
; ================

	; KAREN
	db "Karen@"
	db 3 ; item + moves

	; party

	db 52, UMBREON, LEFTOVERS
		db SAND_ATTACK
		db CONFUSE_RAY
		db FEINT_ATTACK
		db MEAN_LOOK

	db 52, PERSIAN, PINK_BOW
		db NIGHT_SLASH
		db FEINT_ATTACK
		db SCREECH
		db PLAY_ROUGH

	db 53, WEAVILE, KINGS_ROCK
		db SWORDS_DANCE
		db SCREECH
		db NIGHT_SLASH
		db ICE_PUNCH

	db 54, GENGAR, SPELL_TAG
		db SHADOW_BALL
		db WILL_O_WISP
		db CURSE
		db DESTINY_BOND

	db 53, HONCHKROW, BLACKGLASSES
		db DRILL_PECK
		db WHIRLWIND
		db PURSUIT
		db FEINT_ATTACK

	db 56, HOUNDOOM, CHARCOAL
		db ROAR
		db PURSUIT
		db FLAMETHROWER
		db DARK_PULSE

	db $ff ; end

; ================

	; KAREN
	db "Karen@"
	db 3 ; item + moves

	; party

	db 71, UMBREON, LEFTOVERS
		db CHARM
		db MOONLIGHT
		db PURSUIT
		db TOXIC

	db 72, WEAVILE, KINGS_ROCK
		db SWORDS_DANCE
		db SCREECH
		db SLASH
		db ICE_PUNCH

	db 74, GENGAR, MAGNET
		db HYPNOSIS
		db THUNDER
		db SHADOW_BALL
		db DESTINY_BOND

	db 72, HONCHKROW, BLACKGLASSES
		db DRILL_PECK
		db WHIRLWIND
		db PURSUIT
		db NIGHT_SLASH

	db 74, TYRANITAR, SOFT_SAND
		db EARTHQUAKE
		db CRUNCH
		db STONE_EDGE
		db PURSUIT

	db 76, HOUNDOOM, WISE_GLASSES
		db ROAR
		db NASTY_PLOT
		db FIRE_BLAST
		db DARK_PULSE

	db $ff ; end

; ================
; ================================


ChampionGroup:
; ================================
; ================

	; CHAMPION
	db "Lance@"
	db 3 ; item + moves

	; party

	db 56, GYARADOS, BRIGHTPOWDER
		db DRAGON_DANCE
		db FLY
		db WATERFALL
		db HYPER_BEAM

	db 57, DRAGONITE, QUICK_CLAW
		db THUNDER_WAVE
		db TWISTER
		db THUNDER
		db HYPER_BEAM

	db 57, DRAGONITE, LEFTOVERS
		db SAFEGUARD
		db TWISTER
		db BLIZZARD
		db HYPER_BEAM

	db 56, AERODACTYL, KINGS_ROCK
		db AERIAL_ACE
		db ANCIENTPOWER
		db ROCK_SLIDE
		db HYPER_BEAM

	db 56, CHARIZARD, MUSCLE_BAND
		db DRAGON_DANCE
		db FLAME_WHEEL
		db AERIAL_ACE
		db SLASH

	db 59, DRAGONITE, WISE_GLASSES
		db BARRIER
		db OUTRAGE
		db FIRE_BLAST
		db HYPER_BEAM

	db $ff ; end

; ================

	; CHAMPION
	db "Lance@"
	db 3 ; item + moves

	; party

	db 75, GYARADOS, BRIGHTPOWDER
		db DRAGON_DANCE
		db EARTHQUAKE
		db WATERFALL
		db FLY

	db 77, DRAGONITE, QUICK_CLAW
		db THUNDER_WAVE
		db BLIZZARD
		db THUNDER
		db LIGHT_SCREEN

	db 77, DRAGONITE, LEFTOVERS
		db DRAGON_DANCE
		db OUTRAGE
		db BODY_SLAM
		db EXTREMESPEED

	db 76, AERODACTYL, KINGS_ROCK
		db AERIAL_ACE
		db ANCIENTPOWER
		db EARTHQUAKE
		db DRAGON_CLAW

	db 75, CHARIZARD, MUSCLE_BAND
		db SWORDS_DANCE
		db FLARE_BLITZ
		db ROCK_SLIDE
		db SLASH

	db 80, DRAGONITE, WISE_GLASSES
		db HURRICANE
		db FIRE_BLAST
		db DRAGON_PULSE
		db HYPER_BEAM

	db $ff ; end

; ================
; ================================


BrockGroup:
; ================================
; ================

	; BROCK
	db "Brock@"
	db 3 ; item + moves

	; party

	db 64, GOLEM, NO_ITEM
		db DEFENSE_CURL
		db ROLLOUT
		db ROCK_SLIDE
		db EARTHQUAKE

	db 63, RHYDON, EVIOLITE
		db AVALANCHE
		db ROCK_SLIDE
		db EARTHQUAKE
		db OUTRAGE

	db 65, OMASTAR, NO_ITEM
		db ANCIENTPOWER
		db SURF
		db PROTECT
		db SPIKES

	db 68, ONIX, NO_ITEM
		db IRON_TAIL
		db ROCK_SLIDE
		db EARTHQUAKE
		db SANDSTORM

	db 65, KABUTOPS, NO_ITEM
		db SLASH
		db SURF
		db ENDURE
		db GIGA_DRAIN

	db 65, AERODACTYL, NO_ITEM
		db AERIAL_ACE
		db SUPERSONIC
		db ANCIENTPOWER
		db HYPER_BEAM

	db $ff ; end

; ================

	; BROCK
	db "Brock@"
	db 3 ; item + moves

	; party

	db 74, ONIX, SOFT_SAND
		db IRON_HEAD
		db ROCK_SLIDE
		db EARTHQUAKE
		db SANDSTORM

	db 73, RHYPERIOR, KINGS_ROCK
		db AVALANCHE
		db ROCK_SLIDE
		db EARTHQUAKE
		db MEGAHORN

	db 72, OMASTAR, MYSTIC_WATER
		db ANCIENTPOWER
		db SURF
		db EARTH_POWER
		db SPIKES

	db 72, KABUTOPS, MIRACLE_SEED
		db SLASH
		db SURF
		db ENDURE
		db GIGA_DRAIN

	db 73, AERODACTYL, QUICK_CLAW
		db STONE_EDGE
		db EARTHQUAKE
		db AERIAL_ACE
		db CRUNCH

	db 75, GOLEM, LEFTOVERS
		db EXPLOSION
		db BODY_SLAM
		db STONE_EDGE
		db EARTHQUAKE

	db $ff ; end

; ================
; ================================


MistyGroup:
; ================================
; ================

	; MISTY
	db "Misty@"
	db 3 ; item + moves

	; party

	db 61, GOLDUCK, NO_ITEM
		db SCALD
		db DISABLE
		db CALM_MIND
		db PSYCHIC_M

	db 60, QUAGSIRE, NO_ITEM
		db SCALD
		db CALM_MIND
		db EARTHQUAKE
		db RAIN_DANCE

	db 62, LAPRAS, NO_ITEM
		db SURF
		db PERISH_SONG
		db BLIZZARD
		db RAIN_DANCE

	db 60, KINGLER, NO_ITEM
		db HARDEN
		db STOMP
		db PROTECT
		db CRABHAMMER

	db 62, LANTURN, NO_ITEM
		db SCALD
		db THUNDERBOLT
		db ICE_BEAM
		db CONFUSE_RAY

	db 64, STARMIE, GOLD_BERRY
		db SCALD
		db CONFUSE_RAY
		db RECOVER
		db ICE_BEAM

	db $ff ; end

; ================

	; MISTY
	db "Misty@"
	db 3 ; item + moves

	; party

	db 73, GOLDUCK, TWISTEDSPOON
		db PSYCHIC_M
		db SURF
		db ICE_BEAM
		db CALM_MIND

	db 72, QUAGSIRE, NO_ITEM
		db EARTHQUAKE
		db SCALD
		db RECOVER
		db TOXIC

	db 72, KINGLER, KINGS_ROCK
		db SWORDS_DANCE
		db CRABHAMMER
		db X_SCISSOR
		db ROCK_SLIDE

	db 73, LANTURN, NEVERMELTICE
		db SURF
		db THUNDERBOLT
		db ICE_BEAM
		db CONFUSE_RAY

	db 74, OCTILLERY, CHARCOAL
		db FIRE_BLAST
		db ICE_BEAM
		db HYDRO_PUMP
		db SEED_BOMB

	db 75, STARMIE, LEFTOVERS
		db RECOVER
		db PSYCHIC_M
		db THUNDERBOLT
		db SURF

	db $ff ; end

; ================
; ================================


LtSurgeGroup:
; ================================
; ================

	; LT_SURGE
	db "Lt.Surge@"
	db 3 ; item + moves

	; party

	db 58, ELECTABUZZ, EVIOLITE
		db QUICK_ATTACK
		db THUNDERPUNCH
		db LIGHT_SCREEN
		db WILD_CHARGE

	db 56, ELECTRODE, NO_ITEM
		db SCREECH
		db DOUBLE_TEAM
		db THUNDERBOLT
		db EXPLOSION

	db 57, MAGNEZONE, NO_ITEM
		db LOCK_ON
		db DOUBLE_TEAM
		db WILD_CHARGE
		db ZAP_CANNON

	db 56, ELECTRODE, NO_ITEM
		db SCREECH
		db DOUBLE_TEAM
		db WILD_CHARGE
		db EXPLOSION

	db 58, JOLTEON, NO_ITEM
		db WILD_CHARGE
		db THUNDER_WAVE
		db AGILITY
		db THUNDER

	db 60, RAICHU, GOLD_BERRY
		db THUNDER_WAVE
		db QUICK_ATTACK
		db WILD_CHARGE
		db THUNDER

	db $ff ; end

; ================

	; LT_SURGE
	db "Lt.Surge@"
	db 3 ; item + moves

	; party

	db 74, ELECTIVIRE, BLACK_BELT
		db CROSS_CHOP
		db THUNDERPUNCH
		db LIGHT_SCREEN
		db WILD_CHARGE

	db 72, ELECTRODE, SILK_SCARF
		db REFLECT
		db DOUBLE_TEAM
		db SWIFT
		db EXPLOSION

	db 73, JOLTEON, NEVERMELTICE
		db HIDDEN_POWER ; Ice
		db THUNDER_WAVE
		db HYPER_VOICE
		db THUNDERBOLT

	db 73, LANTURN, LEFTOVERS
		db SURF
		db ICE_BEAM
		db THUNDERBOLT
		db RECOVER

	db 72, MAGNEZONE, CHARCOAL
		db LOCK_ON
		db DOUBLE_TEAM
		db HIDDEN_POWER ; Fire
		db THUNDERBOLT

	db 75, RAICHU, BRIGHTPOWDER
		db THUNDER_WAVE
		db NASTY_PLOT
		db THUNDERBOLT
		db FOCUS_BLAST

	db $ff ; end

; ================
; ================================


ErikaGroup:
; ================================
; ================

	; ERIKA
	db "Erika@"
	db 3 ; item + moves

	; party

	db 61, SUNFLORA, NO_ITEM
		db SUNNY_DAY
		db MORNING_SUN
		db GIGA_DRAIN
		db FLAMETHROWER

	db 62, TANGELA, EVIOLITE
		db GROWTH
		db MORNING_SUN
		db GIGA_DRAIN
		db SLEEP_POWDER

if DEF(FAITHFUL)
	db 61, PARASECT, NO_ITEM
		db SPORE
		db SLASH
		db GROWTH
		db GIGA_DRAIN
else
	db 61, POLITOED, NO_ITEM
		db GIGA_DRAIN
		db SCALD
		db ICE_BEAM
		db FOCUS_BLAST
endc

	db 64, VICTREEBEL, NO_ITEM
		db SUNNY_DAY
		db MORNING_SUN
		db ACID
		db RAZOR_LEAF

	db 65, VILEPLUME, NO_ITEM
		db SUNNY_DAY
		db MOONLIGHT
		db PETAL_DANCE
		db SOLAR_BEAM

	db 65, BELLOSSOM, GOLD_BERRY
		db SUNNY_DAY
		db MORNING_SUN
		db PETAL_DANCE
		db SOLAR_BEAM

	db $ff ; end

; ================

	; ERIKA
	db "Erika@"
	db 3 ; item + moves

	; party

	db 72, SUNFLORA, BRIGHTPOWDER
		db SUNNY_DAY
		db LEECH_SEED
		db GIGA_DRAIN
		db FIRE_BLAST

	db 73, TANGROWTH, LEFTOVERS
		db EARTHQUAKE
		db SWORDS_DANCE
		db GIGA_DRAIN
		db SLEEP_POWDER

	db 73, VICTREEBEL, POISON_BARB
		db SWORDS_DANCE
		db GIGA_DRAIN
		db SLUDGE_BOMB
		db SEED_BOMB

	db 74, LEAFEON, MIRACLE_SEED
		db SWORDS_DANCE
		db SEED_BOMB
		db IRON_TAIL
		db X_SCISSOR

	db 74, VILEPLUME, QUICK_CLAW
		db PETAL_DANCE
		db MOONLIGHT
		db LEECH_SEED
		db TOXIC

	db 75, BELLOSSOM, PINK_BOW
		db SLEEP_POWDER
		db MOONBLAST
		db PETAL_DANCE
		db HIDDEN_POWER ; Rock

	db $ff ; end

; ================
; ================================


JanineGroup:
; ================================
; ================

	; JANINE
	db "Janine@"
	db 3 ; item + moves

	; party

	db 64, CROBAT, NO_ITEM
		db SCREECH
		db SUPERSONIC
		db CONFUSE_RAY
		db AERIAL_ACE

	db 61, ARIADOS, NO_ITEM
		db AGILITY
		db POISON_JAB
		db MEAN_LOOK
		db PSYCHIC_M

	db 62, QWILFISH, NO_ITEM
		db AQUA_TAIL
		db POISON_JAB
		db SPIKES
		db MINIMIZE

	db 61, ARIADOS, NO_ITEM
		db SCARY_FACE
		db POISON_JAB
		db MEAN_LOOK
		db GIGA_DRAIN

	db 64, WEEZING, NO_ITEM
		db SLUDGE_BOMB
		db THUNDER
		db FIRE_BLAST
		db EXPLOSION

	db 66, VENOMOTH, GOLD_BERRY
		db SLUDGE_BOMB
		db DOUBLE_TEAM
		db GUST
		db PSYCHIC_M

	db $ff ; end

; ================

	; JANINE
	db "Janine@"
	db 3 ; item + moves

	; party

	db 73, CROBAT, KINGS_ROCK
		db DOUBLE_TEAM
		db POISON_JAB
		db AERIAL_ACE
		db TOXIC

	db 72, ARIADOS, QUICK_CLAW
		db SCARY_FACE
		db POISON_JAB
		db MEAN_LOOK
		db GIGA_DRAIN

	db 72, QWILFISH, FOCUS_BAND
		db AQUA_TAIL
		db POISON_JAB
		db SPIKES
		db EXPLOSION

	db 74, NIDOQUEEN, LEFTOVERS
		db EARTHQUAKE
		db MOONLIGHT
		db SLUDGE_BOMB
		db ICE_BEAM

	db 73, WEEZING, CHARCOAL
		db SLUDGE_BOMB
		db FIRE_BLAST
		db WILL_O_WISP
		db EXPLOSION

	db 75, VENOMOTH, BRIGHTPOWDER
		db SLUDGE_BOMB
		db DOUBLE_TEAM
		db SLEEP_POWDER
		db PSYCHIC_M

	db $ff ; end

; ================
; ================================


SabrinaGroup:
; ================================
; ================

	; SABRINA
	db "Sabrina@"
	db 3 ; item + moves

	; party

	db 61, ESPEON, NO_ITEM
		db SAND_ATTACK
		db QUICK_ATTACK
		db SWIFT
		db PSYCHIC_M

	db 59, GIRAFARIG, NO_ITEM
		db PSYCHIC_M
		db CRUNCH
		db AGILITY
		db CALM_MIND

	db 60, MR__MIME, NO_ITEM
		db BARRIER
		db REFLECT
		db BATON_PASS
		db PSYCHIC_M

	db 59, HYPNO, NO_ITEM
		db HYPNOSIS
		db DREAM_EATER
		db NIGHTMARE
		db PSYCHIC_M

	db 58, WOBBUFFET, NO_ITEM
		db COUNTER
		db MIRROR_COAT
		db SAFEGUARD
		db DESTINY_BOND

	db 62, ALAKAZAM, GOLD_BERRY
		db RECOVER
		db FUTURE_SIGHT
		db PSYCHIC_M
		db REFLECT

	db $ff ; end

; ================

	; SABRINA
	db "Sabrina@"
	db 3 ; item + moves

	; party

	db 74, ESPEON, LEFTOVERS
		db PSYCHIC_M
		db BATON_PASS
		db REFLECT
		db LIGHT_SCREEN

	db 73, MR__MIME, NO_ITEM
		db PSYCHIC_M
		db DAZZLINGLEAM
		db NASTY_PLOT
		db ENCORE

	db 73, GIRAFARIG, BRIGHTPOWDER
		db NASTY_PLOT
		db SHADOW_BALL
		db HYPER_VOICE
		db PSYCHIC_M

	db 72, HYPNO, TWISTEDSPOON
		db NASTY_PLOT
		db PSYCHIC_M
		db HYPNOSIS
		db NIGHTMARE

	db 74, SLOWKING, KINGS_ROCK
		db THUNDER_WAVE
		db NASTY_PLOT
		db SCALD
		db PSYCHIC_M

	db 75, ALAKAZAM, FOCUS_BAND
		db RECOVER
		db SHADOW_BALL
		db PSYCHIC_M
		db FOCUS_BLAST

	db $ff ; end

; ================
; ================================


BlaineGroup:
; ================================
; ================

	; BLAINE
	db "Blaine@"
	db 3 ; item + moves

	; party

	db 65, MAGCARGO, NO_ITEM
		db CURSE
		db WILL_O_WISP
		db FLAMETHROWER
		db ROCK_SLIDE

	db 68, MAGMAR, EVIOLITE
		db SUNNY_DAY
		db THUNDERPUNCH
		db FLAMETHROWER
		db FOCUS_BLAST

	db 66, ARCANINE, NO_ITEM
		db CRUNCH
		db FLAME_WHEEL
		db FLARE_BLITZ
		db TAKE_DOWN

	db 66, NINETALES, NO_ITEM
		db CONFUSE_RAY
		db FIRE_SPIN
		db FLAMETHROWER
		db WILL_O_WISP

	db 65, FLAREON, NO_ITEM
		db WILL_O_WISP
		db FLARE_BLITZ
		db QUICK_ATTACK
		db FIRE_BLAST

	db 69, RAPIDASH, GOLD_BERRY
		db QUICK_ATTACK
		db FIRE_SPIN
		db FURY_ATTACK
		db FIRE_BLAST

	db $ff ; end

	; BLAINE
	db "Blaine@"
	db 3 ; item + moves

	; party

	db 71, MAGCARGO, FOCUS_BAND
		db RECOVER
		db DRAGON_DANCE
		db FLAME_WHEEL
		db ROCK_SLIDE

	db 72, MAGMORTAR, BLACK_BELT
		db SUNNY_DAY
		db FOCUS_BLAST
		db FIRE_BLAST
		db FLASH_CANNON

	db 73, ARCANINE, KINGS_ROCK
		db CRUNCH
		db FLAME_WHEEL
		db FLARE_BLITZ
		db EXTREMESPEED

	db 74, FLAREON, CHARCOAL
		db WILL_O_WISP
		db FLARE_BLITZ
		db DOUBLE_EDGE
		db SCARY_FACE

	db 72, TYPHLOSION, LEFTOVERS
		db FIRE_BLAST
		db FOCUS_BLAST
		db EARTH_POWER
		db HIDDEN_POWER ; Grass

	db 75, RAPIDASH, POISON_BARB
		db MEGAHORN
		db POISON_JAB
		db FLARE_BLITZ
		db WILD_CHARGE

	db $ff ; end

; ================
; ================================


BlueGroup:
; ================================
; ================

	; BLUE
	db "Blue@"
	db 3 ; item + moves

	; party

	db 70, PIDGEOT, LEFTOVERS
		db QUICK_ATTACK
		db HURRICANE
		db RETURN
		db AIR_SLASH

	db 66, MACHAMP, BLACK_BELT
		db DYNAMICPUNCH
		db EARTHQUAKE
		db STONE_EDGE
		db THUNDERPUNCH

	db 67, KABUTOPS, HARD_STONE
		db SLASH
		db SURF
		db STONE_EDGE
		db GIGA_DRAIN

	db 70, BLASTOISE, MYSTIC_WATER
		db SURF
		db ICE_BEAM
		db BODY_SLAM
		db FLASH_CANNON

	db 68, EXEGGUTOR, MIRACLE_SEED
		db PSYCHIC_M
		db LEECH_SEED
		db EGG_BOMB
		db GIGA_DRAIN

	db 68, ARCANINE, CHARCOAL
		db ROAR
		db FLAME_WHEEL
		db FLAMETHROWER
		db EXTREMESPEED

	db $ff ; end

	; BLUE
	db "Blue@"
	db 3 ; item + moves

	; party

	db 75, PIDGEOT, SHARP_BEAK
		db EXTREMESPEED
		db HURRICANE
		db STEEL_WING
		db TWISTER

	db 73, MACHAMP, BLACK_BELT
		db CROSS_CHOP
		db EARTHQUAKE
		db STONE_EDGE
		db THUNDERPUNCH

	db 74, TYRANITAR, BLACKGLASSES
		db EARTHQUAKE
		db STONE_EDGE
		db CRUNCH
		db PURSUIT

	db 75, BLASTOISE, LEFTOVERS
		db SURF
		db ICE_BEAM
		db REST
		db SLEEP_TALK

	db 74, EXEGGUTOR, MIRACLE_SEED
		db PSYCHIC_M
		db LEECH_SEED
		db SEED_BOMB
		db GIGA_DRAIN

	db 74, ARCANINE, CHARCOAL
		db ROAR
		db OUTRAGE
		db FLARE_BLITZ
		db EXTREMESPEED

	db $ff ; end

; ================
; ================================


RedGroup:
; ================================
; ================

	; RED
	db "Red@"
	db 3 ; item + moves

	; party

	db 90, PIKACHU, LIGHT_BALL
		db THUNDERBOLT
		db SURF
		db IRON_TAIL
		db WILD_CHARGE

	db 84, ESPEON, TWISTEDSPOON
		db PSYCHIC_M
		db MORNING_SUN
		db REFLECT
		db SHADOW_BALL

	db 85, SNORLAX, LEFTOVERS
		db CURSE
		db REST
		db SLEEP_TALK
		db DOUBLE_EDGE

	db 87, OMASTAR, WISE_GLASSES
		db SURF
		db ANCIENTPOWER
		db EARTH_POWER
		db ICE_BEAM

	db 88, CHARIZARD, MUSCLE_BAND
		db FLARE_BLITZ
		db SWORDS_DANCE
		db EARTHQUAKE
		db AERIAL_ACE

	db 87, GYARADOS, QUICK_CLAW
		db DRAGON_DANCE
		db WATERFALL
		db EARTHQUAKE
		db CRUNCH

	db $ff ; end

; ================
; ================================


LeafGroup:
; ================================
; ================

	; LEAF
	db "Green@"
	db 3 ; item + moves

	; party

	db 96, LAPRAS, LEFTOVERS
		db ICE_BEAM
		db THUNDERBOLT
		db REST
		db SLEEP_TALK

	db 100, VENUSAUR, MIRACLE_SEED
		db GROWTH
		db GIGA_DRAIN
		db SLUDGE_BOMB
		db SLEEP_POWDER

	db 98, MOLTRES, CHARCOAL
		db FIRE_BLAST
		db HIDDEN_POWER ; Grass
		db COUNTER
		db EXTRASENSORY

	db 95, SYLVEON, BRIGHTPOWDER
		db MOONBLAST
		db LIGHT_SCREEN
		db CALM_MIND
		db HYPER_VOICE

	db 98, AERODACTYL, MUSCLE_BAND
		db HONE_CLAWS
		db CRUNCH
		db EARTHQUAKE
		db ROCK_SLIDE

	db 99, MEW, WISE_GLASSES
		db NASTY_PLOT
		db PSYCHIC_M
		db DARK_PULSE
		db GIGA_DRAIN

	db $ff ; end

; ================
; ================================


Rival1Group:
; ================================
; ================

	; RIVAL1
	db "?@"
	db 2 ; item

	; party
	db 5, SENTRET, BERRY
	db 5, CHIKORITA, BERRY

	db $ff ; end

; ================

	; RIVAL1
	db "?@"
	db 2 ; item

	; party
	db 5, SENTRET, BERRY
	db 5, CYNDAQUIL, BERRY

	db $ff ; end

; ================

	; RIVAL1
	db "?@"
	db 2 ; item

	; party
	db 5, SENTRET, BERRY
	db 5, TOTODILE, BERRY

	db $ff ; end

; ================

	; RIVAL1
	db "?@"
	db 2 ; item

	; party
	db 14, GASTLY, NO_ITEM
	db 16, ZUBAT, NO_ITEM
	db 15, GEODUDE, NO_ITEM
	db 18, BAYLEEF, BERRY

	db $ff ; end

; ================

	; RIVAL1
	db "?@"
	db 2 ; item

	; party
	db 14, GASTLY, NO_ITEM
	db 16, ZUBAT, NO_ITEM
	db 15, GEODUDE, NO_ITEM
	db 18, QUILAVA, BERRY

	db $ff ; end

; ================

	; RIVAL1
	db "?@"
	db 2 ; item

	; party
	db 14, GASTLY, NO_ITEM
	db 16, ZUBAT, NO_ITEM
	db 15, GEODUDE, NO_ITEM
	db 18, CROCONAW, BERRY

	db $ff ; end

; ================

	; RIVAL1
	db "?@"
	db 3 ; item + moves

	; party

	db 20, HAUNTER, NO_ITEM
		db LICK
		db CONFUSE_RAY
		db MEAN_LOOK
		db CURSE

	db 18, MAGNEMITE, NO_ITEM
		db TACKLE
		db THUNDERSHOCK
		db SUPERSONIC
		db SONIC_BOOM

	db 19, DROWZEE, NO_ITEM
		db HYPNOSIS
		db CONFUSION
		db HEADBUTT
		db LOW_KICK

	db 20, ZUBAT, NO_ITEM
		db LEECH_LIFE
		db SUPERSONIC
		db BITE
		db CONFUSE_RAY

	db 22, BAYLEEF, BERRY
		db REFLECT
		db RAZOR_LEAF
		db POISONPOWDER
		db FAIRY_WIND

	db $ff ; end

; ================

	; RIVAL1
	db "?@"
	db 3 ; item + moves

	; party

	db 20, HAUNTER, NO_ITEM
		db LICK
		db CONFUSE_RAY
		db MEAN_LOOK
		db CURSE

	db 18, MAGNEMITE, NO_ITEM
		db TACKLE
		db THUNDERSHOCK
		db SUPERSONIC
		db SONIC_BOOM

	db 19, DROWZEE, NO_ITEM
		db HYPNOSIS
		db CONFUSION
		db HEADBUTT
		db LOW_KICK

	db 20, ZUBAT, NO_ITEM
		db LEECH_LIFE
		db SUPERSONIC
		db BITE
		db CONFUSE_RAY

	db 22, QUILAVA, BERRY
		db LEER
		db SMOKESCREEN
		db EMBER
		db QUICK_ATTACK

	db $ff ; end

; ================

	; RIVAL1
	db "?@"
	db 3 ; item + moves

	; party

	db 20, HAUNTER, NO_ITEM
		db LICK
		db CONFUSE_RAY
		db MEAN_LOOK
		db CURSE

	db 18, MAGNEMITE, NO_ITEM
		db TACKLE
		db THUNDERSHOCK
		db SUPERSONIC
		db SONIC_BOOM

	db 19, DROWZEE, NO_ITEM
		db HYPNOSIS
		db CONFUSION
		db HEADBUTT
		db LOW_KICK

	db 20, ZUBAT, NO_ITEM
		db LEECH_LIFE
		db SUPERSONIC
		db BITE
		db CONFUSE_RAY

	db 22, CROCONAW, BERRY
		db LEER
		db RAGE
		db WATER_GUN
		db BITE

	db $ff ; end

; ================

	; RIVAL1
	db "?@"
	db 3 ; item + moves

	; party

	db 38, GOLBAT, NO_ITEM
		db LEECH_LIFE
		db BITE
		db CONFUSE_RAY
		db WING_ATTACK

	db 37, MAGNETON, NO_ITEM
		db TRI_ATTACK
		db THUNDERBOLT
		db FLASH_CANNON
		db THUNDER_WAVE

	db 37, HAUNTER, NO_ITEM
		db PAIN_SPLIT
		db MEAN_LOOK
		db CONFUSE_RAY
		db SHADOW_BALL

	db 39, SNEASEL, NO_ITEM
		db SLASH
		db ICE_PUNCH
		db HONE_CLAWS
		db FEINT_ATTACK

	db 41, MEGANIUM, GOLD_BERRY
		db REFLECT
		db LIGHT_SCREEN
		db PETAL_DANCE
		db ANCIENTPOWER

	db $ff ; end

; ================

	; RIVAL1
	db "?@"
	db 3 ; item + moves

	; party

	db 38, GOLBAT, NO_ITEM
		db LEECH_LIFE
		db BITE
		db CONFUSE_RAY
		db WING_ATTACK

	db 37, MAGNETON, NO_ITEM
		db TRI_ATTACK
		db THUNDERBOLT
		db FLASH_CANNON
		db THUNDER_WAVE

	db 37, HAUNTER, NO_ITEM
		db PAIN_SPLIT
		db MEAN_LOOK
		db CONFUSE_RAY
		db SHADOW_BALL

	db 39, SNEASEL, NO_ITEM
		db SLASH
		db ICE_PUNCH
		db HONE_CLAWS
		db FEINT_ATTACK

	db 41, TYPHLOSION, GOLD_BERRY
		db SMOKESCREEN
		db FLAME_WHEEL
		db DIG
		db SWIFT

	db $ff ; end

; ================

	; RIVAL1
	db "?@"
	db 3 ; item + moves

	; party

	db 38, GOLBAT, NO_ITEM
		db LEECH_LIFE
		db BITE
		db CONFUSE_RAY
		db WING_ATTACK

	db 37, MAGNETON, NO_ITEM
		db TRI_ATTACK
		db THUNDERBOLT
		db FLASH_CANNON
		db THUNDER_WAVE

	db 37, HAUNTER, NO_ITEM
		db PAIN_SPLIT
		db MEAN_LOOK
		db CONFUSE_RAY
		db SHADOW_BALL

	db 39, SNEASEL, NO_ITEM
		db SLASH
		db ICE_PUNCH
		db HONE_CLAWS
		db FEINT_ATTACK

	db 41, FERALIGATR, GOLD_BERRY
		db SLASH
		db SURF
		db CRUNCH
		db NIGHT_SLASH

	db $ff ; end

; ================

	; RIVAL1
	db "?@"
	db 3 ; item + moves

	; party

	db 44, WEAVILE, KINGS_ROCK
		db SWORDS_DANCE
		db SCREECH
		db NIGHT_SLASH
		db X_SCISSOR

	db 46, GOLBAT, EVIOLITE
		db POISON_JAB
		db SUPER_FANG
		db CONFUSE_RAY
		db WING_ATTACK

	db 45, MAGNETON, MAGNET
		db THUNDERBOLT
		db TRI_ATTACK
		db THUNDER_WAVE
		db FLASH_CANNON

	db 45, GENGAR, SPELL_TAG
		db MEAN_LOOK
		db DARK_PULSE
		db SHADOW_BALL
		db CONFUSE_RAY

	db 45, ALAKAZAM, BRIGHTPOWDER
		db DISABLE
		db PSYCHIC_M
		db RECOVER
		db CONFUSE_RAY

	db 48, MEGANIUM, GOLD_BERRY
		db REFLECT
		db LIGHT_SCREEN
		db ENERGY_BALL
		db ANCIENTPOWER

	db $ff ; end

; ================

	; RIVAL1
	db "?@"
	db 3 ; item + moves

	; party

	db 44, WEAVILE, KINGS_ROCK
		db SWORDS_DANCE
		db SCREECH
		db NIGHT_SLASH
		db X_SCISSOR

	db 46, GOLBAT, EVIOLITE
		db POISON_JAB
		db SUPER_FANG
		db CONFUSE_RAY
		db WING_ATTACK

	db 45, MAGNETON, MAGNET
		db THUNDERBOLT
		db TRI_ATTACK
		db THUNDER_WAVE
		db FLASH_CANNON

	db 45, GENGAR, SPELL_TAG
		db MEAN_LOOK
		db DARK_PULSE
		db SHADOW_BALL
		db CONFUSE_RAY

	db 45, ALAKAZAM, BRIGHTPOWDER
		db DISABLE
		db PSYCHIC_M
		db RECOVER
		db CONFUSE_RAY

	db 48, TYPHLOSION, GOLD_BERRY
		db SMOKESCREEN
		db QUICK_ATTACK
		db DIG
		db FLAMETHROWER

	db $ff ; end

; ================

	; RIVAL1
	db "?@"
	db 3 ; item + moves

	; party

	db 44, WEAVILE, KINGS_ROCK
		db SWORDS_DANCE
		db SCREECH
		db NIGHT_SLASH
		db X_SCISSOR

	db 46, GOLBAT, EVIOLITE
		db POISON_JAB
		db SUPER_FANG
		db CONFUSE_RAY
		db WING_ATTACK

	db 45, MAGNETON, MAGNET
		db THUNDERBOLT
		db TRI_ATTACK
		db THUNDER_WAVE
		db FLASH_CANNON

	db 45, GENGAR, SPELL_TAG
		db MEAN_LOOK
		db DARK_PULSE
		db SHADOW_BALL
		db CONFUSE_RAY

	db 45, ALAKAZAM, BRIGHTPOWDER
		db DISABLE
		db PSYCHIC_M
		db RECOVER
		db CONFUSE_RAY

	db 48, FERALIGATR, GOLD_BERRY
		db CRUNCH
		db SURF
		db SLASH
		db SCARY_FACE

	db $ff ; end

; ================
; ================================


Rival2Group:
; ================================
; ================

	; RIVAL2
	db "?@"
	db 3 ; item + moves

	; party

	db 61, WEAVILE, KINGS_ROCK
		db SWORDS_DANCE
		db ICE_PUNCH
		db SLASH
		db CRUNCH

	db 62, GOLBAT, EVIOLITE
		db POISON_JAB
		db SUPER_FANG
		db CONFUSE_RAY
		db AERIAL_ACE

	db 61, MAGNEZONE, MAGNET
		db LOCK_ON
		db ZAP_CANNON
		db THUNDER_WAVE
		db FLASH_CANNON

	db 63, GENGAR, SPELL_TAG
		db MEAN_LOOK
		db CURSE
		db SHADOW_BALL
		db CONFUSE_RAY

	db 63, ALAKAZAM, BRIGHTPOWDER
		db DISABLE
		db RECOVER
		db FUTURE_SIGHT
		db PSYCHIC_M

	db 65, MEGANIUM, MIRACLE_SEED
		db SEED_BOMB
		db POISONPOWDER
		db BODY_SLAM
		db LIGHT_SCREEN

	db $ff ; end

; ================

	; RIVAL2
	db "?@"
	db 3 ; item + moves

	; party

	db 61, WEAVILE, KINGS_ROCK
		db SWORDS_DANCE
		db ICE_PUNCH
		db SLASH
		db CRUNCH

	db 62, GOLBAT, EVIOLITE
		db POISON_JAB
		db SUPER_FANG
		db CONFUSE_RAY
		db AERIAL_ACE

	db 61, MAGNEZONE, MAGNET
		db LOCK_ON
		db ZAP_CANNON
		db THUNDER_WAVE
		db FLASH_CANNON

	db 63, GENGAR, SPELL_TAG
		db MEAN_LOOK
		db CURSE
		db SHADOW_BALL
		db CONFUSE_RAY

	db 63, ALAKAZAM, BRIGHTPOWDER
		db DISABLE
		db RECOVER
		db FUTURE_SIGHT
		db PSYCHIC_M

	db 65, TYPHLOSION, CHARCOAL
		db FLAMETHROWER
		db EARTH_POWER
		db THUNDERPUNCH
		db SMOKESCREEN

	db $ff ; end

; ================

	; RIVAL2
	db "?@"
	db 3 ; item + moves

	; party

	db 61, WEAVILE, KINGS_ROCK
		db SWORDS_DANCE
		db ICE_PUNCH
		db SLASH
		db CRUNCH

	db 62, GOLBAT, EVIOLITE
		db POISON_JAB
		db SUPER_FANG
		db CONFUSE_RAY
		db AERIAL_ACE

	db 61, MAGNEZONE, MAGNET
		db LOCK_ON
		db ZAP_CANNON
		db THUNDER_WAVE
		db FLASH_CANNON

	db 63, GENGAR, SPELL_TAG
		db MEAN_LOOK
		db CURSE
		db SHADOW_BALL
		db CONFUSE_RAY

	db 63, ALAKAZAM, BRIGHTPOWDER
		db DISABLE
		db RECOVER
		db FUTURE_SIGHT
		db PSYCHIC_M

	db 65, FERALIGATR, MYSTIC_WATER
		db WATERFALL
		db CRUNCH
		db SLASH
		db SCARY_FACE

	db $ff ; end

; ================

	; RIVAL2
	db "?@"
	db 3 ; item + moves

	; party

	db 68, WEAVILE, KINGS_ROCK
		db SWORDS_DANCE
		db ICE_PUNCH
		db SLASH
		db CRUNCH

	db 69, CROBAT, POISON_BARB
		db POISON_JAB
		db CRUNCH
		db CONFUSE_RAY
		db TOXIC

	db 68, MAGNEZONE, MAGNET
		db THUNDERBOLT
		db TRI_ATTACK
		db THUNDER_WAVE
		db FLASH_CANNON

	db 70, GENGAR, SPELL_TAG
		db THUNDERBOLT
		db FOCUS_BLAST
		db SHADOW_BALL
		db CONFUSE_RAY

	db 70, ALAKAZAM, BRIGHTPOWDER
		db RECOVER
		db TRI_ATTACK
		db PSYCHIC_M
		db REFLECT

	db 72, MEGANIUM, LEFTOVERS
		db PETAL_DANCE
		db MOONBLAST
		db LIGHT_SCREEN
		db ANCIENTPOWER

	db $ff ; end

; ================

	; RIVAL2
	db "?@"
	db 3 ; item + moves

	; party

	db 68, WEAVILE, KINGS_ROCK
		db SWORDS_DANCE
		db ICE_PUNCH
		db SLASH
		db CRUNCH

	db 69, CROBAT, POISON_BARB
		db POISON_JAB
		db CRUNCH
		db CONFUSE_RAY
		db TOXIC

	db 68, MAGNEZONE, MAGNET
		db THUNDERBOLT
		db TRI_ATTACK
		db THUNDER_WAVE
		db FLASH_CANNON

	db 70, GENGAR, SPELL_TAG
		db THUNDERBOLT
		db FOCUS_BLAST
		db SHADOW_BALL
		db CONFUSE_RAY

	db 70, ALAKAZAM, BRIGHTPOWDER
		db RECOVER
		db TRI_ATTACK
		db PSYCHIC_M
		db REFLECT

	db 72, TYPHLOSION, LEFTOVERS
		db FIRE_BLAST
		db FOCUS_BLAST
		db EARTH_POWER
		db SMOKESCREEN

	db $ff ; end

; ================

	; RIVAL2
	db "?@"
	db 3 ; item + moves

	; party

	db 68, WEAVILE, KINGS_ROCK
		db SWORDS_DANCE
		db ICE_PUNCH
		db SLASH
		db CRUNCH

	db 69, CROBAT, POISON_BARB
		db POISON_JAB
		db CRUNCH
		db CONFUSE_RAY
		db TOXIC

	db 68, MAGNEZONE, MAGNET
		db THUNDERBOLT
		db TRI_ATTACK
		db THUNDER_WAVE
		db FLASH_CANNON

	db 70, GENGAR, SPELL_TAG
		db THUNDERBOLT
		db FOCUS_BLAST
		db SHADOW_BALL
		db CONFUSE_RAY

	db 70, ALAKAZAM, BRIGHTPOWDER
		db RECOVER
		db TRI_ATTACK
		db PSYCHIC_M
		db REFLECT

	db 72, FERALIGATR, LEFTOVERS
		db SURF
		db CRUNCH
		db SLASH
		db OUTRAGE

	db $ff ; end

; ================
; ================================


YoungsterGroup:
; ================================
; ================

	; YOUNGSTER
	db "Joey@"
	db 0 ; normal

	; party
	db 5, RATTATA

	db $ff ; end

; ================

	; YOUNGSTER
	db "Mikey@"
	db 0 ; normal

	; party
	db 2, RATTATA
	db 4, PIDGEY

	db $ff ; end

; ================

	; YOUNGSTER
	db "Albert@"
	db 0 ; normal

	; party
	db 6, RATTATA
	db 8, ZUBAT

	db $ff ; end

; ================

	; YOUNGSTER
	db "Gordon@"
	db 0 ; normal

	; party
	db 10, WOOPER

	db $ff ; end

; ================

	; YOUNGSTER
	db "Joey@"
	db 0 ; normal

	; party
	db 15, RATTATA

	db $ff ; end

; ================

	; YOUNGSTER
	db "Joey@"
	db 1 ; moves

	; party

	db 25, RATICATE
		db LEER
		db QUICK_ATTACK
		db HYPER_FANG
		db SCARY_FACE

	db $ff ; end

; ================

	; YOUNGSTER
	db "Warren@"
	db 0 ; normal

	; party
	db 56, PIDGEOTTO
	db 60, RATICATE

	db $ff ; end

; ================

	; YOUNGSTER
	db "Jimmy@"
	db 0 ; normal

	; party
	db 60, RATICATE
	db 60, ARBOK
	db 60, PARASECT

	db $ff ; end

; ================

	; YOUNGSTER
	db "Owen@"
	db 0 ; normal

	; party
	db 53, GROWLITHE
	db 54, GROWLITHE

	db $ff ; end

; ================

	; YOUNGSTER
	db "Jason@"
	db 0 ; normal

	; party
	db 55, SANDSLASH
	db 55, CROBAT

	db $ff ; end

; ================

	; YOUNGSTER
	db "Joey@"
	db 1 ; moves

	; party

	db 30, RATICATE
		db LEER
		db QUICK_ATTACK
		db HYPER_FANG
		db PURSUIT

	db $ff ; end

; ================

	; YOUNGSTER
	db "Joey@"
	db 1 ; moves

	; party

	db 40, RATICATE
		db HYPER_BEAM
		db QUICK_ATTACK
		db HYPER_FANG
		db PURSUIT

	db $ff ; end

; ================
; ================================


BugCatcherGroup:
; ================================
; ================

	; BUG_CATCHER
	db "Don@"
	db 0 ; normal

	; party
	db 3, CATERPIE
	db 3, CATERPIE

	db $ff ; end

; ================

	; BUG_CATCHER
	db "Rob@"
	db 0 ; normal

	; party
	db 60, BEEDRILL
	db 59, BUTTERFREE

	db $ff ; end

; ================

	; BUG_CATCHER
	db "Ed@"
	db 0 ; normal

	; party
	db 61, YANMA
	db 62, BEEDRILL
	db 62, BUTTERFREE

	db $ff ; end

; ================

	; BUG_CATCHER
	db "Wade@"
	db 0 ; normal

	; party
	db 2, CATERPIE
	db 2, CATERPIE
	db 3, WEEDLE
	db 2, CATERPIE

	db $ff ; end

; ================

	; BUG_CATCHER
	db "Benny@"
	db 0 ; normal

	; party
	db 7, WEEDLE
	db 9, KAKUNA
	db 12, BEEDRILL

	db $ff ; end

; ================

	; BUG_CATCHER
	db "Al@"
	db 0 ; normal

	; party
	db 12, CATERPIE
	db 12, WEEDLE

	db $ff ; end

; ================

	; BUG_CATCHER
	db "Josh@"
	db 0 ; normal

	; party
	db 13, PARAS

	db $ff ; end

; ================

	; BUG_CATCHER
	db "Arnie@"
	db 0 ; normal

	; party
	db 15, VENONAT

	db $ff ; end

; ================

	; BUG_CATCHER
	db "Ken@"
	db 0 ; normal

	; party
	db 46, ARIADOS
	db 47, PINSIR

	db $ff ; end

; ================

	; BUG_CATCHER
	db "Wade@"
	db 0 ; normal

	; party
	db 9, METAPOD
	db 9, METAPOD
	db 10, KAKUNA
	db 9, METAPOD

	db $ff ; end

; ================

	; BUG_CATCHER
	db "Wade@"
	db 0 ; normal

	; party
	db 14, BUTTERFREE
	db 14, BUTTERFREE
	db 15, BEEDRILL
	db 14, BUTTERFREE

	db $ff ; end

; ================

	; BUG_CATCHER
	db "Doug@"
	db 0 ; normal

	; party
	db 59, BUTTERFREE
	db 57, ARIADOS

	db $ff ; end

; ================

	; BUG_CATCHER
	db "Arnie@"
	db 0 ; normal

	; party
	db 19, VENONAT

	db $ff ; end

; ================

	; BUG_CATCHER
	db "Arnie@"
	db 1 ; moves

	; party

	db 28, VENOMOTH
		db DISABLE
		db SUPERSONIC
		db CONFUSION
		db LEECH_LIFE

	db $ff ; end

; ================

	; BUG_CATCHER
	db "Wade@"
	db 1 ; moves

	; party

	db 24, BUTTERFREE
		db CONFUSION
		db POISONPOWDER
		db SUPERSONIC
		db WHIRLWIND

	db 24, BUTTERFREE
		db CONFUSION
		db STUN_SPORE
		db SUPERSONIC
		db WHIRLWIND

	db 25, BEEDRILL
		db FURY_ATTACK
		db FOCUS_ENERGY
		db TWINEEDLE
		db RAGE

	db 24, BUTTERFREE
		db CONFUSION
		db SLEEP_POWDER
		db SUPERSONIC
		db WHIRLWIND

	db $ff ; end

; ================

	; BUG_CATCHER
	db "Wade@"
	db 1 ; moves

	; party

	db 30, BUTTERFREE
		db CONFUSION
		db POISONPOWDER
		db SUPERSONIC
		db GUST

	db 30, BUTTERFREE
		db CONFUSION
		db STUN_SPORE
		db SUPERSONIC
		db GUST

	db 32, BEEDRILL
		db FURY_ATTACK
		db PURSUIT
		db TWINEEDLE
		db DOUBLE_TEAM

	db 34, BUTTERFREE
		db PSYBEAM
		db SLEEP_POWDER
		db GUST
		db WHIRLWIND

	db $ff ; end

; ================

	; BUG_CATCHER
	db "Arnie@"
	db 1 ; moves

	; party

	db 36, VENOMOTH
		db GUST
		db SUPERSONIC
		db PSYBEAM
		db LEECH_LIFE

	db $ff ; end

; ================

	; BUG_CATCHER
	db "Arnie@"
	db 1 ; moves

	; party

	db 40, VENOMOTH
		db GUST
		db SUPERSONIC
		db PSYCHIC_M
		db TOXIC

	db $ff ; end

; ================

	; BUG_CATCHER
	db "Wayne@"
	db 0 ; normal

	; party
	db 9, PARAS
	db 10, PINECO

	db $ff ; end

; ================

	; BUG_CATCHER
	db "Dane@"
	db 0 ; normal

	; party
	db 59, BEEDRILL
	db 61, BUTTERFREE

	db $ff ; end

; ================

	; BUG_CATCHER
	db "Dion@"
	db 0 ; normal

	; party
	db 63, ARIADOS

	db $ff ; end

; ================

	; BUG_CATCHER
	db "Stacey@"
	db 0 ; normal

	; party
	db 60, METAPOD
	db 62, METAPOD
	db 64, METAPOD

	db $ff ; end

; ================

	; BUG_CATCHER
	db "Ellis@"
	db 0 ; normal

	; party
	db 58, WEEDLE
	db 60, KAKUNA
	db 62, BEEDRILL

	db $ff ; end

; ================

	; BUG_CATCHER
	db "Abner@"
	db 0 ; normal

	; party
	db 59, BUTTERFREE
	db 59, BEEDRILL
	db 59, PIKACHU

	db $ff ; end

; ================
; ================================


CamperGroup:
; ================================
; ================

	; CAMPER
	db "Roland@"
	db 0 ; normal

	; party
	db 9, NIDORAN_M

	db $ff ; end

; ================

	; CAMPER
	db "Todd@"
	db 0 ; normal

	; party
	db 14, PSYDUCK

	db $ff ; end

; ================

	; CAMPER
	db "Ivan@"
	db 0 ; normal

	; party
	db 10, DIGLETT
	db 10, ZUBAT
	db 14, DIGLETT

	db $ff ; end

; ================

	; CAMPER
	db "Barry@"
	db 0 ; normal

	; party
	db 60, NIDOKING

	db $ff ; end

; ================

	; CAMPER
	db "Lloyd@"
	db 0 ; normal

	; party
	db 56, NIDOKING

	db $ff ; end

; ================

	; CAMPER
	db "Dean@"
	db 0 ; normal

	; party
	db 54, GOLDUCK
	db 52, SANDSLASH

	db $ff ; end

; ================

	; CAMPER
	db "Sid@"
	db 0 ; normal

	; party
	db 53, DUGTRIO
	db 51, PRIMEAPE
	db 51, POLIWRATH

	db $ff ; end

; ================

	; CAMPER
	db "Ted@"
	db 0 ; normal

	; party
	db 18, MANKEY

	db $ff ; end

; ================

	; CAMPER
	db "Todd@"
	db 0 ; normal

	; party
	db 17, GEODUDE
	db 17, GEODUDE
	db 23, PSYDUCK

	db $ff ; end

; ================

	; CAMPER
	db "Todd@"
	db 0 ; normal

	; party
	db 23, GEODUDE
	db 23, GEODUDE
	db 26, PSYDUCK

	db $ff ; end

; ================

	; CAMPER
	db "John@"
	db 0 ; normal

	; party
	db 33, GRAVELER
	db 36, GRAVELER
	db 40, GOLBAT
	db 42, GOLDUCK

	db $ff ; end

; ================

	; CAMPER
	db "Jerry@"
	db 0 ; normal

	; party
	db 62, RHYDON

	db $ff ; end

; ================

	; CAMPER
	db "Spencer@"
	db 0 ; normal

	; party
	db 28, SANDSHREW
	db 29, SANDSLASH
	db 30, GOLBAT

	db $ff ; end

; ================

	; CAMPER
	db "Todd@"
	db 0 ; normal

	; party
	db 30, GRAVELER
	db 30, GRAVELER
	db 30, SLUGMA
	db 32, PSYDUCK

	db $ff ; end

; ================

	; CAMPER
	db "Todd@"
	db 1 ; moves

	; party

	db 33, GRAVELER
		db SELFDESTRUCT
		db ROCK_THROW
		db HARDEN
		db MAGNITUDE

	db 33, GRAVELER
		db SELFDESTRUCT
		db ROCK_THROW
		db HARDEN
		db MAGNITUDE

	db 36, MAGCARGO
		db ROCK_THROW
		db HARDEN
		db CALM_MIND
		db FLAMETHROWER

	db 34, GOLDUCK
		db DISABLE
		db PSYCHIC_M
		db SURF
		db CALM_MIND

	db $ff ; end

; ================

	; CAMPER
	db "Quentin@"
	db 0 ; normal

	; party
	db 30, PIDGEOTTO
	db 30, PRIMEAPE
	db 30, TAUROS

	db $ff ; end

; ================

	; CAMPER
	db "Grant@"
	db 0 ; normal

	; party
	db 21, SUNFLORA
	db 21, MARILL

	db $ff ; end

; ================
; ================================


PicnickerGroup:
; ================================
; ================

	; PICNICKER
	db "Liz@"
	db 0 ; normal

	; party
	db 9, NIDORAN_F

	db $ff ; end

; ================

	; PICNICKER
	db "Gina@"
	db 0 ; normal

	; party
	db 9, SUNKERN
	db 9, SUNKERN
	db 12, BULBASAUR

	db $ff ; end

; ================

	; PICNICKER
	db "Kim@"
	db 0 ; normal

	; party
	db 15, VULPIX

	db $ff ; end

; ================

	; PICNICKER
	db "Cindy@"
	db 0 ; normal

	; party
	db 61, NIDOQUEEN

	db $ff ; end

; ================

	; PICNICKER
	db "Hope@"
	db 0 ; normal

	; party
	db 62, FLAAFFY

	db $ff ; end

; ================

	; PICNICKER
	db "Sharon@"
	db 0 ; normal

	; party
	db 57, FURRET
	db 59, RAPIDASH

	db $ff ; end

; ================

	; PICNICKER
	db "Debra@"
	db 0 ; normal

	; party
	db 50, AZUMARILL

	db $ff ; end

; ================

	; PICNICKER
	db "Gina@"
	db 0 ; normal

	; party
	db 14, SUNKERN
	db 14, SUNKERN
	db 17, IVYSAUR

	db $ff ; end

; ================

	; PICNICKER
	db "Erin@"
	db 0 ; normal

	; party
	db 18, PONYTA
	db 16, ODDISH

	db $ff ; end

; ================

	; PICNICKER
	db "Liz@"
	db 0 ; normal

	; party
	db 15, WEEPINBELL
	db 15, NIDORINA

	db $ff ; end

; ================

	; PICNICKER
	db "Liz@"
	db 0 ; normal

	; party
	db 19, WEEPINBELL
	db 19, NIDORINO
	db 21, NIDOQUEEN

	db $ff ; end

; ================

	; PICNICKER
	db "Heidi@"
	db 0 ; normal

	; party
	db 53, SUNFLORA
	db 53, SUNFLORA

	db $ff ; end

; ================

	; PICNICKER
	db "Edna@"
	db 0 ; normal

	; party
	db 51, NIDORINA
	db 55, RAICHU

	db $ff ; end

; ================

	; PICNICKER
	db "Gina@"
	db 0 ; normal

	; party
	db 26, SUNFLORA
	db 27, SUNFLORA
	db 29, IVYSAUR

	db $ff ; end

; ================

	; PICNICKER
	db "Tiffany@"
	db 1 ; moves

	; party

	db 40, CLEFABLE
		db REFLECT
		db TRI_ATTACK
		db MINIMIZE
		db METRONOME

	db $ff ; end

; ================

	; PICNICKER
	db "Tiffany@"
	db 1 ; moves

	; party

	db 49, CLEFABLE
		db MOONLIGHT
		db TRI_ATTACK
		db MINIMIZE
		db METRONOME

	db $ff ; end

; ================

	; PICNICKER
	db "Erin@"
	db 0 ; normal

	; party
	db 32, PONYTA
	db 32, GLOOM

	db $ff ; end

; ================

	; PICNICKER
	db "Tanya@"
	db 0 ; normal

	; party
	db 61, EXEGGUTOR

	db $ff ; end

; ================

	; PICNICKER
	db "Tiffany@"
	db 1 ; moves

	; party

	db 31, CLEFAIRY
		db ENCORE
		db SING
		db TRI_ATTACK
		db MINIMIZE

	db $ff ; end

; ================

	; PICNICKER
	db "Erin@"
	db 1 ; moves

	; party

	db 36, RAPIDASH
		db DOUBLE_TEAM
		db STOMP
		db FIRE_SPIN
		db SUNNY_DAY

	db 34, RAICHU
		db SWIFT
		db MUD_SLAP
		db QUICK_ATTACK
		db THUNDERBOLT

	db 36, VILEPLUME
		db SLEEP_POWDER
		db ACID
		db MOONLIGHT
		db PETAL_DANCE

	db $ff ; end

; ================

	; PICNICKER
	db "Liz@"
	db 0 ; normal

	; party
	db 24, WEEPINBELL
	db 26, NIDORINO
	db 26, NIDOQUEEN

	db $ff ; end

; ================

	; PICNICKER
	db "Liz@"
	db 1 ; moves

	; party

	db 30, WEEPINBELL
		db SLEEP_POWDER
		db POISONPOWDER
		db STUN_SPORE
		db SLUDGE_BOMB

	db 32, NIDOKING
		db EARTHQUAKE
		db DOUBLE_KICK
		db POISON_STING
		db IRON_TAIL

	db 32, NIDOQUEEN
		db EARTHQUAKE
		db DOUBLE_KICK
		db LEER
		db BODY_SLAM

	db $ff ; end

; ================

	; PICNICKER
	db "Gina@"
	db 0 ; normal

	; party
	db 30, SUNFLORA
	db 31, SUNFLORA
	db 32, IVYSAUR

	db $ff ; end

; ================

	; PICNICKER
	db "Gina@"
	db 1 ; moves

	; party

	db 33, SUNFLORA
		db LEECH_SEED
		db GIGA_DRAIN
		db FLAMETHROWER
		db SUNNY_DAY

	db 34, SUNFLORA
		db GIGA_DRAIN
		db FLAMETHROWER
		db SOLAR_BEAM
		db SUNNY_DAY

	db 38, VENUSAUR
		db SOLAR_BEAM
		db RAZOR_LEAF
		db HEADBUTT
		db MUD_SLAP

	db $ff ; end

; ================

	; PICNICKER
	db "Tiffany@"
	db 1 ; moves

	; party

	db 44, CLEFAIRY
		db METRONOME
		db ENCORE
		db MOONLIGHT
		db MINIMIZE

	db $ff ; end

; ================
; ================================


TwinsGroup:
; ================================
; ================

	; TWINS
	db "Amy & Mimi@"
	db 0 ; normal

	; party
	db 10, SPINARAK
	db 10, LEDYBA

	db $ff ; end

; ================

	; TWINS
	db "Amy & Mimi@"
	db 0 ; normal

	; party
	db 10, LEDYBA
	db 10, SPINARAK

	db $ff ; end

; ================

	; TWINS
	db "Tori & Til@"
	db 1 ; moves

	; party

	db 16, MARILL
		db DEFENSE_CURL
		db ROLLOUT
		db BUBBLE_BEAM
		db DIZZY_PUNCH

	db 16, MAREEP
		db GROWL
		db THUNDER_WAVE
		db THUNDERSHOCK
		db SAND_ATTACK

	db $ff ; end

; ================

	; TWINS
	db "Tori & Til@"
	db 1 ; moves

	; party

	db 16, MAREEP
		db GROWL
		db THUNDER_WAVE
		db THUNDERSHOCK
		db SAND_ATTACK

	db 16, MARILL
		db DEFENSE_CURL
		db ROLLOUT
		db BUBBLE_BEAM
		db DIZZY_PUNCH

	db $ff ; end

; ================

	; TWINS
	db "Lo & Zoe@"
	db 0 ; normal

	; party
	db 59, VICTREEBEL
	db 59, VILEPLUME

	db $ff ; end

; ================

	; TWINS
	db "Lo & Zoe@"
	db 0 ; normal

	; party
	db 59, VILEPLUME
	db 59, VICTREEBEL

	db $ff ; end

; ================

	; TWINS
	db "Meg & Peg@"
	db 0 ; normal

	; party
	db 45, TEDDIURSA
	db 45, PHANPY

	db $ff ; end

; ================

	; TWINS
	db "Meg & Peg@"
	db 0 ; normal

	; party
	db 45, PHANPY
	db 45, TEDDIURSA

	db $ff ; end

; ================

	; TWINS
	db "Lea & Pia@"
	db 1 ; moves

	; party

	db 38, DRATINI
		db THUNDER_WAVE
		db TWISTER
		db FLAMETHROWER
		db HEADBUTT

	db 38, DRATINI
		db THUNDER_WAVE
		db TWISTER
		db ICE_BEAM
		db HEADBUTT

	db $ff ; end

; ================

	; TWINS
	db "Lea & Pia@"
	db 1 ; moves

	; party

	db 38, DRATINI
		db THUNDER_WAVE
		db TWISTER
		db ICE_BEAM
		db HEADBUTT

	db 38, DRATINI
		db THUNDER_WAVE
		db TWISTER
		db FLAMETHROWER
		db HEADBUTT

	db $ff ; end

; ================

	; TWINS
	db "Day & Dani@"
	db 0 ; normal

	; party
	db 51, PIKACHU
	db 51, PIKACHU

	db $ff ; end

; ================

	; TWINS
	db "Day & Dani@"
	db 0 ; normal

	; party
	db 51, PIKACHU
	db 51, PIKACHU

	db $ff ; end

; ================

	; TWINS
	db "Kay & Tia@"
	db 0 ; normal

	; party
	db 56, QUAGSIRE
	db 56, QUAGSIRE

	db $ff ; end

; ================

	; TWINS
	db "Kay & Tia@"
	db 0 ; normal

	; party
	db 56, QUAGSIRE
	db 56, QUAGSIRE

	db $ff ; end

; ================
; ================================


FisherGroup:
; ================================
; ================

	; FISHER
	db "Justin@"
	db 0 ; normal

	; party
	db 5, MAGIKARP
	db 5, MAGIKARP
	db 15, MAGIKARP
	db 5, MAGIKARP

	db $ff ; end

; ================

	; FISHER
	db "Ralph@"
	db 0 ; normal

	; party
	db 10, CHINCHOU

	db $ff ; end

; ================

	; FISHER
	db "Arnold@"
	db 0 ; normal

	; party
	db 62, CLOYSTER

	db $ff ; end

; ================

	; FISHER
	db "Kyle@"
	db 0 ; normal

	; party
	db 57, POLIWHIRL
	db 54, QWILFISH
	db 57, GYARADOS

	db $ff ; end

; ================

	; FISHER
	db "Henry@"
	db 0 ; normal

	; party
	db 8, POLIWAG
	db 8, POLIWAG

	db $ff ; end

; ================

	; FISHER
	db "Marvin@"
	db 0 ; normal

	; party
	db 20, MAGIKARP
	db 25, MAGIKARP
	db 30, GYARADOS

	db $ff ; end

; ================

	; FISHER
	db "Tully@"
	db 0 ; normal

	; party
	db 30, QWILFISH

	db $ff ; end

; ================

	; FISHER
	db "Andre@"
	db 0 ; normal

	; party
	db 32, GYARADOS

	db $ff ; end

; ================

	; FISHER
	db "Raymond@"
	db 1 ; moves

	; party

	db 30, MAGIKARP
		db SPLASH
		db TACKLE
		db FLAIL
		db DRAGON_RAGE

	db 30, MAGIKARP
		db SPLASH
		db TACKLE
		db FLAIL
		db DRAGON_RAGE

	db 30, MAGIKARP
		db SPLASH
		db TACKLE
		db FLAIL
		db DRAGON_RAGE

	db 30, MAGIKARP
		db SPLASH
		db TACKLE
		db FLAIL
		db DRAGON_RAGE

	db $ff ; end

; ================

	; FISHER
	db "Wilton@"
	db 0 ; normal

	; party
	db 34, QWILFISH
	db 34, REMORAID
	db 36, GYARADOS

	db $ff ; end

; ================

	; FISHER
	db "Edgar@"
	db 1 ; moves

	; party

	db 36, REMORAID
		db LOCK_ON
		db PSYBEAM
		db AURORA_BEAM
		db BUBBLE_BEAM

	db 36, REMORAID
		db LOCK_ON
		db PSYBEAM
		db AURORA_BEAM
		db BUBBLE_BEAM

	db $ff ; end

; ================

	; FISHER
	db "Jonah@"
	db 0 ; normal

	; party
	db 44, SHELLDER
	db 46, OCTILLERY
	db 44, REMORAID
	db 46, CLOYSTER

	db $ff ; end

; ================

	; FISHER
	db "Martin@"
	db 0 ; normal

	; party
	db 56, REMORAID
	db 58, OCTILLERY

	db $ff ; end

; ================

	; FISHER
	db "Stephen@"
	db 0 ; normal

	; party
	db 60, MAGIKARP
	db 58, QUAGSIRE
	db 55, QWILFISH
	db 55, TENTACRUEL

	db $ff ; end

; ================

	; FISHER
	db "Barney@"
	db 0 ; normal

	; party
	db 57, GYARADOS
	db 56, GYARADOS
	db 56, GYARADOS

	db $ff ; end

; ================

	; FISHER
	db "Ralph@"
	db 0 ; normal

	; party
	db 17, CHINCHOU

	db $ff ; end

; ================

	; FISHER
	db "Ralph@"
	db 0 ; normal

	; party
	db 17, QWILFISH
	db 19, CHINCHOU

	db $ff ; end

; ================

	; FISHER
	db "Tully@"
	db 0 ; normal

	; party
	db 23, QWILFISH

	db $ff ; end

; ================

	; FISHER
	db "Tully@"
	db 0 ; normal

	; party
	db 32, POLIWHIRL
	db 32, QWILFISH
	db 32, QWILFISH

	db $ff ; end

; ================

	; FISHER
	db "Wilton@"
	db 0 ; normal

	; party
	db 32, QWILFISH
	db 32, REMORAID
	db 36, GYARADOS

	db $ff ; end

; ================

	; FISHER
	db "Scott@"
	db 0 ; normal

	; party
	db 40, QWILFISH
	db 40, QWILFISH
	db 42, GYARADOS

	db $ff ; end

; ================

	; FISHER
	db "Wilton@"
	db 1 ; moves

	; party

	db 38, QWILFISH
		db WATERFALL
		db TAKE_DOWN
		db PIN_MISSILE
		db ROLLOUT

	db 38, GYARADOS
		db WATERFALL
		db TWISTER
		db DRAGON_RAGE
		db RAIN_DANCE

	db 42, OCTILLERY
		db PSYBEAM
		db AURORA_BEAM
		db OCTAZOOKA
		db HYPER_BEAM

	db $ff ; end

; ================

	; FISHER
	db "Ralph@"
	db 0 ; normal

	; party
	db 30, QWILFISH
	db 32, LANTURN

	db $ff ; end

; ================

	; FISHER
	db "Ralph@"
	db 1 ; moves

	; party

	db 35, QWILFISH
		db TOXIC
		db MINIMIZE
		db SURF
		db PIN_MISSILE

	db 39, LANTURN
		db FLAIL
		db WATERFALL
		db SPARK
		db CONFUSE_RAY

	db $ff ; end

; ================

	; FISHER
	db "Tully@"
	db 1 ; moves

	; party

	db 34, POLIWRATH
		db RAIN_DANCE
		db HYPNOSIS
		db WATERFALL
		db SUBMISSION

	db 34, QWILFISH
		db ROLLOUT
		db SURF
		db PIN_MISSILE
		db TAKE_DOWN

	db 37, QWILFISH
		db ROLLOUT
		db WATERFALL
		db PIN_MISSILE
		db TAKE_DOWN

	db $ff ; end

; ================

	; FISHER
	db "Paton@"
	db 0 ; normal

	; party
	db 20, REMORAID
	db 20, MANTINE

	db $ff ; end

; ================
; ================================


BirdKeeperGroup:
; ================================
; ================

	; BIRD_KEEPER
	db "Rod@"
	db 0 ; normal

	; party
	db 7, PIDGEY
	db 7, PIDGEY

	db $ff ; end

; ================

	; BIRD_KEEPER
	db "Abe@"
	db 0 ; normal

	; party
	db 9, PIDGEY

	db $ff ; end

; ================

	; BIRD_KEEPER
	db "Theo@"
	db 0 ; normal

	; party
	db 17, PIDGEY
	db 16, PIDGEY
	db 19, PIDGEY
	db 16, PIDGEY
	db 16, PIDGEY

	db $ff ; end

; ================

	; BIRD_KEEPER
	db "Toby@"
	db 0 ; normal

	; party
	db 16, DODUO
	db 17, DODUO
	db 18, DODUO

	db $ff ; end

; ================

	; BIRD_KEEPER
	db "Denis@"
	db 0 ; normal

	; party
	db 18, PIDGEY
	db 20, PIDGEOTTO
	db 18, FARFETCH_D

	db $ff ; end

; ================

	; BIRD_KEEPER
	db "Vance@"
	db 0 ; normal

	; party
	db 36, PIDGEOTTO
	db 36, PIDGEOTTO

	db $ff ; end

; ================

	; BIRD_KEEPER
	db "Hank@"
	db 0 ; normal

	; party
	db 13, PIDGEY
	db 64, PIDGEOT

	db $ff ; end

; ================

	; BIRD_KEEPER
	db "Roy@"
	db 0 ; normal

	; party
	db 55, PIDGEOTTO
	db 59, PIDGEOT

	db $ff ; end

; ================

	; BIRD_KEEPER
	db "Boris@"
	db 0 ; normal

	; party
	db 56, DODUO
	db 55, DODUO
	db 58, DODRIO

	db $ff ; end

; ================

	; BIRD_KEEPER
	db "Bob@"
	db 0 ; normal

	; party
	db 59, NOCTOWL

	db $ff ; end

; ================

	; BIRD_KEEPER
	db "Jose@"
	db 0 ; normal

	; party
	db 40, FARFETCH_D

	db $ff ; end

; ================

	; BIRD_KEEPER
	db "Peter@"
	db 0 ; normal

	; party
	db 6, PIDGEY
	db 6, PIDGEY
	db 8, HOOTHOOT

	db $ff ; end

; ================

	; BIRD_KEEPER
	db "Jose@"
	db 0 ; normal

	; party
	db 44, FARFETCH_D

	db $ff ; end

; ================

	; BIRD_KEEPER
	db "Perry@"
	db 0 ; normal

	; party
	db 59, FARFETCH_D

	db $ff ; end

; ================

	; BIRD_KEEPER
	db "Bret@"
	db 0 ; normal

	; party
	db 57, PIDGEOTTO
	db 57, FARFETCH_D

	db $ff ; end

; ================

	; BIRD_KEEPER
	db "Jose@"
	db 1 ; moves

	; party

	db 48, FARFETCH_D
		db SWORDS_DANCE
		db NIGHT_SLASH
		db PROTECT
		db FLY

	db $ff ; end

; ================

	; BIRD_KEEPER
	db "Vance@"
	db 0 ; normal

	; party
	db 32, PIDGEOTTO
	db 32, PIDGEOTTO

	db $ff ; end

; ================

	; BIRD_KEEPER
	db "Vance@"
	db 1 ; moves

	; party

	db 38, PIDGEOT
		db TOXIC
		db QUICK_ATTACK
		db WHIRLWIND
		db FLY

	db 38, PIDGEOT
		db SWIFT
		db PROTECT
		db STEEL_WING
		db FLY

	db $ff ; end

; ================
; ================================


HikerGroup:
; ================================
; ================

	; HIKER
	db "Anthony@"
	db 0 ; normal

	; party
	db 16, GEODUDE
	db 18, MACHOKE

	db $ff ; end

; ================

	; HIKER
	db "Russell@"
	db 0 ; normal

	; party
	db 4, GEODUDE
	db 6, GEODUDE
	db 8, GEODUDE

	db $ff ; end

; ================

	; HIKER
	db "Phillip@"
	db 0 ; normal

	; party
	db 23, GEODUDE
	db 23, GEODUDE
	db 25, GRAVELER

	db $ff ; end

; ================

	; HIKER
	db "Leonard@"
	db 0 ; normal

	; party
	db 23, GEODUDE
	db 25, MACHOP

	db $ff ; end

; ================

	; HIKER
	db "Anthony@"
	db 0 ; normal

	; party
	db 11, GEODUDE
	db 11, MACHOP

	db $ff ; end

; ================

	; HIKER
	db "Benjamin@"
	db 0 ; normal

	; party
	db 24, DIGLETT
	db 24, LARVITAR
	db 28, DUGTRIO

	db $ff ; end

; ================

	; HIKER
	db "Erik@"
	db 0 ; normal

	; party
	db 35, GRAVELER
	db 37, DONPHAN
	db 37, GLIGAR

	db $ff ; end

; ================

	; HIKER
	db "Michael@"
	db 0 ; normal

	; party
	db 35, GEODUDE
	db 35, GRAVELER
	db 35, GOLEM

	db $ff ; end

; ================

	; HIKER
	db "Parry@"
	db 0 ; normal

	; party
	db 36, ONIX
	db 35, PILOSWINE

	db $ff ; end

; ================

	; HIKER
	db "Timothy@"
	db 1 ; moves

	; party

	db 36, DIGLETT
		db MAGNITUDE
		db DIG
		db SAND_ATTACK
		db SLASH

	db 37, DUGTRIO
		db MAGNITUDE
		db DIG
		db SAND_ATTACK
		db SLASH

	db $ff ; end

; ================

	; HIKER
	db "Bailey@"
	db 0 ; normal

	; party
	db 15, GEODUDE
	db 15, GEODUDE
	db 15, GEODUDE
	db 17, LARVITAR

	db $ff ; end

; ================

	; HIKER
	db "Anthony@"
	db 0 ; normal

	; party
	db 25, GRAVELER
	db 27, GRAVELER
	db 29, MACHOKE

	db $ff ; end

; ================

	; HIKER
	db "Eoin@"
	db 0 ; normal

	; party
	db 52, GRAVELER
	db 52, GRAVELER
	db 52, GRAVELER

	db $ff ; end

; ================

	; HIKER
	db "Noland@"
	db 0 ; normal

	; party
	db 45, SANDSLASH
	db 47, GOLEM

	db $ff ; end

; ================

	; HIKER
	db "Clarke@"
	db 0 ; normal

	; party
	db 53, DUGTRIO
	db 55, ONIX

	db $ff ; end

; ================

	; HIKER
	db "Kenny@"
	db 0 ; normal

	; party
	db 54, SANDSLASH
	db 56, GRAVELER
	db 58, GOLEM
	db 56, GRAVELER

	db $ff ; end

; ================

	; HIKER
	db "Jim@"
	db 0 ; normal

	; party
	db 57, MACHAMP

	db $ff ; end

; ================

	; HIKER
	db "Daniel@"
	db 0 ; normal

	; party
	db 11, ONIX

	db $ff ; end

; ================

	; HIKER
	db "Parry@"
	db 1 ; moves

	; party

	db 36, PILOSWINE
		db EARTHQUAKE
		db AVALANCHE
		db REST
		db TAKE_DOWN

	db 36, DUGTRIO
		db MAGNITUDE
		db DIG
		db MUD_SLAP
		db SLASH

	db 39, STEELIX
		db DIG
		db IRON_TAIL
		db SANDSTORM
		db SLAM

	db $ff ; end

; ================

	; HIKER
	db "Parry@"
	db 0 ; normal

	; party
	db 30, ONIX

	db $ff ; end

; ================

	; HIKER
	db "Anthony@"
	db 0 ; normal

	; party
	db 30, GRAVELER
	db 30, GRAVELER
	db 32, MACHOKE

	db $ff ; end

; ================

	; HIKER
	db "Anthony@"
	db 1 ; moves

	; party

	db 34, GRAVELER
		db MAGNITUDE
		db SELFDESTRUCT
		db DEFENSE_CURL
		db ROLLOUT

	db 36, GOLEM
		db MAGNITUDE
		db SELFDESTRUCT
		db DEFENSE_CURL
		db ROLLOUT

	db 34, MACHAMP
		db KARATE_CHOP
		db VITAL_THROW
		db HEADBUTT
		db DIG

	db $ff ; end

; ================

	; HIKER
	db "Edwin@"
	db 0 ; normal

	; party
	db 64, GOLEM

	db $ff ; end

; ================

	; HIKER
	db "Devin@"
	db 0 ; normal

	; party
	db 22, DUNSPARCE
	db 22, DUNSPARCE
	db 22, DUNSPARCE

	db $ff ; end

; ================

	; HIKER
	db "Seamus@"
	db 0 ; normal

	; party
	db 56, DUNSPARCE
	db 53, ONIX
	db 54, GOLEM
	db 53, ONIX

	db $ff ; end

; ================

	; HIKER
	db "Tony@"
	db 0 ; normal

	; party
	db 17, DUNSPARCE
	db 18, OMANYTE
	db 18, KABUTO

	db $ff ; end

; ================
; ================================


GruntMGroup:
; ================================
; ================

	; unused
	; GRUNTM
	db "Grunt@"
	db 0 ; normal

	; party
	db 10, ZUBAT

	db $ff ; end

; ================

	; GRUNTM
	db "Grunt@"
	db 0 ; normal

	; party
	db 7, RATTATA
	db 9, ZUBAT
	db 9, GASTLY

	db $ff ; end

; ================

	; GRUNTM
	db "Grunt@"
	db 0 ; normal

	; party
	db 33, RATICATE
	db 33, SNEASEL

	db $ff ; end

; ================

	; GRUNTM
	db "Grunt@"
	db 0 ; normal

	; party
	db 32, GRIMER
	db 33, HOUNDOUR
	db 34, MUK

	db $ff ; end

; ================

	; GRUNTM
	db "Grunt@"
	db 0 ; normal

	; party
	db 31, RATTATA
	db 33, HOUNDOUR
	db 32, RATICATE
	db 32, RATICATE
	db 33, MEOWTH

	db $ff ; end

; ================

	; GRUNTM
	db "Grunt@"
	db 0 ; normal

	; party
	db 34, GOLBAT
	db 34, VENOMOTH

	db $ff ; end

; ================

	; GRUNTM
	db "Grunt@"
	db 0 ; normal

	; party
	db 33, KOFFING
	db 33, GRIMER
	db 34, GOLBAT
	db 34, RATICATE

	db $ff ; end

; ================

	; GRUNTM
	db "Grunt@"
	db 0 ; normal

	; party
	db 36, WEEZING

	db $ff ; end

; ================

	; GRUNTM
	db "Grunt@"
	db 0 ; normal

	; party
	db 35, RATICATE
	db 36, WEEZING

	db $ff ; end

; ================

	; GRUNTM
	db "Grunt@"
	db 0 ; normal

	; party
	db 32, ZUBAT
	db 35, GOLBAT
	db 33, MUK

	db $ff ; end

; ================

	; GRUNTM
	db "Grunt@"
	db 0 ; normal

	; party
	db 34, MUK
	db 35, HAUNTER
	db 36, RATICATE

	db $ff ; end

; ================

	; GRUNTM
	db "Grunt@"
	db 0 ; normal

	; party
	db 23, RATICATE
	db 24, PERSIAN

	db $ff ; end

; ================

	; GRUNTM
	db "Grunt@"
	db 0 ; normal

	; party
	db 37, RATICATE

	db $ff ; end

; ================

	; GRUNTM
	db "Grunt@"
	db 0 ; normal

	; party
	db 35, RATICATE
	db 35, GOLBAT

	db $ff ; end

; ================

	; GRUNTM
	db "Grunt@"
	db 0 ; normal

	; party
	db 35, MUK
	db 35, WEEZING

	db $ff ; end

; ================

	; GRUNTM
	db "Grunt@"
	db 0 ; normal

	; party
	db 26, MEOWTH
	db 26, GASTLY
	db 27, RATICATE
	db 26, RATTATA

	db $ff ; end

; ================

	; GRUNTM
	db "Grunt@"
	db 0 ; normal

	; party
	db 32, GOLBAT

	db $ff ; end

; ================

	; GRUNTM
	db "Grunt@"
	db 0 ; normal

	; party
	db 27, HOUNDOUR
	db 28, GOLBAT
	db 28, RATICATE

	db $ff ; end

; ================

	; GRUNTM
	db "Grunt@"
	db 0 ; normal

	; party
	db 28, VENONAT
	db 28, VENOMOTH

	db $ff ; end

; ================

	; GRUNTM
	db "Grunt@"
	db 0 ; normal

	; party
	db 26, ZUBAT
	db 27, GRIMER
	db 28, MEOWTH

	db $ff ; end

; ================

	; GRUNTM
	db "Grunt@"
	db 0 ; normal

	; party
	db 26, DROWZEE
	db 27, ZUBAT
	db 28, HAUNTER

	db $ff ; end

; ================

	; GRUNTM
	db "Grunt@"
	db 0 ; normal

	; party
	db 23, GOLBAT
	db 23, HAUNTER
	db 23, GOLBAT

	db $ff ; end

; ================

	; GRUNTM
	db "Grunt@"
	db 0 ; normal

	; party
	db 23, KOFFING
	db 25, HOUNDOUR
	db 23, TENTACOOL

	db $ff ; end

; ================

	; GRUNTM
	db "Grunt@"
	db 0 ; normal

	; party
	db 37, HAUNTER
	db 36, WEEZING

	db $ff ; end

; ================

	; GRUNTM
	db "Grunt@"
	db 0 ; normal

	; party
	db 36, TENTACRUEL
	db 35, MUK

	db $ff ; end

; ================

	; GRUNTM
	db "Grunt@"
	db 0 ; normal

	; party
	db 23, ZUBAT
	db 24, RATICATE
	db 25, MURKROW

	db $ff ; end

; ================

	; unused
	; GRUNTM
	db "Grunt@"
	db 0 ; normal

	; party
	db 22, ZUBAT

	db $ff ; end

; ================

	; GRUNTM
	db "Grunt@"
	db 0 ; normal

	; party
	db 19, RATICATE

	db $ff ; end

; ================

	; GRUNTM
	db "Grunt@"
	db 0 ; normal

	; party
	db 9, RATTATA
	db 9, MEOWTH

	db $ff ; end

; ================

	; GRUNTM
	db "Grunt@"
	db 0 ; normal

	; party
	db 25, GOLBAT
	db 25, GOLBAT
	db 30, ARBOK

	db $ff ; end

; ================

	; GRUNTM
	db "Grunt@"
	db 0 ; normal

	; party
	db 51, GOLBAT
	db 52, WEEZING
	db 51, MUK

	db $ff ; end

; ================
; ================================


GruntFGroup:
; ================================
; ================

	; GRUNTF
	db "Grunt@"
	db 0 ; normal

	; party
	db 9, ZUBAT
	db 11, EKANS

	db $ff ; end

; ================

	; GRUNTF
	db "Grunt@"
	db 0 ; normal

	; party
	db 35, ARBOK

	db $ff ; end

; ================

	; GRUNTF
	db "Grunt@"
	db 0 ; normal

	; party
	db 36, UMBREON
	db 35, GLOOM

	db $ff ; end

; ================

	; GRUNTF
	db "Grunt@"
	db 0 ; normal

	; party
	db 33, EKANS
	db 34, ODDISH
	db 35, ARBOK
	db 36, GLOOM

	db $ff ; end

; ================

	; GRUNTF
	db "Grunt@"
	db 1 ; moves

	; party
	db 29, ARBOK
		db GLARE
		db SCREECH
		db ACID
		db CRUNCH

	db 28, QWILFISH
		db DEFENSE_CURL
		db MINIMIZE
		db WATER_GUN
		db ROLLOUT

	db 28, GLOOM
		db GROWTH
		db STUN_SPORE
		db SLEEP_POWDER
		db MEGA_DRAIN

	db $ff ; end

; ================

	; GRUNTF
	db "Grunt@"
	db 0 ; normal

	; party
	db 22, EKANS
	db 23, ARBOK
	db 23, GLOOM

	db $ff ; end

; ================
; ================================


JessieJamesGroup:
; ================================
; ================

	; JESSIE_JAMES
	db "& James@"
	db 0 ; normal

	; party
	db 25, WEEZING
	db 25, ARBOK
	db 23, VICTREEBEL
	db 23, WOBBUFFET
	db 27, MEOWTH

	db $ff ; end

; ================
; ================================


PokefanMGroup:
; ================================
; ================

	; POKEFANM
	db "William@"
	db 2 ; item

	; party
	db 16, RAICHU, BERRY

	db $ff ; end

; ================

	; POKEFANM
	db "Derek@"
	db 2 ; item

	; party
	db 18, PIKACHU, BERRY

	db $ff ; end

; ================

	; POKEFANM
	db "Robert@"
	db 2 ; item

	; party
	db 56, QUAGSIRE, GOLD_BERRY

	db $ff ; end

; ================

	; POKEFANM
	db "Joshua@"
	db 2 ; item

	; party
	db 54, PIKACHU, GOLD_BERRY
	db 54, PIKACHU, GOLD_BERRY
	db 54, PIKACHU, GOLD_BERRY
	db 54, PIKACHU, GOLD_BERRY
	db 54, PIKACHU, GOLD_BERRY
	db 54, PIKACHU, GOLD_BERRY

	db $ff ; end

; ================

	; POKEFANM
	db "Carter@"
	db 2 ; item

	; party
	db 59, BULBASAUR, GOLD_BERRY
	db 59, CHARMANDER, GOLD_BERRY
	db 59, SQUIRTLE, GOLD_BERRY

	db $ff ; end

; ================

	; POKEFANM
	db "Trevor@"
	db 2 ; item

	; party
	db 57, PSYDUCK, GOLD_BERRY

	db $ff ; end

; ================

	; POKEFANM
	db "Brandon@"
	db 2 ; item

	; party
	db 13, SNUBBULL, BERRY
	db 13, MAREEP, NO_ITEM

	db $ff ; end

; ================

	; POKEFANM
	db "Jeremy@"
	db 2 ; item

	; party
	db 44, MEOWTH, GOLD_BERRY
	db 45, PERSIAN, GOLD_BERRY
	db 44, MEOWTH, GOLD_BERRY

	db $ff ; end

; ================

	; POKEFANM
	db "Colin@"
	db 2 ; item

	; party
	db 49, GLACEON, GOLD_BERRY

	db $ff ; end

; ================

	; POKEFANM
	db "Derek@"
	db 2 ; item

	; party
	db 19, PIKACHU, BERRY

	db $ff ; end

; ================

	; POKEFANM
	db "Derek@"
	db 2 ; item

	; party
	db 36, PIKACHU, GOLD_BERRY

	db $ff ; end

; ================

	; POKEFANM
	db "Alex@"
	db 2 ; item

	; party
	db 56, NIDOKING, KINGS_ROCK
	db 56, SLOWKING, KINGS_ROCK
	db 56, KINGLER, KINGS_ROCK

	db $ff ; end

; ================

	; POKEFANM
	db "Rex@"
	db 2 ; item

	; party
	db 53, PHANPY, GOLD_BERRY

	db $ff ; end

; ================

	; POKEFANM
	db "Allan@"
	db 2 ; item

	; party
	db 53, TEDDIURSA, GOLD_BERRY

	db $ff ; end

; ================
; ================================


PokefanFGroup:
; ================================
; ================

	; POKEFANF
	db "Beverly@"
	db 2 ; item

	; party
	db 16, SNUBBULL, BERRY

	db $ff ; end

; ================

	; POKEFANF
	db "Ruth@"
	db 2 ; item

	; party
	db 20, PIKACHU, BERRY

	db $ff ; end

; ================

	; POKEFANF
	db "Beverly@"
	db 2 ; item

	; party
	db 18, SNUBBULL, BERRY

	db $ff ; end

; ================

	; POKEFANF
	db "Beverly@"
	db 2 ; item

	; party
	db 30, GRANBULL, GOLD_BERRY

	db $ff ; end

; ================

	; POKEFANF
	db "Georgia@"
	db 2 ; item

	; party
	db 44, SENTRET, BERRY
	db 44, SENTRET, BERRY
	db 44, SENTRET, BERRY
	db 46, FURRET, GOLD_BERRY
	db 44, SENTRET, BERRY

	db $ff ; end

; ================

	; POKEFANF
	db "Jaime@"
	db 2 ; item

	; party
	db 16, MEOWTH, BERRY

	db $ff ; end

; ================

	; POKEFANF
	db "Boone@"
	db 2 ; item

	; party
	db 57, PERSIAN, GOLD_BERRY
	db 55, WIGGLYTUFF, GOLD_BERRY

	db $ff ; end

; ================

	; POKEFANF
	db "Eleanor@"
	db 2 ; item

	; party
	db 57, GRANBULL, GOLD_BERRY
	db 55, CLEFABLE, GOLD_BERRY

	db $ff ; end

; ================
; ================================


OfficerMGroup:
; ================================
; ================

	; OFFICERM
	db "Keith@"
	db 0 ; normal

	; party
	db 28, GROWLITHE
	db 28, GROWLITHE

	db $ff ; end

; ================

	; OFFICERM
	db "Dirk@"
	db 0 ; normal

	; party
	db 14, GROWLITHE
	db 14, MACHOP

	db $ff ; end

; ================
; ================================


OfficerFGroup:
; ================================
; ================

	; OFFICERF
	db "Jenny@"
	db 0 ; normal

	; party
	db 54, GROWLITHE
	db 58, ARCANINE
	db 57, BLASTOISE

	db $ff ; end

; ================

	; OFFICERF
	db "Mara@"
	db 0 ; normal

	; party
	db 17, GROWLITHE

	db $ff ; end

; ================
; ================================


PokemaniacGroup:
; ================================
; ================

	; POKEMANIAC
	db "Larry@"
	db 0 ; normal

	; party
	db 11, SLOWPOKE

	db $ff ; end

; ================

	; POKEMANIAC
	db "Andrew@"
	db 0 ; normal

	; party
	db 24, MAROWAK
	db 24, MAROWAK

	db $ff ; end

; ================

	; POKEMANIAC
	db "Calvin@"
	db 0 ; normal

	; party
	db 26, KANGASKHAN

	db $ff ; end

; ================

	; POKEMANIAC
	db "Shane@"
	db 0 ; normal

	; party
	db 27, NIDORINA
	db 27, NIDORINO

	db $ff ; end

; ================

	; POKEMANIAC
	db "Beckett@"
	db 0 ; normal

	; party
	db 30, SLOWBRO

	db $ff ; end

; ================

	; POKEMANIAC
	db "Brent@"
	db 0 ; normal

	; party
	db 32, MAROWAK

	db $ff ; end

; ================

	; POKEMANIAC
	db "Ron@"
	db 0 ; normal

	; party
	db 30, NIDOKING

	db $ff ; end

; ================

	; POKEMANIAC
	db "Ethan@"
	db 0 ; normal

	; party
	db 45, RHYHORN
	db 46, RHYDON

	db $ff ; end

; ================

	; POKEMANIAC
	db "Brent@"
	db 0 ; normal

	; party
	db 28, KANGASKHAN

	db $ff ; end

; ================

	; POKEMANIAC
	db "Brent@"
	db 1 ; moves

	; party

	db 39, PORYGON
		db RECOVER
		db PSYCHIC_M
		db CONVERSION
		db TRI_ATTACK

	db $ff ; end

; ================

	; POKEMANIAC
	db "Issac@"
	db 0 ; normal

	; party
	db 12, SLOWPOKE

	db $ff ; end

; ================

	; POKEMANIAC
	db "Donald@"
	db 0 ; normal

	; party
	db 11, SLOWPOKE
	db 11, NIDORAN_M

	db $ff ; end

; ================

	; POKEMANIAC
	db "Zach@"
	db 0 ; normal

	; party
	db 37, RHYHORN

	db $ff ; end

; ================

	; POKEMANIAC
	db "Brent@"
	db 1 ; moves

	; party

	db 44, CHANSEY
		db ROLLOUT
		db ATTRACT
		db EGG_BOMB
		db SOFTBOILED

	db $ff ; end

; ================

	; POKEMANIAC
	db "Miller@"
	db 0 ; normal

	; party
	db 28, NIDOKING
	db 28, NIDOQUEEN

	db $ff ; end

; ================

	; POKEMANIAC
	db "Moe@"
	db 0 ; normal

	; party
	db 43, GLOOM
	db 43, WEEPINBELL

	db $ff ; end

; ================

	; POKEMANIAC
	db "Aidan@"
	db 1 ; moves

	; party

	db 36, SNORLAX
		db HEADBUTT
		db DEFENSE_CURL
		db ROLLOUT
		db SELFDESTRUCT

	db 36, PORYGON2
		db CONVERSION
		db RECOVER
		db PSYBEAM
		db TRI_ATTACK

	db $ff ; end

; ================
; ================================


SuperNerdGroup:
; ================================
; ================

	; SUPER_NERD
	db "Stan@"
	db 0 ; normal

	; party
	db 20, GRIMER

	db $ff ; end

; ================

	; SUPER_NERD
	db "Eric@"
	db 0 ; normal

	; party
	db 11, GRIMER
	db 11, GRIMER

	db $ff ; end

; ================

	; SUPER_NERD
	db "Sam@"
	db 0 ; normal

	; party
	db 55, GRIMER
	db 56, MUK

	db $ff ; end

; ================

	; SUPER_NERD
	db "Tyrone@"
	db 0 ; normal

	; party
	db 55, MAGNEMITE
	db 56, MAGNETON
	db 55, MAGNEMITE

	db $ff ; end

; ================

	; SUPER_NERD
	db "Pat@"
	db 0 ; normal

	; party
	db 56, PORYGON

	db $ff ; end

; ================

	; SUPER_NERD
	db "Shawn@"
	db 0 ; normal

	; party
	db 44, MAGNEMITE
	db 46, MUK
	db 45, MAGNETON

	db $ff ; end

; ================

	; SUPER_NERD
	db "Teru@"
	db 0 ; normal

	; party
	db 7, MAGNEMITE
	db 11, VOLTORB
	db 7, MAGNEMITE
	db 9, MAGNEMITE

	db $ff ; end

; ================

	; SUPER_NERD
	db "Hugh@"
	db 1 ; moves

	; party

	db 39, SEADRA
		db SMOKESCREEN
		db TWISTER
		db SURF
		db WATERFALL

	db $ff ; end

; ================

	; SUPER_NERD
	db "Markus@"
	db 1 ; moves

	; party

	db 30, SLOWBRO
		db CONFUSION
		db HEADBUTT
		db WATER_PULSE
		db STRENGTH

	db $ff ; end

; ================

	; SUPER_NERD
	db "Cary@"
	db 0 ; normal

	; party
	db 63, FLAREON

	db $ff ; end

; ================

	; SUPER_NERD
	db "Waldo@"
	db 0 ; normal

	; party
	db 65, CHARIZARD

	db $ff ; end

; ================

	; SUPER_NERD
	db "Merle@"
	db 0 ; normal

	; party
	db 63, MAGCARGO

	db $ff ; end

; ================

	; SUPER_NERD
	db "Luis@"
	db 0 ; normal

	; party
	db 62, MAGMAR
	db 63, WEEZING
	db 59, MAGMAR

	db $ff ; end

; ================

	; SUPER_NERD
	db "Miguel@"
	db 0 ; normal

	; party
	db 62, OMASTAR
	db 62, KABUTOPS

	db $ff ; end

; ================
; ================================


LassGroup:
; ================================
; ================

	; LASS
	db "Carrie@"
	db 1 ; moves

	; party

	db 18, SNUBBULL
		db SCARY_FACE
		db CHARM
		db BITE
		db LICK

	db $ff ; end

; ================

	; LASS
	db "Alice@"
	db 0 ; normal

	; party
	db 57, GLOOM
	db 60, ARBOK
	db 57, GLOOM

	db $ff ; end

; ================

	; LASS
	db "Krise@"
	db 0 ; normal

	; party
	db 14, ODDISH
	db 17, CUBONE

	db $ff ; end

; ================

	; LASS
	db "Connie@"
	db 0 ; normal

	; party
	db 21, MARILL

	db $ff ; end

; ================

	; LASS
	db "Linda@"
	db 0 ; normal

	; party
	db 57, BULBASAUR
	db 59, IVYSAUR
	db 61, VENUSAUR

	db $ff ; end

; ================

	; LASS
	db "Laura@"
	db 2 ; item

	; party
	db 52, GLOOM, GOLD_BERRY
	db 54, PIDGEOTTO, NO_ITEM
	db 54, BELLOSSOM, NO_ITEM

	db $ff ; end

; ================

	; LASS
	db "Shannon@"
	db 0 ; normal

	; party
	db 53, PARAS
	db 53, PARAS
	db 55, PARASECT

	db $ff ; end

; ================

	; LASS
	db "Michelle@"
	db 0 ; normal

	; party
	db 56, LEAFEON
	db 57, TANGELA
	db 58, SUNFLORA

	db $ff ; end

; ================

	; LASS
	db "Dana@"
	db 1 ; moves

	; party

	db 19, FLAAFFY
		db TACKLE
		db GROWL
		db THUNDERSHOCK
		db THUNDER_WAVE

	db 19, PSYDUCK
		db SCRATCH
		db LEER
		db DISABLE
		db CONFUSION

	db $ff ; end

; ================

	; LASS
	db "Ellen@"
	db 0 ; normal

	; party
	db 52, WIGGLYTUFF
	db 54, GRANBULL

	db $ff ; end

; ================

	; LASS
	db "Connie@"
	db 0 ; normal

	; party
	db 21, MARILL

	db $ff ; end

; ================

	; LASS
	db "Connie@"
	db 0 ; normal

	; party
	db 21, MARILL

	db $ff ; end

; ================

	; LASS
	db "Dana@"
	db 1 ; moves

	; party

	db 21, FLAAFFY
		db TACKLE
		db GROWL
		db THUNDERSHOCK
		db THUNDER_WAVE

	db 21, PSYDUCK
		db SCRATCH
		db LEER
		db DISABLE
		db CONFUSION

	db $ff ; end

; ================

	; LASS
	db "Dana@"
	db 1 ; moves

	; party

	db 29, PSYDUCK
		db SCRATCH
		db DISABLE
		db CONFUSION
		db SCREECH

	db 29, AMPHAROS
		db TACKLE
		db THUNDERSHOCK
		db THUNDER_WAVE
		db THUNDERBOLT

	db $ff ; end

; ================

	; LASS
	db "Dana@"
	db 1 ; moves

	; party

	db 32, PSYDUCK
		db SCRATCH
		db DISABLE
		db CONFUSION
		db SCREECH

	db 32, AMPHAROS
		db TACKLE
		db THUNDERPUNCH
		db THUNDER_WAVE
		db THUNDERBOLT

	db $ff ; end

; ================

	; LASS
	db "Dana@"
	db 1 ; moves

	; party

	db 36, AMPHAROS
		db SWIFT
		db THUNDERPUNCH
		db THUNDER_WAVE
		db THUNDERBOLT

	db 36, GOLDUCK
		db DISABLE
		db SURF
		db PSYCHIC_M
		db SCREECH

	db $ff ; end

; ================
; ================================


BeautyGroup:
; ================================
; ================

	; BEAUTY
	db "Victoria@"
	db 0 ; normal

	; party
	db 9, SENTRET
	db 13, SENTRET
	db 17, SENTRET

	db $ff ; end

; ================

	; BEAUTY
	db "Samantha@"
	db 1 ; moves

	; party

	db 16, MEOWTH
		db SCRATCH
		db GROWL
		db BITE
		db PAY_DAY

	db 16, MEOWTH
		db SCRATCH
		db GROWL
		db BITE
		db SLASH

	db $ff ; end

; ================

	; BEAUTY
	db "Cassie@"
	db 0 ; normal

	; party
	db 47, VILEPLUME
	db 49, BUTTERFREE

	db $ff ; end

; ================

	; BEAUTY
	db "Julia@"
	db 0 ; normal

	; party
	db 56, PARAS
	db 56, EXEGGCUTE
	db 59, PARASECT

	db $ff ; end

; ================

	; BEAUTY
	db "Valencia@"
	db 0 ; normal

	; party
	db 18, SUNKERN
	db 18, SUNFLORA
	db 18, SUNFLORA

	db $ff ; end

; ================

	; BEAUTY
	db "Olivia@"
	db 0 ; normal

	; party
	db 19, CORSOLA

	db $ff ; end

; ================

	; BEAUTY
	db "Callie@"
	db 0 ; normal

	; party
	db 16, CLEFABLE
	db 16, WIGGLYTUFF

	db $ff ; end

; ================

	; BEAUTY
	db "Cassandra@"
	db 0 ; normal

	; party
	db 16, CLEFABLE
	db 16, WIGGLYTUFF

	db $ff ; end

; ================

	; BEAUTY
	db "Charlotte@"
	db 0 ; normal

	; party
	db 20, BELLOSSOM

	db $ff ; end

; ================
; ================================


FirebreatherGroup:
; ================================
; ================

	; FIREBREATHER
	db "Otis@"
	db 0 ; normal

	; party
	db 59, MAGMAR
	db 58, WEEZING
	db 61, MAGMAR

	db $ff ; end

; ================

	; FIREBREATHER
	db "Dick@"
	db 0 ; normal

	; party
	db 53, CHARMANDER
	db 55, CHARMELEON
	db 57, CHARIZARD

	db $ff ; end

; ================

	; FIREBREATHER
	db "Ned@"
	db 0 ; normal

	; party
	db 16, KOFFING
	db 17, GROWLITHE
	db 16, KOFFING

	db $ff ; end

; ================

	; FIREBREATHER
	db "Burt@"
	db 0 ; normal

	; party
	db 59, WEEZING
	db 61, MAGCARGO

	db $ff ; end

; ================

	; FIREBREATHER
	db "Bill@"
	db 0 ; normal

	; party
	db 6, KOFFING
	db 6, KOFFING

	db $ff ; end

; ================

	; FIREBREATHER
	db "Walt@"
	db 0 ; normal

	; party
	db 11, MAGMAR
	db 16, MAGMAR

	db $ff ; end

; ================

	; FIREBREATHER
	db "Ray@"
	db 0 ; normal

	; party
	db 9, VULPIX

	db $ff ; end

; ================

	; FIREBREATHER
	db "Lyle@"
	db 0 ; normal

	; party
	db 44, KOFFING
	db 46, FLAREON
	db 45, WEEZING

	db $ff ; end

; ================
; ================================


JugglerGroup:
; ================================
; ================

	; JUGGLER
	db "Irwin@"
	db 0 ; normal

	; party
	db 2, VOLTORB
	db 6, VOLTORB
	db 10, VOLTORB
	db 14, VOLTORB

	db $ff ; end

; ================

	; JUGGLER
	db "Fritz@"
	db 0 ; normal

	; party
	db 45, MR__MIME
	db 45, MAGMAR
	db 45, MACHOKE

	db $ff ; end

; ================

	; JUGGLER
	db "Horton@"
	db 0 ; normal

	; party
	db 53, ELECTRODE
	db 53, ELECTRODE
	db 53, ELECTRODE

	db $ff ; end

; ================

	; JUGGLER
	db "Irwin@"
	db 0 ; normal

	; party
	db 6, VOLTORB
	db 10, VOLTORB
	db 14, VOLTORB
	db 18, VOLTORB

	db $ff ; end

; ================

	; JUGGLER
	db "Irwin@"
	db 0 ; normal

	; party
	db 18, VOLTORB
	db 22, VOLTORB
	db 26, VOLTORB
	db 30, ELECTRODE

	db $ff ; end

; ================

	; JUGGLER
	db "Irwin@"
	db 0 ; normal

	; party
	db 18, VOLTORB
	db 22, VOLTORB
	db 26, VOLTORB
	db 30, ELECTRODE

	db $ff ; end

; ================
; ================================


SchoolboyGroup:
; ================================
; ================

	; SCHOOLBOY
	db "Jack@"
	db 0 ; normal

	; party
	db 12, ODDISH
	db 15, VOLTORB

	db $ff ; end

; ================

	; SCHOOLBOY
	db "Kipp@"
	db 0 ; normal

	; party
	db 55, VOLTORB
	db 58, VOLTORB
	db 55, MAGNEMITE
	db 58, MAGNETON

	db $ff ; end

; ================

	; SCHOOLBOY
	db "Alan@"
	db 0 ; normal

	; party
	db 17, TANGELA

	db $ff ; end

; ================

	; SCHOOLBOY
	db "Johnny@"
	db 2 ; item

	; party
	db 18, BELLSPROUT, GOLD_LEAF
	db 16, SPINARAK, NO_ITEM
	db 17, RATTATA, BERRY

	db $ff ; end

; ================

	; SCHOOLBOY
	db "Danny@"
	db 0 ; normal

	; party
	db 61, JYNX
	db 61, ELECTABUZZ
	db 61, MAGMAR

	db $ff ; end

; ================

	; SCHOOLBOY
	db "Tommy@"
	db 0 ; normal

	; party
	db 56, XATU
	db 57, ALAKAZAM

	db $ff ; end

; ================

	; SCHOOLBOY
	db "Dudley@"
	db 2 ; item

	; party
	db 55, ODDISH, GOLD_BERRY

	db $ff ; end

; ================

	; SCHOOLBOY
	db "Joe@"
	db 2 ; item

	; party
	db 54, TANGROWTH, GOLD_BERRY
	db 54, VAPOREON, NO_ITEM

	db $ff ; end

; ================

	; SCHOOLBOY
	db "Billy@"
	db 0 ; normal

	; party
	db 57, PARAS
	db 59, PARASECT
	db 57, POLIWHIRL
	db 55, DITTO

	db $ff ; end

; ================

	; SCHOOLBOY
	db "Chad@"
	db 0 ; normal

	; party
	db 20, MR__MIME

	db $ff ; end

; ================

	; SCHOOLBOY
	db "Nate@"
	db 0 ; normal

	; party
	db 46, LEDIAN
	db 48, EXEGGUTOR

	db $ff ; end

; ================

	; SCHOOLBOY
	db "Ricky@"
	db 0 ; normal

	; party
	db 44, GIRAFARIG
	db 46, DITTO

	db $ff ; end

; ================

	; SCHOOLBOY
	db "Jack@"
	db 0 ; normal

	; party
	db 14, ODDISH
	db 17, VOLTORB

	db $ff ; end

; ================

	; SCHOOLBOY
	db "Jack@"
	db 0 ; normal

	; party
	db 28, GLOOM
	db 31, ELECTRODE

	db $ff ; end

; ================

	; SCHOOLBOY
	db "Alan@"
	db 0 ; normal

	; party
	db 17, TANGELA
	db 17, YANMA

	db $ff ; end

; ================

	; SCHOOLBOY
	db "Alan@"
	db 0 ; normal

	; party
	db 20, NATU
	db 22, TANGELA
	db 20, QUAGSIRE
	db 25, YANMA

	db $ff ; end

; ================

	; SCHOOLBOY
	db "Chad@"
	db 0 ; normal

	; party
	db 19, MR__MIME
	db 19, MAGNEMITE

	db $ff ; end

; ================

	; SCHOOLBOY
	db "Chad@"
	db 0 ; normal

	; party
	db 27, MR__MIME
	db 31, MAGNETON

	db $ff ; end

; ================

	; SCHOOLBOY
	db "Jack@"
	db 0 ; normal

	; party
	db 30, GLOOM
	db 33, GROWLITHE
	db 33, ELECTRODE

	db $ff ; end

; ================

	; SCHOOLBOY
	db "Jack@"
	db 1 ; moves

	; party

	db 35, ELECTRODE
		db SCREECH
		db SONIC_BOOM
		db ROLLOUT
		db LIGHT_SCREEN

	db 35, GROWLITHE
		db SUNNY_DAY
		db LEER
		db TAKE_DOWN
		db FLAME_WHEEL

	db 37, VILEPLUME
		db SOLAR_BEAM
		db SLEEP_POWDER
		db ACID
		db MOONLIGHT

	db $ff ; end

; ================

	; SCHOOLBOY
	db "Alan@"
	db 0 ; normal

	; party
	db 27, NATU
	db 27, TANGELA
	db 30, QUAGSIRE
	db 30, YANMA

	db $ff ; end

; ================

	; SCHOOLBOY
	db "Alan@"
	db 1 ; moves

	; party

	db 35, XATU
		db PECK
		db NIGHT_SHADE
		db SWIFT
		db FUTURE_SIGHT

	db 38, TANGROWTH
		db ANCIENTPOWER
		db POISONPOWDER
		db VINE_WHIP
		db MEGA_DRAIN

	db 37, YANMEGA
		db ANCIENTPOWER
		db QUICK_ATTACK
		db DOUBLE_TEAM
		db SONIC_BOOM

	db 35, QUAGSIRE
		db LEER
		db SLAM
		db CALM_MIND
		db EARTHQUAKE

	db $ff ; end

; ================

	; SCHOOLBOY
	db "Chad@"
	db 0 ; normal

	; party
	db 30, MR__MIME
	db 34, MAGNETON

	db $ff ; end

; ================

	; SCHOOLBOY
	db "Chad@"
	db 1 ; moves

	; party

	db 34, MR__MIME
		db PSYCHIC_M
		db LIGHT_SCREEN
		db REFLECT
		db ENCORE

	db 38, MAGNETON
		db ZAP_CANNON
		db THUNDER_WAVE
		db LOCK_ON
		db SWIFT

	db $ff ; end

; ================

	; SCHOOLBOY
	db "Sherman@"
	db 0 ; normal

	; party
	db 59, FURRET
	db 61, PIDGEOT

	db $ff ; end

; ================
; ================================


SchoolgirlGroup:
; ================================
; ================

	; SCHOOLGIRL
	db "Audrey@"
	db 0 ; normal

	; party
	db 6, VULPIX
	db 5, MAREEP
	db 7, TEDDIURSA

	db $ff ; end

; ================

	; SCHOOLGIRL
	db "Eliza@"
	db 2 ; item

	; party
	db 18, ODDISH, SILVER_LEAF
	db 16, LEDYBA, NO_ITEM
	db 17, SENTRET, BERRY

	db $ff ; end

; ================

	; SCHOOLGIRL
	db "Faith@"
	db 0 ; normal

	; party
	db 57, BELLSPROUT
	db 58, WEEPINBELL
	db 59, VICTREEBEL

	db $ff ; end

; ================

	; SCHOOLGIRL
	db "Sarah@"
	db 0 ; normal

	; party
	db 25, CHARMANDER
	db 23, SENTRET
	db 24, MARILL

	db $ff ; end

; ================

	; SCHOOLGIRL
	db "Isabel@"
	db 0 ; normal

	; party
	db 25, SQUIRTLE
	db 23, PIDGEY
	db 24, PIKACHU

	db $ff ; end

; ================

	; SCHOOLGIRL
	db "Imogen@"
	db 0 ; normal

	; party
	db 10, BULBASAUR
	db 9, SANDSHREW
	db 9, POLIWAG

	db $ff ; end

; ================
; ================================


PsychicGroup:
; ================================
; ================

	; PSYCHIC_T
	db "Nathan@"
	db 0 ; normal

	; party
	db 26, GIRAFARIG

	db $ff ; end

; ================

	; PSYCHIC_T
	db "Franklin@"
	db 0 ; normal

	; party
	db 53, KADABRA
	db 56, GIRAFARIG

	db $ff ; end

; ================

	; PSYCHIC_T
	db "Herman@"
	db 0 ; normal

	; party
	db 39, EXEGGCUTE
	db 39, EXEGGCUTE
	db 39, EXEGGUTOR

	db $ff ; end

; ================

	; PSYCHIC_T
	db "Fidel@"
	db 0 ; normal

	; party
	db 57, XATU

	db $ff ; end

; ================

	; PSYCHIC_T
	db "Greg@"
	db 1 ; moves

	; party

	db 17, DROWZEE
		db HYPNOSIS
		db DISABLE
		db DREAM_EATER
		db 0

	db $ff ; end

; ================

	; PSYCHIC_T
	db "Norman@"
	db 1 ; moves

	; party

	db 17, SLOWPOKE
		db TACKLE
		db GROWL
		db WATER_GUN
		db 0

	db 20, SLOWPOKE
		db CURSE
		db BODY_SLAM
		db WATER_GUN
		db CONFUSION

	db $ff ; end

; ================

	; PSYCHIC_T
	db "Mark@"
	db 1 ; moves

	; party

	db 14, ABRA
		db TELEPORT
		db FLASH
		db 0
		db 0

	db 14, ABRA
		db TELEPORT
		db FLASH
		db 0
		db 0

	db 16, KADABRA
		db TELEPORT
		db CALM_MIND
		db CONFUSION
		db 0

	db $ff ; end

; ================

	; PSYCHIC_T
	db "Phil@"
	db 0 ; normal

	; party
	db 35, XATU
	db 36, KADABRA

	db $ff ; end

; ================

	; PSYCHIC_T
	db "Vernon@"
	db 0 ; normal

	; party
	db 44, ESPEON

	db $ff ; end

; ================

	; PSYCHIC_T
	db "Gilbert@"
	db 0 ; normal

	; party
	db 38, STARMIE
	db 36, EXEGGCUTE
	db 40, GIRAFARIG

	db $ff ; end

; ================

	; PSYCHIC_T
	db "Jared@"
	db 0 ; normal

	; party
	db 53, MR__MIME
	db 55, EXEGGCUTE
	db 55, EXEGGCUTE

	db $ff ; end

; ================

	; PSYCHIC_T
	db "Rodney@"
	db 0 ; normal

	; party
	db 45, DROWZEE
	db 47, HYPNO

	db $ff ; end

; ================

	; PSYCHIC_T
	db "Leon@"
	db 0 ; normal

	; party
	db 54, NOCTOWL
	db 55, HYPNO
	db 53, GIRAFARIG

	db $ff ; end

; ================
; ================================


HexManiacGroup:
; ================================
; ================

	; HEX_MANIAC
	db "Tamara@"
	db 0 ; normal

	; party
	db 16, GASTLY
	db 18, MISDREAVUS

	db $ff ; end

; ================

	; HEX_MANIAC
	db "Ashley@"
	db 0 ; normal

	; party
	db 35, HAUNTER
	db 36, MISMAGIUS

	db $ff ; end

; ================

	; HEX_MANIAC
	db "Amy@"
	db 0 ; normal

	; party
	db 53, MISDREAVUS
	db 56, GENGAR
	db 53, HAUNTER
	db 56, MISMAGIUS

	db $ff ; end

; ================

	; HEX_MANIAC
	db "Luna@"
	db 1 ; moves

	; party

	db 54, KADABRA
		db PSYCHIC_M
		db SHADOW_BALL
		db CONFUSE_RAY
		db FUTURE_SIGHT

	db 56, NINETALES
		db PSYCHIC_M
		db SHADOW_BALL
		db CONFUSE_RAY
		db FLAMETHROWER

	db $ff ; end

; ================

	; HEX_MANIAC
	db "Natalie@"
	db 0 ; normal

	; party
	db 54, DROWZEE
	db 54, DROWZEE
	db 56, HYPNO

	db $ff ; end

; ================

	; HEX_MANIAC
	db "Vivian@"
	db 0 ; normal

	; party
	db 54, HAUNTER
	db 52, HAUNTER
	db 54, HAUNTER
	db 56, ALAKAZAM

	db $ff ; end

; ================
; ================================


SageGroup:
; ================================
; ================

	; SAGE
	db "Chow@"
	db 0 ; normal

	; party
	db 3, BELLSPROUT
	db 3, BELLSPROUT
	db 3, BELLSPROUT

	db $ff ; end

; ================

	; SAGE
	db "Nico@"
	db 0 ; normal

	; party
	db 3, BELLSPROUT
	db 3, BELLSPROUT
	db 3, BELLSPROUT

	db $ff ; end

; ================

	; SAGE
	db "Jin@"
	db 0 ; normal

	; party
	db 6, BELLSPROUT

	db $ff ; end

; ================

	; SAGE
	db "Troy@"
	db 0 ; normal

	; party
	db 7, BELLSPROUT
	db 7, HOOTHOOT

	db $ff ; end

; ================

	; SAGE
	db "Jeffrey@"
	db 0 ; normal

	; party
	db 22, HAUNTER
	db 20, VULPIX

	db $ff ; end

; ================

	; SAGE
	db "Ping@"
	db 0 ; normal

	; party
	db 17, GASTLY
	db 17, HOOTHOOT
	db 18, VULPIX
	db 17, GASTLY
	db 18, NOCTOWL

	db $ff ; end

; ================

	; SAGE
	db "Edmond@"
	db 0 ; normal

	; party
	db 3, BELLSPROUT
	db 3, BELLSPROUT
	db 3, BELLSPROUT

	db $ff ; end

; ================

	; SAGE
	db "Neal@"
	db 0 ; normal

	; party
	db 6, BELLSPROUT

	db $ff ; end

; ================
; ================================


MediumGroup:
; ================================
; ================

	; MEDIUM
	db "Martha@"
	db 0 ; normal

	; party
	db 18, GASTLY
	db 20, HAUNTER
	db 20, MISDREAVUS

	db $ff ; end

; ================

	; MEDIUM
	db "Grace@"
	db 0 ; normal

	; party
	db 20, HAUNTER
	db 20, MISDREAVUS

	db $ff ; end

; ================

	; MEDIUM
	db "Rebecca@"
	db 0 ; normal

	; party
	db 54, DROWZEE
	db 54, HYPNO

	db $ff ; end

; ================

	; MEDIUM
	db "Doris@"
	db 0 ; normal

	; party
	db 53, SLOWPOKE
	db 55, SLOWBRO

	db $ff ; end

; ================
; ================================


KimonoGirlGroup:
; ================================
; ================

	; KIMONO_GIRL
	db "Naoko@"
	db 2 ; item

	; party
	db 20, FLAREON, MIRACLEBERRY

	db $ff ; end

; ================

	; KIMONO_GIRL
	db "Sayo@"
	db 2 ; item

	; party
	db 20, ESPEON, MIRACLEBERRY

	db $ff ; end

; ================

	; KIMONO_GIRL
	db "Zuki@"
	db 2 ; item

	; party
	db 20, UMBREON, MIRACLEBERRY

	db $ff ; end

; ================

	; KIMONO_GIRL
	db "Kuni@"
	db 2 ; item

	; party
	db 20, VAPOREON, MIRACLEBERRY

	db $ff ; end

; ================

	; KIMONO_GIRL
	db "Miki@"
	db 2 ; item

	; party
	db 20, JOLTEON, MIRACLEBERRY

	db $ff ; end

; ================
; ================================


ElderGroup:
; ================================
; ================

	; ELDER
	db "Li@"
	db 0 ; normal

	; party
	db 7, BELLSPROUT
	db 7, BELLSPROUT
	db 10, HOOTHOOT

	db $ff ; end

; ================

	; ELDER
	db "Gaku@"
	db 0 ; normal

	; party
	db 37, NOCTOWL
	db 38, FLAREON
	db 38, WEEPINBELL

	db $ff ; end

; ================

	; ELDER
	db "Masa@"
	db 0 ; normal

	; party
	db 37, NOCTOWL
	db 38, JOLTEON
	db 38, WARTORTLE

	db $ff ; end

; ================

	; ELDER
	db "Koji@"
	db 0 ; normal

	; party
	db 37, NOCTOWL
	db 38, VAPOREON
	db 38, NINETALES

	db $ff ; end

; ================
; ================================


SrAndJrGroup:
; ================================
; ================

	; SR_AND_JR
	db "Jo & Cath@"
	db 0 ; normal

	; party
	db 18, TEDDIURSA
	db 16, JIGGLYPUFF

	db $ff ; end

; ================

	; SR_AND_JR
	db "Jo & Cath@"
	db 0 ; normal

	; party
	db 16, JIGGLYPUFF
	db 18, TEDDIURSA

	db $ff ; end

; ================

	; SR_AND_JR
	db "Ivy & Amy@"
	db 0 ; normal

	; party
	db 30, FLAAFFY
	db 28, GLOOM

	db $ff ; end

; ================

	; SR_AND_JR
	db "Ivy & Amy@"
	db 0 ; normal

	; party
	db 28, GLOOM
	db 30, FLAAFFY

	db $ff ; end

; ================

	; SR_AND_JR
	db "Bea & May@"
	db 0 ; normal

	; party
	db 24, IVYSAUR
	db 20, BULBASAUR

	db $ff ; end

; ================

	; SR_AND_JR
	db "Bea & May@"
	db 0 ; normal

	; party
	db 20, BULBASAUR
	db 24, IVYSAUR

	db $ff ; end

; ================
; ================================


CoupleGroup:
; ================================
; ================

	; COUPLE
	db "Gail & Eli@"
	db 0 ; normal

	; party
	db 13, SANDSHREW
	db 15, MARILL
	db 15, PIKACHU
	db 13, POLIWAG

	db $ff ; end

; ================

	; COUPLE
	db "Gail & Eli@"
	db 0 ; normal

	; party
	db 15, PIKACHU
	db 13, POLIWAG
	db 13, SANDSHREW
	db 15, MARILL

	db $ff ; end

; ================

	; COUPLE
	db "Duff & Eda@"
	db 0 ; normal

	; party
	db 25, CLOYSTER
	db 25, ONIX

	db $ff ; end

; ================

	; COUPLE
	db "Duff & Eda@"
	db 0 ; normal

	; party
	db 25, ONIX
	db 25, CLOYSTER

	db $ff ; end

; ================
; ================================


GentlemanGroup:
; ================================
; ================

	; GENTLEMAN
	db "Preston@"
	db 0 ; normal

	; party
	db 18, GROWLITHE
	db 18, GROWLITHE

	db $ff ; end

; ================

	; GENTLEMAN
	db "Edward@"
	db 0 ; normal

	; party
	db 49, PERSIAN

	db $ff ; end

; ================

	; GENTLEMAN
	db "Gregory@"
	db 0 ; normal

	; party
	db 56, PIKACHU
	db 53, FLAAFFY
	db 53, CHINCHOU

	db $ff ; end

; ================

	; GENTLEMAN
	db "Alfred@"
	db 0 ; normal

	; party
	db 22, NOCTOWL

	db $ff ; end

; ================

	; GENTLEMAN
	db "Milton@"
	db 0 ; normal

	; party
	db 53, GROWLITHE
	db 56, ARCANINE

	db $ff ; end

; ================
; ================================


RichBoyGroup:
; ================================
; ================

	; RICH_BOY
	db "Winston@"
	db 0 ; normal

	; party
	db 46, PIDGEOT
	db 44, FURRET
	db 45, AMPHAROS

	db $ff ; end

; ================

	; RICH_BOY
	db "Gerald@"
	db 2 ; item

	; party
	db 42, AZUMARILL, NUGGET
	db 40, BLISSEY, NUGGET

	db $ff ; end

; ================

	; RICH_BOY
	db "Irving@"
	db 2 ; item

	; party
	db 10, CLEFAIRY, NUGGET
	db 12, FURRET, NUGGET

	db $ff ; end

; ================
; ================================


BreederGroup:
; ================================
; ================

	; BREEDER
	db "Julie@"
	db 2 ; item

	; party
	db 7, PICHU, EVIOLITE
	db 10, DITTO, METAL_POWDER
	db 8, TOGEPI, EVIOLITE

	db $ff ; end

; ================

	; BREEDER
	db "Theresa@"
	db 2 ; item

	; party
	db 14, MAGBY, EVIOLITE
	db 14, ELEKID, EVIOLITE

	db $ff ; end

; ================

	; BREEDER
	db "Jody@"
	db 3 ; item + moves

	; party

	db 27, TYROGUE, EVIOLITE
		db TACKLE
		db RAGE
		db FORESIGHT
		db HI_JUMP_KICK

	db 28, MUNCHLAX, EVIOLITE
		db METRONOME
		db BODY_SLAM
		db SCREECH
		db GUNK_SHOT

	db 29, DITTO, METAL_POWDER
		db TRANSFORM
		db NO_MOVE
		db NO_MOVE
		db NO_MOVE

	db $ff ; end

; ================

	; BREEDER
	db "Carlene@"
	db 3 ; item + moves

	; party

	db 52, SMEARGLE, WISE_GLASSES
		db SPORE
		db NASTY_PLOT
		db HYPER_VOICE
		db PSYCHIC_M

	db 52, SMEARGLE, MUSCLE_BAND
		db SPORE
		db SWORDS_DANCE
		db BODY_SLAM
		db EARTHQUAKE

	db 55, DITTO, METAL_POWDER
		db TRANSFORM
		db NO_MOVE
		db NO_MOVE
		db NO_MOVE

	db $ff ; end

; ================
; ================================


CowgirlGroup:
; ================================
; ================

	; COWGIRL
	db "Annie@"
	db 0 ; normal

	; party
	db 18, MILTANK
	db 18, TAUROS

	db $ff ; end

; ================

	; COWGIRL
	db "April@"
	db 0 ; normal

	; party
	db 57, TAUROS
	db 61, TAUROS
	db 57, TAUROS

	db $ff ; end

; ================

	; COWGIRL
	db "Daniela@"
	db 0 ; normal

	; party
	db 25, TAUROS
	db 25, MILTANK

	db $ff ; end

; ================
; ================================


SailorGroup:
; ================================
; ================

	; SAILOR
	db "Eugene@"
	db 0 ; normal

	; party
	db 17, POLIWHIRL
	db 17, RATICATE
	db 19, KRABBY

	db $ff ; end

; ================

	; SAILOR
	db "Huey@"
	db 0 ; normal

	; party
	db 18, POLIWAG
	db 20, POLIWHIRL

	db $ff ; end

; ================

	; SAILOR
	db "Terrell@"
	db 0 ; normal

	; party
	db 20, POLIWHIRL

	db $ff ; end

; ================

	; SAILOR
	db "Kent@"
	db 1 ; moves

	; party

	db 18, KRABBY
		db WATER_GUN
		db LEER
		db SCRATCH
		db HARDEN

	db 20, KRABBY
		db BUBBLE_BEAM
		db LEER
		db SCRATCH
		db HARDEN

	db $ff ; end

; ================

	; SAILOR
	db "Roberto@"
	db 0 ; normal

	; party
	db 18, MACHOP
	db 18, MACHOP
	db 18, POLIWHIRL

	db $ff ; end

; ================

	; SAILOR
	db "Jeff@"
	db 0 ; normal

	; party
	db 46, RATICATE
	db 46, RATICATE

	db $ff ; end

; ================

	; SAILOR
	db "Garrett@"
	db 0 ; normal

	; party
	db 48, KINGLER

	db $ff ; end

; ================

	; SAILOR
	db "Kenneth@"
	db 0 ; normal

	; party
	db 44, MACHOP
	db 45, MACHOKE
	db 46, POLIWRATH
	db 45, MACHOKE

	db $ff ; end

; ================

	; SAILOR
	db "Stanley@"
	db 0 ; normal

	; party
	db 45, MACHOP
	db 48, MACHOKE
	db 44, PSYDUCK

	db $ff ; end

; ================

	; SAILOR
	db "Harry@"
	db 0 ; normal

	; party
	db 20, WOOPER

	db $ff ; end

; ================

	; SAILOR
	db "Huey@"
	db 0 ; normal

	; party
	db 28, POLIWHIRL
	db 28, POLIWHIRL

	db $ff ; end

; ================

	; SAILOR
	db "Huey@"
	db 0 ; normal

	; party
	db 34, POLIWHIRL
	db 34, POLIWRATH

	db $ff ; end

; ================

	; SAILOR
	db "Huey@"
	db 1 ; moves

	; party

	db 38, POLITOED
		db WHIRLPOOL
		db RAIN_DANCE
		db BODY_SLAM
		db PERISH_SONG

	db 38, POLIWRATH
		db SURF
		db STRENGTH
		db ICE_PUNCH
		db SUBMISSION

	db $ff ; end

; ================

	; SAILOR
	db "Parker@"
	db 0 ; normal

	; party
	db 56, HORSEA
	db 57, SEADRA

	db $ff ; end

; ================

	; SAILOR
	db "Eddie@"
	db 0 ; normal

	; party
	db 59, AZUMARILL

	db $ff ; end

; ================
; ================================


SwimmerMGroup:
; ================================
; ================

	; SWIMMERM
	db "Harold@"
	db 0 ; normal

	; party
	db 60, REMORAID
	db 58, SEADRA

	db $ff ; end

; ================

	; SWIMMERM
	db "Simon@"
	db 0 ; normal

	; party
	db 20, TENTACOOL
	db 20, TENTACOOL

	db $ff ; end

; ================

	; SWIMMERM
	db "Randall@"
	db 0 ; normal

	; party
	db 18, SHELLDER
	db 20, WARTORTLE
	db 18, SHELLDER

	db $ff ; end

; ================

	; SWIMMERM
	db "Charlie@"
	db 0 ; normal

	; party
	db 21, SHELLDER
	db 19, TENTACOOL
	db 19, TENTACRUEL

	db $ff ; end

; ================

	; SWIMMERM
	db "George@"
	db 0 ; normal

	; party
	db 16, TENTACOOL
	db 17, TENTACOOL
	db 16, TENTACOOL
	db 19, STARYU
	db 17, TENTACOOL
	db 19, REMORAID

	db $ff ; end

; ================

	; SWIMMERM
	db "Berke@"
	db 0 ; normal

	; party
	db 23, QWILFISH

	db $ff ; end

; ================

	; SWIMMERM
	db "Kirk@"
	db 0 ; normal

	; party
	db 20, GYARADOS
	db 20, GYARADOS

	db $ff ; end

; ================

	; SWIMMERM
	db "Mathew@"
	db 0 ; normal

	; party
	db 23, KRABBY

	db $ff ; end

; ================

	; SWIMMERM
	db "Hal@"
	db 0 ; normal

	; party
	db 24, SEEL
	db 25, DEWGONG
	db 24, SEEL

	db $ff ; end

; ================

	; SWIMMERM
	db "Jerome@"
	db 0 ; normal

	; party
	db 57, SEADRA
	db 58, TENTACOOL
	db 59, TENTACRUEL
	db 58, GOLDUCK

	db $ff ; end

; ================

	; SWIMMERM
	db "Tucker@"
	db 0 ; normal

	; party
	db 59, SHELLDER
	db 61, CLOYSTER

	db $ff ; end

; ================

	; SWIMMERM
	db "Rick@"
	db 0 ; normal

	; party
	db 13, STARYU
	db 18, STARMIE
	db 16, HORSEA

	db $ff ; end

; ================

	; SWIMMERM
	db "Frankie@"
	db 0 ; normal

	; party
	db 61, AZUMARILL

	db $ff ; end

; ================

	; SWIMMERM
	db "Tyson@"
	db 0 ; normal

	; party
	db 58, QUAGSIRE
	db 58, OCTILLERY
	db 62, QUAGSIRE

	db $ff ; end

; ================

	; SWIMMERM
	db "James@"
	db 0 ; normal

	; party
	db 13, STARYU
	db 18, STARMIE
	db 16, HORSEA

	db $ff ; end

; ================

	; SWIMMERM
	db "Walter@"
	db 0 ; normal

	; party
	db 18, HORSEA
	db 18, HORSEA
	db 21, SEADRA

	db $ff ; end

; ================

	; SWIMMERM
	db "Lewis@"
	db 0 ; normal

	; party
	db 18, STARYU
	db 21, STARMIE
	db 20, HORSEA

	db $ff ; end

; ================
; ================================


SwimmerFGroup:
; ================================
; ================

	; SWIMMERF
	db "Elaine@"
	db 0 ; normal

	; party
	db 21, STARYU

	db $ff ; end

; ================

	; SWIMMERF
	db "Paula@"
	db 0 ; normal

	; party
	db 19, STARYU
	db 19, SHELLDER

	db $ff ; end

; ================

	; SWIMMERF
	db "Kaylee@"
	db 0 ; normal

	; party
	db 18, MARILL
	db 20, MARILL
	db 20, AZUMARILL

	db $ff ; end

; ================

	; SWIMMERF
	db "Susie@"
	db 0 ; normal

	; party
	db 20, PSYDUCK
	db 22, SEEL

	db $ff ; end

; ================

	; SWIMMERF
	db "Denise@"
	db 0 ; normal

	; party
	db 22, SEEL

	db $ff ; end

; ================

	; SWIMMERF
	db "Kara@"
	db 0 ; normal

	; party
	db 20, STARYU
	db 20, STARMIE

	db $ff ; end

; ================

	; SWIMMERF
	db "Wendy@"
	db 1 ; moves

	; party

	db 21, HORSEA
		db WATER_GUN
		db SMOKESCREEN
		db LEER
		db BUBBLE_BEAM

	db 21, HORSEA
		db DRAGON_RAGE
		db SMOKESCREEN
		db LEER
		db BUBBLE_BEAM

	db $ff ; end

; ================

	; SWIMMERF
	db "Mary@"
	db 0 ; normal

	; party
	db 20, GYARADOS

	db $ff ; end

; ================

	; SWIMMERF
	db "Debbie@"
	db 0 ; normal

	; party
	db 61, AZUMARILL

	db $ff ; end

; ================

	; SWIMMERF
	db "Nicole@"
	db 0 ; normal

	; party
	db 59, MARILL
	db 59, MARILL
	db 62, LAPRAS

	db $ff ; end

; ================

	; SWIMMERF
	db "Lori@"
	db 0 ; normal

	; party
	db 62, STARMIE
	db 62, STARMIE
	db 62, STARMIE

	db $ff ; end

; ================

	; SWIMMERF
	db "Nikki@"
	db 0 ; normal

	; party
	db 58, SEEL
	db 58, SEEL
	db 58, SEEL
	db 62, DEWGONG

	db $ff ; end

; ================

	; SWIMMERF
	db "Diana@"
	db 0 ; normal

	; party
	db 58, GOLDUCK

	db $ff ; end

; ================

	; SWIMMERF
	db "Briana@"
	db 0 ; normal

	; party
	db 56, GYARADOS
	db 56, LAPRAS

	db $ff ; end

; ================

	; SWIMMERF
	db "Joy@"
	db 0 ; normal

	; party
	db 58, CLOYSTER

	db $ff ; end

; ================

	; SWIMMERF
	db "Lisa@"
	db 0 ; normal

	; party
	db 23, LANTURN

	db $ff ; end

; ================

	; SWIMMERF
	db "Jill@"
	db 0 ; normal

	; party
	db 23, DEWGONG

	db $ff ; end

; ================

	; SWIMMERF 
	db "Katie@"
	db 0 ; normal

	; party
	db 19, SEEL
	db 21, DEWGONG

	db $ff ; end

; ================
; ================================


BurglarGroup:
; ================================
; ================

	; BURGLAR
	db "Duncan@"
	db 0 ; normal

	; party
	db 34, KOFFING
	db 35, MAGMAR
	db 34, WEEZING

	db $ff ; end

; ================

	; BURGLAR
	db "Eddie@"
	db 0 ; normal

	; party
	db 36, GROWLITHE
	db 34, WEEZING

	db $ff ; end

; ================

	; BURGLAR
	db "Corey@"
	db 2 ; item

	; party
	db 44, KOFFING, NO_ITEM
	db 46, WEEZING, NO_ITEM
	db 46, MAGMAR, NO_ITEM
	db 48, PERSIAN, AMULET_COIN

	db $ff ; end

; ================

	; BURGLAR
	db "Pete@"
	db 0 ; normal

	; party
	db 59, CHARMELEON
	db 62, MAGMAR

	db $ff ; end

; ================

	; BURGLAR
	db "Louis@"
	db 0 ; normal

	; party
	db 62, ARCANINE
	db 62, RAPIDASH

	db $ff ; end

; ================
; ================================


PIGroup:
; ================================
; ================

	; PI
	db "Looker@"
	db 0 ; normal

	; party
	db 48, ARCANINE
	db 48, ELECTABUZZ
	db 50, POLITOED

	db $ff ; end

; ================
; ================================


ScientistGroup:
; ================================
; ================

	; SCIENTIST
	db "Ross@"
	db 0 ; normal

	; party
	db 30, KOFFING
	db 30, KOFFING

	db $ff ; end

; ================

	; SCIENTIST
	db "Mitch@"
	db 0 ; normal

	; party
	db 25, DITTO
	db 25, PORYGON

	db $ff ; end

; ================

	; SCIENTIST
	db "Jed@"
	db 0 ; normal

	; party
	db 29, MAGNEMITE
	db 30, MAGNETON
	db 29, MAGNEMITE

	db $ff ; end

; ================

	; SCIENTIST
	db "Garrett@"
	db 0 ; normal

	; party
	db 35, MAGNETON
	db 36, MAGNEMITE
	db 35, MAGNETON

	db $ff ; end

; ================

	; SCIENTIST
	db "Trenton@"
	db 1 ; moves

	; party

	db 35, PORYGON_Z
		db CONVERSION
		db RECOVER
		db TRI_ATTACK
		db PSYBEAM

	db $ff ; end

; ================

	; SCIENTIST
	db "Lowell@"
	db 0 ; normal

	; party
	db 60, ARCANINE

	db $ff ; end

; ================

	; SCIENTIST
	db "Dennett@"
	db 0 ; normal

	; party
	db 60, NINETALES

	db $ff ; end

; ================

	; SCIENTIST
	db "Linden@"
	db 0 ; normal

	; party
	db 60, MAGMAR

	db $ff ; end

; ================

	; SCIENTIST
	db "Oskar@"
	db 0 ; normal

	; party
	db 64, PORYGON2
	db 62, NINETALES
	db 60, MAGNEZONE

	db $ff ; end

; ================

	; SCIENTIST
	db "Braydon@"
	db 0 ; normal

	; party
	db 60, MAGNETON
	db 62, MAGNEZONE
	db 63, ELECTRODE

	db $ff ; end

; ================
; ================================


BoarderGroup:
; ================================
; ================

	; BOARDER
	db "Ronald@"
	db 0 ; normal

	; party
	db 33, SEEL
	db 35, DEWGONG
	db 33, SNEASEL

	db $ff ; end

; ================

	; BOARDER
	db "Brad@"
	db 0 ; normal

	; party
	db 35, SWINUB
	db 35, SWINUB

	db $ff ; end

; ================

	; BOARDER
	db "Douglas@"
	db 0 ; normal

	; party
	db 33, SHELLDER
	db 35, CLOYSTER
	db 33, SHELLDER

	db $ff ; end

; ================

	; BOARDER
	db "Shaun@"
	db 0 ; normal

	; party
	db 65, CLOYSTER
	db 60, DEWGONG

	db $ff ; end

; ================

	; BOARDER
	db "Bryce@"
	db 0 ; normal

	; party
	db 65, DEWGONG
	db 60, LAPRAS

	db $ff ; end

; ================

	; BOARDER
	db "Stefan@"
	db 0 ; normal

	; party
	db 36, SWINUB
	db 36, PILOSWINE
	db 38, SNEASEL

	db $ff ; end

; ================

	; BOARDER
	db "Max@"
	db 0 ; normal

	; party
	db 36, PILOSWINE
	db 37, LAPRAS

	db $ff ; end

; ================
; ================================


SkierGroup:
; ================================
; ================

	; SKIER
	db "Roxanne@"
	db 0 ; normal

	; party
	db 36, JYNX

	db $ff ; end

; ================

	; SKIER
	db "Clarissa@"
	db 0 ; normal

	; party
	db 36, PILOSWINE

	db $ff ; end

; ================

	; SKIER
	db "Cady@"
	db 0 ; normal

	; party
	db 63, MAMOSWINE

	db $ff ; end

; ================

	; SKIER
	db "Maria@"
	db 0 ; normal

	; party
	db 39, JYNX

	db $ff ; end

; ================

	; SKIER
	db "Becky@"
	db 0 ; normal

	; party
	db 37, LAPRAS
	db 38, DEWGONG
	db 38, DEWGONG

	db $ff ; end

; ================
; ================================


BlackbeltGroup:
; ================================
; ================

	; BLACKBELT_T
	db "Kenji@"
	db 0 ; normal

	; party
	db 36, ONIX
	db 38, HITMONLEE
	db 36, ONIX
	db 39, MACHOKE

	db $ff ; end

; ================

	; BLACKBELT_T
	db "Yoshi@"
	db 1 ; moves

	; party

	db 27, HITMONLEE
		db DOUBLE_KICK
		db BULK_UP
		db LOW_KICK
		db FOCUS_ENERGY

	db $ff ; end

; ================

	; BLACKBELT_T
	db "Kenji@"
	db 1 ; moves

	; party

	db 33, ONIX
		db WRAP
		db ROCK_THROW
		db TOXIC
		db DIG

	db 38, MACHAMP
		db HEADBUTT
		db SWAGGER
		db THUNDERPUNCH
		db VITAL_THROW

	db 33, STEELIX
		db EARTHQUAKE
		db ROCK_THROW
		db IRON_TAIL
		db SANDSTORM

	db 36, HITMONLEE
		db DOUBLE_TEAM
		db HI_JUMP_KICK
		db MUD_SLAP
		db SWIFT

	db $ff ; end

; ================

	; BLACKBELT_T
	db "Lao@"
	db 1 ; moves

	; party

	db 27, HITMONCHAN
		db AERIAL_ACE
		db THUNDERPUNCH
		db ICE_PUNCH
		db FIRE_PUNCH

	db $ff ; end

; ================

	; BLACKBELT_T
	db "Nob@"
	db 1 ; moves

	; party

	db 25, MACHOP
		db LEER
		db FOCUS_ENERGY
		db KARATE_CHOP
		db SEISMIC_TOSS

	db 25, MACHOKE
		db LEER
		db KARATE_CHOP
		db SEISMIC_TOSS
		db ROCK_SLIDE

	db $ff ; end

; ================

	; BLACKBELT_T
	db "Kiyo@"
	db 3 ; item + moves

	; party

	db 40, HITMONLEE, BLACK_BELT
		db BULK_UP
		db FOCUS_ENERGY
		db HI_JUMP_KICK
		db LOCK_ON

	db 40, HITMONCHAN, KINGS_ROCK
		db THUNDERPUNCH
		db ICE_PUNCH
		db FIRE_PUNCH
		db MACH_PUNCH

	db 40, HITMONTOP, FOCUS_BAND
		db BULK_UP
		db TRIPLE_KICK
		db RAPID_SPIN
		db COUNTER

	db $ff ; end

; ================

	; BLACKBELT_T
	db "Lung@"
	db 0 ; normal

	; party
	db 23, MANKEY
	db 23, MANKEY
	db 25, PRIMEAPE

	db $ff ; end

; ================

	; BLACKBELT_T
	db "Kenji@"
	db 0 ; normal

	; party
	db 39, MACHOKE

	db $ff ; end

; ================

	; BLACKBELT_T
	db "Wai@"
	db 0 ; normal

	; party
	db 46, MACHOKE
	db 48, MACHOKE
	db 50, MACHOKE

	db $ff ; end

; ================
; ================================


BattleGirlGroup:
; ================================
; ================

	; BATTLE_GIRL
	db "Subaru@"
	db 0 ; normal

	; party
	db 26, MACHOP
	db 27, MACHOKE
	db 28, PRIMEAPE

	db $ff ; end

; ================

	; BATTLE_GIRL
	db "Diane@"
	db 0 ; normal

	; party
	db 28, PRIMEAPE
	db 28, HITMONLEE

	db $ff ; end

; ================

	; BATTLE_GIRL
	db "Kagami@"
	db 0 ; normal

	; party
	db 37, HITMONCHAN
	db 35, PRIMEAPE
	db 35, MACHOKE

	db $ff ; end

; ================

	; BATTLE_GIRL
	db "Nozomi@"
	db 0 ; normal

	; party
	db 36, MACHOKE
	db 36, MACHOKE
	db 37, HITMONTOP

	db $ff ; end

; ================

	; BATTLE_GIRL
	db "Ronda@"
	db 0 ; normal

	; party
	db 37, MACHOKE
	db 39, MACHAMP
	db 38, PRIMEAPE

	db $ff ; end

; ================

	; BATTLE_GIRL
	db "Padma@"
	db 0 ; normal

	; party
	db 60, HITMONLEE
	db 60, HITMONCHAN
	db 60, HITMONTOP

	db $ff ; end

; ================
; ================================


DragonTamerGroup:
; ================================
; ================

	; DRAGON_TAMER
	db "Paul@"
	db 0 ; normal

	; party
	db 37, DRATINI
	db 37, DRATINI
	db 37, DRATINI

	db $ff ; end

; ================

	; DRAGON_TAMER
	db "Darin@"
	db 1 ; moves

	; party

	db 38, DRAGONAIR
		db SLAM
		db SURF
		db DRAGON_PULSE
		db AQUA_TAIL

	db $ff ; end

; ================

	; DRAGON_TAMER
	db "Adam@"
	db 0 ; normal

	; party
	db 37, HORSEA
	db 38, DRATINI
	db 39, SEADRA

	db $ff ; end

; ================

	; DRAGON_TAMER
	db "Erick@"
	db 1 ; moves

	; party

	db 39, DRAGONAIR
		db THUNDER_WAVE
		db DRAGON_RAGE
		db AQUA_TAIL
		db SLAM

	db 38, SEADRA
		db SMOKESCREEN
		db TWISTER
		db WATER_PULSE
		db OUTRAGE

	db 40, DRAGONAIR
		db WRAP
		db DRAGON_RAGE
		db AQUA_TAIL
		db DRAGON_PULSE

	db $ff ; end

; ================

	; DRAGON_TAMER
	db "Kazu@"
	db 1 ; moves

	; party

	db 40, DRAGONAIR
		db THUNDER_WAVE
		db DRAGON_RAGE
		db AQUA_TAIL
		db FLAMETHROWER

	db 40, DRAGONAIR
		db THUNDER_WAVE
		db DRAGON_RAGE
		db AQUA_TAIL
		db THUNDERBOLT

	db 40, DRAGONAIR
		db THUNDER_WAVE
		db DRAGON_RAGE
		db AQUA_TAIL
		db ICE_BEAM

	db $ff ; end

; ================
; ================================


TeacherGroup:
; ================================
; ================

	; TEACHER
	db "Colette@"
	db 0 ; normal

	; party
	db 60, CLEFAIRY

	db $ff ; end

; ================

	; TEACHER
	db "Hillary@"
	db 0 ; normal

	; party
	db 58, PERSIAN
	db 56, SUNFLORA
	db 59, CUBONE

	db $ff ; end

; ================

	; TEACHER
	db "Shirley@"
	db 0 ; normal

	; party
	db 47, WIGGLYTUFF

	db $ff ; end

; ================

	; TEACHER
	db "Kathryn@"
	db 0 ; normal

	; party
	db 26, BELLOSSOM
	db 25, PIDGEOTTO
	db 24, FURRET

	db $ff ; end

; ================
; ================================



GuitaristMGroup:
; ================================
; ================

	; GUITARISTM
	db "Clyde@"
	db 0 ; normal

	; party
	db 50, ELECTABUZZ

	db $ff ; end

; ================

	; GUITARISTM
	db "Vincent@"
	db 0 ; normal

	; party
	db 53, VOLTORB
	db 52, MAGNEMITE
	db 55, JOLTEON

	db $ff ; end

; ================
; ================================


GuitaristFGroup:
; ================================
; ================

	; GUITARISTF
	db "Janet@"
	db 1 ; moves

	; party

	db 56, PIKACHU
		db IRON_TAIL
		db EXTREMESPEED
		db SURF
		db THUNDERBOLT

	db 54, ELECTABUZZ
		db LIGHT_SCREEN
		db THUNDERPUNCH
		db CROSS_CHOP
		db SCREECH

	db 55, RAICHU
		db EXTREMESPEED
		db SURF
		db THUNDERBOLT
		db AGILITY

	db $ff ; end

; ================
; ================================


BikerGroup:
; ================================
; ================

	; BIKER
	db "Dwayne@"
	db 0 ; normal

	; party
	db 54, KOFFING
	db 55, WEEZING
	db 56, KOFFING
	db 57, WEEZING

	db $ff ; end

; ================

	; BIKER
	db "Harris@"
	db 0 ; normal

	; party
	db 57, FLAREON

	db $ff ; end

; ================

	; BIKER
	db "Zeke@"
	db 0 ; normal

	; party
	db 55, KOFFING
	db 56, WEEZING

	db $ff ; end

; ================

	; BIKER
	db "Charles@"
	db 0 ; normal

	; party
	db 54, KOFFING
	db 54, CHARMELEON
	db 57, WEEZING

	db $ff ; end

; ================

	; BIKER
	db "Riley@"
	db 0 ; normal

	; party
	db 59, WEEZING

	db $ff ; end

; ================

	; BIKER
	db "Joel@"
	db 0 ; normal

	; party
	db 57, MAGMAR
	db 57, MAGMAR

	db $ff ; end

; ================

	; BIKER
	db "Glenn@"
	db 0 ; normal

	; party
	db 55, KOFFING
	db 57, MAGMAR
	db 59, WEEZING

	db $ff ; end

; ================

	; BIKER
	db "Dale@"
	db 0 ; normal

	; party
	db 57, MUK
	db 57, WEEZING

	db $ff ; end

; ================

	; BIKER
	db "Jacob@"
	db 0 ; normal

	; party
	db 54, MAGMAR
	db 54, TENTACRUEL

	db $ff ; end

; ================

	; BIKER
	db "Aiden@"
	db 0 ; normal

	; party
	db 55, URSARING
	db 55, AZUMARILL

	db $ff ; end

; ================
; ================================


RoughneckGroup:
; ================================
; ================

	; ROUGHNECK
	db "Brian@"
	db 0 ; normal

	; party
	db 55, TENTACRUEL
	db 55, WEEZING
	db 55, WEEZING

	db $ff ; end

; ================

	; ROUGHNECK
	db "Theron@"
	db 0 ; normal

	; party
	db 55, MUK
	db 55, POLIWRATH

	db $ff ; end

; ================

	; ROUGHNECK
	db "Markey@"
	db 0 ; normal

	; party
	db 57, ARBOK
	db 56, HOUNDOOM

	db $ff ; end

; ================
; ================================


CooltrainerMGroup:
; ================================
; ================

	; COOLTRAINERM
	db "Nick@"
	db 1 ; moves

	; party

	db 26, CHARMANDER
		db EMBER
		db SMOKESCREEN
		db RAGE
		db SCARY_FACE

	db 26, SQUIRTLE
		db DEFENSE_CURL
		db WATER_GUN
		db BITE
		db CURSE

	db 26, BULBASAUR
		db LEECH_SEED
		db POISONPOWDER
		db SLEEP_POWDER
		db RAZOR_LEAF

	db $ff ; end

; ================

	; COOLTRAINERM
	db "Aaron@"
	db 0 ; normal

	; party
	db 28, IVYSAUR
	db 28, CHARMELEON
	db 28, WARTORTLE

	db $ff ; end

; ================

	; COOLTRAINERM
	db "Cody@"
	db 0 ; normal

	; party
	db 36, HORSEA
	db 38, SEADRA

	db $ff ; end

; ================

	; COOLTRAINERM
	db "Mike@"
	db 0 ; normal

	; party
	db 38, DRAGONAIR

	db $ff ; end

; ================

	; COOLTRAINERM
	db "Gaven@"
	db 1 ; moves

	; party

	db 41, VICTREEBEL
		db WRAP
		db TOXIC
		db ACID
		db RAZOR_LEAF

	db 41, KINGLER
		db BUBBLE_BEAM
		db STOMP
		db DIG
		db PROTECT

	db 41, FLAREON
		db SAND_ATTACK
		db QUICK_ATTACK
		db BITE
		db FIRE_SPIN

	db $ff ; end

; ================

	; COOLTRAINERM
	db "Gaven@"
	db 3 ; item + moves

	; party

	db 45, VICTREEBEL, NO_ITEM
		db GIGA_DRAIN
		db TOXIC
		db SLUDGE_BOMB
		db RAZOR_LEAF

	db 45, KINGLER, KINGS_ROCK
		db SURF
		db STOMP
		db DIG
		db BLIZZARD

	db 45, FLAREON, NO_ITEM
		db FLAMETHROWER
		db QUICK_ATTACK
		db BITE
		db FIRE_SPIN

	db $ff ; end

; ================

	; COOLTRAINERM
	db "Ryan@"
	db 1 ; moves

	; party

	db 35, PIDGEOT
		db SAND_ATTACK
		db QUICK_ATTACK
		db WHIRLWIND
		db AERIAL_ACE

	db 37, ELECTABUZZ
		db THUNDERPUNCH
		db LIGHT_SCREEN
		db SWIFT
		db SCREECH

	db $ff ; end

; ================

	; COOLTRAINERM
	db "Gaven@"
	db 1 ; moves

	; party

	db 39, VICTREEBEL
		db WRAP
		db TOXIC
		db ACID
		db RAZOR_LEAF

	db 39, KINGLER
		db BUBBLE_BEAM
		db STOMP
		db DIG
		db PROTECT

	db 39, FLAREON
		db SAND_ATTACK
		db QUICK_ATTACK
		db BITE
		db FIRE_SPIN

	db $ff ; end

; ================

	; COOLTRAINERM
	db "Blake@"
	db 1 ; moves

	; party

	db 38, MAGNETON
		db THUNDERBOLT
		db SUPERSONIC
		db SWIFT
		db SCREECH

	db 36, QUAGSIRE
		db WATER_GUN
		db SLAM
		db CALM_MIND
		db EARTHQUAKE

	db 36, EXEGGCUTE
		db LEECH_SEED
		db CONFUSION
		db SLEEP_POWDER
		db SOLAR_BEAM

	db $ff ; end

; ================

	; COOLTRAINERM
	db "Andy@"
	db 0 ; normal

	; party
	db 10, BULBASAUR
	db 10, CHARMANDER
	db 10, SQUIRTLE

	db $ff ; end

; ================

	; COOLTRAINERM
	db "Sean@"
	db 0 ; normal

	; party
	db 47, FLAREON
	db 47, TANGELA
	db 47, TAUROS

	db $ff ; end

; ================

	; COOLTRAINERM
	db "Kevin@"
	db 0 ; normal

	; party
	db 54, RHYDON
	db 56, CHARIZARD
	db 56, BLASTOISE

	db $ff ; end

; ================

	; COOLTRAINERM
	db "Allen@"
	db 1 ; moves

	; party

	db 36, CHARMELEON
		db SMOKESCREEN
		db METAL_CLAW
		db DRAGON_RAGE
		db FLAME_WHEEL

	db 35, MAGNETON
		db THUNDER_WAVE
		db THUNDERBOLT
		db TRI_ATTACK
		db FLASH_CANNON

	db $ff ; end

; ================

	; COOLTRAINERM
	db "French@"
	db 0 ; normal

	; party
	db 62, HOUNDOOM
	db 63, ALAKAZAM

	db $ff ; end

; ================

	; COOLTRAINERM
	db "Henri@"
	db 0 ; normal

	; party
	db 26, CHARMELEON
	db 26, WARTORTLE
	db 26, IVYSAUR

	db $ff ; end

; ================
; ================================


CooltrainerFGroup:
; ================================
; ================

	; COOLTRAINERF
	db "Gwen@"
	db 0 ; normal

	; party
	db 26, EEVEE
	db 22, FLAREON
	db 22, VAPOREON
	db 22, JOLTEON

	db $ff ; end

; ================

	; COOLTRAINERF
	db "Lois@"
	db 0 ; normal

	; party
	db 29, SUNFLORA
	db 29, NINETALES

	db $ff ; end

; ================

	; COOLTRAINERF
	db "Fran@"
	db 0 ; normal

	; party
	db 39, SEADRA

	db $ff ; end

; ================

	; COOLTRAINERF
	db "Lola@"
	db 0 ; normal

	; party
	db 36, DRATINI
	db 38, DRAGONAIR

	db $ff ; end

; ================

	; COOLTRAINERF
	db "Kate@"
	db 0 ; normal

	; party
	db 26, SHELLDER
	db 28, CLOYSTER

	db $ff ; end

; ================

	; COOLTRAINERF
	db "Irene@"
	db 0 ; normal

	; party
	db 22, PSYDUCK
	db 24, GOLDUCK

	db $ff ; end

; ================

	; COOLTRAINERF
	db "Kelly@"
	db 0 ; normal

	; party
	db 37, MARILL
	db 35, WARTORTLE
	db 35, CROCONAW

	db $ff ; end

; ================

	; COOLTRAINERF
	db "Joyce@"
	db 1 ; moves

	; party

	db 37, PIKACHU
		db QUICK_ATTACK
		db DOUBLE_TEAM
		db THUNDERBOLT
		db THUNDER

	db 38, BLASTOISE
		db BITE
		db CURSE
		db SURF
		db RAIN_DANCE

	db $ff ; end

; ================

	; COOLTRAINERF
	db "Beth@"
	db 1 ; moves

	; party

	db 40, RAPIDASH
		db STOMP
		db FIRE_SPIN
		db FURY_ATTACK
		db AGILITY

	db 39, FLAAFFY
		db SWIFT
		db THUNDERSHOCK
		db THUNDER_WAVE
		db LIGHT_SCREEN

	db $ff ; end

; ================

	; COOLTRAINERF
	db "Reena@"
	db 0 ; normal

	; party
	db 37, GROWLITHE
	db 40, NIDOQUEEN
	db 38, STARMIE

	db $ff ; end

; ================

	; COOLTRAINERF
	db "Megan@"
	db 1 ; moves

	; party

	db 35, BULBASAUR
		db GROWL
		db LEECH_SEED
		db POISONPOWDER
		db RAZOR_LEAF

	db 36, IVYSAUR
		db GROWL
		db LEECH_SEED
		db POISONPOWDER
		db RAZOR_LEAF

	db 37, VENUSAUR
		db BODY_SLAM
		db SLEEP_POWDER
		db RAZOR_LEAF
		db GROWTH

	db $ff ; end

; ================

	; COOLTRAINERF
	db "Beth@"
	db 1 ; moves

	; party

	db 39, RAPIDASH
		db STOMP
		db FIRE_SPIN
		db FURY_ATTACK
		db AGILITY

	db 39, AMPHAROS
		db SWIFT
		db THUNDERBOLT
		db THUNDER_WAVE
		db LIGHT_SCREEN

	db $ff ; end

; ================

	; COOLTRAINERF
	db "Carol@"
	db 0 ; normal

	; party
	db 47, ELECTRODE
	db 47, STARMIE
	db 47, NINETALES

	db $ff ; end

; ================

	; COOLTRAINERF
	db "Quinn@"
	db 0 ; normal

	; party
	db 63, VENUSAUR
	db 62, STARMIE

	db $ff ; end

; ================

	; COOLTRAINERF
	db "Emma@"
	db 0 ; normal

	; party
	db 28, POLIWHIRL

	db $ff ; end

; ================

	; COOLTRAINERF
	db "Cybil@"
	db 1 ; moves

	; party

	db 35, BUTTERFREE
		db SUPERSONIC
		db PSYBEAM
		db HYPNOSIS
		db MORNING_SUN

	db 36, BELLOSSOM
		db ACID
		db SLEEP_POWDER
		db GIGA_DRAIN
		db MOONLIGHT

	db $ff ; end

; ================

	; COOLTRAINERF
	db "Jenn@"
	db 0 ; normal

	; party
	db 24, STARYU
	db 26, STARMIE

	db $ff ; end

; ================

	; COOLTRAINERF
	db "Beth@"
	db 3 ; item + moves

	; party

	db 43, RAPIDASH, FOCUS_BAND
		db STOMP
		db FIRE_SPIN
		db FURY_ATTACK
		db FIRE_BLAST

	db $ff ; end

; ================

	; COOLTRAINERF
	db "Reena@"
	db 0 ; normal

	; party
	db 36, GROWLITHE
	db 39, NIDOQUEEN
	db 36, STARMIE

	db $ff ; end

; ================

	; COOLTRAINERF
	db "Reena@"
	db 3 ; item + moves

	; party

	db 40, ARCANINE, NO_ITEM
		db BITE
		db LEER
		db TAKE_DOWN
		db FLAME_WHEEL

	db 42, NIDOQUEEN, SILK_SCARF
		db EARTHQUAKE
		db DOUBLE_KICK
		db TOXIC
		db BODY_SLAM

	db 40, STARMIE, NO_ITEM
		db BLIZZARD
		db PSYCHIC_M
		db WATERFALL
		db RECOVER

	db $ff ; end

; ================

	; COOLTRAINERF
	db "Salma@"
	db 0 ; normal

	; party
	db 62, SLOWKING
	db 65, KANGASKHAN

	db $ff ; end

; ================

	; COOLTRAINERF
	db "Bonita@"
	db 0 ; normal

	; party
	db 62, GIRAFARIG
	db 65, SUDOWOODO

	db $ff ; end

; ================
; ================================


AceDuoGroup:
; ================================
; ================

	; ACE_DUO
	db "Elan & Ida@"
	db 0 ; normal

	; party
	db 65, PORYGON2
	db 65, AZUMARILL

	db $ff ; end

; ================

	; ACE_DUO
	db "Elan & Ida@"
	db 0 ; normal

	; party
	db 65, AZUMARILL
	db 65, PORYGON2

	db $ff ; end

; ================

	; ACE_DUO
	db "Ara & Bela@"
	db 0 ; normal

	; party
	db 64, GIRAFARIG
	db 64, TAUROS

	db $ff ; end

; ================

	; ACE_DUO
	db "Ara & Bela@"
	db 0 ; normal

	; party
	db 64, TAUROS
	db 64, GIRAFARIG

	db $ff ; end

; ================

	; ACE_DUO
	db "Thom & Kae@"
	db 0 ; normal

	; party
	db 25, MAGMAR
	db 25, ELECTABUZZ

	db $ff ; end

; ================

	; ACE_DUO
	db "Thom & Kae@"
	db 0 ; normal

	; party
	db 25, ELECTABUZZ
	db 25, MAGMAR

	db $ff ; end

; ================

	; ACE_DUO
	db "Zac & Jen@"
	db 0 ; normal

	; party
	db 62, DUGTRIO
	db 62, ELECTABUZZ

	db $ff ; end

; ================

	; ACE_DUO
	db "Zac & Jen@"
	db 0 ; normal

	; party
	db 62, ELECTABUZZ
	db 62, DUGTRIO

	db $ff ; end

; ================

	; ACE_DUO
	db "Jake & Bri@"
	db 0 ; normal

	; party
	db 37, SANDSLASH
	db 39, GOLDUCK
	db 37, PARASECT
	db 39, VAPOREON

	db $ff ; end

; ================

	; ACE_DUO
	db "Jake & Bri@"
	db 0 ; normal

	; party
	db 37, PARASECT
	db 39, VAPOREON
	db 37, SANDSLASH
	db 39, GOLDUCK

	db $ff ; end

; ================

	; ACE_DUO
	db "Dan & Cara@"
	db 1 ; moves

	; party

	db 38, SEADRA
		db SMOKESCREEN
		db WATER_PULSE
		db OUTRAGE
		db WATERFALL

	db 38, SEADRA
		db SMOKESCREEN
		db WATER_PULSE
		db OUTRAGE
		db WHIRLPOOL

	db $ff ; end

; ================

	; ACE_DUO
	db "Dan & Cara@"
	db 1 ; moves

	; party

	db 38, SEADRA
		db SMOKESCREEN
		db WATER_PULSE
		db OUTRAGE
		db WHIRLPOOL

	db 38, SEADRA
		db SMOKESCREEN
		db WATER_PULSE
		db OUTRAGE
		db WATERFALL

	db $ff ; end

; ================
; ================================


VeteranMGroup:
; ================================
; ================

	; VETERANM
	db "Matthew@"
	db 3 ; item + moves

	; party

	db 40, FERALIGATR, KINGS_ROCK
		db SCARY_FACE
		db METAL_CLAW
		db CRUNCH
		db WATERFALL

	db 38, AMPHAROS, MAGNET
		db HEAL_BELL
		db CONFUSE_RAY
		db FIRE_PUNCH
		db THUNDERBOLT

	db 37, URSARING, LEFTOVERS
		db BELLY_DRUM
		db PLAY_ROUGH
		db SLASH
		db STRENGTH

	db 37, NOCTOWL, QUICK_CLAW
		db REFLECT
		db PSYBEAM
		db SHADOW_BALL
		db FLY

	db 39, ARCANINE, CHARCOAL
		db FLAME_WHEEL
		db FLAMETHROWER
		db DOUBLE_KICK
		db TAKE_DOWN

	db 36, SANDSLASH, HARD_STONE
		db SLASH
		db EARTHQUAKE
		db DEFENSE_CURL
		db ROLLOUT

	db $ff ; end

; ================

	; VETERANM
	db "Remy@"
	db 3 ; item + moves

	; party

	db 42, BLASTOISE, MYSTIC_WATER
		db SURF
		db AQUA_TAIL
		db FLASH_CANNON
		db ICE_BEAM

	db 41, NINETALES, CHARCOAL
		db FLAMETHROWER
		db SHADOW_BALL
		db CONFUSE_RAY
		db EXTRASENSORY

	db 39, VICTREEBEL, MIRACLE_SEED
		db SLUDGE_BOMB
		db SEED_BOMB
		db SLEEP_POWDER
		db SWORDS_DANCE

	db 39, RAICHU, SILK_SCARF
		db SURF
		db THUNDERBOLT
		db EXTREMESPEED
		db NASTY_PLOT

	db 40, ALAKAZAM, TWISTEDSPOON
		db TRI_ATTACK
		db PSYBEAM
		db RECOVER
		db REFLECT

	db 38, SKARMORY, SHARP_BEAK
		db DRILL_PECK
		db SWIFT
		db STEEL_WING
		db ROCK_SMASH

	db $ff ; end

; ================
; ================================


VeteranFGroup:
; ================================
; ================

	; VETERANF
	db "Joanne@"
	db 3 ; item + moves

	; party

	db 41, VENUSAUR, MIRACLE_SEED
		db GROWTH
		db SLUDGE_BOMB
		db PETAL_DANCE
		db SLEEP_POWDER

	db 38, PIDGEOT, QUICK_CLAW
		db FLY
		db SWIFT
		db TWISTER
		db WHIRLWIND

	db 39, SCYTHER, EVIOLITE
		db SLASH
		db AERIAL_ACE
		db SWORDS_DANCE
		db PURSUIT

	db 38, ELECTABUZZ, MAGNET
		db THUNDERBOLT
		db BULK_UP
		db KARATE_CHOP
		db LIGHT_SCREEN

	db 40, POLIWRATH, KINGS_ROCK
		db WATERFALL
		db SURF
		db STRENGTH
		db BODY_SLAM

	db 37, FLAREON, CHARCOAL
		db SMOKESCREEN
		db FLAME_WHEEL
		db QUICK_ATTACK
		db IRON_TAIL

	db $ff ; end

; ================

	; VETERANF
	db "Sylvie@"
	db 3 ; item + moves

	; party

	db 41, TYPHLOSION, CHARCOAL
		db FLAME_WHEEL
		db THUNDERPUNCH
		db DIG
		db STRENGTH

	db 40, GLACEON, NEVERMELTICE
		db ICE_BEAM
		db RECOVER
		db BARRIER
		db IRON_TAIL

	db 39, TOGEKISS, LEFTOVERS
		db FLY
		db SOFTBOILED
		db FOCUS_BLAST
		db EXTREMESPEED

	db 39, OCTILLERY, QUICK_CLAW
		db SURF
		db ICE_BEAM
		db PSYBEAM
		db SEED_BOMB

	db 37, HERACROSS, KINGS_ROCK
		db ROCK_SMASH
		db STRENGTH
		db AERIAL_ACE
		db DOUBLE_TEAM

	db 38, PUPITAR, EVIOLITE
		db EARTHQUAKE
		db ROCK_SLIDE
		db SCARY_FACE
		db DARK_PULSE

	db $ff ; end

; ================
; ================================


ProtonGroup:
; ================================
; ================

	; PROTON
	db "Proton@"
	db 3 ; item + moves

	; party

	db 38, GOLBAT, KINGS_ROCK
		db AERIAL_ACE
		db CONFUSE_RAY
		db SUPER_FANG
		db POISON_JAB

	db 39, QWILFISH, BRIGHTPOWDER
		db MINIMIZE
		db BUBBLE_BEAM
		db PAIN_SPLIT
		db ROLLOUT

	db 40, WEEZING, CHARCOAL
		db FIRE_BLAST
		db SELFDESTRUCT
		db SLUDGE_BOMB
		db SMOKESCREEN

	db $ff ; end

; ================

	; PROTON
	db "Proton@"
	db 0 ; normal

	; party
	db 10, ZUBAT
	db 12, QWILFISH
	db 14, KOFFING

	db $ff ; end

; ================
; ================================


PetrelGroup:
; ================================
; ================

	; PETREL
	db "Petrel@"
	db 3 ; item + moves

	; party

	db 37, KOFFING, EVIOLITE
		db TACKLE
		db SELFDESTRUCT
		db SLUDGE
		db SMOKESCREEN

	db 37, GOLBAT, EVIOLITE
		db LEECH_LIFE
		db AERIAL_ACE
		db CONFUSE_RAY
		db SUPER_FANG

	db 40, PERSIAN, BLACKGLASSES
		db PLAY_ROUGH
		db SCREECH
		db FEINT_ATTACK
		db SLASH

	db 38, WEEZING, SILK_SCARF
		db TACKLE
		db EXPLOSION
		db SLUDGE
		db SMOKESCREEN

	db 37, RATICATE, KINGS_ROCK
		db QUICK_ATTACK
		db SCREECH
		db CRUNCH
		db SUPER_FANG

	db $ff ; end

; ================

	; PETREL
	db "Petrel@"
	db 3 ; item + moves

	; party

	db 33, GOLBAT, BLACKGLASSES
		db BITE
		db AERIAL_ACE
		db CONFUSE_RAY
		db SUPER_FANG

	db 34, PERSIAN, HARD_STONE
		db PLAY_ROUGH
		db FURY_SWIPES
		db SCREECH
		db FEINT_ATTACK

	db 34, RATICATE, KINGS_ROCK
		db SWORDS_DANCE
		db CRUNCH
		db SUPER_FANG
		db HYPER_FANG

	db 35, WEEZING, POISON_BARB
		db ENDURE
		db WILL_O_WISP
		db SLUDGE_BOMB
		db SELFDESTRUCT

	db $ff ; end

; ================
; ================================


ArcherGroup:
; ================================
; ================

	; ARCHER
	db "Archer@"
	db 3 ; item + moves

	; party

	db 39, HOUNDOUR, EVIOLITE
		db SUPER_FANG
		db FIRE_SPIN
		db FEINT_ATTACK
		db WILL_O_WISP

	db 41, RATICATE, BLACKGLASSES
		db CRUNCH
		db SUPER_FANG
		db HYPER_FANG
		db DOUBLE_EDGE

	db 39, GENGAR, SPELL_TAG
		db HYPNOSIS
		db CONFUSE_RAY
		db PAIN_SPLIT
		db SHADOW_BALL

	db 40, WEEZING, BRIGHTPOWDER
		db SMOKESCREEN
		db WILL_O_WISP
		db PAIN_SPLIT
		db SLUDGE_BOMB

	db 42, HOUNDOOM, KINGS_ROCK
		db SMOKESCREEN
		db SUPER_FANG
		db FEINT_ATTACK
		db FLAMETHROWER

	db $ff ; end

; ================

	; ARCHER
	db "Archer@"
	db 3 ; item + moves

	; party

	db 27, HAUNTER, SPELL_TAG
		db DISABLE
		db NIGHT_SHADE
		db CONFUSE_RAY
		db SHADOW_BALL

	db 29, RATICATE, BLACKGLASSES
		db PURSUIT
		db HYPER_FANG
		db SCARY_FACE
		db CRUNCH

	db 27, WEEZING, SILK_SCARF
		db WILL_O_WISP
		db SELFDESTRUCT
		db SLUDGE
		db SMOKESCREEN

	db 31, HOUNDOUR, KINGS_ROCK
		db EMBER
		db SMOKESCREEN
		db BITE
		db SUPER_FANG

	db $ff ; end

; ================
; ================================


ArianaGroup:
; ================================
; ================

	; ARIANA
	db "Ariana@"
	db 3 ; item + moves

	; party

	db 38, ARBOK, POISON_BARB
		db GLARE
		db SCREECH
		db ACID
		db CRUNCH

	db 39, GLOOM, MIRACLE_SEED
		db LEECH_SEED
		db ACID
		db SLEEP_POWDER
		db GIGA_DRAIN

	db 40, MURKROW, BLACKGLASSES
		db WING_ATTACK
		db NIGHT_SHADE
		db CONFUSE_RAY
		db FEINT_ATTACK

	db $ff ; end

; ================

	; ARIANA
	db "Ariana@"
	db 3 ; item + moves

	; party

	db 33, ARBOK, BLACKGLASSES
		db WRAP
		db ACID
		db CRUNCH
		db GLARE

	db 34, VILEPLUME, MIRACLE_SEED
		db MEGA_DRAIN
		db GROWTH
		db SLEEP_POWDER
		db ACID

	db 35, HONCHKROW, KINGS_ROCK
		db WING_ATTACK
		db PURSUIT
		db CONFUSE_RAY
		db NIGHT_SHADE

	db $ff ; end

; ================
; ================================


PokemonProfGroup:
; ================================
; ================

	; POKEMON_PROF
	db "Oak@"
	db 3 ; item + moves

	; party

	db 78, TAUROS, SILK_SCARF
		db THRASH
		db ZEN_HEADBUTT
		db BULK_UP
		db SUBSTITUTE

	db 76, DODRIO, SHARP_BEAK
		db DRILL_PECK
		db TRI_ATTACK
		db TRIPLE_KICK
		db DOUBLE_TEAM

	db 80, VENUSAUR, MIRACLE_SEED
		db GIGA_DRAIN
		db SLUDGE_BOMB
		db GROWTH
		db SLEEP_POWDER

	db 80, CHARIZARD, CHARCOAL
		db FLAMETHROWER
		db CRUNCH
		db DRAGONBREATH
		db SLASH

	db 80, BLASTOISE, MYSTIC_WATER
		db SURF
		db BODY_SLAM
		db ICE_BEAM
		db ZAP_CANNON

	db 82, NIDOKING, POISON_BARB
		db EARTHQUAKE
		db RETURN
		db POISON_JAB
		db ROCK_SMASH

	db $ff ; end

; ================
; ================================


MysticalmanGroup:
; ================================
; ================

	; MYSTICALMAN
	db "Eusine@"
	db 3 ; item + moves

	; party

	db 26, DROWZEE, TWISTEDSPOON
		db DREAM_EATER
		db HYPNOSIS
		db DISABLE
		db PSYBEAM

	db 26, HAUNTER, EVIOLITE
		db SHADOW_BALL
		db HYPNOSIS
		db CONFUSE_RAY
		db CURSE

	db 26, SUNFLORA, CHARCOAL
		db GROWTH
		db LEECH_SEED
		db GIGA_DRAIN
		db FLAMETHROWER

	db 28, ELECTRODE, MAGNET
		db THUNDER
		db SCREECH
		db SONIC_BOOM
		db ROLLOUT

	db $ff ; end

; ================
; ================================


LyraGroup:
; ================================
; ================

	; LYRA
	db "Lyra@"
	db 0 ; normal

	; party
	db 5, CHIKORITA

	db $ff ; end

; ================

	; LYRA
	db "Lyra@"
	db 0 ; normal

	; party
	db 5, CYNDAQUIL

	db $ff ; end

; ================

	; LYRA
	db "Lyra@"
	db 0 ; normal

	; party
	db 5, TOTODILE

	db $ff ; end

; ================

	; LYRA
	db "Lyra@"
	db 2 ; item

	; party
	db 15, PIDGEY, NO_ITEM
	db 17, MARILL, NO_ITEM
	db 16, SENTRET, NO_ITEM
	db 18, BAYLEEF, BERRY

	db $ff ; end

; ================

	; LYRA
	db "Lyra@"
	db 2 ; item

	; party
	db 15, PIDGEY, NO_ITEM
	db 17, SUNKERN, NO_ITEM
	db 16, SENTRET, NO_ITEM
	db 18, QUILAVA, BERRY

	db $ff ; end

; ================

	; LYRA
	db "Lyra@"
	db 2 ; item

	; party
	db 15, PIDGEY, NO_ITEM
	db 17, GROWLITHE, NO_ITEM
	db 16, SENTRET, NO_ITEM
	db 18, CROCONAW, BERRY

	db $ff ; end

; ================

	; LYRA
	db "Lyra@"
	db 2 ; item

	; party
	db 30, PIDGEOTTO, NO_ITEM
	db 32, GROWLITHE, NO_ITEM
	db 32, AZUMARILL, NO_ITEM
	db 31, FURRET, NO_ITEM
	db 35, BAYLEEF, BERRY

	db $ff ; end

; ================

	; LYRA
	db "Lyra@"
	db 2 ; item

	; party
	db 30, PIDGEOTTO, NO_ITEM
	db 32, SUNFLORA, NO_ITEM
	db 32, AZUMARILL, NO_ITEM
	db 31, FURRET, NO_ITEM
	db 35, QUILAVA, BERRY

	db $ff ; end

; ================

	; LYRA
	db "Lyra@"
	db 2 ; item

	; party
	db 30, PIDGEOTTO, NO_ITEM
	db 32, SUNFLORA, NO_ITEM
	db 32, GROWLITHE, NO_ITEM
	db 31, FURRET, NO_ITEM
	db 35, CROCONAW, BERRY

	db $ff ; end

; ================

	; LYRA
	db "Lyra@"
	db 2 ; item

	; party
	db 42, PIDGEOT, NO_ITEM
	db 44, ARCANINE, NO_ITEM
	db 44, AZUMARILL, NO_ITEM
	db 43, FURRET, NO_ITEM
	db 45, GIRAFARIG, NO_ITEM
	db 46, MEGANIUM, GOLD_BERRY

	db $ff ; end

; ================

	; LYRA
	db "Lyra@"
	db 2 ; item

	; party
	db 42, PIDGEOT, NO_ITEM
	db 44, SUNFLORA, NO_ITEM
	db 44, AZUMARILL, NO_ITEM
	db 43, FURRET, NO_ITEM
	db 45, GIRAFARIG, NO_ITEM
	db 46, TYPHLOSION, GOLD_BERRY

	db $ff ; end

; ================

	; LYRA
	db "Lyra@"
	db 2 ; item

	; party
	db 42, PIDGEOT, NO_ITEM
	db 44, SUNFLORA, NO_ITEM
	db 44, ARCANINE, NO_ITEM
	db 43, FURRET, NO_ITEM
	db 45, GIRAFARIG, NO_ITEM
	db 46, FERALIGATR, GOLD_BERRY

	db $ff ; end

; ================
; ================================


LoreleiGroup:
; ================================
; ================

	; LORELEI
	db "Lorelei@"
	db 3 ; item + moves

	; party

	db 37, GLACEON, NO_ITEM
		db ICE_BEAM
		db BARRIER
		db RECOVER
		db QUICK_ATTACK

	db 39, DEWGONG, NO_ITEM
		db WATERFALL
		db AURORA_BEAM
		db SLEEP_TALK
		db REST

	db 38, CLOYSTER, NO_ITEM
		db DEFENSE_CURL
		db ROLLOUT
		db AURORA_BEAM
		db SELFDESTRUCT

	db 39, SLOWBRO, NO_ITEM
		db PSYCHIC_M
		db WATER_PULSE
		db HEADBUTT
		db DISABLE

	db 42, JYNX, GOLD_BERRY
		db DRAIN_KISS
		db SING
		db NIGHTMARE
		db PETAL_DANCE

	db 41, LAPRAS, NO_ITEM
		db ICE_BEAM
		db ANCIENTPOWER
		db CONFUSE_RAY
		db SURF

	db $ff ; end

; ================

	; LORELEI
	db "Lorelei@"
	db 3 ; item + moves

	; party

	db 73, DEWGONG, LEFTOVERS
		db SURF
		db ICE_BEAM
		db REST
		db SLEEP_TALK

	db 72, CLOYSTER, MUSCLE_BAND
		db EXPLOSION
		db ROLLOUT
		db ICICLE_CRASH
		db BARRIER

	db 73, SLOWBRO, WISE_GLASSES
		db PSYCHIC_M
		db SURF
		db ICE_BEAM
		db CALM_MIND

	db 72, GLACEON, NEVERMELTICE
		db ICE_BEAM
		db BARRIER
		db HYPER_VOICE
		db MIRROR_COAT

	db 75, JYNX, PINK_BOW
		db DRAIN_KISS
		db NASTY_PLOT
		db ICE_BEAM
		db PSYCHIC_M

	db 74, LAPRAS, BRIGHTPOWDER
		db ICE_BEAM
		db ANCIENTPOWER
		db CONFUSE_RAY
		db OUTRAGE

	db $ff ; end

; ================

	; LORELEI
	db "Lorelei@"
	db 3 ; item + moves

	; party

	db 58, DEWGONG, LEFTOVERS
		db AQUA_TAIL
		db ICE_BEAM
		db REST
		db SLEEP_TALK

	db 57, CLOYSTER, SILK_SCARF
		db EXPLOSION
		db ROLLOUT
		db ICICLE_CRASH
		db BARRIER

	db 58, SLOWBRO, TWISTEDSPOON
		db PSYCHIC_M
		db SURF
		db ICE_BEAM
		db CALM_MIND

	db 56, GLACEON, NEVERMELTICE
		db ICE_BEAM
		db BARRIER
		db HYPER_VOICE
		db QUICK_ATTACK

	db 60, JYNX, PINK_BOW
		db DRAIN_KISS
		db NASTY_PLOT
		db ICE_BEAM
		db PSYCHIC_M

	db 59, LAPRAS, BRIGHTPOWDER
		db ICE_BEAM
		db ANCIENTPOWER
		db CONFUSE_RAY
		db OUTRAGE

	db $ff ; end

; ================
; ================================


AgathaGroup:
; ================================
; ================

	; AGATHA
	db "Agatha@"
	db 3 ; item + moves

	; party

	db 62, GENGAR, SPELL_TAG
		db SHADOW_BALL
		db WILL_O_WISP
		db CURSE
		db DESTINY_BOND

	db 62, CROBAT, POISON_BARB
		db AIR_SLASH
		db CRUNCH
		db X_SCISSOR
		db POISON_JAB

	db 61, MISDREAVUS, EVIOLITE
		db SHADOW_BALL
		db FLAMETHROWER
		db DAZZLINGLEAM
		db POWER_GEM

if DEF(FAITHFUL)
	db 61, MUK, SILK_SCARF
		db EXPLOSION
		db SLUDGE_BOMB
		db SCREECH
		db MINIMIZE
else
	db 61, MAROWAK, THICK_CLUB
		db SWORDS_DANCE
		db BONEMERANG
		db FIRE_PUNCH
		db SHADOW_CLAW
endc

	db 63, ARBOK, KINGS_ROCK
		db SLUDGE_BOMB
		db GLARE
		db CRUNCH
		db BODY_SLAM

	db 65, GENGAR, QUICK_CLAW
		db SHADOW_BALL
		db THUNDERBOLT
		db WILL_O_WISP
		db DESTINY_BOND

	db $ff ; end

; ================

	; AGATHA
	db "Agatha@"
	db 3 ; item + moves

	; party

	db 73, GENGAR, SPELL_TAG
		db SHADOW_BALL
		db WILL_O_WISP
		db CURSE
		db DESTINY_BOND

	db 73, CROBAT, MUSCLE_BAND
		db AIR_SLASH
		db CRUNCH
		db X_SCISSOR
		db POISON_JAB

	db 72, MISMAGIUS, CHARCOAL
		db SHADOW_BALL
		db FLAMETHROWER
		db DAZZLINGLEAM
		db POWER_GEM

if DEF(FAITHFUL)
	db 72, MUK, SILK_SCARF
		db EXPLOSION
		db SLUDGE_BOMB
		db SCREECH
		db MINIMIZE
else
	db 72, MAROWAK, THICK_CLUB
		db SWORDS_DANCE
		db BONEMERANG
		db ROCK_SMASH
		db SHADOW_CLAW
endc

	db 74, ARBOK, KINGS_ROCK
		db SLUDGE_BOMB
		db GLARE
		db CRUNCH
		db BODY_SLAM

	db 75, GENGAR, WISE_GLASSES
		db SHADOW_BALL
		db THUNDERBOLT
		db WILL_O_WISP
		db DESTINY_BOND

	db $ff ; end

; ================
; ================================


YellowGroup:
; ================================
; ================

	; YELLOW
	db "Yellow@"
	db 3 ; item + moves

	; party

	db 28, RATTATA, BERRY
		db LEER
		db QUICK_ATTACK
		db HYPER_FANG
		db FOCUS_ENERGY

	db 26, BUTTERFREE, BERRY
		db CONFUSION
		db SLEEP_POWDER
		db POISONPOWDER
		db STUN_SPORE

	db 29, DODUO, BERRY
		db PECK
		db TRI_ATTACK
		db RETURN
		db MUD_SLAP

	db 28, GRAVELER, BERRY
		db ROLLOUT
		db DEFENSE_CURL
		db MAGNITUDE
		db ROCK_THROW

	db 27, OMANYTE, BERRY
		db WATER_GUN
		db BITE
		db DEFENSE_CURL
		db ICE_SHARD

	db 32, PIKACHU, LIGHT_BALL
		db SURF
		db FLY
		db THUNDERBOLT
		db QUICK_ATTACK

	db $ff ; end

; ================

	; YELLOW
	db "Yellow@"
	db 3 ; item + moves

	; party

	db 72, OMASTAR, WISE_GLASSES
		db SCALD
		db ANCIENTPOWER
		db SPIKES
		db ICE_BEAM

	db 73, RATICATE, KINGS_ROCK
		db SWORDS_DANCE
		db QUICK_ATTACK
		db SUPER_FANG
		db CRUNCH

	db 71, BUTTERFREE, BRIGHTPOWDER
		db PSYCHIC_M
		db BUG_BUZZ
		db SLEEP_POWDER
		db STUN_SPORE

	db 74, DODRIO, SHARP_BEAK
		db DRILL_PECK
		db TRI_ATTACK
		db DOUBLE_TEAM
		db PURSUIT

	db 73, GOLEM, MUSCLE_BAND
		db ROLLOUT
		db DEFENSE_CURL
		db EARTHQUAKE
		db STONE_EDGE

	db 75, PIKACHU, LIGHT_BALL
		db SURF
		db FLY
		db THUNDERBOLT
		db EXTREMESPEED

	db $ff ; end

; ================
; ================================


WalkerGroup:
; ================================
; ================

	; WALKER
	db "Walker@"
	db 3 ; item + moves

	; party

	db 28, NOCTOWL, NO_ITEM
		db AERIAL_ACE
		db NIGHT_SHADE
		db REFLECT
		db CONFUSION

	db 29, PIDGEOT, NO_ITEM
		db GUST
		db TWISTER
		db SWIFT
		db MUD_SLAP

	db 28, AERODACTYL, NO_ITEM
		db WING_ATTACK
		db SUPERSONIC
		db BITE
		db ANCIENTPOWER

	db 31, SKARMORY, GOLD_BERRY
		db METAL_CLAW
		db FURY_ATTACK
		db DRILL_PECK
		db SWIFT

	db $ff ; end

; ================

	; WALKER
	db "Walker@"
	db 3 ; item + moves

	; party

	db 75, SKARMORY, LEFTOVERS
		db WHIRLWIND
		db SPIKES
		db DRILL_PECK
		db NIGHT_SLASH

	db 72, NOCTOWL, SHARP_BEAK
		db AIR_SLASH
		db PSYCHIC_M
		db SHADOW_BALL
		db REFLECT

	db 74, PIDGEOT, BRIGHTPOWDER
		db TWISTER
		db EXTREMESPEED
		db HURRICANE
		db WHIRLWIND

	db 73, AERODACTYL, MUSCLE_BAND
		db ROCK_SLIDE
		db CRUNCH
		db IRON_HEAD
		db FLY

	db 73, CHARIZARD, CHARCOAL
		db SWORDS_DANCE
		db FIRE_BLAST
		db ROCK_SLIDE
		db SLASH

	db 72, XATU, QUICK_CLAW
		db FUTURE_SIGHT
		db PAIN_SPLIT
		db REFLECT
		db PSYCHIC_M

	db $ff ; end

; ================
; ================================


BillGroup:
; ================================
; ================

	; BILL_T
	db "Bill@"
	db 3 ; item + moves

	; party

	db 62, VAPOREON, MYSTIC_WATER
		db RECOVER
		db BARRIER
		db HAZE
		db SCALD

	db 62, JOLTEON, MAGNET
		db THUNDER_WAVE
		db THUNDERBOLT
		db LIGHT_SCREEN
		db QUICK_ATTACK

	db 62, FLAREON, CHARCOAL
		db FLARE_BLITZ
		db DOUBLE_EDGE
		db SMOKESCREEN
		db ROCK_SMASH

	db 63, LEAFEON, MIRACLE_SEED
		db SEED_BOMB
		db SWORDS_DANCE
		db MORNING_SUN
		db X_SCISSOR

	db 63, GLACEON, NEVERMELTICE
		db ICE_BEAM
		db MIRROR_COAT
		db RECOVER
		db QUICK_ATTACK

	db 66, PORYGON2, EVIOLITE
		db TRI_ATTACK
		db THUNDERBOLT
		db ICE_BEAM
		db RECOVER

	db $ff ; end

; ================
; ================================


LawrenceGroup:
; ================================
; ================

	; LAWRENCE
	db "Lawrence@"
	db 3 ; item + moves

	; party

	db 70, ARTICUNO, BRIGHTPOWDER
		db ICE_BEAM
		db AIR_SLASH
		db ANCIENTPOWER
		db WHIRLWIND

	db 66, CHARIZARD, DRAGON_FANG
		db SWORDS_DANCE
		db FLARE_BLITZ
		db DRAGON_CLAW
		db SLASH

	db 68, DRAGONITE, LEFTOVERS
		db DRAGON_DANCE
		db OUTRAGE
		db AQUA_TAIL
		db EARTHQUAKE

	db 67, TYRANITAR, KINGS_ROCK
		db EARTHQUAKE
		db STONE_EDGE
		db CRUNCH
		db SCARY_FACE

	db 66, HONCHKROW, QUICK_CLAW
		db NASTY_PLOT
		db DARK_PULSE
		db CONFUSE_RAY
		db PURSUIT

	db 70, ZAPDOS, SHARP_BEAK
		db DRILL_PECK
		db THUNDER
		db ANCIENTPOWER
		db LIGHT_SCREEN

	db $ff ; end

; ================
; ================================


GiovanniGroup:
; ================================
; ================

	; unused
	; GIOVANNI
	db "Giovanni@"
	db 3 ; item + moves

	; party

	db 32, RHYHORN, EVIOLITE
		db CRUNCH
		db MAGNITUDE
		db SCARY_FACE
		db STOMP

	db 34, HONCHKROW, BLACKGLASSES
		db ASTONISH
		db PURSUIT
		db STEEL_WING
		db FLY

	db 36, NIDOKING, KINGS_ROCK
		db EARTHQUAKE
		db THRASH
		db OUTRAGE
		db SHADOW_CLAW

	db 34, KANGASKHAN, SILK_SCARF
		db EARTHQUAKE
		db STOMP
		db DIZZY_PUNCH
		db SEISMIC_TOSS

	db 36, NIDOQUEEN, SOFT_SAND
		db EARTHQUAKE
		db BODY_SLAM
		db OUTRAGE
		db FOCUS_BLAST

	db 38, RHYDON, HARD_STONE
		db EARTHQUAKE
		db ROCK_SLIDE
		db STOMP
		db SURF

	db $ff ; end

; ================
; ================================


StevenGroup:
; ================================
; ================

	; STEVEN
	db "Steven@"
	db 3 ; item + moves

	; party

	db 61, SKARMORY, QUICK_CLAW
		db SPIKES
		db WHIRLWIND
		db DRILL_PECK
		db STEEL_WING

	db 60, FORRETRESS, FOCUS_BAND
		db EARTHQUAKE
		db ROLLOUT
		db EXPLOSION
		db SPIKES

if DEF(FAITHFUL)
	db 58, SCIZOR, MUSCLE_BAND
		db SWORDS_DANCE
		db BULLET_PUNCH
		db PURSUIT
		db IRON_HEAD

	db 58, MAGNEZONE, WISE_GLASSES
		db THUNDERBOLT
		db FLASH_CANNON
		db TRI_ATTACK
		db EXPLOSION
else
	db 58, BLASTOISE, WISE_GLASSES
		db SURF
		db BLIZZARD
		db FLASH_CANNON
		db ZAP_CANNON

	db 58, RHYPERIOR, MUSCLE_BAND
		db EARTHQUAKE
		db STONE_EDGE
		db MEGAHORN
		db AVALANCHE
endc

	db 58, AERODACTYL, KINGS_ROCK
		db ROCK_SLIDE
		db CRUNCH
		db AERIAL_ACE
		db IRON_HEAD

	db 62, STEELIX, LEFTOVERS
		db EARTHQUAKE
		db STONE_EDGE
		db IRON_HEAD
		db SANDSTORM

	db $ff ; end

; ================

	; STEVEN
	db "Steven@"
	db 3 ; item + moves

	; party

	db 74, SKARMORY, QUICK_CLAW
		db SPIKES
		db WHIRLWIND
		db DRILL_PECK
		db STEEL_WING

	db 73, FORRETRESS, FOCUS_BAND
		db EARTHQUAKE
		db ROLLOUT
		db EXPLOSION
		db SPIKES

	db 72, MAGNEZONE, WISE_GLASSES
		db THUNDERBOLT
		db FLASH_CANNON
		db TRI_ATTACK
		db EXPLOSION

if DEF(FAITHFUL)
	db 72, SCIZOR, MUSCLE_BAND
		db SWORDS_DANCE
		db BULLET_PUNCH
		db PURSUIT
		db IRON_HEAD
else
	db 72, RHYPERIOR, MUSCLE_BAND
		db EARTHQUAKE
		db STONE_EDGE
		db MEGAHORN
		db IRON_HEAD
endc

	db 72, AERODACTYL, KINGS_ROCK
		db ROCK_SLIDE
		db CRUNCH
		db AERIAL_ACE
		db IRON_HEAD

	db 75, STEELIX, LEFTOVERS
		db EARTHQUAKE
		db STONE_EDGE
		db IRON_HEAD
		db SANDSTORM

	db $ff ; end

; ================
; ================================


CynthiaGroup:
; ================================
; ================

	; CYNTHIA
	db "Cynthia@"
	db 3 ; item + moves

	; party

	db 60, TOGEKISS, WISE_GLASSES
		db AIR_SLASH
		db FOCUS_BLAST
		db SOFTBOILED
		db NASTY_PLOT

	db 58, LEAFEON, FOCUS_BAND
		db SWORDS_DANCE
		db SEED_BOMB
		db DOUBLE_EDGE
		db ROAR

	db 58, ELECTIVIRE, MUSCLE_BAND
		db CROSS_CHOP
		db THUNDERPUNCH
		db FIRE_PUNCH
		db LIGHT_SCREEN

	db 58, YANMEGA, QUICK_CLAW
		db BUG_BUZZ
		db AIR_SLASH
		db ANCIENTPOWER
		db PROTECT

	db 62, KINGDRA, LEFTOVERS
		db DRAGON_DANCE
		db OUTRAGE
		db WATERFALL
		db ICE_BEAM

	db 61, GLISCOR, KINGS_ROCK
		db SWORDS_DANCE
		db NIGHT_SLASH
		db X_SCISSOR
		db SCREECH

	db $ff ; end

; ================

	; CYNTHIA
	db "Cynthia@"
	db 3 ; item + moves

	; party

	db 73, TOGEKISS, WISE_GLASSES
		db AIR_SLASH
		db FOCUS_BLAST
		db SOFTBOILED
		db NASTY_PLOT

	db 72, LEAFEON, FOCUS_BAND
		db SWORDS_DANCE
		db SEED_BOMB
		db DOUBLE_EDGE
		db ROAR

	db 72, ELECTIVIRE, MUSCLE_BAND
		db CROSS_CHOP
		db THUNDERPUNCH
		db FIRE_PUNCH
		db LIGHT_SCREEN

	db 72, YANMEGA, QUICK_CLAW
		db BUG_BUZZ
		db AIR_SLASH
		db ANCIENTPOWER
		db PROTECT

	db 75, KINGDRA, LEFTOVERS
		db DRAGON_DANCE
		db OUTRAGE
		db WATERFALL
		db ICE_BEAM

	db 74, GLISCOR, KINGS_ROCK
		db SWORDS_DANCE
		db NIGHT_SLASH
		db X_SCISSOR
		db SCREECH

	db $ff ; end

; ================
; ================================


TowerTycoonGroup:
; ================================
; ================

	; unused
	; TOWERTYCOON
	db "Palmer@"
	db 0 ; normal

	; party
	db 50, GYARADOS
	db 50, RHYPERIOR
	db 50, DRAGONITE

	db $ff ; end

; ================

	; TOWERTYCOON
	db "Palmer@"
	db 3 ; item + moves

	; party

	db 74, GYARADOS, MUSCLE_BAND
		db DRAGON_DANCE
		db WATERFALL
		db CRUNCH
		db OUTRAGE

	db 74, RHYPERIOR, KINGS_ROCK
		db EARTHQUAKE
		db ROCK_SLIDE
		db MEGAHORN
		db AVALANCHE

	db 75, DRAGONITE, WISE_GLASSES
		db HURRICANE
		db DRAGON_PULSE
		db FIRE_BLAST
		db BLIZZARD

	db 73, ALAKAZAM, TWISTEDSPOON
		db PSYCHIC_M
		db CONFUSE_RAY
		db TRI_ATTACK
		db LIGHT_SCREEN

	db 73, SNORLAX, LEFTOVERS
		db SLEEP_TALK
		db REST
		db BODY_SLAM
		db GUNK_SHOT

	db 72, HERACROSS, BLACK_BELT
		db MEGAHORN
		db CROSS_CHOP
		db SEISMIC_TOSS
		db NIGHT_SLASH

	db $ff ; end

; ================
; ================================


ValerieGroup:
; ================================
; ================

	; VALERIE
	db "Valerie@"
	db 3 ; item + moves

	; party

	db 35, CLEFABLE, NO_ITEM
		db DISARM_VOICE
		db MINIMIZE
		db BATON_PASS
		db METRONOME

	db 35, MR__MIME, NO_ITEM
		db PSYBEAM
		db CONFUSE_RAY
		db LIGHT_SCREEN
		db REFLECT

	db 34, WIGGLYTUFF, NO_ITEM
		db REST
		db SLEEP_TALK
		db DISARM_VOICE
		db ROLLOUT

	db 34, AZUMARILL, NO_ITEM
		db PLAY_ROUGH
		db AQUA_TAIL
		db DIZZY_PUNCH
		db ROLLOUT

	db 36, TOGETIC, NO_ITEM
		db ANCIENTPOWER
		db SOFTBOILED
		db FAIRY_WIND
		db ENCORE

	db 38, SYLVEON, GOLD_BERRY
		db MOONBLAST
		db CALM_MIND
		db DRAIN_KISS
		db SWIFT

	db $ff ; end

; ================

	; VALERIE
	db "Valerie@"
	db 3 ; item + moves

	; party

	db 57, CLEFABLE, LEFTOVERS
		db MOONBLAST
		db CALM_MIND
		db MOONLIGHT
		db METRONOME

	db 57, MR__MIME, QUICK_CLAW
		db PSYCHIC_M
		db DAZZLINGLEAM
		db LIGHT_SCREEN
		db REFLECT

	db 56, WIGGLYTUFF, KINGS_ROCK
		db REST
		db SLEEP_TALK
		db HYPER_VOICE
		db DAZZLINGLEAM

	db 56, AZUMARILL, MUSCLE_BAND
		db PLAY_ROUGH
		db WATERFALL
		db DIZZY_PUNCH
		db SUBMISSION

	db 58, TOGETIC, WISE_GLASSES
		db ANCIENTPOWER
		db SOFTBOILED
		db DAZZLINGLEAM
		db AIR_SLASH

	db 60, SYLVEON, PINK_BOW
		db MOONBLAST
		db CALM_MIND
		db DRAIN_KISS
		db HYPER_VOICE

	db $ff ; end

; ================

	; VALERIE
	db "Valerie@"
	db 3 ; item + moves

	; party

	db 73, CLEFABLE, LEFTOVERS
		db MOONBLAST
		db CALM_MIND
		db SOFTBOILED
		db THUNDER_WAVE

	db 73, MR__MIME, QUICK_CLAW
		db PSYCHIC_M
		db DAZZLINGLEAM
		db LIGHT_SCREEN
		db REFLECT

	db 72, WIGGLYTUFF, KINGS_ROCK
		db FIRE_BLAST
		db HEAL_BELL
		db HYPER_VOICE
		db DAZZLINGLEAM

	db 72, AZUMARILL, MUSCLE_BAND
		db PLAY_ROUGH
		db WATERFALL
		db RETURN
		db SUBMISSION

	db 74, TOGETIC, WISE_GLASSES
		db ANCIENTPOWER
		db SOFTBOILED
		db DAZZLINGLEAM
		db AIR_SLASH

	db 75, SYLVEON, PINK_BOW
		db MOONBLAST
		db CALM_MIND
		db DRAIN_KISS
		db HYPER_VOICE

	db $ff ; end

; ================
; ================================


ReiGroup:
; ================================
; ================

	; REI
	db "Maiden Rei@"
	db 2 ; item

	; party
	db 20, FLAREON, NO_ITEM
	db 19, MURKROW, NO_ITEM
	db 18, NOCTOWL, NO_ITEM
	db 18, KADABRA, NO_ITEM
	db 21, NINETALES, GOLD_BERRY

	db $ff ; end

; ================

	; REI
	db "Maiden Rei@"
	db 3 ; item + moves

	; party

	db 59, FLAREON, MUSCLE_BAND
		db QUICK_ATTACK
		db ROCK_SMASH
		db DOUBLE_EDGE
		db FLARE_BLITZ

	db 58, HONCHKROW, BLACKGLASSES
		db DRILL_PECK
		db WHIRLWIND
		db PURSUIT
		db FEINT_ATTACK

	db 57, NOCTOWL, QUICK_CLAW
		db PSYCHIC_M
		db AIR_SLASH
		db HYPNOSIS
		db DREAM_EATER

	db 57, ALAKAZAM, WISE_GLASSES
		db PSYCHIC_M
		db FOCUS_BLAST
		db SHADOW_BALL
		db THUNDER_WAVE

	db 58, RAPIDASH, KINGS_ROCK
		db FIRE_BLAST
		db MEGAHORN
		db POISON_JAB
		db WILL_O_WISP

	db 60, NINETALES, LEFTOVERS
		db NASTY_PLOT
		db FLAMETHROWER
		db DARK_PULSE
		db SHADOW_BALL

	db $ff ; end

; ================

	; REI
	db "Maiden Rei@"
	db 3 ; item + moves

	; party

	db 74, FLAREON, MUSCLE_BAND
		db QUICK_ATTACK
		db ROCK_SMASH
		db DOUBLE_EDGE
		db FLARE_BLITZ

	db 73, HONCHKROW, BLACKGLASSES
		db DRILL_PECK
		db WHIRLWIND
		db PURSUIT
		db FEINT_ATTACK

	db 72, NOCTOWL, QUICK_CLAW
		db PSYCHIC_M
		db AIR_SLASH
		db HYPNOSIS
		db DREAM_EATER

	db 72, ALAKAZAM, WISE_GLASSES
		db PSYCHIC_M
		db FOCUS_BLAST
		db SHADOW_BALL
		db THUNDER_WAVE

	db 73, RAPIDASH, KINGS_ROCK
		db FLARE_BLITZ
		db MEGAHORN
		db POISON_JAB
		db WILL_O_WISP

	db 75, NINETALES, LEFTOVERS
		db NASTY_PLOT
		db FIRE_BLAST
		db DARK_PULSE
		db SHADOW_BALL

	db $ff ; end

; ================
; ================================


OmastarFossilGroup:
; ================================
; ================
; ================
; ================================


KabutopsFossilGroup:
; ================================
; ================
; ================
; ================================


AerodactylFossilGroup:
; ================================
; ================
; ================
; ================================

