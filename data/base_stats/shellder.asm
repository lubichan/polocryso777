	db SHELLDER ; 090

	db  30,  65, 100,  40,  45,  25
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER
	db 190 ; catch rate
	db 97 ; base exp
	db PEARL ; item 1
	db BIG_PEARL ; item 2
	db 127 ; gender
	db 100 ; unknown
	db 20 ; step cycles to hatch
	db 5 ; unknown
	dn 5, 5 ; frontpic dimensions
	db 0, 0, 0, 0 ; padding
	db SLOW ; growth rate
	dn INVERTEBRATE, INVERTEBRATE ; egg groups

	; tmhm
	tmhm CURSE, TOXIC, HAIL, HIDDEN_POWER, ICE_BEAM, BLIZZARD, PROTECT, RAIN_DANCE, RETURN, DOUBLE_TEAM, SWIFT, AVALANCHE, REST, ATTRACT, SUBSTITUTE, ENDURE, EXPLOSION, SURF, WHIRLPOOL, WATERFALL, DOUBLE_EDGE, ICY_WIND, ROLLOUT, SLEEP_TALK, SWAGGER, WATER_PULSE
	; end
