_DisappearUser: ; fbd54
	xor a
	ld [hBGMapMode], a
	ld a, [hBattleTurn]
	and a
	jr z, .player
	call GetEnemyFrontpicCoords
	jr .okay
.player
	call GetPlayerBackpicCoords
.okay
	call ClearBox
	jr FinishAppearDisappearUser

_AppearUserRaiseSub: ; fbd69 (3e:7d69)
	callba BattleCommand_RaiseSubNoAnim
	jr AppearUser

_AppearUserLowerSub: ; fbd71 (3e:7d71)
	callba BattleCommand_LowerSubNoAnim

AppearUser: ; fbd77 (3e:7d77)
	xor a
	ld [hBGMapMode], a
	ld a, [hBattleTurn]
	and a
	jr z, .player
	call GetEnemyFrontpicCoords
	xor a
	jr .okay
.player
	call GetPlayerBackpicCoords
	ld a, $31
.okay
	ld [hGraphicStartTile], a
	predef PlaceGraphic
FinishAppearDisappearUser: ; fbd91 (3e:7d91)
	ld a, $1
	ld [hBGMapMode], a
	ret

GetEnemyFrontpicCoords: ; fbd96 (3e:7d96)
	hlcoord 12, 0
	lb bc, 7, 7
	ret

GetPlayerBackpicCoords: ; fbd9d (3e:7d9d)
	hlcoord 2, 6
	lb bc, 6, 6
	ret


DoWeatherModifiers: ; fbda4

	ld de, .WeatherTypeModifiers
	ld a, [Weather]
	ld b, a
	ld a, [wd265] ; move type
	ld c, a

.CheckWeatherType:
	ld a, [de]
	inc de
	cp $ff
	jr z, .done_weather_types

	cp b
	jr nz, .NextWeatherType

	ld a, [de]
	cp c
	jr z, .ApplyModifier

.NextWeatherType:
rept 2
	inc de
endr
	jr .CheckWeatherType


.done_weather_types
	ld de, .WeatherMoveModifiers

	ld a, BATTLE_VARS_MOVE_EFFECT
	call GetBattleVar
	ld c, a

.CheckWeatherMove:
	ld a, [de]
	inc de
	cp $ff
	jr z, .done

	cp b
	jr nz, .NextWeatherMove

	ld a, [de]
	cp c
	jr z, .ApplyModifier

.NextWeatherMove:
rept 2
	inc de
endr
	jr .CheckWeatherMove

.ApplyModifier:
	xor a
	ld [hMultiplicand + 0], a
	ld hl, CurDamage
	ld a, [hli]
	ld [hMultiplicand + 1], a
	ld a, [hl]
	ld [hMultiplicand + 2], a

	inc de
	ld a, [de]
	ld [hMultiplier], a

	call Multiply

	ld a, 10
	ld [hDivisor], a
	ld b, $4
	call Divide

	ld a, [hQuotient + 0]
	and a
	ld bc, -1
	jr nz, .Update

	ld a, [hQuotient + 1]
	ld b, a
	ld a, [hQuotient + 2]
	ld c, a
	or b
	jr nz, .Update

	ld bc, 1

.Update:
	ld a, b
	ld [CurDamage], a
	ld a, c
	ld [CurDamage + 1], a

.done
	ret

.WeatherTypeModifiers:
	db WEATHER_RAIN, WATER, 15
	db WEATHER_RAIN, FIRE,  05
	db WEATHER_SUN,  FIRE,  15
	db WEATHER_SUN,  WATER, 05
	db $ff

.WeatherMoveModifiers:
	db WEATHER_RAIN, EFFECT_SOLAR_BEAM, 05
	db $ff
; fbe24
