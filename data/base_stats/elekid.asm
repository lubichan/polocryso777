	db ELEKID ; 239

if DEF(FAITHFUL)
	db  45,  63,  37,  95,  65,  55
	;   hp  atk  def  spd  sat  sdf
else
	db  50,  63,  37, 100,  65,  55
	;   hp  atk  def  spd  sat  sdf
endc

	db ELECTRIC, ELECTRIC
	db 45 ; catch rate
	db 106 ; base exp
	db GOLD_BERRY ; item 1
	db ELECTIRIZER ; item 2
	db 63 ; gender
	db 100 ; unknown
	db 25 ; step cycles to hatch
	db 5 ; unknown
	dn 6, 6 ; frontpic dimensions
	db 0, 0, 0, 0 ; padding
	db MEDIUM_FAST ; growth rate
	dn NO_EGGS, NO_EGGS ; egg groups

	; tmhm
	tmhm DYNAMICPUNCH, CURSE, TOXIC, BULK_UP, HIDDEN_POWER, LIGHT_SCREEN, PROTECT, RAIN_DANCE, THUNDERBOLT, THUNDER, RETURN, PSYCHIC, MUD_SLAP, DOUBLE_TEAM, SWIFT, WILD_CHARGE, REST, ATTRACT, THIEF, SUBSTITUTE, BODY_SLAM, ENDURE, THUNDER_WAVE, FLASH, ROCK_SMASH, COUNTER, DOUBLE_EDGE, FIRE_PUNCH, HEADBUTT, ICE_PUNCH, SEISMIC_TOSS, SLEEP_TALK, SWAGGER, THUNDERPUNCH, ZAP_CANNON
	; end
