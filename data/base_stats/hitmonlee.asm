	db HITMONLEE ; 106

	db  50, 120,  53,  87,  35, 110
	;   hp  atk  def  spd  sat  sdf

	db FIGHTING, FIGHTING
	db 45 ; catch rate
	db 139 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	db 0 ; gender
	db 100 ; unknown
	db 25 ; step cycles to hatch
	db 5 ; unknown
	dn 7, 7 ; frontpic dimensions
	db 0, 0, 0, 0 ; padding
	db MEDIUM_FAST ; growth rate
	dn HUMANSHAPE, HUMANSHAPE ; egg groups

	; tmhm
	tmhm DYNAMICPUNCH, CURSE, TOXIC, BULK_UP, HIDDEN_POWER, SUNNY_DAY, PROTECT, RAIN_DANCE, EARTHQUAKE, RETURN, MUD_SLAP, DOUBLE_TEAM, SWIFT, STONE_EDGE, REST, ATTRACT, THIEF, ROCK_SLIDE, SUBSTITUTE, BODY_SLAM, FOCUS_BLAST, ENDURE, POISON_JAB, STRENGTH, ROCK_SMASH, COUNTER, DOUBLE_EDGE, HEADBUTT, SEISMIC_TOSS, SLEEP_TALK, SWAGGER
	; end
