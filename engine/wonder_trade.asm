WonderTrade::
	ld hl, .Text_WonderTradeQuestion
	call PrintText
	call YesNoBox
	ret c

	ld hl, .Text_WonderTradePrompt
	call PrintText

	ld b, 6
	callba SelectTradeOrDaycareMon
	ret c

	ld a, [CurPartySpecies]
	cp EGG
	jr nz, .check_gs_ball
	ld hl, .Text_WonderTradeCantTradeEgg
	call PrintText
	ret

.check_gs_ball
	ld hl, PartyMon1Item
	ld bc, PARTYMON_STRUCT_LENGTH
	ld a, [CurPartyMon]
	call AddNTimes
	ld b, [hl]
	ld a, GS_BALL
	cp b
	jr nz, .continue
	ld hl, .Text_WonderTradeCantTradeGSBall
	call PrintText
	ret

.continue
	ld hl, PartyMonNicknames
	ld bc, PKMN_NAME_LENGTH
	call Trade_GetAttributeOfCurrentPartymon
	ld de, StringBuffer1
	call CopyTradeName
	ld hl, .Text_WonderTradeConfirm
	call PrintText
	call YesNoBox
	ret c

	ld hl, .Text_WonderTradeSetup
	call PrintText

	call DoWonderTrade

	ld hl, .Text_WonderTradeReady
	call PrintText

	call DisableSpriteUpdates
	predef TradeAnimation
	call ReturnToMapWithSpeechTextbox

	ld hl, .Text_WonderTradeComplete
	call PrintText

	call RestartMapMusic

	ld hl, PartyMon1Item
	ld bc, PARTYMON_STRUCT_LENGTH
	call Trade_GetAttributeOfLastPartymon
	ld a, [de]
	ld b, a
	ld a, GS_BALL
	cp b
	ret nz

	ld de, EVENT_GOT_GS_BALL_FROM_POKECOM_CENTER
	ld b, SET_FLAG
	call EventFlagAction
	ld de, EVENT_CAN_GIVE_GS_BALL_TO_KURT
	ld b, SET_FLAG
	call EventFlagAction
	ld hl, .Text_WonderTradeForGSBallPichuText
	call PrintText
	ret

.Text_WonderTradeQuestion:
	text_jump WonderTradeQuestionText
	db "@"

.Text_WonderTradePrompt:
	text_jump WonderTradePromptText
	db "@"

.Text_WonderTradeCantTradeEgg:
	text_jump WonderTradeCantTradeEggText
	db "@"

.Text_WonderTradeCantTradeGSBall
	text_jump WonderTradeCantTradeGSBallText
	db "@"

.Text_WonderTradeConfirm:
	text_jump WonderTradeConfirmText
	db "@"

.Text_WonderTradeSetup:
	text_jump WonderTradeSetupText
	db "@"

.Text_WonderTradeReady:
	text_jump WonderTradeReadyText
	db "@"

.Text_WonderTradeComplete:
	text_jump WonderTradeCompleteText
	start_asm
	ld de, MUSIC_NONE
	call PlayMusic
	call DelayFrame
	ld hl, .trade_done
	ret

.trade_done
	text_jump WonderTradeDoneFanfare
	db "@"

.Text_WonderTradeForGSBallPichuText:
	text_jump WonderTradeForGSBallPichuText
	db "@"

DoWonderTrade:
	ld a, [CurPartySpecies]
	ld [wPlayerTrademonSpecies], a

	; If you've beaten the Elite Four...
	ld de, EVENT_BEAT_ELITE_FOUR
	ld b, CHECK_FLAG
	call EventFlagAction
	ld a, c
	and a
	jr z, .random_trademon
	; ...and haven't gotten the GS Ball Pichu yet...
	ld de, EVENT_GOT_GS_BALL_FROM_POKECOM_CENTER
	ld b, CHECK_FLAG
	call EventFlagAction
	ld a, c
	and a
	jr nz, .random_trademon

	; ...then receive a shiny Pichu holding a GS Ball
	call GetGSBallPichu
	jp .compute_trademon_stats

