GetEmote2bpp: ; 1412a
	ld a, $1
	ld [rVBK], a
	call Get2bpp
	xor a
	ld [rVBK], a
	ret
; 14135

_ReplaceKrisSprite:: ; 14135
	call GetPlayerSprite
	ld a, [UsedSprites]
	ld [hUsedSpriteIndex], a
	ld a, [UsedSprites + 1]
	ld [hUsedSpriteTile], a
	call GetUsedSprite
	ret
; 14146

RefreshSprites:: ; 14168
	call .Refresh
	call RunCallback_04
	ret
; 1416f

.Refresh: ; 1416f
	xor a
	ld bc, UsedSpritesEnd - UsedSprites
	ld hl, UsedSprites
	call ByteFill
	call GetPlayerSprite
	call AddMapSprites
	call LoadAndSortSprites
	ret
; 14183

GetPlayerSprite: ; 14183
; Get Chris or Kris's sprite.
	ld hl, .Chris
	ld a, [wPlayerSpriteSetupFlags]
	bit 2, a
	jr nz, .go
	ld a, [PlayerGender]
	bit 0, a
	jr z, .go
	ld hl, .Kris

.go
	ld a, [PlayerState]
	ld c, a
.loop
	ld a, [hli]
	cp c
	jr z, .good
	inc hl
	cp $ff
	jr nz, .loop

; Any player state not in the array defaults to Chris's sprite.
	xor a ; ld a, PLAYER_NORMAL
	ld [PlayerState], a
	ld a, SPRITE_CHRIS
	jr .finish

.good
	ld a, [hl]

.finish
	ld [UsedSprites + 0], a
	ld [PlayerSprite], a
	ld [PlayerObjectSprite], a
	ret

.Chris:
	db PLAYER_NORMAL,    SPRITE_CHRIS
	db PLAYER_BIKE,      SPRITE_CHRIS_BIKE
	db PLAYER_SURF,      SPRITE_SURF
	db PLAYER_SURF_PIKA, SPRITE_SURFING_PIKACHU
	db $ff

.Kris:
	db PLAYER_NORMAL,    SPRITE_KRIS
	db PLAYER_BIKE,      SPRITE_KRIS_BIKE
	db PLAYER_SURF,      SPRITE_SURF
	db PLAYER_SURF_PIKA, SPRITE_SURFING_PIKACHU
	db $ff
; 141c9


AddMapSprites: ; 141c9
	call GetMapPermission
	call CheckOutdoorMap
	jr z, .outdoor
	call AddIndoorSprites
	ret

.outdoor
	call AddOutdoorSprites
	ret
; 141d9


AddIndoorSprites: ; 141d9
	ld hl, Map1ObjectSprite
	ld a, 1
.loop
	push af
	ld a, [hl]
	call AddSpriteGFX
	ld de, OBJECT_LENGTH
	add hl, de
	pop af
	inc a
	cp NUM_OBJECTS
	jr nz, .loop
	ret
; 141ee


AddOutdoorSprites: ; 141ee
	ld a, [MapGroup]
	dec a
	ld c, a
	ld b, 0
	ld hl, OutdoorSprites
rept 2
	add hl, bc
endr
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld c, MAX_OUTDOOR_SPRITES
.loop
	push bc
	ld a, [hli]
	call AddSpriteGFX
	pop bc
	dec c
	jr nz, .loop
	ret
; 14209


RunCallback_04: ; 14209
	ld a, MAPCALLBACK_SPRITES
	call RunMapCallback
	call GetUsedSprites
	call .LoadMiscTiles
	ret
; 14215

.LoadMiscTiles: ; 14215
	ld a, [wSpriteFlags]
	bit 6, a
	ret nz

	ld c, EMOTE_SHADOW
	callba LoadEmote
	call GetMapPermission
	call CheckOutdoorMap
	ld c, EMOTE_0B
	jr z, .outdoor
	ld c, EMOTE_BOULDER_DUST
