GROUP_N_A  EQU -1
MAP_N_A    EQU -1

GROUP_NONE EQU 0
MAP_NONE   EQU 0

; map group ids
	const_def
	newgroup                                                    ;  1

	mapgroup OLIVINE_POKECENTER_1F,                       4,  6 ;  1
	mapgroup OLIVINE_GYM,                                 8,  5 ;  2
	mapgroup OLIVINE_TIMS_HOUSE,                          4,  4 ;  3
	mapgroup OLIVINE_PUNISHMENT_SPEECH_HOUSE,             4,  4 ;  5
	mapgroup OLIVINE_GOOD_ROD_HOUSE,                      4,  4 ;  6
	mapgroup OLIVINE_CAFE,                                4,  4 ;  7
	mapgroup OLIVINE_MART,                                4,  6 ;  8
	mapgroup ROUTE_38_ECRUTEAK_GATE,                      4,  5 ;  9
	mapgroup ROUTE_39_BARN,                               4,  4 ; 10
	mapgroup ROUTE_39_FARMHOUSE,                          4,  4 ; 11
	mapgroup ROUTE_38,                                    9, 20 ; 12
	mapgroup ROUTE_39,                                   20, 10 ; 13
	mapgroup OLIVINE_CITY,                               16, 31 ; 14
	mapgroup ROUTE_35_COAST,                             13, 24 ; 15

	newgroup                                                    ;  2

	mapgroup MAHOGANY_RED_GYARADOS_SPEECH_HOUSE,          4,  4 ;  1
	mapgroup MAHOGANY_GYM,                                9,  5 ;  2
	mapgroup MAHOGANY_POKECENTER_1F,                      4,  6 ;  3
	mapgroup ROUTE_42_ECRUTEAK_GATE,                      4,  5 ;  4
	mapgroup ROUTE_42,                                    9, 30 ;  5
	mapgroup ROUTE_44,                                    9, 30 ;  6
	mapgroup MAHOGANY_TOWN,                               9, 10 ;  7

	newgroup                                                    ;  3

	mapgroup SPROUT_TOWER_1F,                             8, 10 ;  1
	mapgroup SPROUT_TOWER_2F,                             8, 10 ;  2
	mapgroup SPROUT_TOWER_3F,                             8, 10 ;  3
	mapgroup TIN_TOWER_1F,                                9, 10 ;  4
	mapgroup TIN_TOWER_2F,                                9, 10 ;  5
	mapgroup TIN_TOWER_3F,                                9, 10 ;  6
	mapgroup TIN_TOWER_4F,                                9, 10 ;  7
	mapgroup TIN_TOWER_5F,                                9, 10 ;  8
	mapgroup TIN_TOWER_6F,                                9, 10 ;  9
	mapgroup TIN_TOWER_7F,                                9, 10 ; 10
	mapgroup TIN_TOWER_8F,                                9, 10 ; 11
	mapgroup TIN_TOWER_9F,                                9, 10 ; 12
	mapgroup BURNED_TOWER_1F,                             9, 10 ; 13
	mapgroup BURNED_TOWER_B1F,                            9, 10 ; 14
	mapgroup NATIONAL_PARK,                              27, 20 ; 15
	mapgroup NATIONAL_PARK_BUG_CONTEST,                  27, 20 ; 16
	mapgroup RADIO_TOWER_1F,                              4,  9 ; 17
	mapgroup RADIO_TOWER_2F,                              4,  9 ; 18
	mapgroup RADIO_TOWER_3F,                              4,  9 ; 19
	mapgroup RADIO_TOWER_4F,                              4,  9 ; 20
	mapgroup RADIO_TOWER_5F,                              4,  9 ; 21
	mapgroup RUINS_OF_ALPH_OUTSIDE,                      21, 11 ; 22
	mapgroup RUINS_OF_ALPH_HO_OH_CHAMBER,                 5,  4 ; 23
	mapgroup RUINS_OF_ALPH_KABUTO_CHAMBER,                5,  4 ; 24
	mapgroup RUINS_OF_ALPH_OMANYTE_CHAMBER,               5,  4 ; 25
	mapgroup RUINS_OF_ALPH_AERODACTYL_CHAMBER,            5,  4 ; 26
	mapgroup RUINS_OF_ALPH_INNER_CHAMBER,                14, 10 ; 27
	mapgroup RUINS_OF_ALPH_RESEARCH_CENTER,               4,  4 ; 28
	mapgroup RUINS_OF_ALPH_HO_OH_ITEM_ROOM,               5,  4 ; 29
	mapgroup RUINS_OF_ALPH_KABUTO_ITEM_ROOM,              5,  4 ; 30
	mapgroup RUINS_OF_ALPH_OMANYTE_ITEM_ROOM,             5,  4 ; 31
	mapgroup RUINS_OF_ALPH_AERODACTYL_ITEM_ROOM,          5,  4 ; 32
	mapgroup RUINS_OF_ALPH_HO_OH_WORD_ROOM,              12, 10 ; 33
	mapgroup RUINS_OF_ALPH_KABUTO_WORD_ROOM,              7, 10 ; 34
	mapgroup RUINS_OF_ALPH_OMANYTE_WORD_ROOM,             8, 10 ; 35
	mapgroup RUINS_OF_ALPH_AERODACTYL_WORD_ROOM,          7, 10 ; 36
	mapgroup RUINS_OF_ALPH_SINJOH_CHAMBER,                5,  5 ; 37
	mapgroup UNION_CAVE_1F,                              18, 10 ; 38
	mapgroup UNION_CAVE_B1F,                             18, 10 ; 39
	mapgroup UNION_CAVE_B2F,                             18, 10 ; 40
	mapgroup SLOWPOKE_WELL_B1F,                           9, 10 ; 41
	mapgroup SLOWPOKE_WELL_B2F,                           9, 10 ; 42
	mapgroup OLIVINE_LIGHTHOUSE_1F,                       9, 10 ; 43
	mapgroup OLIVINE_LIGHTHOUSE_2F,                       9, 10 ; 44
	mapgroup OLIVINE_LIGHTHOUSE_3F,                       9, 10 ; 45
	mapgroup OLIVINE_LIGHTHOUSE_4F,                       9, 10 ; 46
	mapgroup OLIVINE_LIGHTHOUSE_5F,                       9, 10 ; 47
	mapgroup OLIVINE_LIGHTHOUSE_6F,                       9, 10 ; 48
	mapgroup MAHOGANY_MART_1F,                            4,  4 ; 49
	mapgroup TEAM_ROCKET_BASE_B1F,                        9, 15 ; 50
	mapgroup TEAM_ROCKET_BASE_B2F,                        9, 15 ; 51
	mapgroup TEAM_ROCKET_BASE_B3F,                        9, 15 ; 52
	mapgroup ILEX_FOREST,                                27, 15 ; 53
	mapgroup WAREHOUSE_ENTRANCE,                         18, 15 ; 54
	mapgroup UNDERGROUND_PATH_SWITCH_ROOM_ENTRANCES,     18, 15 ; 55
	mapgroup GOLDENROD_DEPT_STORE_B1F,                    9, 10 ; 56
	mapgroup UNDERGROUND_WAREHOUSE,                       9, 10 ; 57
	mapgroup MOUNT_MORTAR_1F_OUTSIDE,                    18, 20 ; 58
	mapgroup MOUNT_MORTAR_1F_INSIDE,                     27, 20 ; 59
	mapgroup MOUNT_MORTAR_2F_INSIDE,                     18, 20 ; 60
	mapgroup MOUNT_MORTAR_B1F,                           18, 20 ; 61
	mapgroup ICE_PATH_1F,                                18, 20 ; 62
	mapgroup ICE_PATH_B1F,                               18, 10 ; 63
	mapgroup ICE_PATH_B2F_MAHOGANY_SIDE,                  9, 10 ; 64
	mapgroup ICE_PATH_B2F_BLACKTHORN_SIDE,                9,  5 ; 65
	mapgroup ICE_PATH_B3F,                                9, 10 ; 66
	mapgroup WHIRL_ISLAND_NW,                             9,  5 ; 67
	mapgroup WHIRL_ISLAND_NE,                             9, 10 ; 68
	mapgroup WHIRL_ISLAND_SW,                             9, 10 ; 69
	mapgroup WHIRL_ISLAND_CAVE,                           9,  5 ; 70
	mapgroup WHIRL_ISLAND_SE,                             9,  5 ; 71
	mapgroup WHIRL_ISLAND_B1F,                           18, 20 ; 72
	mapgroup WHIRL_ISLAND_B2F,                           18, 10 ; 73
	mapgroup WHIRL_ISLAND_LUGIA_CHAMBER,                  9, 10 ; 74
	mapgroup SILVER_CAVE_ROOM_1,                         18, 10 ; 75
	mapgroup SILVER_CAVE_ROOM_2,                         18, 15 ; 76
	mapgroup SILVER_CAVE_ROOM_3,                         19, 10 ; 77
	mapgroup SILVER_CAVE_ITEM_ROOMS,                      9, 10 ; 78
	mapgroup DARK_CAVE_VIOLET_ENTRANCE,                  18, 20 ; 79
	mapgroup DARK_CAVE_BLACKTHORN_ENTRANCE,              18, 15 ; 80
	mapgroup DRAGONS_DEN_1F,                              9,  5 ; 81
	mapgroup DRAGONS_DEN_B1F,                            18, 20 ; 82
	mapgroup DRAGON_SHRINE,                               5,  5 ; 83
	mapgroup TOHJO_FALLS,                                 9, 15 ; 84
	mapgroup DIGLETTS_CAVE,                              18, 10 ; 85
	mapgroup MOUNT_MOON,                                  9, 15 ; 86
	mapgroup UNDERGROUND,                                14,  3 ; 87
	mapgroup ROCK_TUNNEL_1F,                             14, 15 ; 88
	mapgroup ROCK_TUNNEL_B1F,                            14, 15 ; 89
	mapgroup ROCK_TUNNEL_2F,                             14, 15 ; 90
	mapgroup VICTORY_ROAD,                               36, 10 ; 91

	newgroup                                                    ;  4

	mapgroup ECRUTEAK_HOUSE,                              9, 10 ;  1
	mapgroup WISE_TRIOS_ROOM,                             4,  4 ;  2
	mapgroup ECRUTEAK_POKECENTER_1F,                      4,  6 ;  3
	mapgroup ECRUTEAK_LUGIA_SPEECH_HOUSE,                 4,  4 ;  4
	mapgroup DANCE_THEATRE,                               7,  6 ;  5
	mapgroup ECRUTEAK_MART,                               4,  6 ;  6
	mapgroup ECRUTEAK_GYM,                                9,  5 ;  7
	mapgroup ECRUTEAK_ITEMFINDER_HOUSE,                   4,  4 ;  8
	mapgroup ECRUTEAK_CITY,                              18, 20 ;  9
	mapgroup ROUTE_35,                                   18, 10 ; 10
	mapgroup ROUTE_36,                                    9, 30 ; 11
	mapgroup ROUTE_37,                                   10, 10 ; 12
	mapgroup ROUTE_35_GOLDENROD_GATE,                     4,  5 ; 13
	mapgroup ROUTE_35_NATIONAL_PARK_GATE,                 4,  4 ; 14
	mapgroup ROUTE_36_RUINS_OF_ALPH_GATE,                 4,  5 ; 15
	mapgroup ROUTE_36_NATIONAL_PARK_GATE,                 4,  5 ; 16
	mapgroup ROUTE_36_VIOLET_GATE,                        4,  5 ; 17
	mapgroup VALERIES_HOUSE,                              4,  4 ; 18

	newgroup                                                    ;  5

	mapgroup BLACKTHORN_GYM_1F,                           9,  5 ;  1
	mapgroup BLACKTHORN_GYM_2F,                           9,  5 ;  2
	mapgroup BLACKTHORN_DRAGON_SPEECH_HOUSE,              4,  4 ;  3
	mapgroup BLACKTHORN_EMYS_HOUSE,                       4,  4 ;  4
	mapgroup BLACKTHORN_MART,                             4,  6 ;  5
	mapgroup BLACKTHORN_POKECENTER_1F,                    4,  6 ;  6
	mapgroup MOVE_DELETERS_HOUSE,                         4,  4 ;  7
	mapgroup ROUTE_45,                                   46, 12 ;  8
	mapgroup ROUTE_46,                                   18, 10 ;  9
	mapgroup BLACKTHORN_CITY,                            19, 20 ; 10

	newgroup                                                    ;  6

	mapgroup CINNABAR_POKECENTER_1F,                      4,  6 ;  1
	mapgroup SEAFOAM_ISLANDS_1F,                          5, 12 ;  2
	mapgroup SEAFOAM_GYM,                                12, 12 ;  3
	mapgroup SEAFOAM_ISLANDS_B1F,                        10, 20 ;  4
	mapgroup SEAFOAM_ISLANDS_B2F,                        10, 20 ;  5
	mapgroup SEAFOAM_ISLANDS_B3F,                        10, 20 ;  6
	mapgroup SEAFOAM_ISLANDS_B4F,                        10, 20 ;  7
	mapgroup ROUTE_19,                                   20, 10 ;  8
	mapgroup ROUTE_20,                                    9, 30 ;  9
	mapgroup ROUTE_21,                                   18, 10 ; 10
	mapgroup CINNABAR_ISLAND,                            11, 12 ; 11
	mapgroup CINNABAR_VOLCANO_1F,                        14, 14 ; 12
	mapgroup CINNABAR_VOLCANO_B1F,                       18, 18 ; 13
	mapgroup CINNABAR_VOLCANO_B2F,                       14, 14 ; 14
	mapgroup POKEMON_MANSION_1F,                         14, 15 ; 15
	mapgroup POKEMON_MANSION_B1F,                        16, 17 ; 16

	newgroup                                                    ;  7

	mapgroup CERULEAN_GYM_BADGE_SPEECH_HOUSE,             4,  4 ;  1
	mapgroup CERULEAN_POLICE_STATION,                     4,  4 ;  2
	mapgroup CERULEAN_TRADE_SPEECH_HOUSE,                 4,  4 ;  3
	mapgroup CERULEAN_POKECENTER_1F,                      4,  6 ;  4
	mapgroup CERULEAN_GYM,                                8,  5 ;  6
	mapgroup CERULEAN_MART,                               4,  6 ;  7
	mapgroup ROUTE_10_POKECENTER_1F,                      4,  6 ;  8
	mapgroup POWER_PLANT,                                 9, 10 ; 10
	mapgroup BILLS_HOUSE,                                 4,  4 ; 11
	mapgroup ROUTE_4,                                     9, 20 ; 12
	mapgroup ROUTE_24,                                    9, 10 ; 13
	mapgroup ROUTE_25,                                    9, 30 ; 14
	mapgroup CERULEAN_CITY,                              18, 20 ; 15
	mapgroup CERULEAN_CAVE_1F,                           11, 17 ; 16
	mapgroup CERULEAN_CAVE_2F,                           11, 17 ; 17
	mapgroup CERULEAN_CAVE_B1F,                          11, 17 ; 18

	newgroup                                                    ;  8

	mapgroup AZALEA_POKECENTER_1F,                        4,  6 ;  1
	mapgroup CHARCOAL_KILN,                               4,  4 ;  2
	mapgroup AZALEA_MART,                                 4,  6 ;  3
	mapgroup KURTS_HOUSE,                                 4,  8 ;  4
	mapgroup AZALEA_GYM,                                  8,  5 ;  5
	mapgroup ROUTE_33,                                    9, 10 ;  6
	mapgroup AZALEA_TOWN,                                 9, 20 ;  7

	newgroup                                                    ;  9

	mapgroup LAKE_OF_RAGE_HIDDEN_POWER_HOUSE,             4,  4 ;  1
	mapgroup LAKE_OF_RAGE_MAGIKARP_HOUSE,                 4,  4 ;  2
	mapgroup ROUTE_43_MAHOGANY_GATE,                      4,  5 ;  3
	mapgroup ROUTE_43_GATE,                               4,  5 ;  4
	mapgroup ROUTE_43,                                   27, 10 ;  5
	mapgroup LAKE_OF_RAGE,                               18, 20 ;  6
	mapgroup SINJOH_RUINS,                               13,  9 ;  7
	mapgroup SINJOH_RUINS_HOUSE,                           4, 4 ;  8
	mapgroup MYSTRI_STAGE,                                9,  7 ;  9
	mapgroup EMBEDDED_TOWER,                            12,  11 ; 10

	newgroup                                                    ; 10

	mapgroup ROUTE_32,                                   45, 10 ;  1
	mapgroup VIOLET_CITY,                                20, 20 ;  2
	mapgroup VIOLET_MART,                                 4,  6 ;  3
	mapgroup VIOLET_GYM,                                  8,  5 ;  4
	mapgroup EARLS_POKEMON_ACADEMY,                       8,  4 ;  5
	mapgroup VIOLET_NICKNAME_SPEECH_HOUSE,                4,  4 ;  6
	mapgroup VIOLET_POKECENTER_1F,                        4,  6 ;  7
	mapgroup VIOLET_ONIX_TRADE_HOUSE,                     4,  4 ;  8
	mapgroup ROUTE_32_RUINS_OF_ALPH_GATE,                 4,  5 ;  9
	mapgroup ROUTE_32_POKECENTER_1F,                      4,  6 ; 10

	newgroup                                                    ; 11

	mapgroup ROUTE_34,                                   27, 10 ;  1
	mapgroup GOLDENROD_CITY,                             18, 22 ;  2
	mapgroup GOLDENROD_GYM,                               9, 10 ;  3
	mapgroup GOLDENROD_BIKE_SHOP,                         4,  4 ;  4
	mapgroup GOLDENROD_HAPPINESS_RATER,                   4,  4 ;  5
	mapgroup GOLDENROD_BILLS_HOUSE,                       4,  4 ;  6
	mapgroup GOLDENROD_MAGNET_TRAIN_STATION,              9, 10 ;  7
	mapgroup GOLDENROD_FLOWER_SHOP,                       4,  4 ;  8
	mapgroup GOLDENROD_PP_SPEECH_HOUSE,                   4,  4 ;  9
	mapgroup GOLDENROD_NAME_RATER,                        4,  4 ; 10
	mapgroup GOLDENROD_DEPT_STORE_1F,                     4,  8 ; 11
	mapgroup GOLDENROD_DEPT_STORE_2F,                     4,  8 ; 12
	mapgroup GOLDENROD_DEPT_STORE_3F,                     4,  8 ; 13
	mapgroup GOLDENROD_DEPT_STORE_4F,                     4,  8 ; 14
	mapgroup GOLDENROD_DEPT_STORE_5F,                     4,  8 ; 15
	mapgroup GOLDENROD_DEPT_STORE_6F,                     4,  8 ; 16
	mapgroup GOLDENROD_DEPT_STORE_ELEVATOR,               2,  2 ; 17
	mapgroup GOLDENROD_DEPT_STORE_ROOF,                   4,  8 ; 18
	mapgroup GOLDENROD_GAME_CORNER,                       7, 10 ; 19
	mapgroup GOLDENROD_POKECOM_CENTER_1F,                16, 16 ; 20
	mapgroup ILEX_FOREST_AZALEA_GATE,                     4,  5 ; 21
	mapgroup ROUTE_34_ILEX_FOREST_GATE,                   4,  5 ; 22
	mapgroup DAYCARE,                                     4,  5 ; 23

	newgroup                                                    ; 12

	mapgroup ROUTE_6,                                    12, 10 ;  1
	mapgroup ROUTE_11,                                    9, 20 ;  2
	mapgroup VERMILION_CITY,                             18, 20 ;  3
	mapgroup VERMILION_HOUSE_FISHING_SPEECH_HOUSE,        4,  4 ;  4
	mapgroup VERMILION_POKECENTER_1F,                     4,  6 ;  5
	mapgroup POKEMON_FAN_CLUB,                            4,  5 ;  6
	mapgroup VERMILION_MAGNET_TRAIN_SPEECH_HOUSE,         4,  4 ;  7
	mapgroup VERMILION_MART,                              4,  6 ;  8
	mapgroup VERMILION_HOUSE_DIGLETTS_CAVE_SPEECH_HOUSE,  4,  4 ;  9
	mapgroup VERMILION_GYM,                               9,  5 ; 10
	mapgroup ROUTE_6_SAFFRON_GATE,                        4,  5 ; 11
	mapgroup ROUTE_6_UNDERGROUND_ENTRANCE,                4,  4 ; 12
	mapgroup ROUTE_11_GATE,                               4,  5 ; 13

	newgroup                                                    ; 13

	mapgroup ROUTE_1,                                    18, 10 ;  1
	mapgroup PALLET_TOWN,                                 9, 10 ;  2
	mapgroup REDS_HOUSE_1F,                               4,  4 ;  3
	mapgroup REDS_HOUSE_2F,                               4,  4 ;  4
	mapgroup BLUES_HOUSE,                                 4,  4 ;  5
	mapgroup OAKS_LAB,                                    6,  5 ;  6

	newgroup                                                    ; 14

	mapgroup ROUTE_3,                                    11, 32 ;  1
	mapgroup PEWTER_CITY,                                18, 20 ;  2
	mapgroup PEWTER_NIDORAN_SPEECH_HOUSE,                 4,  4 ;  3
	mapgroup PEWTER_GYM,                                  7,  5 ;  4
	mapgroup PEWTER_MART,                                 4,  6 ;  5
	mapgroup PEWTER_POKECENTER_1F,                        4,  6 ;  6
	mapgroup PEWTER_SNOOZE_SPEECH_HOUSE,                  4,  4 ;  8
	mapgroup PEWTER_MUSEUM_OF_SCIENCE_1F,                 4, 10 ;  9
	mapgroup PEWTER_MUSEUM_OF_SCIENCE_2F,                 4,  7 ; 10

	newgroup                                                    ; 15

	mapgroup OLIVINE_PORT,                               18, 10 ;  1
	mapgroup VERMILION_PORT,                             18, 10 ;  2
	mapgroup FAST_SHIP_1F,                                9, 16 ;  3
	mapgroup FAST_SHIP_CABINS_NNW_NNE_NE,                16,  4 ;  4
	mapgroup FAST_SHIP_CABINS_SW_SSW_NW,                 16,  4 ;  5
	mapgroup FAST_SHIP_CABINS_SE_SSE_CAPTAINS_CABIN,     17,  5 ;  6
	mapgroup FAST_SHIP_B1F,                               8, 16 ;  7
	mapgroup OLIVINE_PORT_PASSAGE,                        9, 10 ;  8
	mapgroup VERMILION_PORT_PASSAGE,                      9, 10 ;  9
	mapgroup MOUNT_MOON_SQUARE,                           9, 15 ; 10
	mapgroup MOUNT_MOON_GIFT_SHOP,                        4,  4 ; 11
	mapgroup TIN_TOWER_ROOF,                              9, 10 ; 12

	newgroup                                                    ; 16

	mapgroup ROUTE_23,                                    9, 10 ;  1
	mapgroup INDIGO_PLATEAU_POKECENTER_1F,                7,  9 ;  2
	mapgroup WILLS_ROOM,                                  9,  5 ;  3
	mapgroup KOGAS_ROOM,                                  9,  5 ;  4
	mapgroup BRUNOS_ROOM,                                 9,  5 ;  5
	mapgroup KARENS_ROOM,                                 9,  5 ;  6
	mapgroup LANCES_ROOM,                                12,  5 ;  7
	mapgroup HALL_OF_FAME,                                7,  5 ;  8
	mapgroup BELLCHIME_TRAIL,                             7, 12 ;  9

	newgroup                                                    ; 17

	mapgroup ROUTE_12,                                   30, 10 ;  1
	mapgroup ROUTE_13,                                    9, 30 ;  2
	mapgroup ROUTE_14,                                   18, 10 ;  3
	mapgroup ROUTE_15,                                    9, 20 ;  4
	mapgroup ROUTE_18,                                    9, 10 ;  5
	mapgroup FUCHSIA_CITY,                               18, 20 ;  6
	mapgroup FUCHSIA_MART,                                4,  6 ;  7
	mapgroup SAFARI_ZONE_MAIN_OFFICE,                     4,  4 ;  8
	mapgroup FUCHSIA_GYM,                                 9,  5 ;  9
	mapgroup FUCHSIA_BILL_SPEECH_HOUSE,                   4,  4 ; 10
	mapgroup FUCHSIA_POKECENTER_1F,                       4,  6 ; 11
	mapgroup SAFARI_ZONE_WARDENS_HOME,                    4,  5 ; 12
	mapgroup SAFARI_ZONE_FUCHSIA_GATE,                    4,  5 ; 13
	mapgroup SAFARI_ZONE_HUB,                            15, 15 ; 14
	mapgroup SAFARI_ZONE_EAST,                           13, 15 ; 15
	mapgroup SAFARI_ZONE_NORTH,                          16, 15 ; 16
	mapgroup SAFARI_ZONE_HUB_REST_HOUSE,                  4,  4 ; 17
	mapgroup SAFARI_ZONE_EAST_REST_HOUSE,                 4,  4 ; 18
	mapgroup SAFARI_ZONE_NORTH_REST_HOUSE,                4,  4 ; 19
	mapgroup ROUTE_12_GATE,                               4,  5 ; 20
	mapgroup ROUTE_15_FUCHSIA_GATE,                       4,  5 ; 21
	mapgroup ROUTE_19___FUCHSIA_GATE,                     4,  5 ; 22
	mapgroup ROUTE_12_SUPER_ROD_HOUSE,                    4,  4 ; 23

	newgroup                                                    ; 18

	mapgroup ROUTE_8,                                     9, 20 ;  1
	mapgroup ROUTE_10_SOUTH,                              9, 10 ;  2
	mapgroup LAVENDER_TOWN,                               9, 10 ;  3
	mapgroup LAVENDER_POKECENTER_1F,                      4,  6 ;  4
	mapgroup MR_FUJIS_HOUSE,                              4,  5 ;  5
	mapgroup LAVENDER_TOWN_SPEECH_HOUSE,                  4,  4 ;  6
	mapgroup LAVENDER_NAME_RATER,                         4,  4 ;  7
	mapgroup LAVENDER_MART,                               4,  6 ;  8
	mapgroup SOUL_HOUSE,                                  4,  5 ;  9
	mapgroup LAV_RADIO_TOWER_1F,                          4, 10 ; 10
	mapgroup ROUTE_8_SAFFRON_GATE,                        4,  5 ; 11

	newgroup                                                    ; 19

	mapgroup ROUTE_28,                                    9, 20 ;  1
	mapgroup SILVER_CAVE_OUTSIDE,                        18, 20 ;  2
	mapgroup SILVER_CAVE_POKECENTER_1F,                   4,  6 ;  3
	mapgroup ROUTE_28_FAMOUS_SPEECH_HOUSE,                4,  4 ;  4
	mapgroup NAVEL_ROCK_OUTSIDE,                         16, 13 ;  5
	mapgroup NAVEL_ROCK_INSIDE,                          45, 20 ;  6
	mapgroup NAVEL_ROCK_ROOF,                            11,  8 ;  7
	mapgroup FARAWAY_ISLAND,                             23, 17 ;  8
	mapgroup FARAWAY_JUNGLE,                             12, 14 ;  9
	mapgroup SEAGALLOP_FERRY_VERMILION_GATE,              6,  7 ;  10
	mapgroup SEAGALLOP_FERRY_NAVEL_GATE,                  6,  7 ;  11

	newgroup                                                    ; 20

	mapgroup POKECENTER_2F,                               4,  8 ;  1
	mapgroup TRADE_CENTER,                                4,  5 ;  2
	mapgroup COLOSSEUM,                                   4,  5 ;  3
	mapgroup TIME_CAPSULE,                                4,  5 ;  4
	mapgroup YELLOW_FOREST_GATE,                          4,  5 ;  5
	mapgroup YELLOW_FOREST,                              25, 29 ;  6
	mapgroup ECRUTEAK_SHRINE_OUTSIDE,                     8,  6 ;  7
	mapgroup ECRUTEAK_SHRINE_INSIDE,                      6,  6 ;  8

	newgroup                                                    ; 21

	mapgroup ROUTE_7,                                     9, 10 ;  1
	mapgroup ROUTE_16,                                    9, 10 ;  2
	mapgroup ROUTE_17,                                   49, 10 ;  3
	mapgroup CELADON_CITY,                               18, 20 ;  4
	mapgroup CELADON_DEPT_STORE_1F,                       4,  8 ;  5
	mapgroup CELADON_DEPT_STORE_2F,                       4,  8 ;  6
	mapgroup CELADON_DEPT_STORE_3F,                       4,  8 ;  7
	mapgroup CELADON_DEPT_STORE_4F,                       4,  8 ;  8
	mapgroup CELADON_DEPT_STORE_5F,                       4,  8 ;  9
	mapgroup CELADON_DEPT_STORE_6F,                       4,  8 ; 10
	mapgroup CELADON_DEPT_STORE_ELEVATOR,                 2,  2 ; 11
	mapgroup CELADON_MANSION_1F,                          5,  4 ; 12
	mapgroup CELADON_MANSION_2F,                          5,  4 ; 13
	mapgroup CELADON_MANSION_3F,                          5,  4 ; 14
	mapgroup CELADON_MANSION_ROOF,                        5,  4 ; 15
	mapgroup CELADON_MANSION_ROOF_HOUSE,                  4,  4 ; 16
	mapgroup CELADON_POKECENTER_1F,                       4,  6 ; 17
	mapgroup CELADON_GAME_CORNER,                         7, 10 ; 19
	mapgroup CELADON_GAME_CORNER_PRIZE_ROOM,              3,  3 ; 20
	mapgroup CELADON_GYM,                                 9,  5 ; 21
	mapgroup CELADON_CAFE,                                4,  6 ; 22
	mapgroup CELADON_CHIEF_HOUSE,                         4,  4 ; 23
	mapgroup CELADON_HOTEL,                               4,  7 ; 24
	mapgroup ROUTE_16_FUCHSIA_SPEECH_HOUSE,               4,  4 ; 25
	mapgroup ROUTE_16_GATE,                               4,  5 ; 26
	mapgroup ROUTE_7_SAFFRON_GATE,                        4,  5 ; 27
	mapgroup ROUTE_17_18_GATE,                            4,  5 ; 28
	mapgroup CELADON_HOME_DECOR_STORE_1F,                 4,  5 ; 29
	mapgroup CELADON_HOME_DECOR_STORE_2F,                 4,  5 ; 30
	mapgroup CELADON_HOME_DECOR_STORE_3F,                 4,  5 ; 31
	mapgroup CELADON_HOME_DECOR_STORE_4F,                 4,  5 ; 32

	newgroup                                                    ; 22

	mapgroup ROUTE_40,                                   19, 10 ;  1
	mapgroup ROUTE_41,                                   27, 32 ;  2
	mapgroup CIANWOOD_CITY,                              27, 15 ;  3
	mapgroup MANIAS_HOUSE,                                4,  4 ;  4
	mapgroup CIANWOOD_GYM,                                9,  5 ;  5
	mapgroup CIANWOOD_POKECENTER_1F,                      4,  6 ;  6
	mapgroup CIANWOOD_PHARMACY,                           4,  4 ;  7
	mapgroup CIANWOOD_CITY_PHOTO_STUDIO,                  4,  4 ;  8
	mapgroup CIANWOOD_LUGIA_SPEECH_HOUSE,                 4,  4 ;  9
	mapgroup STATS_JUDGES_HOUSE,                          4,  4 ; 10
	mapgroup BATTLE_TOWER_1F,                             5,  8 ; 11
	mapgroup BATTLE_TOWER_BATTLE_ROOM,                    4,  4 ; 12
	mapgroup BATTLE_TOWER_ELEVATOR,                       2,  2 ; 13
	mapgroup BATTLE_TOWER_HALLWAY,                        2, 11 ; 14
	mapgroup ROUTE_40_BATTLE_TOWER_GATE,                  4,  5 ; 15
	mapgroup BATTLE_TOWER_OUTSIDE,                       14, 10 ; 16

	newgroup                                                    ; 23

	mapgroup ROUTE_2,                                    27, 10 ;  1
	mapgroup ROUTE_22,                                    9, 20 ;  2
	mapgroup VIRIDIAN_CITY,                              18, 20 ;  3
	mapgroup VIRIDIAN_GYM,                               23,  7 ;  4
	mapgroup VIRIDIAN_NICKNAME_SPEECH_HOUSE,              4,  4 ;  5
	mapgroup TRAINER_HOUSE_1F,                            7,  5 ;  6
	mapgroup TRAINER_HOUSE_B1F,                           8,  5 ;  7
	mapgroup VIRIDIAN_MART,                               4,  6 ;  8
	mapgroup VIRIDIAN_POKECENTER_1F,                      4,  6 ;  9
	mapgroup ROUTE_2_NUGGET_SPEECH_HOUSE,                 4,  4 ; 11
	mapgroup ROUTE_2_GATE,                                4,  5 ; 12
	mapgroup VICTORY_ROAD_GATE,                           9, 10 ; 13
	mapgroup VIRIDIAN_FOREST,                            25, 17 ; 14
	mapgroup VIRIDIAN_FOREST_VIRIDIAN_GATE,                4, 5 ; 15
	mapgroup VIRIDIAN_FOREST_PEWTER_GATE,                  4, 5 ; 16

	newgroup                                                    ; 24

	mapgroup ROUTE_26,                                   54, 10 ;  1
	mapgroup ROUTE_27,                                    9, 40 ;  2
	mapgroup ROUTE_29,                                    9, 30 ;  3
	mapgroup NEW_BARK_TOWN,                               9, 10 ;  4
	mapgroup ELMS_LAB,                                    6,  5 ;  5
	mapgroup KRISS_HOUSE_1F,                              4,  5 ;  6
	mapgroup KRISS_HOUSE_2F,                              3,  4 ;  7
	mapgroup KRISS_NEIGHBORS_HOUSE,                       4,  4 ;  8
	mapgroup LYRAS_HOUSE_1F,                              4,  5 ;  9
	mapgroup LYRAS_HOUSE_2F,                              3,  4 ; 10
	mapgroup ELMS_HOUSE,                                  4,  4 ; 11
	mapgroup ROUTE_26_HEAL_SPEECH_HOUSE,                  4,  4 ; 12
	mapgroup ROUTE_26_DAY_OF_WEEK_SIBLINGS_HOUSE,         4,  4 ; 13
	mapgroup ROUTE_27_SANDSTORM_HOUSE,                    4,  4 ; 14
	mapgroup ROUTE_29_46_GATE,                            4,  5 ; 15

	newgroup                                                    ; 25

	mapgroup SAFFRON_CITY,                               18, 20 ;  1
	mapgroup FIGHTING_DOJO,                               6,  5 ;  2
	mapgroup SAFFRON_GYM,                                 9, 10 ;  3
	mapgroup SAFFRON_MART,                                4,  6 ;  4
	mapgroup SAFFRON_POKECENTER_1F,                       4,  6 ;  5
	mapgroup MR_PSYCHICS_HOUSE,                           4,  4 ;  6
	mapgroup SAFFRON_TRAIN_STATION,                       9, 10 ;  7
	mapgroup SILPH_CO_1F,                                 4,  8 ;  8
	mapgroup SILPH_CO_2F,                                 4,  8 ;  9
	mapgroup SILPH_CO_3F,                                 4,  8 ; 10
	mapgroup COPYCATS_HOUSE_1F,                           4,  4 ; 11
	mapgroup COPYCATS_HOUSE_2F,                           3,  5 ; 12
	mapgroup ROUTE_5,                                     9, 10 ;  1
	mapgroup ROUTE_5_UNDERGROUND_ENTRANCE,                4,  4 ;  5
	mapgroup ROUTE_5_SAFFRON_CITY_GATE,                   4,  5 ;  6
	mapgroup ROUTE_5_CLEANSE_TAG_SPEECH_HOUSE,            4,  4 ;  7

	newgroup                                                    ; 26

	mapgroup ROUTE_30,                                   27, 10 ;  1
	mapgroup ROUTE_31,                                    9, 20 ;  2
	mapgroup CHERRYGROVE_BAY,                            19, 15 ;  3
	mapgroup CHERRYGROVE_CITY,                           10, 20 ;  4
	mapgroup CHERRYGROVE_MART,                            4,  6 ;  5
	mapgroup CHERRYGROVE_POKECENTER_1F,                   4,  6 ;  6
	mapgroup CHERRYGROVE_GYM_SPEECH_HOUSE,                4,  4 ;  7
	mapgroup GUIDE_GENTS_HOUSE,                           4,  4 ;  8
	mapgroup CHERRYGROVE_EVOLUTION_SPEECH_HOUSE,          4,  4 ;  9
	mapgroup ROUTE_30_BERRY_SPEECH_HOUSE,                 4,  4 ; 10
	mapgroup MR_POKEMONS_HOUSE,                           4,  4 ; 11
	mapgroup ROUTE_31_VIOLET_GATE,                        4,  5 ; 12

	newgroup                                                    ; 27

	mapgroup CLIFF_EDGE_GATE,                            11, 10 ;  1
	mapgroup CLIFF_CAVE,                                 20,  7 ;  2
	mapgroup ROUTE_47,                                   19, 39 ;  3
	mapgroup ROUTE_48,                                   11, 18 ;  4
	mapgroup QUIET_CAVE_1F,                              18, 18 ;  5
	mapgroup QUIET_CAVE_B1F,                             18, 18 ;  6
	mapgroup QUIET_CAVE_B2F,                             18, 18 ;  7
	mapgroup QUIET_CAVE_B3F,                             18, 18 ;  8

	newgroup                                                    ; 28

	mapgroup ROUTE_9,                                     9, 30 ;  1
	mapgroup ROUTE_10_NORTH,                              9, 10 ;  2

	newgroup                                                    ; 29

	mapgroup GOLDENROD_HARBOR,                           18, 24 ;  1
	mapgroup GOLDENROD_HARBOR_GATE,                       4,  5 ;  2