.random_trademon
	ld a, NUM_POKEMON
	call RandomRange
	inc a
	ld [wOTTrademonSpecies], a
	call CheckValidLevel
	and a
	jr nz, .random_trademon
	ld a, [wPlayerTrademonSpecies]
	ld b, a
	ld a, [wOTTrademonSpecies]
	cp b
	jr z, .random_trademon

	ld a, [wPlayerTrademonSpecies]
	ld de, wPlayerTrademonSpeciesName
	call GetTradeMonName
	call CopyTradeName

	ld a, [wOTTrademonSpecies]
	ld de, wOTTrademonSpeciesName
	call GetTradeMonName
	call CopyTradeName

	ld hl, PartyMonOT
	ld bc, NAME_LENGTH
	call Trade_GetAttributeOfCurrentPartymon
	ld de, wPlayerTrademonOTName
	call CopyTradeName

	ld hl, PlayerName
	ld de, wPlayerTrademonSenderName
	call CopyTradeName

	ld hl, PartyMon1ID
	ld bc, PARTYMON_STRUCT_LENGTH
	call Trade_GetAttributeOfCurrentPartymon
	ld de, wPlayerTrademonID
	call Trade_CopyTwoBytes

	ld hl, PartyMon1DVs
	ld bc, PARTYMON_STRUCT_LENGTH
	call Trade_GetAttributeOfCurrentPartymon
	ld de, wPlayerTrademonDVs
	call Trade_CopyTwoBytes

	ld hl, PartyMon1Species
	ld bc, PARTYMON_STRUCT_LENGTH
	call Trade_GetAttributeOfCurrentPartymon
	ld b, h
	ld c, l
	callba GetCaughtGender
	ld a, c
	ld [wPlayerTrademonCaughtData], a

	xor a
	ld [wOTTrademonCaughtData], a

	ld hl, PartyMon1Level
	ld bc, PARTYMON_STRUCT_LENGTH
	call Trade_GetAttributeOfCurrentPartymon
	ld a, [hl]
	ld [CurPartyLevel], a
	ld a, [wOTTrademonSpecies]
	ld [CurPartySpecies], a
	xor a
	ld [MonType], a
	ld [wPokemonWithdrawDepositParameter], a
	callab RemoveMonFromPartyOrBox
	predef TryAddMonToParty

	;ld b, SET_FLAG
	;callba SetGiftPartyMonCaughtData

	ld a, [wOTTrademonSpecies]
	ld de, wOTTrademonNickname
	call GetTradeMonName
	call CopyTradeName

	ld hl, PartyMonNicknames
	ld bc, PKMN_NAME_LENGTH
	call Trade_GetAttributeOfLastPartymon
	ld hl, wOTTrademonNickname
	call CopyTradeName

	; a = random byte
	; OT ID = (a ^ %10101010) << 8 | a
	call Random
	ld [Buffer1], a
	ld b, %10101010
	xor b
	ld [Buffer1 + 1], a
	ld hl, Buffer1
	ld de, wOTTrademonID
	call Trade_CopyTwoBytes

	ld hl, PartyMon1ID
	ld bc, PARTYMON_STRUCT_LENGTH
	call Trade_GetAttributeOfLastPartymon
	ld hl, wOTTrademonID
	call Trade_CopyTwoBytes

	ld a, [wOTTrademonID]
	call GetWonderTradeOTName
	push hl
	ld de, wOTTrademonOTName
	call CopyTradeName
	pop hl
	ld de, wOTTrademonSenderName
	call CopyTradeName

	ld hl, PartyMonOT
	ld bc, NAME_LENGTH
	call Trade_GetAttributeOfLastPartymon
	ld hl, wOTTrademonOTName
	call CopyTradeName

	ld b, RESET_FLAG
	ld a, [wOTTrademonID]
	call GetWonderTradeOTGender
	and a
	jr z, .male_ot
	ld b, SET_FLAG
.male_ot
	callba SetGiftPartyMonCaughtData

	; Random DVs
	call Random
	ld [Buffer1], a
	call Random
	ld [Buffer1 + 1], a
	ld hl, Buffer1
	ld de, wOTTrademonDVs
	call Trade_CopyTwoBytes

	ld hl, PartyMon1DVs
	ld bc, PARTYMON_STRUCT_LENGTH
	call Trade_GetAttributeOfLastPartymon
	ld hl, wOTTrademonDVs
	call Trade_CopyTwoBytes

	ld hl, PartyMon1Item
	ld bc, PARTYMON_STRUCT_LENGTH
	call Trade_GetAttributeOfLastPartymon
	call GetWonderTradeHeldItem
	ld [de], a

.compute_trademon_stats
	push af
	push bc
	push de
	push hl
	ld a, [CurPartyMon]
	push af
	ld a, [PartyCount]
	dec a
	ld [CurPartyMon], a
	callba ComputeNPCTrademonStats
	pop af
	ld [CurPartyMon], a
	pop hl
	pop de
	pop bc
	pop af
	ret


GetGSBallPichu:
	ld a, PICHU
	ld [wOTTrademonSpecies], a

	ld a, [wPlayerTrademonSpecies]
	ld de, wPlayerTrademonSpeciesName
	call GetTradeMonName
	call CopyTradeName

	ld a, [wOTTrademonSpecies]
	ld de, wOTTrademonSpeciesName
	call GetTradeMonName
	call CopyTradeName

	ld hl, PartyMonOT
	ld bc, NAME_LENGTH
	call Trade_GetAttributeOfCurrentPartymon
	ld de, wPlayerTrademonOTName
	call CopyTradeName

	ld hl, PlayerName
	ld de, wPlayerTrademonSenderName
	call CopyTradeName

	ld hl, PartyMon1ID
	ld bc, PARTYMON_STRUCT_LENGTH
	call Trade_GetAttributeOfCurrentPartymon
	ld de, wPlayerTrademonID
	call Trade_CopyTwoBytes

	ld hl, PartyMon1DVs
	ld bc, PARTYMON_STRUCT_LENGTH
	call Trade_GetAttributeOfCurrentPartymon
	ld de, wPlayerTrademonDVs
	call Trade_CopyTwoBytes

	ld hl, PartyMon1Species
	ld bc, PARTYMON_STRUCT_LENGTH
	call Trade_GetAttributeOfCurrentPartymon
	ld b, h
	ld c, l
	callba GetCaughtGender
	ld a, c
	ld [wPlayerTrademonCaughtData], a
	ld [wOTTrademonCaughtData], a

	ld hl, PartyMon1Level
	ld bc, PARTYMON_STRUCT_LENGTH
	call Trade_GetAttributeOfCurrentPartymon
	ld a, 30
	ld [CurPartyLevel], a
	ld a, [wOTTrademonSpecies]
	ld [CurPartySpecies], a
	xor a
	ld [MonType], a
	ld [wPokemonWithdrawDepositParameter], a
	callab RemoveMonFromPartyOrBox
	predef TryAddMonToParty

	ld b, RESET_FLAG
	ld a, [PlayerGender]
	and a
	jr z, .male
	ld b, SET_FLAG