.outdoor
	callba LoadEmote
	ret
; 14236



SafeGetSprite: ; 14236
	push hl
	call GetSprite
	pop hl
	ret
; 1423c

GetSprite: ; 1423c
	call GetMonSprite
	ret c

	ld hl, SpriteHeaders ; address
	dec a
	ld c, a
	ld b, 0
	ld a, 6
	call AddNTimes
	; load the address into de
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	; load the length into c
	ld a, [hli]
	swap a
	ld c, a
	; load the sprite bank into both b and h
	ld b, [hl]
	ld a, [hli]
	; load the sprite type into l
	ld l, [hl]
	ld h, a
	ret
; 14259


GetMonSprite: ; 14259
; Return carry if a monster sprite was loaded.

	cp SPRITE_POKEMON
	jr c, .Normal
	cp SPRITE_DAYCARE_MON_1
	jr z, .wBreedMon1
	cp SPRITE_DAYCARE_MON_2
	jr z, .wBreedMon2
	cp SPRITE_VARS
	jr nc, .Variable
	jr .Icon

.Normal:
	and a
	ret

.Icon:
	sub SPRITE_POKEMON
	ld e, a
	ld d, 0
	ld hl, SpriteMons
	add hl, de
	ld a, [hl]
	jr .Mon

.wBreedMon1
	ld a, [wBreedMon1Species]
	jr .Mon

.wBreedMon2
	ld a, [wBreedMon2Species]

.Mon:
	ld e, a
	and a
	jr z, .NoBreedmon

	callba LoadOverworldMonIcon

	ld l, 1
	ld h, 0
	scf
	ret

.Variable:
	sub SPRITE_VARS
	ld e, a
	ld d, 0
	ld hl, VariableSprites
	add hl, de
	ld a, [hl]
	and a
	jp nz, GetMonSprite

.NoBreedmon:
	ld a, 1
	ld l, 1
	ld h, 0
	and a
	ret
; 142a7


_DoesSpriteHaveFacings:: ; 142a7
; Checks to see whether we can apply a facing to a sprite.
; Returns carry unless the sprite is a Pokemon or a Still Sprite.
	cp SPRITE_POKEMON
	jr nc, .only_down

	push hl
	push bc
	ld hl, SpriteHeaders + SPRITEHEADER_TYPE ; type
	dec a
	ld c, a
	ld b, 0
	ld a, NUM_SPRITEHEADER_FIELDS
	call AddNTimes
	ld a, [hl]
	pop bc
	pop hl
	cp STILL_SPRITE
	jr nz, .only_down
	scf
	ret

.only_down
	and a
	ret
; 142c4


_GetSpritePalette:: ; 142c4
	ld a, c
	call GetMonSprite
	jr c, .is_pokemon

	ld hl, SpriteHeaders + 5 ; palette
	dec a
	ld c, a
	ld b, 0
	ld a, 6
	call AddNTimes
	ld c, [hl]
	ret

.is_pokemon
	xor a
	ld c, a
	ret
; 142db


LoadAndSortSprites: ; 142db
	call LoadSpriteGFX
	call SortUsedSprites
	call ArrangeUsedSprites
	ret
; 142e5


AddSpriteGFX: ; 142e5
; Add any new sprite ids to a list of graphics to be loaded.
; Return carry if the list is full.

	push hl
	push bc
	ld b, a
	ld hl, UsedSprites + 2
	ld c, SPRITE_GFX_LIST_CAPACITY - 1
.loop
	ld a, [hl]
	cp b
	jr z, .exists
	and a
	jr z, .new
rept 2
	inc hl
endr
	dec c
	jr nz, .loop

	pop bc
	pop hl
	scf
	ret

.exists
	pop bc
	pop hl
	and a
	ret

.new
	ld [hl], b
	pop bc
	pop hl
	and a
	ret
; 14306