; elevator floors

	const_def
	const _B4F
	const _B3F
	const _B2F
	const _B1F
	const _1F
	const _2F
	const _3F
	const _4F
	const _5F
	const _6F
	const _7F
	const _8F
	const _9F
	const _10F
	const _11F
	const _ROOF

; connection directions
	const_def
	const EAST_F
	const WEST_F
	const SOUTH_F
	const NORTH_F

	const_def
	shift_const EAST
	shift_const WEST
	shift_const SOUTH
	shift_const NORTH

; permissions
const_value SET 1
	const TOWN
	const ROUTE
	const INDOOR
	const CAVE
	const PERM_5
	const GATE
	const DUNGEON

; object struct
	const_def
	const OBJECT_SPRITE
	const OBJECT_MAP_OBJECT_INDEX
	const OBJECT_SPRITE_TILE
	const OBJECT_MOVEMENTTYPE
	const OBJECT_FLAGS1
	const OBJECT_FLAGS2
	const OBJECT_PALETTE
	const OBJECT_DIRECTION_WALKING
	const OBJECT_FACING
	const OBJECT_STEP_TYPE
	const OBJECT_STEP_DURATION
	const OBJECT_ACTION
	const OBJECT_STEP_FRAME
	const OBJECT_FACING_STEP
	const OBJECT_NEXT_TILE
	const OBJECT_STANDING_TILE
	const OBJECT_NEXT_MAP_X
	const OBJECT_NEXT_MAP_Y
	const OBJECT_MAP_X
	const OBJECT_MAP_Y
	const OBJECT_INIT_X
	const OBJECT_INIT_Y
	const OBJECT_RADIUS
	const OBJECT_SPRITE_X
	const OBJECT_SPRITE_Y
	const OBJECT_SPRITE_X_OFFSET
	const OBJECT_SPRITE_Y_OFFSET
	const OBJECT_MOVEMENT_BYTE_INDEX
	const OBJECT_28
	const OBJECT_29
	const OBJECT_30
	const OBJECT_31
	const OBJECT_RANGE