.male
	callba SetGiftPartyMonCaughtData

	ld a, [wOTTrademonSpecies]
	ld de, wOTTrademonNickname
	call GetTradeMonName
	call CopyTradeName

	ld hl, PartyMonNicknames
	ld bc, PKMN_NAME_LENGTH
	call Trade_GetAttributeOfLastPartymon
	ld hl, wOTTrademonNickname
	call CopyTradeName

	ld hl, PlayerID
	ld de, wOTTrademonID
	call Trade_CopyTwoBytes

	ld hl, PartyMon1ID
	ld bc, PARTYMON_STRUCT_LENGTH
	call Trade_GetAttributeOfLastPartymon
	ld hl, wOTTrademonID
	call Trade_CopyTwoBytes

	ld hl, PlayerName
	push hl
	ld de, wOTTrademonOTName
	call CopyTradeName
	pop hl
	ld de, wOTTrademonSenderName
	call CopyTradeName

	ld hl, PartyMonOT
	ld bc, NAME_LENGTH
	call Trade_GetAttributeOfLastPartymon
	ld hl, wOTTrademonOTName
	call CopyTradeName

	ld a, ATKDEFDV_SHINY
	ld [wOTTrademonDVs], a
	ld a, SPDSPCDV_SHINY
	ld [wOTTrademonDVs + 1], a

	ld hl, PartyMon1DVs
	ld bc, PARTYMON_STRUCT_LENGTH
	call Trade_GetAttributeOfLastPartymon
	ld hl, wOTTrademonDVs
	call Trade_CopyTwoBytes

	ld hl, PartyMon1Item
	ld bc, PARTYMON_STRUCT_LENGTH
	call Trade_GetAttributeOfLastPartymon
	ld a, GS_BALL
	ld [de], a

	ret

GetWonderTradeOTName:
; hl = .WonderTradeOTNameTable + a * PLAYER_NAME_LENGTH
	ld hl, .WonderTradeOTNameTable
	ld b, 0
	ld c, PLAYER_NAME_LENGTH
	call AddNTimes
	ret