LoadSpriteGFX: ; 14306
; Bug: b is not preserved, so
; it's useless as a next count.

	ld hl, UsedSprites
	ld b, SPRITE_GFX_LIST_CAPACITY
.loop
	ld a, [hli]
	and a
	jr z, .done
	push hl
	call .LoadSprite
	pop hl
	ld [hli], a
	dec b
	jr nz, .loop

.done
	ret

.LoadSprite:
	call GetSprite
	ld a, l
	ret
; 1431e


SortUsedSprites: ; 1431e
; Bubble-sort sprites by type.

; Run backwards through UsedSprites to find the last one.

	ld c, SPRITE_GFX_LIST_CAPACITY
	ld de, UsedSprites + (SPRITE_GFX_LIST_CAPACITY - 1) * 2
.FindLastSprite:
	ld a, [de]
	and a
	jr nz, .FoundLastSprite
rept 2
	dec de
endr
	dec c
	jr nz, .FindLastSprite
.FoundLastSprite:
	dec c
	jr z, .quit

; If the length of the current sprite is
; higher than a later one, swap them.

	inc de
	ld hl, UsedSprites + 1

.CheckSprite:
	push bc
	push de
	push hl

.CheckFollowing:
	ld a, [de]
	cp [hl]
	jr nc, .loop

; Swap the two sprites.

	ld b, a
	ld a, [hl]
	ld [hl], b
	ld [de], a
	dec de
	dec hl
	ld a, [de]
	ld b, a
	ld a, [hl]
	ld [hl], b
	ld [de], a
	inc de
	inc hl

; Keep doing this until everything's in order.

.loop
rept 2
	dec de
endr
	dec c
	jr nz, .CheckFollowing

	pop hl
rept 2
	inc hl
endr
	pop de
	pop bc
	dec c
	jr nz, .CheckSprite

.quit
	ret
; 14355


ArrangeUsedSprites: ; 14355
; Get the length of each sprite and space them out in VRAM.
; Crystal introduces a second table in VRAM bank 0.

	ld hl, UsedSprites
	ld c, SPRITE_GFX_LIST_CAPACITY
	ld b, 0
.FirstTableLength:
; Keep going until the end of the list.
	ld a, [hli]
	and a
	jr z, .quit

	ld a, [hl]
	call GetSpriteLength

; Spill over into the second table after $80 tiles.
	add b
	cp $80
	jr z, .loop
	jr nc, .SecondTable

.loop
	ld [hl], b
	inc hl
	ld b, a

; Assumes the next table will be reached before c hits 0.
	dec c
	jr nz, .FirstTableLength

.SecondTable:
; The second tile table starts at tile $80.
	ld b, $80
	dec hl
.SecondTableLength:
; Keep going until the end of the list.
	ld a, [hli]
	and a
	jr z, .quit

	ld a, [hl]
	call GetSpriteLength

; There are only two tables, so don't go any further than that.
	add b
	jr c, .quit

	ld [hl], b
	ld b, a
	inc hl

	dec c
	jr nz, .SecondTableLength

.quit
	ret
; 14386


GetSpriteLength: ; 14386
; Return the length of sprite type a in tiles.

	cp WALKING_SPRITE
	jr z, .AnyDirection
	cp STANDING_SPRITE
	jr z, .AnyDirection
	cp STILL_SPRITE
	jr z, .OneDirection

	ld a, 12
	ret

.AnyDirection:
	ld a, 12
	ret

.OneDirection:
	ld a, 4
	ret
; 1439b


GetUsedSprites: ; 1439b
	ld hl, UsedSprites
	ld c, SPRITE_GFX_LIST_CAPACITY

.loop
	ld a, [wSpriteFlags]
	res 5, a
	ld [wSpriteFlags], a

	ld a, [hli]
	and a
	jr z, .done
	ld [hUsedSpriteIndex], a

	ld a, [hli]
	ld [hUsedSpriteTile], a

	bit 7, a
	jr z, .dont_set

	ld a, [wSpriteFlags]
	set 5, a ; load VBank0
	ld [wSpriteFlags], a

