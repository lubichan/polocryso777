_OptionsMenu: ; e41d0
	ld hl, hInMenu
	ld a, [hl]
	push af
	ld [hl], $1
	call ClearBGPalettes
	hlcoord 0, 0
	ld b, 16
	ld c, 18
	call TextBox
	hlcoord 2, 2
	ld de, StringOptions
	call PlaceString
	xor a
	ld [wJumptableIndex], a
	ld c, $6 ; number of items on the menu minus 1 (for cancel)

.print_text_loop ; this next will display the settings of each option when the menu is opened
	push bc
	xor a
	ld [hJoyLast], a
	call GetOptionPointer
	pop bc
	ld hl, wJumptableIndex
	inc [hl]
	dec c
	jr nz, .print_text_loop

	call UpdateFrame
	xor a
	ld [wJumptableIndex], a
	inc a
	ld [hBGMapMode], a
	call WaitBGMap
	ld b, SCGB_08
	call GetSGBLayout
	call SetPalettes

.joypad_loop
	call JoyTextDelay
	ld a, [hJoyPressed]
	and START | B_BUTTON
	jr nz, .ExitOptions
	call OptionsControl
	jr c, .dpad
	call GetOptionPointer
	jr c, .ExitOptions

.dpad
	call Options_UpdateCursorPosition
	ld c, 3
	call DelayFrames
	jr .joypad_loop

.ExitOptions:
	ld de, SFX_TRANSACTION
	call PlaySFX
	call WaitSFX
	pop af
	ld [hInMenu], a
	ret
; e4241

StringOptions: ; e4241
	db "Text Speed<LNBRK>"
	db "        :<LNBRK>"
	db "Battle Scene<LNBRK>"
	db "        :<LNBRK>"
	db "Battle Style<LNBRK>"
	db "        :<LNBRK>"
	db "Running Shoes<LNBRK>"
	db "        :<LNBRK>"
	db "Sound<LNBRK>"
	db "        :<LNBRK>"
	db "Nuzlocke Mode<LNBRK>"
	db "        :<LNBRK>"
	db "Frame<LNBRK>"
	db "        :Type<LNBRK>"
	db "Cancel@"
; e42d6


GetOptionPointer: ; e42d6
	ld a, [wJumptableIndex] ; load the cursor position to a
	ld e, a ; copy it to de
	ld d, 0
	ld hl, .Pointers
rept 2
	add hl, de
endr
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp [hl] ; jump to the code of the current highlighted item
; e42e5

.Pointers:
	dw Options_TextSpeed
	dw Options_BattleScene
	dw Options_BattleStyle
	dw Options_RunningShoes
	dw Options_Sound
	dw Options_NuzlockeMode
	dw Options_Frame
	dw Options_Cancel
; e42f5


Options_TextSpeed: ; e42f5
	call GetTextSpeed
	ld a, [hJoyPressed]
	bit D_LEFT_F, a
	jr nz, .LeftPressed
	bit D_RIGHT_F, a
	jr z, .NonePressed
	ld a, c ; right pressed
	cp SLOW_TEXT
	jr c, .Increase
	ld c, FAST_TEXT +- 1

.Increase:
	inc c
	ld a, e
	jr .Save

.LeftPressed:
	ld a, c
	and a
	jr nz, .Decrease
	ld c, SLOW_TEXT + 1

.Decrease:
	dec c
	ld a, d

.Save:
	ld b, a
	ld a, [Options]
	and $f0
	or b
	ld [Options], a

.NonePressed:
	ld b, 0
	ld hl, .Strings
rept 2
	add hl, bc
endr
	ld e, [hl]
	inc hl
	ld d, [hl]
	hlcoord 11, 3
	call PlaceString
	and a
	ret
; e4331

.Strings:
	dw .Fast
	dw .Mid
	dw .Slow

.Fast:
	db "Fast@"
.Mid:
	db "Mid @"