; 33-39 are not used

; map object struct
	const_def
	const MAPOBJECT_OBJECT_STRUCT_ID ; 0
	const MAPOBJECT_SPRITE ; 1
	const MAPOBJECT_Y_COORD ; 2
	const MAPOBJECT_X_COORD ; 3
	const MAPOBJECT_MOVEMENT ; 4
	const MAPOBJECT_RADIUS ; 5
	const MAPOBJECT_HOUR ; 6
	const MAPOBJECT_TIMEOFDAY ; 7
	const MAPOBJECT_COLOR ; 8
	const MAPOBJECT_RANGE ; 9
	const MAPOBJECT_SCRIPT_POINTER ; a
	const MAPOBJECT_POINTER_HI ; b
	const MAPOBJECT_EVENT_FLAG ; c
	const MAPOBJECT_FLAG_HI ; d
	const MAPOBJECT_E ; unused
	const MAPOBJECT_F ; unused
OBJECT_LENGTH EQU const_value

MAPOBJECT_SCREEN_HEIGHT EQU 11
MAPOBJECT_SCREEN_WIDTH EQU 12

OW_DOWN  EQU DOWN  << 2
OW_UP    EQU UP    << 2
OW_LEFT  EQU LEFT  << 2
OW_RIGHT EQU RIGHT << 2

	const_def
	const EMOTE_SHOCK ; 0
	const EMOTE_QUESTION ; 1
	const EMOTE_HAPPY ; 2
	const EMOTE_SAD ; 3
	const EMOTE_HEART ; 4
	const EMOTE_BOLT ; 5
	const EMOTE_SLEEP ; 6
	const EMOTE_FISH ; 7
	const EMOTE_SHADOW ; 8
	const EMOTE_ROD ; 9
	const EMOTE_BOULDER_DUST ; 10
	const EMOTE_0B ; 11