.dont_set
	push bc
	push hl
	call GetUsedSprite
	pop hl
	pop bc
	dec c
	jr nz, .loop

.done
	ret
; 143c8

GetUsedSprite: ; 143c8
	ld a, [hUsedSpriteIndex]
	call SafeGetSprite
	ld a, [hUsedSpriteTile]
	call .GetTileAddr
	push hl
	push de
	push bc
	ld a, [wSpriteFlags]
	bit 7, a
	jr nz, .skip
	call .CopyToVram

.skip
	pop bc
	ld l, c
	ld h, $0
rept 4
	add hl, hl
endr
	pop de
	add hl, de
	ld d, h
	ld e, l
	pop hl

	ld a, [wSpriteFlags]
	bit 5, a
	jr nz, .done
	bit 6, a
	jr nz, .done

	ld a, [hUsedSpriteIndex]
	call _DoesSpriteHaveFacings
	jr c, .done

	ld a, h
	add $8
	ld h, a
	call .CopyToVram

.done
	ret
; 14406

.GetTileAddr: ; 14406
; Return the address of tile (a) in (hl).
	and $7f
	ld l, a
	ld h, 0
rept 4
	add hl, hl
endr
	ld a, l
	add VTiles0 % $100
	ld l, a
	ld a, h
	adc VTiles0 / $100
	ld h, a
	ret
; 14418

.CopyToVram: ; 14418
	ld a, [rVBK]
	push af
	ld a, [wSpriteFlags]
	bit 5, a
	ld a, $1
	jr z, .bankswitch
	ld a, $0

.bankswitch
	ld [rVBK], a
	call Get2bpp
	pop af
	ld [rVBK], a
	ret
; 1442f

LoadEmote:: ; 1442f
; Get the address of the pointer to emote c.
	ld a, c
	ld bc, 6
	ld hl, EmotesPointers
	call AddNTimes
; Load the emote address into de
	ld e, [hl]
	inc hl
	ld d, [hl]
; load the length of the emote (in tiles) into c
	inc hl
	ld c, [hl]
	swap c
; load the emote pointer bank into b
	inc hl
	ld b, [hl]
; load the VRAM destination into hl
	inc hl
	ld a, [hli]
	ld h, [hl]
	ld l, a
; if the emote has a length of 0, do not proceed (error handling)
	ld a, c
	and a
	ret z
	call GetEmote2bpp
	ret
; 1444d

emote_header: MACRO
	dw \1
	db \2 tiles, BANK(\1)
	dw VTiles1 tile \3
ENDM

EmotesPointers: ; 144d
; dw source address
; db length, bank
; dw dest address

	emote_header ShockEmote,     4, $78
	emote_header QuestionEmote,  4, $78
	emote_header HappyEmote,     4, $78
	emote_header SadEmote,       4, $78
	emote_header HeartEmote,     4, $78
	emote_header BoltEmote,      4, $78
	emote_header SleepEmote,     4, $78
	emote_header FishEmote,      4, $78
	emote_header JumpShadowGFX,  1, $7c
	emote_header FishingRodGFX2, 2, $7c
	emote_header BoulderDustGFX, 2, $7e
	emote_header FishingRodGFX4, 1, $7e
; 14495