.WonderTradeOTNameTable:
	db "Nemo@@@@" ; $00
	db "Rangi@@@" ; $01
	db "Matthew@" ; $02
	db "Mateo@@@" ; $03
	db "Drayano@" ; $04
	db "Hlin@@@@" ; $05
	db "Marckus@" ; $06
	db "Pum@@@@@" ; $07
	db "Bryan@@@" ; $08
	db "Don@@@@@" ; $09
	db "Miguel@@" ; $0a
	db "Satoru@@" ; $0b
	db "Iwata@@@" ; $0c
	db "Junichi@" ; $0d
	db "Masuda@@" ; $0e
	db "Imakuni@" ; $0f
	db "Red@@@@@" ; $10
	db "Blue@@@@" ; $11
	db "Green@@@" ; $12
	db "Yellow@@" ; $13
	db "Orange@@" ; $14
	db "Gold@@@@" ; $15
	db "Silver@@" ; $16
	db "Crystal@" ; $17
	db "Ruby@@@@" ; $18
	db "Safire@@" ; $19
	db "Emerald@" ; $1a
	db "Diamond@" ; $1b
	db "Pearl@@@" ; $1c
	db "Black@@@" ; $1d
	db "White@@@" ; $1e
	db "Ash@@@@@" ; $1f
	db "Gary@@@@" ; $20
	db "Leaf@@@@" ; $21
	db "Ethan@@@" ; $22
	db "Lyra@@@@" ; $23
	db "Kris@@@@" ; $24
	db "Brendan@" ; $25
	db "May@@@@@" ; $26
	db "Wally@@@" ; $27
	db "Lucas@@@" ; $28
	db "Dawn@@@@" ; $29
	db "Barry@@@" ; $2a
	db "Hilbert@" ; $2b
	db "Hilda@@@" ; $2c
	db "Cheren@@" ; $2d
	db "Bianca@@" ; $2e
	db "Nate@@@@" ; $2f
	db "Rosa@@@@" ; $30
	db "Hugh@@@@" ; $31
	db "Calem@@@" ; $32
	db "Serena@@" ; $33
	db "Shauna@@" ; $34
	db "Trevor@@" ; $35
	db "Tierno@@" ; $36
	db "Lillie@@" ; $37
	db "Hau@@@@@" ; $38
	db "Oak@@@@@" ; $39
	db "Elm@@@@@" ; $3a
	db "Ivy@@@@@" ; $3b
	db "Birch@@@" ; $3c
	db "Rowan@@@" ; $3d
	db "Juniper@" ; $3e
	db "Sycamor@" ; $3f
	db "Kukui@@@" ; $40
	db "Samuel@@" ; $41
	db "Samson@@" ; $42
	db "Willow@@" ; $43
	db "Bill@@@@" ; $44
	db "Lanette@" ; $45
	db "Celio@@@" ; $46
	db "Bebe@@@@" ; $47
	db "Amanita@" ; $48
	db "Cassius@" ; $49
	db "Brock@@@" ; $4a
	db "Misty@@@" ; $4b
	db "Surge@@@" ; $4c
	db "Erika@@@" ; $4d
	db "Janine@@" ; $4e
	db "Sabrina@" ; $4f
	db "Blaine@@" ; $50
	db "Giovani@" ; $51
	db "Lorelei@" ; $52
	db "Bruno@@@" ; $53
	db "Agatha@@" ; $54
	db "Lance@@@" ; $55
	db "Cissy@@@" ; $56
	db "Danny@@@" ; $57
	db "Rudy@@@@" ; $58
	db "Luana@@@" ; $59
	db "Prima@@@" ; $5a
	db "Falkner@" ; $5b
	db "Bugsy@@@" ; $5c
	db "Whitney@" ; $5d
	db "Morty@@@" ; $5e
	db "Chuck@@@" ; $5f
	db "Jasmine@" ; $60
	db "Pryce@@@" ; $61
	db "Clair@@@" ; $62
	db "Will@@@@" ; $63
	db "Koga@@@@" ; $64
	db "Karen@@@" ; $65
	db "Roxanne@" ; $66
	db "Brawly@@" ; $67
	db "Wattson@" ; $68
	db "Flanery@" ; $69
	db "Norman@@" ; $6a
	db "Winona@@" ; $6b
	db "Liza@@@@" ; $6c
	db "Tate@@@@" ; $6d
	db "Wallace@" ; $6e
	db "Juan@@@@" ; $6f
	db "Sidney@@" ; $70
	db "Phoebe@@" ; $71
	db "Glacia@@" ; $72
	db "Drake@@@" ; $73
	db "Steven@@" ; $74
	db "Roark@@@" ; $75
	db "Garden@@" ; $76
	db "Maylene@" ; $77
	db "Wake@@@@" ; $78
	db "Fantina@" ; $79
	db "Byron@@@" ; $7a
	db "Candice@" ; $7b
	db "Volkner@" ; $7c
	db "Aaron@@@" ; $7d
	db "Bertha@@" ; $7e
	db "Flint@@@" ; $7f
	db "Lucian@@" ; $80
	db "Cynthia@" ; $81
	db "Alder@@@" ; $82
	db "Iris@@@@" ; $83
	db "Diantha@" ; $84
	db "Lana@@@@" ; $85
	db "Mallow@@" ; $86
	db "Sophcls@" ; $87
	db "Kiawe@@@" ; $88
	db "Hala@@@@" ; $89
	db "Nemo@@@@" ; $8a ; TODO: add remaining Alola Captains/Kahunas
	db "Nemo@@@@" ; $8b
	db "Nemo@@@@" ; $8c
	db "Valerie@" ; $8d
	db "Candela@" ; $8e
	db "Blanche@" ; $8f
	db "Spark@@@" ; $90
	db "Satoshi@" ; $91
	db "Tajiri@@" ; $92
	db "Shigeru@" ; $93
	db "Hibiki@@" ; $94
	db "Kotone@@" ; $95
	db "Yuuki@@@" ; $96
	db "Haruka@@" ; $97
	db "Mitsuru@" ; $98
	db "Kouki@@@" ; $99
	db "Hikari@@" ; $9a
	db "Jun@@@@@" ; $9b
	db "Touya@@@" ; $9c
	db "Touko@@@" ; $9d
	db "Bel@@@@@" ; $9e
	db "Kyouhei@" ; $9f
	db "Mei@@@@@" ; $a0
	db "Joy@@@@@" ; $a1
	db "Jenny@@@" ; $a2
	db "Looker@@" ; $a3
	db "Jessie@@" ; $a4
	db "James@@@" ; $a5
	db "Cassidy@" ; $a6
	db "Butch@@@" ; $a7
	db "Bonnie@@" ; $a8
	db "Clyde@@@" ; $a9
	db "Attila@@" ; $aa
	db "Hun@@@@@" ; $ab
	db "Domino@@" ; $ac
	db "Carr@@@@" ; $ad
	db "Orm@@@@@" ; $ae
	db "Sird@@@@" ; $af
	db "Miror B@" ; $b0
	db "Archie@@" ; $b1
	db "Maxie@@@" ; $b2
	db "Cyrus@@@" ; $b3
	db "N@@@@@@@" ; $b4
	db "Ghetsis@" ; $b5
	db "Colress@" ; $b6
	db "Lysandr@" ; $b7
	db "Guzma@@@" ; $b8
	db "Lusamin@" ; $b9
	db "Wicke@@@" ; $ba
	db "Naoko@@@" ; $bb
	db "Sayo@@@@" ; $bc
	db "Zuki@@@@" ; $bd
	db "Kuni@@@@" ; $be
	db "Miki@@@@" ; $bf
	db "Kiyo@@@@" ; $c0
	db "Curtis@@" ; $c1
	db "Yancy@@@" ; $c2
	db "Zinnia@@" ; $c3
	db "Aarune@@" ; $c4
	db "Lisia@@@" ; $c5
	db "Chaz@@@@" ; $c6
	db "Kiri@@@@" ; $c7
	db "Richie@@" ; $c8
	db "Assunta@" ; $c9
	db "Tracey@@" ; $ca
	db "Duplica@" ; $cb
	db "Casey@@@" ; $cc
	db "Giselle@" ; $cd
	db "Melanie@" ; $ce
	db "Damian@@" ; $cf
	db "Rick@@@@" ; $d0
	db "Reiko@@@" ; $d1
	db "Joey@@@@" ; $d2
	db "A.J.@@@@" ; $d3
	db "Camila@@" ; $d4
	db "Alice@@@" ; $d5
	db "Leo@@@@@" ; $d6
	db "Aoooo@@@" ; $d7
	db "Jimmy@@@" ; $d8
	db "Cly@@@@@" ; $d9
	db "Revo@@@@" ; $da
	db "Everyle@" ; $db
	db "Zetsu@@@" ; $dc
	db "Kamon@@@" ; $dd
	db "Karuta@@" ; $de
	db "Nozomi@@" ; $df
	db "Amos@@@@" ; $e0
	db "Ami@@@@@" ; $e1
	db "Minako@@" ; $e2
	db "Usagi@@@" ; $e3
	db "Rei@@@@@" ; $e4
	db "Makoto@@" ; $e5
	db "Mamoru@@" ; $e6
	db "Luna@@@@" ; $e7
	db "Artemis@" ; $e8
	db "Diana@@@" ; $e9
	db "Sakura@@" ; $ea
	db "Tomoyo@@" ; $eb
	db "Syaoran@" ; $ec
	db "Shinji@@" ; $ed
	db "Rei@@@@@" ; $ee
	db "Asuka@@@" ; $ef
	db "Mari@@@@" ; $f0
	db "Luke@@@@" ; $f1
	db "Lun@@@@@" ; $f2
	db "Rhue@@@@" ; $f3
	db "Traziun@" ; $f4
	db "Gaius@@@" ; $f5
	db "Lyrra@@@" ; $f6
	db "Kloe@@@@" ; $f7
	db "Cetsa@@@" ; $f8
	db "Lexus@@@" ; $f9
	db "Sorya@@@" ; $fa
	db "Strata@@" ; $fb
	db "Slade@@@" ; $fc
	db "Dirk@@@@" ; $fd
	db "Talan@@@" ; $fe
	db "Kersh@@@" ; $ff