EMOTE_MEM EQU -1

	const_def
	const SIGNPOST_READ
	const SIGNPOST_UP
	const SIGNPOST_DOWN
	const SIGNPOST_RIGHT
	const SIGNPOST_LEFT
	const SIGNPOST_IFSET
	const SIGNPOST_IFNOTSET
	const SIGNPOST_ITEM
	const SIGNPOST_COPY

; I'm relocating spawn constants here, so that they can be used anywhere in the disassembly.


const_value = -1
	const SPAWN_N_A

	const SPAWN_HOME
	const SPAWN_DEBUG

	const SPAWN_PALLET
	const SPAWN_VIRIDIAN
	const SPAWN_PEWTER
	const SPAWN_CERULEAN
	const SPAWN_ROCK_TUNNEL
	const SPAWN_VERMILION
	const SPAWN_LAVENDER
	const SPAWN_SAFFRON
	const SPAWN_CELADON
	const SPAWN_FUCHSIA
	const SPAWN_CINNABAR
	const SPAWN_INDIGO

	const SPAWN_NEW_BARK
	const SPAWN_CHERRYGROVE
	const SPAWN_VIOLET
	const SPAWN_UNION_CAVE
	const SPAWN_AZALEA
	const SPAWN_CIANWOOD
	const SPAWN_GOLDENROD
	const SPAWN_OLIVINE
	const SPAWN_ECRUTEAK
	const SPAWN_MAHOGANY
	const SPAWN_LAKE
	const SPAWN_BLACKTHORN
	const SPAWN_MT_SILVER
	const SPAWN_FAST_SHIP