SpriteMons: ; 14495
	db BULBASAUR
	db CHARMANDER
	db SQUIRTLE
	db WEEDLE
	db PIDGEY
	db PIDGEOT
	db RATTATA
	db PIKACHU
	db NIDORAN_F
	db NIDORAN_M
	db NIDORINO
	db CLEFAIRY
	db JIGGLYPUFF
	db ZUBAT
	db ODDISH
	db DIGLETT
	db MEOWTH
	db PERSIAN
	db PSYDUCK
	db POLIWAG
	db POLIWRATH
	db ABRA
	db MACHOP
	db MACHOKE
	db TENTACOOL
	db GEODUDE
	db SLOWPOKE
	db SLOWBRO
	db FARFETCH_D
	db DODRIO
	db GRIMER
	db SHELLDER
	db GENGAR
	db VOLTORB
	db ELECTRODE
	db RHYDON
	db CHANSEY
	db KANGASKHAN
	db STARYU
	db MAGIKARP
	db GYARADOS
	db ARTICUNO
	db ZAPDOS
	db MOLTRES
	db DRATINI
	db MEWTWO
	db MEW
	db BAYLEEF
	db FURRET
	db HOOTHOOT
	db AMPHAROS
	db MURKROW
	db UNOWN
	db HERACROSS
	db URSARING
	db SKARMORY
	db MILTANK
	db BLISSEY
	db RAIKOU
	db ENTEI
	db SUICUNE
	db LUGIA
	db HO_OH
	db EGG
; 144b8


OutdoorSprites: ; 144b8
; Valid sprite IDs for each map group.
; Maximum 9 walking sprites and 13 total sprites used per group.

	dw Group1Sprites
	dw Group2Sprites
	dw Group3Sprites
	dw Group4Sprites
	dw Group5Sprites
	dw Group6Sprites
	dw Group7Sprites
	dw Group8Sprites
	dw Group9Sprites
	dw Group10Sprites
	dw Group11Sprites
	dw Group12Sprites
	dw Group13Sprites
	dw Group14Sprites
	dw Group15Sprites
	dw Group16Sprites
	dw Group17Sprites
	dw Group18Sprites
	dw Group19Sprites
	dw Group20Sprites
	dw Group21Sprites
	dw Group22Sprites
	dw Group23Sprites
	dw Group24Sprites
	dw Group25Sprites
	dw Group26Sprites
	dw Group27Sprites
	dw Group28Sprites
	dw Group29Sprites


; OlivineCity connects to Route40
Group1Sprites:
; Route38
; Route39
; OlivineCity
; Route35Coast
Group22Sprites:
; Route40
; Route41
; CianwoodCity
; BattleTowerOutside
Group29Sprites:
; GoldenrodHarbor
	db SPRITE_BUENA
	db SPRITE_FISHER
	db SPRITE_LASS
	db SPRITE_POKEFAN_F
	db SPRITE_POKEFAN_M
	db SPRITE_SAILOR
	db SPRITE_SWIMMER_GIRL
	db SPRITE_SWIMMER_GUY
	db SPRITE_OLIVINE_RIVAL
	db SPRITE_ROCKET ; doesn't walk
	; 10 walking sprites (9 that walk)
	db SPRITE_STANDING_YOUNGSTER
	db SPRITE_MAGIKARP
	db SPRITE_MILTANK
	db SPRITE_FRUIT_TREE
	db SPRITE_ROCK
	db SPRITE_SUICUNE
	; 16 total sprites
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_POKE_BALL


Group2Sprites:
; Route42
; Route44
; MahoganyTown
	db SPRITE_COOLTRAINER_F
	db SPRITE_COOLTRAINER_M
	db SPRITE_FISHER
	db SPRITE_GRAMPS
	db SPRITE_NEW_BARK_LYRA
	db SPRITE_POKEFAN_M
	db SPRITE_SUPER_NERD
	db SPRITE_YOUNGSTER
	db SPRITE_OFFICER ; doesn't walk
	db SPRITE_OFFICER_F ; doesn't walk
	; 12 walking sprites (8 that walk)
	db SPRITE_FRUIT_TREE
	db SPRITE_POKE_BALL
	db SPRITE_SUICUNE
	; 13 total sprites
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_POKE_BALL


