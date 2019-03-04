minetest.register_node("ws_core:dirt", {
	description = "Dirt",
	tiles = {"ws_dirt.png"},
	groups = {crumbly = 3, soil = 1},
	sounds = ws_core.node_sound_dirt_ws_cores(),
})

minetest.register_node("ws_core:dirt_dead", {
	description = "Dead Dirt",
	tiles = {"ws_dirt_dead.png",
		{name = "ws_dirt_dead.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1},
	drop = 'ws_core:dirt',
	sounds = ws_core.node_sound_dirt_ws_cores({
		footstep = {name = "ws_core_grass_footstep", gain = 0.25},
	}),
})

minetest.register_node("ws_core:stone_with_coal", {
	description = "Coal Ore",
	tiles = {"ws_stone.png^ws_mineral_coal.png"},
	groups = {cracky = 3},
	drop = 'ws_core:coal_lump',
	sounds = ws_core.node_sound_stone_ws_cores(),
})

minetest.register_node("ws_core:stone", {
	description = "Stone",
	tiles = {"ws_stone.png"},
	groups = {cracky = 3, stone = 1},
	drop = 'ws_core:cobble',
	legacy_mineral = true,
	sounds = ws_core.node_sound_stone_ws_cores(),
})

minetest.register_node("ws_core:cobble", {
	description = "Cobblestone",
	tiles = {"ws_cobble.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 2},
	sounds = ws_core.node_sound_stone_ws_cores(),
})