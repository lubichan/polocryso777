; Functions to copy data from ROM.


Get2bpp_2:: ; dc9
	ld a, [rLCDC]
	bit 7, a
	jp z, Copy2bpp

	ld a, [hROMBank]
	push af
	ld a, BANK(_Get2bpp)
	rst Bankswitch
	call _Get2bpp
	pop af
	rst Bankswitch

	ret
; ddc

Get1bpp_2:: ; ddc
	ld a, [rLCDC]
	bit 7, a
	jp z, Copy1bpp

	ld a, [hROMBank]
	push af
	ld a, BANK(_Get1bpp)
	rst Bankswitch
	call _Get1bpp
	pop af
	rst Bankswitch

	ret
; def

FarCopyBytesDouble_DoubleBankSwitch:: ; def
	ld [hBuffer], a
	ld a, [hROMBank]
	push af
	ld a, [hBuffer]
	rst Bankswitch

	call FarCopyBytesDouble

	pop af
	rst Bankswitch
	ret
; dfd

ReplaceKrisSprite:: ; e4a
	callba _ReplaceKrisSprite
	ret
; e51

LoadStandardFont:: ; e51
	callba _LoadStandardFont
	ret
; e58

LoadFontsBattleExtra:: ; e58
	callba _LoadFontsBattleExtra
	ret
; e5f

LoadFontsExtra:: ; e5f
	callba _LoadFontsExtra1
	callba _LoadFontsExtra2
	ret
; e6c

DecompressRequest2bpp:: ; e73
	push de
	ld a, BANK(sScratch)
	call GetSRAMBank
	push bc

	ld de, sScratch
	ld a, b
	call FarDecompress

	pop bc
	pop hl

	ld de, sScratch
	call Request2bpp
	call CloseSRAM
	ret
; e8d



FarCopyBytes:: ; e8d
; copy bc bytes from a:hl to de

	ld [hBuffer], a
	ld a, [hROMBank]
	push af
	ld a, [hBuffer]
	rst Bankswitch

	call CopyBytes

	pop af
	rst Bankswitch
	ret
; 0xe9b


FarCopyBytesDouble:: ; e9b
; Copy bc bytes from a:hl to bc*2 bytes at de,
; doubling each byte in the process.

	ld [hBuffer], a
	ld a, [hROMBank]
	push af
	ld a, [hBuffer]
	rst Bankswitch

; switcheroo, de <> hl
	ld a, h
	ld h, d
	ld d, a
	ld a, l
	ld l, e
	ld e, a

	inc b
	inc c
	jr .dec

.loop
	ld a, [de]
	inc de
rept 2
	ld [hli], a
endr
.dec
	dec c
	jr nz, .loop
	dec b
	jr nz, .loop

	pop af
	rst Bankswitch
	ret
; 0xeba


Request2bpp:: ; eba
; Load 2bpp at b:de to occupy c tiles of hl.
	ld a, [hBGMapMode]
	push af
	xor a
	ld [hBGMapMode], a

	ld a, [hROMBank]
	push af
	ld a, b
	rst Bankswitch

	ld a, [hTilesPerCycle]
	push af
	ld a, $8
	ld [hTilesPerCycle], a

	ld a, e
	ld [Requested2bppSource], a
	ld a, d
	ld [Requested2bppSource + 1], a
	ld a, l
	ld [Requested2bppDest], a
	ld a, h
	ld [Requested2bppDest + 1], a
.loop
	ld a, c
	ld hl, hTilesPerCycle
	cp [hl]
	jr nc, .iterate

	ld [Requested2bpp], a
.wait
	call DelayFrame
	ld a, [Requested2bpp]
	and a
	jr nz, .wait

	pop af
	ld [hTilesPerCycle], a

	pop af
	rst Bankswitch

	pop af
	ld [hBGMapMode], a
	ret

.iterate
	ld a, [hTilesPerCycle]
	ld [Requested2bpp], a

.wait2
	call DelayFrame
	ld a, [Requested2bpp]
	and a
	jr nz, .wait2

	ld a, c
	ld hl, hTilesPerCycle
	sub [hl]
	ld c, a
	jr .loop
; f1e


Request1bpp:: ; f1e
; Load 1bpp at b:de to occupy c tiles of hl.
	ld a, [hBGMapMode]
	push af
	xor a
	ld [hBGMapMode], a

	ld a, [hROMBank]
	push af
	ld a, b
	rst Bankswitch

	ld a, [hTilesPerCycle]
	push af

	ld a, $8
	ld [hTilesPerCycle], a
	ld a, e
	ld [Requested1bppSource], a
	ld a, d
	ld [Requested1bppSource + 1], a
	ld a, l
	ld [Requested1bppDest], a
	ld a, h
	ld [Requested1bppDest + 1], a
.loop
	ld a, c
	ld hl, hTilesPerCycle
	cp [hl]
	jr nc, .iterate

	ld [Requested1bpp], a
.wait
	call DelayFrame
	ld a, [Requested1bpp]
	and a
	jr nz, .wait

	pop af
	ld [hTilesPerCycle], a

	pop af
	rst Bankswitch

	pop af
	ld [hBGMapMode], a
	ret

.iterate
	ld a, [hTilesPerCycle]
	ld [Requested1bpp], a

.wait2
	call DelayFrame
	ld a, [Requested1bpp]
	and a
	jr nz, .wait2

	ld a, c
	ld hl, hTilesPerCycle
	sub [hl]
	ld c, a
	jr .loop
; f82


Get2bpp:: ; f82
	ld a, [rLCDC]
	bit 7, a
	jp nz, Request2bpp

Copy2bpp:: ; f89
; copy c 2bpp tiles from b:de to hl

	push hl
	ld h, d
	ld l, e
	pop de

; bank
	ld a, b

; bc = c * $10
	push af
	swap c
	ld a, $f
	and c
	ld b, a
	ld a, $f0
	and c
	ld c, a
	pop af

	jp FarCopyBytes
; f9d


Get1bpp:: ; f9d
	ld a, [rLCDC]
	bit 7, a
	jp nz, Request1bpp

Copy1bpp:: ; fa4
; copy c 1bpp tiles from b:de to hl

	push de
	ld d, h
	ld e, l

; bank
	ld a, b

; bc = c * $10 / 2
	push af
	ld h, 0
	ld l, c
rept 3
	add hl, hl
endr
	ld b, h
	ld c, l
	pop af

	pop hl
	jp FarCopyBytesDouble
; fb6