Group3Sprites:
; NationalPark
; NationalParkBugContest
; RuinsofAlphOutside
	db SPRITE_FISHER
	db SPRITE_LASS
	db SPRITE_POKEFAN_F
	db SPRITE_POKEFAN_M
	db SPRITE_ROCKER
	db SPRITE_SCIENTIST
	db SPRITE_TEACHER
	db SPRITE_TWIN
	db SPRITE_YOUNGSTER
	; 9 walking sprites
	db SPRITE_GAMEBOY_KID
	db SPRITE_PERSIAN
	db SPRITE_POKE_BALL
	; 12 total sprites
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_POKE_BALL


Group4Sprites:
; EcruteakCity
; Route35
; Route36
; Route37
	db SPRITE_BREEDER
	db SPRITE_BUENA
	db SPRITE_BUG_CATCHER
	db SPRITE_FISHER
	db SPRITE_GRAMPS
	db SPRITE_LASS
	db SPRITE_SUPER_NERD
	db SPRITE_TWIN
	db SPRITE_YOUNGSTER
	db SPRITE_OFFICER ; doesn't walk
	; 10 walking sprites (9 that walk)
	db SPRITE_FRUIT_TREE
	db SPRITE_POKE_BALL
	db SPRITE_SUICUNE
	db SPRITE_WEIRD_TREE
	; 14 total sprites
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_POKE_BALL


Group5Sprites:
; Route45
; Route46
; BlackthornCity
	db SPRITE_BLACK_BELT
	db SPRITE_COOLTRAINER_F
	db SPRITE_COOLTRAINER_M
	db SPRITE_DRAGON_TAMER
	db SPRITE_GRAMPS
	db SPRITE_LASS
	db SPRITE_POKEFAN_M
	db SPRITE_SUPER_NERD
	db SPRITE_YOUNGSTER
	; 9 walking sprites
	db SPRITE_FRUIT_TREE
	db SPRITE_POKE_BALL
	; 11 total sprites
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_POKE_BALL


; Route21 connects to PalletTown
; Route1 connects to ViridianCity
Group6Sprites:
; Route19
; Route20
; Route21
; CinnabarIsland
Group13Sprites:
; Route1
; PalletTown
Group23Sprites:
; Route2
; Route22
; ViridianCity
; ViridianForest
	db SPRITE_BUG_CATCHER
	db SPRITE_COOLTRAINER_F
	db SPRITE_COOLTRAINER_M
	db SPRITE_FISHER
	db SPRITE_GRAMPS
	db SPRITE_SWIMMER_GIRL
	db SPRITE_SWIMMER_GUY
	db SPRITE_TEACHER
	db SPRITE_YOUNGSTER
	db SPRITE_BLUE ; doesn't walk
	; 10 walking sprites (9 that walk)
	db SPRITE_FRUIT_TREE
	db SPRITE_POKE_BALL
	; 12 total sprites
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_POKE_BALL


; CeruleanCity connects to Route5
; CeruleanCity connects to Route9
Group7Sprites:
; Route4
; Route24
; Route25
; CeruleanCity
Group25Sprites:
; SaffronCity
; Route5
Group28Sprites:
; Route9
; Route10North
	db SPRITE_CERULEAN_CAPE_MISTY
	db SPRITE_COOLTRAINER_F
	db SPRITE_COOLTRAINER_M
	db SPRITE_FISHER
	db SPRITE_LASS
	db SPRITE_POKEFAN_M
	db SPRITE_SUPER_NERD
	db SPRITE_YOUNGSTER
	db SPRITE_BREEDER
	db SPRITE_CHRIS ; doesn't walk
	db SPRITE_KRIS ; doesn't walk
	db SPRITE_ROCKET ; doesn't walk
	; 12 walking sprites (9 that walk)
	db SPRITE_POKE_BALL
	db SPRITE_SLOWBRO
	db SPRITE_ZAPDOS
	; 15 total sprites
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_POKE_BALL