.Slow:
	db "Slow@"
; e4346


GetTextSpeed: ; e4346
	ld a, [Options] ; This converts the number of frames, to 0, 1, 2 representing speed
	and 7
	cp 5 ; 5 frames of delay is slow
	jr z, .slow
	cp 1 ; 1 frame of delay is fast
	jr z, .fast
	ld c, MED_TEXT ; set it to mid if not one of the above
	lb de, 1, 5
	ret

.slow
	ld c, SLOW_TEXT
	lb de, 3, 1
	ret

.fast
	ld c, FAST_TEXT
	lb de, 5, 3
	ret
; e4365


Options_BattleScene: ; e4365
	ld hl, Options
	ld a, [hJoyPressed]
	bit D_LEFT_F, a
	jr nz, .LeftPressed
	bit D_RIGHT_F, a
	jr z, .NonePressed
	bit BATTLE_SCENE, [hl]
	jr nz, .ToggleOn
	jr .ToggleOff

.LeftPressed:
	bit BATTLE_SCENE, [hl]
	jr z, .ToggleOff
	jr .ToggleOn

.NonePressed:
	bit BATTLE_SCENE, [hl]
	jr z, .ToggleOn
	jr .ToggleOff

.ToggleOn:
	res BATTLE_SCENE, [hl]
	ld de, .On
	jr .Display

.ToggleOff:
	set BATTLE_SCENE, [hl]
	ld de, .Off

.Display:
	hlcoord 11, 5
	call PlaceString
	and a
	ret
; e4398

.On:
	db "On @"
.Off:
	db "Off@"
; e43a0


Options_BattleStyle: ; e43a0
	ld hl, Options
	ld a, [hJoyPressed]
	bit D_LEFT_F, a
	jr nz, .LeftPressed
	bit D_RIGHT_F, a
	jr z, .NonePressed
	bit BATTLE_SHIFT, [hl]
	jr nz, .ToggleShift
	jr .ToggleSet

.LeftPressed:
	bit BATTLE_SHIFT, [hl]
	jr z, .ToggleSet
	jr .ToggleShift

.NonePressed:
	bit BATTLE_SHIFT, [hl]
	jr nz, .ToggleSet

.ToggleShift:
	res BATTLE_SHIFT, [hl]
	ld de, .Set
	jr .Display

.ToggleSet:
	set BATTLE_SHIFT, [hl]
	ld de, .Shift

.Display:
	hlcoord 11, 7
	call PlaceString
	and a
	ret
; e43d1

.Set:
	db "Set  @"
.Shift:
	db "Shift@"
; e43dd


Options_RunningShoes: ; e44c1
	ld hl, Options2
	ld a, [hJoyPressed]
	bit D_LEFT_F, a
	jr nz, .LeftPressed
	bit D_RIGHT_F, a
	jr z, .NonePressed
	bit RUNNING_SHOES, [hl]
	jr z, .ToggleOn
	jr .ToggleOff

.LeftPressed:
	bit RUNNING_SHOES, [hl]
	jr nz, .ToggleOff
	jr .ToggleOn

.NonePressed:
	bit RUNNING_SHOES, [hl]
	jr z, .ToggleOff

.ToggleOn:
	set RUNNING_SHOES, [hl]
	ld de, .On
	jr .Display

.ToggleOff:
	res RUNNING_SHOES, [hl]
	ld de, .Off

.Display:
	hlcoord 11, 9
	call PlaceString
	and a
	ret
; e44f2

.On:
	db "On @"
.Off:
	db "Off@"
; e44fa


Options_Sound: ; e43dd
	ld hl, Options
	ld a, [hJoyPressed]
	bit D_LEFT_F, a
	jr nz, .LeftPressed
	bit D_RIGHT_F, a
	jr z, .NonePressed
	bit STEREO, [hl]
	jr nz, .SetMono
	jr .SetStereo

.LeftPressed:
	bit STEREO, [hl]
	jr z, .SetStereo
	jr .SetMono