GetWonderTradeOTGender:
; a = [.WonderTradeOTGenderTable + a]
	ld hl, .WonderTradeOTGenderTable
	ld b, 0
	ld c, 1
	call AddNTimes
	ld a, [hl]
	ret

.WonderTradeOTGenderTable:
	db MALE   ; Nemo
	db FEMALE ; Rangi
	db MALE   ; Matthew
	db MALE   ; Mateo
	db MALE   ; Drayano
	db FEMALE ; Hlin
	db MALE   ; Marckus
	db MALE   ; Pum
	db MALE   ; Bryan
	db MALE   ; Don
	db MALE   ; Miguel
	db MALE   ; Satoru
	db MALE   ; Iwata
	db MALE   ; Junichi
	db MALE   ; Masuda
	db MALE   ; Imakuni
	db MALE   ; Red
	db MALE   ; Blue
	db FEMALE ; Green
	db FEMALE ; Yellow
	db FEMALE ; Orange
	db MALE   ; Gold
	db MALE   ; Silver
	db FEMALE ; Crystal
	db MALE   ; Ruby
	db FEMALE ; Safire
	db FEMALE ; Emerald
	db MALE   ; Diamond
	db FEMALE ; Pearl
	db MALE   ; Black
	db FEMALE ; White
	db MALE   ; Ash
	db MALE   ; Gary
	db FEMALE ; Leaf
	db MALE   ; Ethan
	db FEMALE ; Lyra
	db FEMALE ; Kris
	db MALE   ; Brendan
	db FEMALE ; May
	db MALE   ; Wally
	db MALE   ; Lucas
	db FEMALE ; Dawn
	db MALE   ; Barry
	db MALE   ; Hilbert
	db FEMALE ; Hilda
	db MALE   ; Cheren
	db FEMALE ; Bianca
	db MALE   ; Nate
	db FEMALE ; Rosa
	db MALE   ; Hugh
	db MALE   ; Calem
	db FEMALE ; Serena
	db FEMALE ; Shauna
	db MALE   ; Trevor
	db MALE   ; Tierno
	db FEMALE ; Lillie
	db MALE   ; Hau
	db MALE   ; Oak
	db MALE   ; Elm
	db FEMALE ; Ivy
	db MALE   ; Birch
	db MALE   ; Rowan
	db FEMALE ; Juniper
	db MALE   ; Sycamor
	db MALE   ; Kukui
	db MALE   ; Samuel
	db MALE   ; Samson
	db FEMALE ; Willow
	db MALE   ; Bill
	db FEMALE ; Lanette
	db MALE   ; Celio
	db FEMALE ; Bebe
	db FEMALE ; Amanita
	db MALE   ; Cassius
	db MALE   ; Brock
	db FEMALE ; Misty
	db MALE   ; Surge
	db FEMALE ; Erika
	db FEMALE ; Janine
	db FEMALE ; Sabrina
	db MALE   ; Blaine
	db MALE   ; Giovani
	db FEMALE ; Lorelei
	db MALE   ; Bruno
	db FEMALE ; Agatha
	db MALE   ; Lance
	db FEMALE ; Cissy
	db MALE   ; Danny
	db MALE   ; Rudy
	db FEMALE ; Luana
	db FEMALE ; Prima
	db MALE   ; Falkner
	db MALE   ; Bugsy
	db FEMALE ; Whitney
	db MALE   ; Morty
	db MALE   ; Chuck
	db FEMALE ; Jasmine
	db MALE   ; Pryce
	db FEMALE ; Clair
	db MALE   ; Will
	db MALE   ; Koga
	db FEMALE ; Karen
	db FEMALE ; Roxanne
	db MALE   ; Brawly
	db MALE   ; Wattson
	db FEMALE ; Flanery
	db MALE   ; Norman
	db FEMALE ; Winona
	db FEMALE ; Liza
	db MALE   ; Tate
	db MALE   ; Wallace
	db MALE   ; Juan
	db MALE   ; Sidney
	db FEMALE ; Phoebe
	db FEMALE ; Glacia
	db MALE   ; Drake
	db MALE   ; Steven
	db MALE   ; Roark
	db FEMALE ; Garden
	db FEMALE ; Maylene
	db MALE   ; Wake
	db FEMALE ; Fantina
	db MALE   ; Byron
	db FEMALE ; Candice
	db MALE   ; Volkner
	db MALE   ; Aaron
	db FEMALE ; Bertha
	db MALE   ; Flint
	db MALE   ; Lucian
	db FEMALE ; Cynthia
	db MALE   ; Alder
	db FEMALE ; Iris
	db FEMALE ; Diantha
	db FEMALE ; Lana
	db FEMALE ; Mallow
	db MALE   ; Sophcls
	db MALE   ; Kiawe
	db MALE   ; Hala
	db FEMALE ; Nemo
	db MALE   ; Nemo
	db FEMALE ; Nemo
	db FEMALE ; Valerie
	db FEMALE ; Candela
	db FEMALE ; Blanche
	db MALE   ; Spark
	db MALE   ; Satoshi
	db MALE   ; Tajiri
	db MALE   ; Shigeru
	db MALE   ; Hibiki
	db FEMALE ; Kotone
	db MALE   ; Yuuki
	db FEMALE ; Haruka
	db MALE   ; Mitsuru
	db MALE   ; Kouki
	db FEMALE ; Hikari
	db MALE   ; Jun
	db MALE   ; Touya
	db FEMALE ; Touko
	db FEMALE ; Bel
	db MALE   ; Kyouhei
	db FEMALE ; Mei
	db FEMALE ; Joy
	db FEMALE ; Jenny
	db MALE   ; Looker
	db FEMALE ; Jessie
	db MALE   ; James
	db FEMALE ; Cassidy
	db MALE   ; Butch
	db FEMALE ; Bonnie
	db MALE   ; Clyde
	db MALE   ; Attila
	db FEMALE ; Hun
	db FEMALE ; Domino
	db MALE   ; Carr
	db MALE   ; Orm
	db FEMALE ; Sird
	db MALE   ; Miror B
	db MALE   ; Archie
	db MALE   ; Maxie
	db MALE   ; Cyrus
	db MALE   ; N
	db MALE   ; Ghetsis
	db MALE   ; Colress
	db MALE   ; Lysandr
	db MALE   ; Guzma
	db FEMALE ; Lusamin
	db FEMALE ; Wicke
	db FEMALE ; Naoko
	db FEMALE ; Sayo
	db FEMALE ; Zuki
	db FEMALE ; Kuni
	db FEMALE ; Miki
	db MALE   ; Kiyo
	db MALE   ; Curtis
	db FEMALE ; Yancy
	db FEMALE ; Zinnia
	db MALE   ; Aarune
	db FEMALE ; Lisia
	db MALE   ; Chaz
	db FEMALE ; Kiri
	db MALE   ; Richie
	db FEMALE ; Assunta
	db MALE   ; Tracey
	db FEMALE ; Duplica
	db FEMALE ; Casey
	db FEMALE ; Giselle
	db FEMALE ; Melanie
	db MALE   ; Damian
	db MALE   ; Rick
	db FEMALE ; Reiko
	db MALE   ; Joey
	db MALE   ; A.J.
	db FEMALE ; Camila
	db FEMALE ; Alice
	db MALE   ; Leo
	db FEMALE ; Aoooo
	db MALE   ; Jimmy
	db FEMALE ; Cly
	db MALE   ; Revo
	db MALE   ; Everyle
	db MALE   ; Zetsu
	db MALE   ; Kamon
	db MALE   ; Karuta
	db FEMALE ; Nozomi
	db MALE   ; Amos
	db FEMALE ; Ami
	db FEMALE ; Minako
	db FEMALE ; Usagi
	db FEMALE ; Rei
	db FEMALE ; Makoto
	db MALE   ; Mamoru
	db FEMALE ; Luna
	db MALE   ; Artemis
	db FEMALE ; Diana
	db FEMALE ; Sakura
	db FEMALE ; Tomoyo
	db MALE   ; Syaoran
	db MALE   ; Shinji
	db FEMALE ; Rei
	db FEMALE ; Asuka
	db FEMALE ; Mari
	db MALE   ; Luke
	db MALE   ; Lun
	db MALE   ; Rhue
	db MALE   ; Traziun
	db MALE   ; Gaius
	db FEMALE ; Lyrra
	db FEMALE ; Kloe
	db FEMALE ; Cetsa
	db FEMALE ; Lexus
	db FEMALE ; Sorya
	db MALE   ; Strata
	db MALE   ; Slade
	db MALE   ; Dirk
	db MALE   ; Talan
	db MALE   ; Kersh