Group8Sprites:
; Route33
; AzaleaTown
	db SPRITE_AZALEA_ROCKET
	db SPRITE_GRAMPS
	db SPRITE_LASS
	db SPRITE_POKEFAN_M
	db SPRITE_ROCKET
	db SPRITE_SILVER
	db SPRITE_TEACHER
	db SPRITE_TWIN
	db SPRITE_YOUNGSTER
	; 9 walking sprites
	db SPRITE_FRUIT_TREE
	db SPRITE_KURT_OUTSIDE
	db SPRITE_SLOWPOKE
	; 12 total sprites
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_POKE_BALL


Group9Sprites:
; Route43
; LakeofRage
	db SPRITE_BREEDER
	db SPRITE_COOLTRAINER_F
	db SPRITE_COOLTRAINER_M
	db SPRITE_FISHER
	db SPRITE_GRAMPS
	db SPRITE_LANCE
	db SPRITE_LASS
	db SPRITE_SUPER_NERD
	db SPRITE_YOUNGSTER
	; 9 walking sprites
	db SPRITE_GYARADOS
	db SPRITE_FRUIT_TREE
	db SPRITE_POKE_BALL
	; 12 total sprites
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_POKE_BALL


; Route32 connects to CherrygroveBay
; CherrygroveCity connects to Route29
Group10Sprites:
; Route32
; VioletCity
Group24Sprites:
; Route26
; Route27
; Route29
; NewBarkTown
Group26Sprites:
; Route30
; Route31
; CherrygroveBay
; CherrygroveCity
	db SPRITE_CHERRYGROVE_RIVAL
	db SPRITE_COOLTRAINER_F
	db SPRITE_COOLTRAINER_M
	db SPRITE_DRAGON_TAMER
	db SPRITE_FISHER
	db SPRITE_GRAMPS
	db SPRITE_NEW_BARK_LYRA
	db SPRITE_TEACHER
	db SPRITE_YOUNGSTER
	db SPRITE_POKEFAN_M ; doesn't walk
	; 10 walking sprites (9 that walk)
	db SPRITE_FRUIT_TREE
	db SPRITE_PIDGEY
	db SPRITE_POKE_BALL
	db SPRITE_RATTATA
	; 14 total sprites
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_POKE_BALL


Group11Sprites:
; Route34
; GoldenrodCity
	db SPRITE_BREEDER
	db SPRITE_COOLTRAINER_F
	db SPRITE_GRAMPS
	db SPRITE_LASS
	db SPRITE_LYRA
	db SPRITE_POKEFAN_M
	db SPRITE_RICH_BOY
	db SPRITE_YOUNGSTER
	db SPRITE_OFFICER_F ; doesn't walk
	db SPRITE_ROCKET ; doesn't walk
	; 10 walking sprites (9 that walk)
	db SPRITE_DAYCARE_MON_1
	db SPRITE_DAYCARE_MON_2
	db SPRITE_POKE_BALL
	; 13 total sprites
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_POKE_BALL


Group12Sprites:
; Route6
; Route11
; VermilionCity
	db SPRITE_COOLTRAINER_F
	db SPRITE_GRAMPS
	db SPRITE_LAWRENCE
	db SPRITE_POKEFAN_M
	db SPRITE_SUPER_NERD
	db SPRITE_TWIN
	db SPRITE_YOUNGSTER
	; 7 walking sprites
	db SPRITE_BIG_SNORLAX
	db SPRITE_MACHOP
	db SPRITE_FRUIT_TREE
	; 10 total sprites
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_POKE_BALL


Group14Sprites:
; Route3
; PewterCity
	db SPRITE_BUG_CATCHER
	db SPRITE_COOLTRAINER_M
	db SPRITE_COOLTRAINER_F
	db SPRITE_FISHER
	db SPRITE_GRAMPS
	db SPRITE_YOUNGSTER
	; 6 walking sprites
	db SPRITE_FRUIT_TREE
	; 7 total sprites
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_POKE_BALL