.NonePressed:
	bit STEREO, [hl]
	jr nz, .ToggleStereo
	jr .ToggleMono

.SetMono:
	res STEREO, [hl]
	call RestartMapMusic

.ToggleMono:
	ld de, .Mono
	jr .Display

.SetStereo:
	set STEREO, [hl]
	call RestartMapMusic

.ToggleStereo:
	ld de, .Stereo

.Display:
	hlcoord 11, 11
	call PlaceString
	and a
	ret
; e4416

.Mono:
	db "Mono  @"
.Stereo:
	db "Stereo@"
; e4424


Options_NuzlockeMode: ; e4424
	ld hl, Options2
	ld a, [hJoyPressed]
	bit D_LEFT_F, a
	jr nz, .LeftPressed
	bit D_RIGHT_F, a
	jr z, .NonePressed
	bit NUZLOCKE_MODE, [hl]
	jr z, .ToggleOn
	jr .ToggleOff

.LeftPressed:
	bit NUZLOCKE_MODE, [hl]
	jr nz, .ToggleOff
	jr .ToggleOn

.NonePressed:
	bit NUZLOCKE_MODE, [hl]
	jr z, .ToggleOff

.ToggleOn:
	set NUZLOCKE_MODE, [hl]
	ld de, .On
	jr .Display

.ToggleOff:
	res NUZLOCKE_MODE, [hl]
	ld de, .Off

.Display:
	hlcoord 11, 13
	call PlaceString
	and a
	ret
; e44f2

.On:
	db "On @"
.Off:
	db "Off@"
; e44c1


Options_Frame: ; e44fa
	ld hl, TextBoxFrame
	ld a, [hJoyPressed]
	bit D_LEFT_F, a
	jr nz, .LeftPressed
	bit D_RIGHT_F, a
	jr nz, .RightPressed
	and a
	ret

.RightPressed:
	ld a, [hl]
	inc a
	jr .Save

.LeftPressed:
	ld a, [hl]
	dec a

.Save:
	and $7
	ld [hl], a
UpdateFrame: ; e4512
	ld a, [TextBoxFrame]
	hlcoord 16, 15 ; where on the screen the number is drawn
	add "1"
	ld [hl], a
	call LoadFontsExtra
	and a
	ret
; e4520

Options_Cancel: ; e4520
	ld a, [hJoyPressed]
	and A_BUTTON
	jr nz, .Exit
	and a
	ret

.Exit:
	scf
	ret
; e452a

OptionsControl: ; e452a
	ld hl, wJumptableIndex
	ld a, [hJoyLast]
	cp D_DOWN
	jr z, .DownPressed
	cp D_UP
	jr z, .UpPressed
	and a
	ret

.DownPressed:
	ld a, [hl] ; load the cursor position to a
	cp $7 ; maximum number of items in option menu
	jr nz, .CheckFive
	ld [hl], $0
	scf
	ret

.CheckFive: ; I have no idea why this exists...
	cp $5
	jr nz, .Increase
	ld [hl], $5

.Increase:
	inc [hl]
	scf
	ret

.UpPressed:
	ld a, [hl]
	cp $6
	jr nz, .NotSix
	ld [hl], $5 ; Another thing where I'm not sure why it exists
	scf
	ret

.NotSix:
	and a
	jr nz, .Decrease
	ld [hl], $8 ; number of option items +1

.Decrease:
	dec [hl]
	scf
	ret
; e455c

Options_UpdateCursorPosition: ; e455c
	hlcoord 1, 1
	ld de, SCREEN_WIDTH
	ld c, $10
.loop
	ld [hl], " "
	add hl, de
	dec c
	jr nz, .loop
	hlcoord 1, 2
	ld bc, 2 * SCREEN_WIDTH
	ld a, [wJumptableIndex]
	call AddNTimes
	ld [hl], "▶"
	ret
; e4579
