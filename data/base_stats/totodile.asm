	db TOTODILE ; 158

	db  50,  65,  64,  43,  44,  48
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER
	db 45 ; catch rate
	db 66 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	db 31 ; gender
	db 100 ; unknown
	db 20 ; step cycles to hatch
	db 5 ; unknown
	dn 5, 5 ; frontpic dimensions
	db 0, 0, 0, 0 ; padding
	db MEDIUM_SLOW ; growth rate
	dn MONSTER, AMPHIBIAN ; egg groups

	; tmhm
	tmhm DYNAMICPUNCH, DRAGON_CLAW, CURSE, TOXIC, HAIL, SWORDS_DANCE, HIDDEN_POWER, HONE_CLAWS, ICE_BEAM, BLIZZARD, PROTECT, RAIN_DANCE, IRON_TAIL, RETURN, DIG, MUD_SLAP, DOUBLE_TEAM, AERIAL_ACE, REST, ATTRACT, ROCK_SLIDE, SUBSTITUTE, BODY_SLAM, SCALD, ENDURE, SHADOW_CLAW, CUT, SURF, WHIRLPOOL, WATERFALL, AQUA_TAIL, COUNTER, DOUBLE_EDGE, HEADBUTT, ICE_PUNCH, ICY_WIND, SEISMIC_TOSS, SLEEP_TALK, SWAGGER, WATER_PULSE
	; end
