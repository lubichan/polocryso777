	db FURRET ; 162

if DEF(FAITHFUL)
	db  85,  76,  64,  90,  45,  55
	;   hp  atk  def  spd  sat  sdf
else
	db  85,  86,  64, 108,  45,  55
	;   hp  atk  def  spd  sat  sdf
endc

	db NORMAL, NORMAL
	db 90 ; catch rate
if DEF(FAITHFUL)
	db 116 ; base exp
else
	db 126 ; base exp
endc
	db BERRY ; item 1
	db GOLD_BERRY ; item 2
	db 127 ; gender
	db 100 ; unknown
	db 15 ; step cycles to hatch
	db 5 ; unknown
	dn 6, 6 ; frontpic dimensions
	db 0, 0, 0, 0 ; padding
	db MEDIUM_FAST ; growth rate
	dn FIELD, FIELD ; egg groups

	; tmhm
	tmhm DYNAMICPUNCH, CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, HONE_CLAWS, ICE_BEAM, BLIZZARD, HYPER_BEAM, PROTECT, RAIN_DANCE, SOLAR_BEAM, IRON_TAIL, THUNDERBOLT, THUNDER, RETURN, DIG, SHADOW_BALL, MUD_SLAP, DOUBLE_TEAM, FLAMETHROWER, SWIFT, REST, ATTRACT, THIEF, FURY_CUTTER, SUBSTITUTE, BODY_SLAM, FOCUS_BLAST, ENDURE, SHADOW_CLAW, CUT, SURF, STRENGTH, WHIRLPOOL, ROCK_SMASH, AQUA_TAIL, DEFENSE_CURL, DOUBLE_EDGE, FIRE_PUNCH, HEADBUTT, HYPER_VOICE, ICE_PUNCH, ROLLOUT, SLEEP_TALK, SWAGGER, THUNDERPUNCH, WATER_PULSE
	; end
