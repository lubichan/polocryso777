	db DITTO ; 132

if DEF(FAITHFUL)
	db  48,  48,  48,  48,  48,  48
	;   hp  atk  def  spd  sat  sdf
else
	db  78,  28,  48, 108,  28,  48
	;   hp  atk  def  spd  sat  sdf
endc

	db NORMAL, NORMAL
	db 35 ; catch rate
	db 61 ; base exp
	db NO_ITEM ; item 1
	db METAL_POWDER ; item 2
	db 255 ; gender
	db 100 ; unknown
	db 20 ; step cycles to hatch
	db 5 ; unknown
	dn 5, 5 ; frontpic dimensions
	db 0, 0, 0, 0 ; padding
	db MEDIUM_FAST ; growth rate
	dn LADIES_MAN, LADIES_MAN ; egg groups

	; tmhm
	tmhm
	; end
