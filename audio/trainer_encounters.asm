; Currently, must be in the same bank as the sound engine.

PlayTrainerEncounterMusic:: ; e900a
; input: e = trainer type
	; turn fade off
	xor a
	ld [MusicFade], a
	; play nothing for one frame
	push de
	ld de, 0 ; id: Music_Nothing
	call PlayMusic
	call DelayFrame
	; play new song
	call MaxVolume
	pop de
	ld d, $00
	ld hl, TrainerEncounterMusic
	add hl, de
	ld e, [hl]
	call PlayMusic
	ret
; e9027

TrainerEncounterMusic: ; e9027
	db MUSIC_HIKER_ENCOUNTER
	db MUSIC_HIKER_ENCOUNTER		; kay
	db MUSIC_HIKER_ENCOUNTER		; cal
	db MUSIC_YOUNGSTER_ENCOUNTER	; falkner
	db MUSIC_YOUNGSTER_ENCOUNTER	; bugsy
	db MUSIC_OFFICER_ENCOUNTER		; morty
	db MUSIC_LASS_ENCOUNTER			; whitney
	db MUSIC_OFFICER_ENCOUNTER		; chuck
	db MUSIC_LASS_ENCOUNTER			; jasmine
	db MUSIC_OFFICER_ENCOUNTER		; pryce
	db MUSIC_BEAUTY_ENCOUNTER		; clair
	db MUSIC_HIKER_ENCOUNTER		; will
	db MUSIC_HIKER_ENCOUNTER		; koga
	db MUSIC_OFFICER_ENCOUNTER		; bruno
	db MUSIC_HIKER_ENCOUNTER		; karen
	db MUSIC_OFFICER_ENCOUNTER		; champion
	db MUSIC_YOUNGSTER_ENCOUNTER	; brock
	db MUSIC_LASS_ENCOUNTER			; misty
	db MUSIC_OFFICER_ENCOUNTER		; lt_surge
	db MUSIC_OFFICER_ENCOUNTER		; erika
	db MUSIC_LASS_ENCOUNTER			; janine
	db MUSIC_BEAUTY_ENCOUNTER		; sabrina
	db MUSIC_OFFICER_ENCOUNTER		; blaine
	db MUSIC_RIVAL_ENCOUNTER		; blue
	db MUSIC_HIKER_ENCOUNTER		; red
	db MUSIC_HIKER_ENCOUNTER		; leaf
	db MUSIC_RIVAL_ENCOUNTER		; rival1
	db MUSIC_RIVAL_ENCOUNTER		; rival2
	db MUSIC_YOUNGSTER_ENCOUNTER	; youngster
	db MUSIC_YOUNGSTER_ENCOUNTER	; bug_catcher
	db MUSIC_YOUNGSTER_ENCOUNTER	; camper
	db MUSIC_LASS_ENCOUNTER			; picnicker
	db MUSIC_LASS_ENCOUNTER			; twins
	db MUSIC_HIKER_ENCOUNTER		; fisher
	db MUSIC_YOUNGSTER_ENCOUNTER	; bird_keeper
	db MUSIC_HIKER_ENCOUNTER		; hiker
	db MUSIC_ROCKET_ENCOUNTER		; gruntm
	db MUSIC_ROCKET_ENCOUNTER		; gruntf
	db MUSIC_ROCKET_ENCOUNTER		; jessie&james
	db MUSIC_HIKER_ENCOUNTER		; pokefanm
	db MUSIC_BEAUTY_ENCOUNTER		; pokefanf
	db MUSIC_HIKER_ENCOUNTER		; officerm
	db MUSIC_HIKER_ENCOUNTER		; officerf
	db MUSIC_POKEMANIAC_ENCOUNTER	; pokemaniac
	db MUSIC_POKEMANIAC_ENCOUNTER	; super_nerd
	db MUSIC_LASS_ENCOUNTER			; lass
	db MUSIC_BEAUTY_ENCOUNTER		; beauty
	db MUSIC_HIKER_ENCOUNTER		; firebreather
	db MUSIC_POKEMANIAC_ENCOUNTER	; juggler
	db MUSIC_YOUNGSTER_ENCOUNTER	; schoolboy
	db MUSIC_LASS_ENCOUNTER			; schoolgirl
	db MUSIC_YOUNGSTER_ENCOUNTER	; psychic_t
	db MUSIC_SAGE_ENCOUNTER			; hex_maniac
	db MUSIC_SAGE_ENCOUNTER			; sage
	db MUSIC_SAGE_ENCOUNTER			; medium
	db MUSIC_KIMONO_ENCOUNTER		; kimono_girl
	db MUSIC_SAGE_ENCOUNTER			; elder
	db MUSIC_LASS_ENCOUNTER			; sr_and_jr
	db MUSIC_HIKER_ENCOUNTER		; couple
	db MUSIC_HIKER_ENCOUNTER		; gentleman
	db MUSIC_YOUNGSTER_ENCOUNTER	; rich_boy
	db MUSIC_LASS_ENCOUNTER			; breeder
	db MUSIC_LASS_ENCOUNTER			; cowgirl
	db MUSIC_HIKER_ENCOUNTER		; sailor
	db MUSIC_HIKER_ENCOUNTER		; swimmerm
	db MUSIC_BEAUTY_ENCOUNTER		; swimmerf
	db MUSIC_POKEMANIAC_ENCOUNTER	; burglar
	db MUSIC_POKEMANIAC_ENCOUNTER	; pi
	db MUSIC_ROCKET_ENCOUNTER		; scientist
	db MUSIC_HIKER_ENCOUNTER		; boarder
	db MUSIC_BEAUTY_ENCOUNTER		; skier
	db MUSIC_HIKER_ENCOUNTER		; blackbelt_t
	db MUSIC_BEAUTY_ENCOUNTER		; battle_girl
	db MUSIC_HIKER_ENCOUNTER		; dragon_tamer
	db MUSIC_BEAUTY_ENCOUNTER		; teacher
	db MUSIC_HIKER_ENCOUNTER		; guitaristm
	db MUSIC_BEAUTY_ENCOUNTER		; guitaristf
	db MUSIC_HIKER_ENCOUNTER		; biker
	db MUSIC_HIKER_ENCOUNTER		; roughneck
	db MUSIC_HIKER_ENCOUNTER		; cooltrainerm
	db MUSIC_BEAUTY_ENCOUNTER		; cooltrainerf
	db MUSIC_HIKER_ENCOUNTER		; ace_duo
	db MUSIC_HIKER_ENCOUNTER		; veteranm
	db MUSIC_HIKER_ENCOUNTER		; veteranf
	db MUSIC_ROCKET_ENCOUNTER		; proton
	db MUSIC_ROCKET_ENCOUNTER		; petrel
	db MUSIC_ROCKET_ENCOUNTER		; archer
	db MUSIC_ROCKET_ENCOUNTER		; ariana
	db MUSIC_HIKER_ENCOUNTER		; pokemon_prof
	db MUSIC_HIKER_ENCOUNTER		; mysticalman
	db MUSIC_HIKER_ENCOUNTER		; lorelei
	db MUSIC_SAGE_ENCOUNTER			; agatha
	db MUSIC_LASS_ENCOUNTER			; yellow
	db MUSIC_HIKER_ENCOUNTER		; walker
	db MUSIC_POKEMANIAC_ENCOUNTER	; bill
	db MUSIC_HIKER_ENCOUNTER		; lawrence
	db MUSIC_ROCKET_ENCOUNTER		; giovanni
	db MUSIC_HIKER_ENCOUNTER		; steven
	db MUSIC_HIKER_ENCOUNTER		; cynthia
	db MUSIC_HIKER_ENCOUNTER		; towertycoon
	db MUSIC_KIMONO_ENCOUNTER		; valerie
	db MUSIC_KIMONO_ENCOUNTER		; rei
; e906e
