	db SCYTHER ; 123

	db  70, 110,  80, 105,  55,  80
	;   hp  atk  def  spd  sat  sdf

	db BUG, FLYING
	db 45 ; catch rate
	db 187 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	db 127 ; gender
	db 100 ; unknown
	db 25 ; step cycles to hatch
	db 5 ; unknown
	dn 7, 7 ; frontpic dimensions
	db 0, 0, 0, 0 ; padding
	db MEDIUM_FAST ; growth rate
	dn INSECT, INSECT ; egg groups

	; tmhm
	tmhm CURSE, TOXIC, SWORDS_DANCE, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, LIGHT_SCREEN, PROTECT, RAIN_DANCE, SAFEGUARD, RETURN, DOUBLE_TEAM, SWIFT, AERIAL_ACE, REST, ATTRACT, THIEF, STEEL_WING, FURY_CUTTER, SUBSTITUTE, FALSE_SWIPE, X_SCISSOR, ENDURE, CUT, FLY, ROCK_SMASH, COUNTER, DOUBLE_EDGE, HEADBUTT, SLEEP_TALK, SWAGGER
	; end