GetWonderTradeHeldItem:
; Pick a random held item based on the bits of a random number.
; If bit 1 is set (50% chance), no held item.
; Otherwise, if bit 2 is set (25% chance), then Berry.
; And so on, with better items being more rare.
	call Random
	ld b, a
; TODO: factor out the repetition here with rept...endr and sla
	and a, %00000001
	jr z, .isbit2on
	ld a, 0
	jp .done
.isbit2on
	ld a, b
	and a, %00000010
	jr z, .isbit3on
	ld a, 1
	jp .done
.isbit3on
	ld a, b
	and a, %00000100
	jr z, .isbit4on
	ld a, 2
	jp .done
.isbit4on
	ld a, b
	and a, %00001000
	jr z, .isbit5on
	ld a, 3
	jp .done
.isbit5on
	ld a, b
	and a, %00010000
	jr z, .isbit6on
	ld a, 4
	jp .done
.isbit6on
	ld a, b
	and a, %00100000
	jr z, .isbit7on
	ld a, 5
	jp .done
.isbit7on
	ld a, b
	and a, %01000000
	jr z, .isbit8on
	ld a, 6
	jp .done
.isbit8on
	ld a, b
	and a, %10000000
	jr z, .allbitsoff
	ld a, 7
	jp .done
.allbitsoff
	ld a, 8
.done
	ld hl, .HeldItemsTable
	ld b, 0
	ld c, a
	add hl, bc
	ld a, [hl]
	ret

