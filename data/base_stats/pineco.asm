	db PINECO ; 204

	db  50,  65,  90,  15,  35,  35
	;   hp  atk  def  spd  sat  sdf

	db BUG, BUG
	db 190 ; catch rate
	db 60 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	db 127 ; gender
	db 100 ; unknown
	db 20 ; step cycles to hatch
	db 5 ; unknown
	dn 5, 5 ; frontpic dimensions
	db 0, 0, 0, 0 ; padding
	db MEDIUM_FAST ; growth rate
	dn INSECT, INSECT ; egg groups

	; tmhm
	tmhm CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, LIGHT_SCREEN, PROTECT, GIGA_DRAIN, SOLAR_BEAM, EARTHQUAKE, RETURN, DIG, DOUBLE_TEAM, REFLECT, SANDSTORM, SWIFT, REST, ATTRACT, ROCK_SLIDE, SUBSTITUTE, BODY_SLAM, ENDURE, EXPLOSION, STRENGTH, ROCK_SMASH, COUNTER, DEFENSE_CURL, DOUBLE_EDGE, HEADBUTT, IRON_HEAD, ROLLOUT, SLEEP_TALK, SWAGGER
	; end
