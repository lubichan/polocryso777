const_value set 2
	const NAVELROCKINSIDE_POKE_BALL1
	const NAVELROCKINSIDE_POKE_BALL2

NavelRockInside_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

NavelRockInsideSacredAsh:
	itemball SACRED_ASH

NavelRockInsideMasterBall:
	itemball MASTER_BALL

NavelRockInside_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 14
	warp_def $57, $9, 3, NAVEL_ROCK_OUTSIDE
	warp_def $43, $9, 3, NAVEL_ROCK_INSIDE
	warp_def $37, $5, 2, NAVEL_ROCK_INSIDE
	warp_def $39, $b, 5, NAVEL_ROCK_INSIDE
	warp_def $55, $17, 4, NAVEL_ROCK_INSIDE
	warp_def $3, $17, 7, NAVEL_ROCK_INSIDE
	warp_def $4b, $25, 6, NAVEL_ROCK_INSIDE
	warp_def $48, $22, 9, NAVEL_ROCK_INSIDE
	warp_def $3e, $22, 8, NAVEL_ROCK_INSIDE
	warp_def $41, $25, 11, NAVEL_ROCK_INSIDE
	warp_def $37, $25, 10, NAVEL_ROCK_INSIDE
	warp_def $34, $22, 13, NAVEL_ROCK_INSIDE
	warp_def $2a, $22, 12, NAVEL_ROCK_INSIDE
	warp_def $2d, $25, 1, NAVEL_ROCK_ROOF

.XYTriggers:
	db 0

.Signposts:
	db 0

.PersonEvents:
	db 2
	person_event SPRITE_POKE_BALL, 10, 12, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, NavelRockInsideSacredAsh, EVENT_NAVEL_ROCK_SACRED_ASH
	person_event SPRITE_POKE_BALL, 10, 37, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, NavelRockInsideMasterBall, EVENT_NAVEL_ROCK_MASTER_BALL