NUM_SPAWNS EQU const_value

	const_def
	const PALETTE_AUTO
	const PALETTE_DAY
	const PALETTE_NITE
	const PALETTE_MORN
	const PALETTE_DARK

INVISIBLE    EQU 0
FIXED_FACING EQU 2
SLIDING      EQU 3
EMOTE_OBJECT EQU 7

	const_def
	const PERSONTYPE_SCRIPT
	const PERSONTYPE_ITEMBALL
	const PERSONTYPE_TRAINER
	const PERSONTYPE_3
	const PERSONTYPE_4
	const PERSONTYPE_5
	const PERSONTYPE_6

; fruit trees
const_value SET 1
	const FRUITTREE_ROUTE_29      ; 01
	const FRUITTREE_ROUTE_30_1    ; 02
	const FRUITTREE_ROUTE_30_2    ; 03
	const FRUITTREE_ROUTE_31      ; 04
	const FRUITTREE_VIOLET_CITY   ; 05
	const FRUITTREE_ROUTE_33      ; 06
	const FRUITTREE_AZALEA_TOWN   ; 07
	const FRUITTREE_ROUTE_35      ; 08
	const FRUITTREE_ROUTE_36      ; 09
	const FRUITTREE_ROUTE_37_1    ; 0a
	const FRUITTREE_ROUTE_37_2    ; 0b
	const FRUITTREE_ROUTE_37_3    ; 0c
	const FRUITTREE_ROUTE_38      ; 0d
	const FRUITTREE_ROUTE_39      ; 0e
	const FRUITTREE_ROUTE_42_1    ; 0f
	const FRUITTREE_ROUTE_42_2    ; 10
	const FRUITTREE_ROUTE_42_3    ; 11
	const FRUITTREE_ROUTE_43      ; 12
	const FRUITTREE_ROUTE_44      ; 13
	const FRUITTREE_ROUTE_45_1    ; 14
	const FRUITTREE_ROUTE_45_2    ; 15
	const FRUITTREE_ROUTE_46_1    ; 16
	const FRUITTREE_ROUTE_46_2    ; 17
	const FRUITTREE_ROUTE_27      ; 18
	const FRUITTREE_ROUTE_26      ; 19
	const FRUITTREE_ROUTE_8       ; 1a
	const FRUITTREE_ROUTE_11      ; 1b
	const FRUITTREE_FUCHSIA_CITY  ; 1c
	const FRUITTREE_PEWTER_CITY_1 ; 1d
	const FRUITTREE_PEWTER_CITY_2 ; 1e
	const FRUITTREE_ROUTE_2       ; 1f
	const FRUITTREE_ROUTE_1       ; 20
NUM_FRUIT_TREES EQU const_value +- 1

CMDQUEUE_TYPE  EQU 0
CMDQUEUE_ADDR  EQU 1
CMDQUEUE_03    EQU 3
CMDQUEUE_04    EQU 4
CMDQUEUE_05    EQU 5
CMDQUEUE_ENTRY_SIZE EQU 6
CMDQUEUE_CAPACITY EQU 4

CMDQUEUE_STONETABLE EQU 2
