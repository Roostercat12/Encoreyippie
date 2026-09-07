// Maximum sizes here
// Micro 7x7
// Small 14x14
// Medium 20x20
// Large 30x30
// Do not place template spawners in a location that will cause these sizes to go beyond map edge
// Sunken templates that exist on the southern shores of Heavenscoast, mostly
#define SUNKEN_MICRO_TEMPLATES list("micro_sunken_tile_1z_islet", "micro_sunken_tile_1z_islet_2", "micro_sunken_tile_1z_islet_3", "micro_sunken_tile_1z_whirlpool")
#define SUNKEN_SMALL_TEMPLATES_2Z list("small_sunken_tile_2z_shrine", "small_sunken_tile_2z_tower")
#define SUNKEN_MICRO_TEMPLATES_2Z list("micro_sunken_tile_2z_shipwreck", "micro_sunken_tile_2z_shipwreck_2", "micro_sunken_tile_2z_shipwreck_3")
#define SUNKEN_LARGE_TEMPLATES_2Z list("large_sunken_tile_2z_palace")

/obj/effect/landmark/map_load_mark/sunken_tile//One level landmarks, ruins, derelicts, outposts etc
	name = "Small Sunken 1Z Random Tile"
	templates = null//none exist presently

/obj/effect/landmark/map_load_mark/sunken_tile/two_level//Three level landmarks, ruins, derelicts, outposts etc
	name = "Small Sunken 2Z Random Tile"
	templates = SUNKEN_SMALL_TEMPLATES_2Z

/obj/effect/landmark/map_load_mark/sunken_tile/micro
	name = "Micro Sunken 1Z Random Tile"
	templates = SUNKEN_MICRO_TEMPLATES

/obj/effect/landmark/map_load_mark/sunken_tile/micro/two_level
	name = "Micro Sunken 2Z Random Tile"
	templates = SUNKEN_MICRO_TEMPLATES_2Z

/obj/effect/landmark/map_load_mark/sunken_tile/large
	name = "Large Sunken 1Z Random Tile"
	templates = null//none exist presently

/obj/effect/landmark/map_load_mark/sunken_tile/large/two_level
	name = "Large Sunken 2Z Random Tile"
	templates = SUNKEN_LARGE_TEMPLATES_2Z

/datum/map_template/dungeon/micro_sunken_tile_1z_islet
	name = "Micro Sunken Tile (Islet)"
	id = "micro_sunken_tile_1z_islet"
	mappath = "_maps/domotan_necropolis/sunken/micro_sunken_tile_1z_islet.dmm"

/datum/map_template/dungeon/micro_sunken_tile_1z_islet_2
	name = "Micro Sunken Tile (Islet 2)"
	id = "micro_sunken_tile_1z_islet_2"
	mappath = "_maps/domotan_necropolis/sunken/micro_sunken_tile_1z_islet_2.dmm"

/datum/map_template/dungeon/micro_sunken_tile_1z_islet_3
	name = "Micro Sunken Tile (Islet 3)"
	id = "micro_sunken_tile_1z_islet_3"
	mappath = "_maps/domotan_necropolis/sunken/micro_sunken_tile_1z_islet_3.dmm"

/datum/map_template/dungeon/micro_sunken_tile_1z_whirlpool
	name = "Micro Sunken Tile (Whirlpool)"
	id = "micro_sunken_tile_1z_whirlpool"
	mappath = "_maps/domotan_necropolis/sunken/micro_sunken_tile_1z_whirlpool.dmm"

/datum/map_template/dungeon/micro_sunken_tile_2z_shipwreck
	name = "Micro Sunken Tile 2Z (Shipwreck)"
	id = "micro_sunken_tile_2z_shipwreck"
	mappath = "_maps/domotan_necropolis/sunken/two_level/micro_sunken_tile_2z_shipwreck.dmm"

/datum/map_template/dungeon/micro_sunken_tile_2z_shipwreck_2
	name = "Micro Sunken Tile 2Z (Shipwreck 2)"
	id = "micro_sunken_tile_2z_shipwreck_2"
	mappath = "_maps/domotan_necropolis/sunken/two_level/micro_sunken_tile_2z_shipwreck_2.dmm"

/datum/map_template/dungeon/micro_sunken_tile_2z_shipwreck_3
	name = "Micro Sunken Tile 2Z (Shipwreck 3)"
	id = "micro_sunken_tile_2z_shipwreck_3"
	mappath = "_maps/domotan_necropolis/sunken/two_level/micro_sunken_tile_2z_shipwreck_3.dmm"

/datum/map_template/dungeon/small_sunken_tile_2z_shrine
	name = "Small Sunken Tile 2Z (Shrine)"
	id = "small_sunken_tile_2z_shrine"
	mappath = "_maps/domotan_necropolis/sunken/two_level/small_sunken_tile_2z_shrine.dmm"

/datum/map_template/dungeon/small_sunken_tile_2z_tower
	name = "Small Sunken Tile 2Z (Tower)"
	id = "small_sunken_tile_2z_tower"
	mappath = "_maps/domotan_necropolis/sunken/two_level/small_sunken_tile_2z_tower.dmm"

/datum/map_template/dungeon/large_sunken_tile_2z_palace
	name = "Large Sunken Tile 2Z (Palace)"
	id = "large_sunken_tile_2z_palace"
	mappath = "_maps/domotan_necropolis/sunken/two_level/large_sunken_tile_2z_palace.dmm"