.HeldItemsTable:
	db NO_ITEM      ; 1/2
	db BERRY        ; 1/4
	db GOLD_BERRY   ; 1/8
	db MYSTERYBERRY ; 1/16
	db QUICK_CLAW   ; 1/32
	db SCOPE_LENS   ; 1/64
	db KINGS_ROCK   ; 1/128
	db LEFTOVERS    ; 1/256
	db LUCKY_EGG    ; 1/256

CheckValidLevel:
; Don't receive Pokémon outside a valid level range.
; Legendaries and other banned Pokémon have a "valid" range of 255 to 255.
	ld hl, PartyMon1Level
	ld bc, PARTYMON_STRUCT_LENGTH
	call Trade_GetAttributeOfCurrentPartymon
	ld a, [hl]
	ld d, a

	ld a, [wOTTrademonSpecies]
	ld hl, .ValidPokemonLevels
	ld b, 0
	ld c, a
	add hl, bc
	add hl, bc

	ld a, [hli]
	dec a
	cp d
	ret nc

	ld a, [hl]
	cp d
	ret c

	xor a
	ret

.ValidPokemonLevels
	;  min, max
	db 255, 255 ; ?????
	db   1,  15 ; Bulbasaur
	db  16,  31 ; Ivysaur
	db  32, 100 ; Venusaur
	db   1,  15 ; Charmander
	db  16,  35 ; Charmeleon
	db  36, 100 ; Charizard
	db   1,  15 ; Squirtle
	db  16,  35 ; Wartortle
	db  36, 100 ; Blastoise
	db   1,   6 ; Caterpie
	db   7,   9 ; Metapod
	db  10, 100 ; Butterfree
	db   1,   6 ; Weedle
	db   7,   9 ; Kakuna
	db  10, 100 ; Beedrill
	db   1,  17 ; Pidgey
	db  18,  35 ; Pidgeotto
	db  36, 100 ; Pidgeot
	db   1,  19 ; Rattata
	db  20, 100 ; Raticate
	db   1,  17 ; Marill
	db  18, 100 ; Azumarill
	db   1,  21 ; Ekans
	db  22, 100 ; Arbok
	db   1,  19 ; Pikachu
	db  20, 100 ; Raichu
	db   1,  21 ; Sandshrew
	db  22, 100 ; Sandslash
	db   1,  15 ; Nidoran♀
	db  16,  35 ; Nidorina
	db  36, 100 ; Nidoqueen
	db   1,  15 ; Nidoran♂
	db  16,  35 ; Nidorino
	db  36, 100 ; Nidoking
	db   5,  19 ; Clefairy
	db  20, 100 ; Clefable
	db   1,  19 ; Vulpix
	db  20, 100 ; Ninetales
	db   5,  19 ; Jigglypuff
	db  20, 100 ; Wigglytuff
	db   1,  21 ; Zubat
	db  22, 100 ; Golbat
	db   1,  20 ; Oddish
	db  21,  31 ; Gloom
	db  32, 100 ; Vileplume
	db   1,  23 ; Paras
	db  24, 100 ; Parasect
	db   1,  30 ; Venonat
	db  31, 100 ; Venomoth
	db   1,  25 ; Diglett
	db  26, 100 ; Dugtrio
	db   1,  27 ; Meowth
	db  28, 100 ; Persian
	db   1,  32 ; Psyduck
	db  33, 100 ; Golduck
	db   1,  27 ; Mankey
	db  28, 100 ; Primeape
	db   1,  19 ; Growlithe
	db  20, 100 ; Arcanine
	db   1,  24 ; Poliwag
	db  25,  35 ; Poliwhirl
	db  36, 100 ; Poliwrath
	db   1,  15 ; Abra
	db  16,  35 ; Kadabra
	db  36, 100 ; Alakazam
	db   1,  27 ; Machop
	db  28,  45 ; Machoke
	db  46, 100 ; Machamp
	db   1,  20 ; Bellsprout
	db  21,  31 ; Weepinbell
	db  32, 100 ; Victreebel
	db   1,  29 ; Tentacool
	db  30, 100 ; Tentacruel
	db   1,  24 ; Geodude
	db  25,  44 ; Graveler
	db  45, 100 ; Golem
	db   1,  39 ; Ponyta
	db  40, 100 ; Rapidash
	db   1,  36 ; Slowpoke
	db  37, 100 ; Slowbro
	db   1,  29 ; Magnemite
	db  30,  49 ; Magneton
	db   1, 100 ; Farfetch'd
	db   1,  30 ; Doduo
	db  31, 100 ; Dodrio
	db   1,  33 ; Seel
	db  34, 100 ; Dewgong
	db   1,  37 ; Grimer
	db  38, 100 ; Muk
	db   1,  33 ; Shellder
	db  34, 100 ; Cloyster
	db   1,  24 ; Gastly
	db  25,  44 ; Haunter
	db  45, 100 ; Gengar
	db   1, 100 ; Onix
	db   1,  25 ; Drowzee
	db  26, 100 ; Hypno
	db   1,  27 ; Krabby
	db  28, 100 ; Kingler
	db   1,  29 ; Voltorb
	db  30, 100 ; Electrode
	db   1,  29 ; Exeggcute
	db  30, 100 ; Exeggutor
	db   1,  27 ; Cubone
	db  28, 100 ; Marowak
	db  20, 100 ; Hitmonlee
	db  20, 100 ; Hitmonchan
	db   1,  34 ; Koffing
	db  35, 100 ; Weezing
	db   1,  41 ; Rhyhorn
	db  42,  54 ; Rhydon
	db   1, 100 ; Chansey
	db   1,  38 ; Tangela
	db   1, 100 ; Kangaskhan
	db   1,  31 ; Horsea
	db  32,  54 ; Seadra
	db   1,  19 ; Togepi
	db  20,  39 ; Togetic
	db  40, 100 ; Togekiss
	db   1,  32 ; Staryu
	db  33, 100 ; Starmie
	db   1, 100 ; Mr.Mime
	db  10, 100 ; Scyther
	db   1, 100 ; Jynx
	db  20,  46 ; Electabuzz
	db  20,  46 ; Magmar
	db  10, 100 ; Pinsir
	db   1, 100 ; Tauros
	db   1,  19 ; Magikarp
	db  20, 100 ; Gyarados
	db  20, 100 ; Lapras
	db   1, 100 ; Ditto
	db   1,  19 ; Eevee
	db  20, 100 ; Vaporeon
	db  20, 100 ; Jolteon
	db  20, 100 ; Flareon
	db   1,  20 ; Porygon
	db  15,  39 ; Omanyte
	db  40, 100 ; Omastar
	db  15,  39 ; Kabuto
	db  40, 100 ; Kabutops
	db  15, 100 ; Aerodactyl
	db  20, 100 ; Snorlax
	db 255, 255 ; Articuno
	db 255, 255 ; Zapdos
	db 255, 255 ; Moltres
	db  20,  29 ; Dratini
	db  30,  54 ; Dragonair
	db  55, 100 ; Dragonite
	db 255, 255 ; Mewtwo
	db 255, 255 ; Mew
	db   1,  15 ; Chikorita
	db  16,  31 ; Bayleef
	db  32, 100 ; Meganium
	db   1,  13 ; Cyndaquil
	db  14,  35 ; Quilava
	db  36, 100 ; Typhlosion
	db   1,  17 ; Totodile
	db  18,  29 ; Croconaw
	db  30, 100 ; Feraligatr
	db   1,  14 ; Sentret
	db  15, 100 ; Furret
	db   1,  19 ; Hoothoot
	db  20, 100 ; Noctowl
	db   1,  17 ; Ledyba
	db  18, 100 ; Ledian
	db   1,  21 ; Spinarak
	db  22, 100 ; Ariados
	db  32, 100 ; Crobat
	db   1,  26 ; Chinchou
	db  27, 100 ; Lanturn
	db   1,  19 ; Pichu
	db   1,  19 ; Munchlax
	db  50, 100 ; Magnezone
	db  39, 100 ; Tangrowth
	db   1,  24 ; Natu
	db  25, 100 ; Xatu
	db   1,  14 ; Mareep
	db  15,  29 ; Flaaffy
	db  30, 100 ; Ampharos
	db  32, 100 ; Bellossom
	db  55, 100 ; Rhyperior
	db   1, 100 ; Sudowoodo
	db  36, 100 ; Politoed
	db   1,  31 ; Sunkern
	db  32, 100 ; Sunflora
	db   1,  37 ; Yanma
	db  38, 100 ; Yanmega
	db   1,  19 ; Wooper
	db  20, 100 ; Quagsire
	db  20, 100 ; Espeon
	db  20, 100 ; Umbreon
	db  20, 100 ; Leafeon
	db  20, 100 ; Glaceon
	db   1,  19 ; Murkrow
	db  20, 100 ; Honchkrow
	db  37, 100 ; Slowking
	db   1,  19 ; Misdreavus
	db  20, 100 ; Mismagius
	db   1, 100 ; Unown
	db   1, 100 ; Wobbuffet
	db   1, 100 ; Girafarig
	db   1,  30 ; Pineco
	db  31, 100 ; Forretress
	db   1, 100 ; Dunsparce
	db   1,  19 ; Gligar
	db  20, 100 ; Gliscor
	db  20, 100 ; Steelix
	db   1,  22 ; Snubbull
	db  23, 100 ; Granbull
	db   1, 100 ; Qwilfish
	db  20, 100 ; Scizor
	db   1, 100 ; Heracross
	db   1,  19 ; Sneasel
	db  20, 100 ; Weavile
	db   1,  29 ; Teddiursa
	db  30, 100 ; Ursaring
	db   1,  37 ; Slugma
	db  38, 100 ; Magcargo
	db   1,  32 ; Swinub
	db  33,  40 ; Piloswine
	db  41, 100 ; Mamoswine
	db   1, 100 ; Corsola
	db   1,  24 ; Remoraid
	db  25, 100 ; Octillery
	db   1, 100 ; Mantine
	db   1, 100 ; Skarmory
	db   1,  23 ; Houndour
	db  24, 100 ; Houndoom
	db  55, 100 ; Kingdra
	db   1,  24 ; Phanpy
	db  25, 100 ; Donphan
	db  20,  39 ; Porygon2
	db   1, 100 ; Smeargle
	db   1,  19 ; Tyrogue
	db  20, 100 ; Hitmontop
	db   1,  19 ; Elekid
	db  47, 100 ; Electivire
	db   1,  19 ; Magby
	db  47, 100 ; Magmortar
	db   1,  19 ; Miltank
	db  20, 100 ; Blissey
	db 255, 255 ; Raikou
	db 255, 255 ; Entei
	db 255, 255 ; Suicune
	db   1,  29 ; Larvitar
	db  30,  54 ; Pupitar
	db  55, 100 ; Tyranitar
	db 255, 255 ; Lugia
	db 255, 255 ; Ho-Oh
	db 255, 255 ; Celebi
	db  20, 100 ; Sylveon
	db  40, 100 ; Porygon-Z
	db 255, 255 ; Egg
	db 255, 255 ; ?????
