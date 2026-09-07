// Maximum sizes here
// Micro 7x7
// Small 14x14
// Medium 20x20
// Large 30x30
// Do not place template spawners in a location that will cause these sizes to go beyond map edge
// Generic templates are found on every part of the island except old doma and the necropolis itself
#define MOUNTAIN_SMALL_TEMPLATES list("small_mountain_tile_1z_lostcamp", "small_mountain_tile_1z_lostcaravan", "small_mountain_tile_1z_ritualsite", "small_mountain_tile_1z_ritualsite_2", "small_mountain_tile_1z_shrine")
#define MOUNTAIN_MICRO_TEMPLATES_3Z list("micro_mountain_tile_3z_tower")
#define MOUNTAIN_MICRO_TEMPLATES list("micro_mountain_tile_1z_acidpool", "micro_mountain_tile_1z_acidpool_2", "micro_mountain_tile_1z_lavapool", "micro_mountain_tile_1z_lavapool_2", "micro_mountain_tile_1z_bloodpool", "micro_mountain_tile_1z_bloodpool_2", "micro_mountain_tile_1z_battlefield", "micro_mountain_tile_1z_effigy", "micro_mountain_tile_1z_graveyard", "micro_mountain_tile_1z_shrine_angros")

/obj/effect/landmark/map_load_mark/mountain_tile//One level landmarks, ruins, derelicts, outposts etc
	name = "Small Mountain 1Z Random Tile"
	templates = MOUNTAIN_SMALL_TEMPLATES

/obj/effect/landmark/map_load_mark/mountain_tile/micro
	name = "Micro Mountain 1Z Random Tile"
	templates = MOUNTAIN_MICRO_TEMPLATES

/obj/effect/landmark/map_load_mark/mountain_tile/micro/three_level//Three level landmarks, ruins, derelicts, outposts etc
	name = "Micro Mountain 3Z Random Tile"
	templates = MOUNTAIN_MICRO_TEMPLATES_3Z

/datum/map_template/dungeon/small_mountain_tile_1z_lostcamp
	name = "Small Mountain Tile (Lost Camp)"
	id = "small_mountain_tile_1z_lostcamp"
	mappath = "_maps/domotan_necropolis/mountain/small_mountain_tile_1z_lostcamp.dmm"

/datum/map_template/dungeon/small_mountain_tile_1z_lostcaravan
	name = "Small Mountain Tile (Lost Caravan)"
	id = "small_mountain_tile_1z_lostcaravan"
	mappath = "_maps/domotan_necropolis/mountain/small_mountain_tile_1z_lostcaravan.dmm"

/datum/map_template/dungeon/small_mountain_tile_1z_ritualsite
	name = "Small Mountain Tile (Ritual Site)"
	id = "small_mountain_tile_1z_ritualsite"
	mappath = "_maps/domotan_necropolis/mountain/small_mountain_tile_1z_ritualsite.dmm"

/datum/map_template/dungeon/small_mountain_tile_1z_ritualsite_2
	name = "Small Mountain Tile (Ritual Site 2)"
	id = "small_mountain_tile_1z_ritualsite_2"
	mappath = "_maps/domotan_necropolis/mountain/small_mountain_tile_1z_ritualsite_2.dmm"

/datum/map_template/dungeon/small_mountain_tile_1z_shrine
	name = "Small Mountain Tile (Shrine)"
	id = "small_mountain_tile_1z_shrine"
	mappath = "_maps/domotan_necropolis/mountain/small_mountain_tile_1z_shrine.dmm"

/datum/map_template/dungeon/micro_mountain_tile_1z_acidpool
	name = "Small Mountain Tile (Acid Pool 1)"
	id = "micro_mountain_tile_1z_acidpool"
	mappath = "_maps/domotan_necropolis/mountain/micro_mountain_tile_1z_acidpool.dmm"

/datum/map_template/dungeon/micro_mountain_tile_1z_acidpool_2
	name = "Small Mountain Tile (Acid Pool 2)"
	id = "micro_mountain_tile_1z_acidpool_2"
	mappath = "_maps/domotan_necropolis/mountain/micro_mountain_tile_1z_acidpool_2.dmm"

/datum/map_template/dungeon/micro_mountain_tile_1z_bloodpool
	name = "Small Mountain Tile (Blood Pool 1)"
	id = "micro_mountain_tile_1z_bloodpool"
	mappath = "_maps/domotan_necropolis/mountain/micro_mountain_tile_1z_bloodpool.dmm"

/datum/map_template/dungeon/micro_mountain_tile_1z_bloodpool_2
	name = "Small Mountain Tile (Blood Pool 2)"
	id = "micro_mountain_tile_1z_bloodpool_2"
	mappath = "_maps/domotan_necropolis/mountain/micro_mountain_tile_1z_bloodpool_2.dmm"

/datum/map_template/dungeon/micro_mountain_tile_1z_lavapool
	name = "Small Mountain Tile (Lava Pool 1)"
	id = "micro_mountain_tile_1z_lavapool"
	mappath = "_maps/domotan_necropolis/mountain/micro_mountain_tile_1z_lavapool.dmm"

/datum/map_template/dungeon/micro_mountain_tile_1z_lavapool_2
	name = "Small Mountain Tile (Lava Pool 2)"
	id = "micro_mountain_tile_1z_lavapool_2"
	mappath = "_maps/domotan_necropolis/mountain/micro_mountain_tile_1z_lavapool_2.dmm"

/datum/map_template/dungeon/micro_mountain_tile_1z_battlefield
	name = "Small Mountain Tile (Battlefield)"
	id = "micro_mountain_tile_1z_battlefield"
	mappath = "_maps/domotan_necropolis/mountain/micro_mountain_tile_1z_battlefield.dmm"

/datum/map_template/dungeon/micro_mountain_tile_1z_effigy
	name = "Small Mountain Tile (Effigy)"
	id = "micro_mountain_tile_1z_effigy"
	mappath = "_maps/domotan_necropolis/mountain/micro_mountain_tile_1z_effigy.dmm"

/datum/map_template/dungeon/micro_mountain_tile_1z_graveyard
	name = "Small Mountain Tile (Graveyard)"
	id = "micro_mountain_tile_1z_graveyard"
	mappath = "_maps/domotan_necropolis/mountain/micro_mountain_tile_1z_graveyard.dmm"

/datum/map_template/dungeon/micro_mountain_tile_1z_shrine_angros
	name = "Small Mountain Tile (Angrosian Shrine)"
	id = "micro_mountain_tile_1z_shrine_angros"
	mappath = "_maps/domotan_necropolis/mountain/micro_mountain_tile_1z_shrine_angros.dmm"

/datum/map_template/dungeon/micro_mountain_tile_3z_tower
	name = "Small Mountain Tile 3Z (Tower)"
	id = "micro_mountain_tile_3z_tower"
	mappath = "_maps/domotan_necropolis/mountain/three_level/micro_mountain_tile_3z_tower.dmm"