Group15Sprites:
; OlivinePort
; VermilionPort
; MountMoonSquare
; TinTowerRoof
	db SPRITE_COOLTRAINER_F
	db SPRITE_FAIRY
	db SPRITE_FISHING_GURU
	db SPRITE_SAILOR
	db SPRITE_SUPER_NERD
	db SPRITE_YOUNGSTER
	; 6 walking sprites
	db SPRITE_HO_OH
	db SPRITE_ROCK
	; 8 total sprites
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_POKE_BALL


Group16Sprites:
; Route23
; BellchimeTrail
	db SPRITE_VALERIE
	; 1 walking sprite
	; 1 total sprite
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_POKE_BALL


Group17Sprites:
; Route12
; Route13
; Route14
; Route15
; Route18
; FuchsiaCity
; SafariZoneEast
; SafariZoneHub
; SafariZoneNorth
	db SPRITE_COOLTRAINER_F
	db SPRITE_COWGIRL
	db SPRITE_FISHER
	db SPRITE_POKEFAN_F
	db SPRITE_POKEFAN_M
	db SPRITE_TEACHER
	db SPRITE_TWIN
	db SPRITE_YOUNGSTER
	; 8 walking sprites
	db SPRITE_FRUIT_TREE
	db SPRITE_POKE_BALL
	; 10 total sprites
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_POKE_BALL


Group18Sprites:
; Route8
; Route10South
; LavenderTown
	db SPRITE_BIKER
	db SPRITE_FISHER ; (on connected part of Route12)
	db SPRITE_GENTLEMAN
	db SPRITE_GRAMPS
	db SPRITE_HEX_MANIAC
	db SPRITE_POKEFAN_M
	db SPRITE_SUPER_NERD
	db SPRITE_TEACHER
	db SPRITE_YOUNGSTER
	; 9 walking sprites
	db SPRITE_FRUIT_TREE
	db SPRITE_POKE_BALL
	; 11 total sprites
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_POKE_BALL


Group19Sprites:
; Route28
; SilverCaveOutside
; FarawayIsland
; FarawayJungle
	db SPRITE_SAILOR
	; 1 walking sprite
	db SPRITE_MEW
	; 2 total sprites
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_POKE_BALL


Group20Sprites:
; YellowForest
; EcruteakShrineOutside
	db SPRITE_COOLTRAINER_M
	db SPRITE_SAGE
	db SPRITE_TEACHER
	db SPRITE_TWIN
	db SPRITE_WALKER
	db SPRITE_YELLOW
	; 6 walking sprites
	db SPRITE_HOOTHOOT
	db SPRITE_POKE_BALL
	db SPRITE_SKARMORY
	; 9 total sprites
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_POKE_BALL


Group21Sprites:
; Route7
; Route16
; Route17
; CeladonCity
	db SPRITE_BIKER
	db SPRITE_FISHER
	db SPRITE_GRAMPS
	db SPRITE_LASS
	db SPRITE_RICH_BOY
	db SPRITE_TEACHER
	db SPRITE_YOUNGSTER
	db SPRITE_OFFICER_F ; doesn't walk
	; 8 walking sprites (7 that walk)
	db SPRITE_BIG_SNORLAX
	db SPRITE_POLIWRATH
	; 10 total sprites
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_POKE_BALL


Group27Sprites:
; Route47
; Route48
	db SPRITE_COOLTRAINER_F
	db SPRITE_COOLTRAINER_M
	db SPRITE_COWGIRL
	db SPRITE_JAMES
	db SPRITE_JESSIE
	db SPRITE_POKEFAN_M
	db SPRITE_ROCKET
	db SPRITE_ROCKET_GIRL
	db SPRITE_YOUNGSTER
	; 9 walking sprites
	db SPRITE_POKE_BALL
	; 10 total sprites
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_GOLD_TROPHY
	db SPRITE_SILVER_TROPHY
	db SPRITE_POKE_BALL


SpriteHeaders: ; 14736
INCLUDE "gfx/overworld/sprite_headers.asm"
; 1499a
