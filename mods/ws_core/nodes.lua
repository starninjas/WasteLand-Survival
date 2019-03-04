-- mods/ws_core/nodes.lua


--[[ Node name convention:

Although many node names are in combined-word form, the required form for new
node names is words separated by underscores. If both forms are used in written
language (for example pinewood and pine wood) the underscore form should be used.

--]]


--[[ Index:

Stone
-----
(1. Material 2. Cobble variant 3. Brick variant 4. Modified forms)

ws_core:stone
ws_core:cobble
ws_core:stonebrick
ws_core:stone_block
ws_core:mossycobble

ws_core:desert_stone
ws_core:desert_cobble
ws_core:desert_stonebrick
ws_core:desert_stone_block

ws_core:sandstone
ws_core:sandstonebrick
ws_core:sandstone_block
ws_core:desert_sandstone
ws_core:desert_sandstone_brick
ws_core:desert_sandstone_block
ws_core:silver_sandstone
ws_core:silver_sandstone_brick
ws_core:silver_sandstone_block

ws_core:obsidian
ws_core:obsidianbrick
ws_core:obsidian_block

Soft / Non-Stone
----------------
(1. Material 2. Modified forms)

ws_core:dirt
ws_core:dirt_with_grass
ws_core:dirt_with_grass_footsteps
ws_core:dirt_with_dry_grass
ws_core:dirt_with_snow
ws_core:dirt_with_rainforest_litter
ws_core:dirt_with_coniferous_litter

ws_core:sand
ws_core:desert_sand
ws_core:silver_sand

ws_core:gravel

ws_core:clay

ws_core:snow
ws_core:snowblock

ws_core:ice
ws_core:cave_ice

Trees
-----
(1. Trunk 2. Fabricated trunk 3. Leaves 4. Sapling 5. Fruits)

ws_core:tree
ws_core:wood
ws_core:leaves
ws_core:sapling
ws_core:apple

ws_core:jungletree
ws_core:junglewood
ws_core:jungleleaves
ws_core:junglesapling
ws_core:emergent_jungle_sapling

ws_core:pine_tree
ws_core:pine_wood
ws_core:pine_needles
ws_core:pine_sapling

ws_core:acacia_tree
ws_core:acacia_wood
ws_core:acacia_leaves
ws_core:acacia_sapling

ws_core:aspen_tree
ws_core:aspen_wood
ws_core:aspen_leaves
ws_core:aspen_sapling

Ores
----
(1. In stone 2. Blocks)

ws_core:stone_with_coal
ws_core:coalblock

ws_core:stone_with_iron
ws_core:steelblock

ws_core:stone_with_copper
ws_core:copperblock

ws_core:stone_with_tin
ws_core:tinblock

ws_core:bronzeblock

ws_core:stone_with_gold
ws_core:goldblock

ws_core:stone_with_mese
ws_core:mese

ws_core:stone_with_diamond
ws_core:diamondblock

Plantlife
---------

ws_core:cactus
ws_core:papyrus
ws_core:dry_shrub
ws_core:junglegrass

ws_core:grass_1
ws_core:grass_2
ws_core:grass_3
ws_core:grass_4
ws_core:grass_5

ws_core:dry_grass_1
ws_core:dry_grass_2
ws_core:dry_grass_3
ws_core:dry_grass_4
ws_core:dry_grass_5

ws_core:fern_1
ws_core:fern_2
ws_core:fern_3

ws_core:marram_grass_1
ws_core:marram_grass_2
ws_core:marram_grass_3

ws_core:bush_stem
ws_core:bush_leaves
ws_core:bush_sapling
ws_core:acacia_bush_stem
ws_core:acacia_bush_leaves
ws_core:acacia_bush_sapling

ws_core:sand_with_kelp

Corals
------

ws_core:coral_brown
ws_core:coral_orange
ws_core:coral_skeleton

Liquids
-------
(1. Source 2. Flowing)

ws_core:water_source
ws_core:water_flowing

ws_core:river_water_source
ws_core:river_water_flowing

ws_core:lava_source
ws_core:lava_flowing

Tools / "Advanced" crafting / Non-"natural"
-------------------------------------------

ws_core:chest
ws_core:chest_locked

ws_core:bookshelf

ws_core:sign_wall_wood
ws_core:sign_wall_steel

ws_core:ladder_wood
ws_core:ladder_steel

ws_core:fence_wood
ws_core:fence_acacia_wood
ws_core:fence_junglewood
ws_core:fence_pine_wood
ws_core:fence_aspen_wood

ws_core:glass
ws_core:obsidian_glass

ws_core:brick

ws_core:meselamp
ws_core:mese_post_light

Misc
----

ws_core:cloud

--]]

--
-- Stone
--

minetest.register_node("ws_core:stone", {
	description = "Stone",
	tiles = {"ws_core_stone.png"},
	groups = {cracky = 3, stone = 1},
	drop = 'ws_core:cobble',
	legacy_mineral = true,
	sounds = ws_core.node_sound_stone_ws_cores(),
})

minetest.register_node("ws_core:cobble", {
	description = "Cobblestone",
	tiles = {"ws_core_cobble.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 2},
	sounds = ws_core.node_sound_stone_ws_cores(),
})

minetest.register_node("ws_core:stonebrick", {
	description = "Stone Brick",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"ws_core_stone_brick.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	sounds = ws_core.node_sound_stone_ws_cores(),
})

minetest.register_node("ws_core:stone_block", {
	description = "Stone Block",
	tiles = {"ws_core_stone_block.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	sounds = ws_core.node_sound_stone_ws_cores(),
})

minetest.register_node("ws_core:mossycobble", {
	description = "Mossy Cobblestone",
	tiles = {"ws_core_mossycobble.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 1},
	sounds = ws_core.node_sound_stone_ws_cores(),
})


minetest.register_node("ws_core:desert_stone", {
	description = "Desert Stone",
	tiles = {"ws_core_desert_stone.png"},
	groups = {cracky = 3, stone = 1},
	drop = 'ws_core:desert_cobble',
	legacy_mineral = true,
	sounds = ws_core.node_sound_stone_ws_cores(),
})

minetest.register_node("ws_core:desert_cobble", {
	description = "Desert Cobblestone",
	tiles = {"ws_core_desert_cobble.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 2},
	sounds = ws_core.node_sound_stone_ws_cores(),
})

minetest.register_node("ws_core:desert_stonebrick", {
	description = "Desert Stone Brick",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"ws_core_desert_stone_brick.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	sounds = ws_core.node_sound_stone_ws_cores(),
})

minetest.register_node("ws_core:desert_stone_block", {
	description = "Desert Stone Block",
	tiles = {"ws_core_desert_stone_block.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	sounds = ws_core.node_sound_stone_ws_cores(),
})

minetest.register_node("ws_core:sandstone", {
	description = "Sandstone",
	tiles = {"ws_core_sandstone.png"},
	groups = {crumbly = 1, cracky = 3},
	sounds = ws_core.node_sound_stone_ws_cores(),
})

minetest.register_node("ws_core:sandstonebrick", {
	description = "Sandstone Brick",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"ws_core_sandstone_brick.png"},
	is_ground_content = false,
	groups = {cracky = 2},
	sounds = ws_core.node_sound_stone_ws_cores(),
})

minetest.register_node("ws_core:sandstone_block", {
	description = "Sandstone Block",
	tiles = {"ws_core_sandstone_block.png"},
	is_ground_content = false,
	groups = {cracky = 2},
	sounds = ws_core.node_sound_stone_ws_cores(),
})

minetest.register_node("ws_core:desert_sandstone", {
	description = "Desert Sandstone",
	tiles = {"ws_core_desert_sandstone.png"},
	groups = {crumbly = 1, cracky = 3},
	sounds = ws_core.node_sound_stone_ws_cores(),
})

minetest.register_node("ws_core:desert_sandstone_brick", {
	description = "Desert Sandstone Brick",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"ws_core_desert_sandstone_brick.png"},
	is_ground_content = false,
	groups = {cracky = 2},
	sounds = ws_core.node_sound_stone_ws_cores(),
})

minetest.register_node("ws_core:desert_sandstone_block", {
	description = "Desert Sandstone Block",
	tiles = {"ws_core_desert_sandstone_block.png"},
	is_ground_content = false,
	groups = {cracky = 2},
	sounds = ws_core.node_sound_stone_ws_cores(),
})

minetest.register_node("ws_core:silver_sandstone", {
	description = "Silver Sandstone",
	tiles = {"ws_core_silver_sandstone.png"},
	groups = {crumbly = 1, cracky = 3},
	sounds = ws_core.node_sound_stone_ws_cores(),
})

minetest.register_node("ws_core:silver_sandstone_brick", {
	description = "Silver Sandstone Brick",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"ws_core_silver_sandstone_brick.png"},
	is_ground_content = false,
	groups = {cracky = 2},
	sounds = ws_core.node_sound_stone_ws_cores(),
})

minetest.register_node("ws_core:silver_sandstone_block", {
	description = "Silver Sandstone Block",
	tiles = {"ws_core_silver_sandstone_block.png"},
	is_ground_content = false,
	groups = {cracky = 2},
	sounds = ws_core.node_sound_stone_ws_cores(),
})

minetest.register_node("ws_core:obsidian", {
	description = "Obsidian",
	tiles = {"ws_core_obsidian.png"},
	sounds = ws_core.node_sound_stone_ws_cores(),
	groups = {cracky = 1, level = 2},
})

minetest.register_node("ws_core:obsidianbrick", {
	description = "Obsidian Brick",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"ws_core_obsidian_brick.png"},
	is_ground_content = false,
	sounds = ws_core.node_sound_stone_ws_cores(),
	groups = {cracky = 1, level = 2},
})

minetest.register_node("ws_core:obsidian_block", {
	description = "Obsidian Block",
	tiles = {"ws_core_obsidian_block.png"},
	is_ground_content = false,
	sounds = ws_core.node_sound_stone_ws_cores(),
	groups = {cracky = 1, level = 2},
})

--
-- Soft / Non-Stone
--

minetest.register_node("ws_core:dirt", {
	description = "Dirt",
	tiles = {"ws_core_dirt.png"},
	groups = {crumbly = 3, soil = 1},
	sounds = ws_core.node_sound_dirt_ws_cores(),
})

minetest.register_node("ws_core:dirt_with_grass", {
	description = "Dirt with Grass",
	tiles = {"ws_core_grass.png", "ws_core_dirt.png",
		{name = "ws_core_dirt.png^ws_core_grass_side.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1},
	drop = 'ws_core:dirt',
	sounds = ws_core.node_sound_dirt_ws_cores({
		footstep = {name = "ws_core_grass_footstep", gain = 0.25},
	}),
})

minetest.register_node("ws_core:dirt_with_grass_footsteps", {
	description = "Dirt with Grass and Footsteps",
	tiles = {"ws_core_grass.png^ws_core_footprint.png", "ws_core_dirt.png",
		{name = "ws_core_dirt.png^ws_core_grass_side.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, not_in_creative_inventory = 1},
	drop = 'ws_core:dirt',
	sounds = ws_core.node_sound_dirt_ws_cores({
		footstep = {name = "ws_core_grass_footstep", gain = 0.25},
	}),
})

minetest.register_node("ws_core:dirt_with_dry_grass", {
	description = "Dirt with Dry Grass",
	tiles = {"ws_core_dry_grass.png",
		"ws_core_dirt.png",
		{name = "ws_core_dirt.png^ws_core_dry_grass_side.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1},
	drop = 'ws_core:dirt',
	sounds = ws_core.node_sound_dirt_ws_cores({
		footstep = {name = "ws_core_grass_footstep", gain = 0.4},
	}),
})

minetest.register_node("ws_core:dirt_with_snow", {
	description = "Dirt with Snow",
	tiles = {"ws_core_snow.png", "ws_core_dirt.png",
		{name = "ws_core_dirt.png^ws_core_snow_side.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1, snowy = 1},
	drop = 'ws_core:dirt',
	sounds = ws_core.node_sound_dirt_ws_cores({
		footstep = {name = "ws_core_snow_footstep", gain = 0.2},
	}),
})

minetest.register_node("ws_core:dirt_with_rainforest_litter", {
	description = "Dirt with Rainforest Litter",
	tiles = {
		"ws_core_rainforest_litter.png",
		"ws_core_dirt.png",
		{name = "ws_core_dirt.png^ws_core_rainforest_litter_side.png",
			tileable_vertical = false}
	},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1},
	drop = "ws_core:dirt",
	sounds = ws_core.node_sound_dirt_ws_cores({
		footstep = {name = "ws_core_grass_footstep", gain = 0.4},
	}),
})

minetest.register_node("ws_core:dirt_with_coniferous_litter", {
	description = "Dirt with Coniferous Litter",
	tiles = {
		"ws_core_coniferous_litter.png",
		"ws_core_dirt.png",
		{name = "ws_core_dirt.png^ws_core_coniferous_litter_side.png",
			tileable_vertical = false}
	},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1},
	drop = "ws_core:dirt",
	sounds = ws_core.node_sound_dirt_ws_cores({
		footstep = {name = "ws_core_grass_footstep", gain = 0.4},
	}),
})

minetest.register_node("ws_core:sand", {
	description = "Sand",
	tiles = {"ws_core_sand.png"},
	groups = {crumbly = 3, falling_node = 1, sand = 1},
	sounds = ws_core.node_sound_sand_ws_cores(),
})

minetest.register_node("ws_core:desert_sand", {
	description = "Desert Sand",
	tiles = {"ws_core_desert_sand.png"},
	groups = {crumbly = 3, falling_node = 1, sand = 1},
	sounds = ws_core.node_sound_sand_ws_cores(),
})

minetest.register_node("ws_core:silver_sand", {
	description = "Silver Sand",
	tiles = {"ws_core_silver_sand.png"},
	groups = {crumbly = 3, falling_node = 1, sand = 1},
	sounds = ws_core.node_sound_sand_ws_cores(),
})


minetest.register_node("ws_core:gravel", {
	description = "Gravel",
	tiles = {"ws_core_gravel.png"},
	groups = {crumbly = 2, falling_node = 1},
	sounds = ws_core.node_sound_gravel_ws_cores(),
	drop = {
		max_items = 1,
		items = {
			{items = {'ws_core:flint'}, rarity = 16},
			{items = {'ws_core:gravel'}}
		}
	}
})

minetest.register_node("ws_core:clay", {
	description = "Clay",
	tiles = {"ws_core_clay.png"},
	groups = {crumbly = 3},
	drop = 'ws_core:clay_lump 4',
	sounds = ws_core.node_sound_dirt_ws_cores(),
})


minetest.register_node("ws_core:snow", {
	description = "Snow",
	tiles = {"ws_core_snow.png"},
	inventory_image = "ws_core_snowball.png",
	wield_image = "ws_core_snowball.png",
	paramtype = "light",
	buildable_to = true,
	floodable = true,
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.25, 0.5},
		},
	},
	groups = {crumbly = 3, falling_node = 1, puts_out_fire = 1, snowy = 1},
	sounds = ws_core.node_sound_snow_ws_cores(),

	on_construct = function(pos)
		pos.y = pos.y - 1
		if minetest.get_node(pos).name == "ws_core:dirt_with_grass" then
			minetest.set_node(pos, {name = "ws_core:dirt_with_snow"})
		end
	end,
})

minetest.register_node("ws_core:snowblock", {
	description = "Snow Block",
	tiles = {"ws_core_snow.png"},
	groups = {crumbly = 3, puts_out_fire = 1, cools_lava = 1, snowy = 1},
	sounds = ws_core.node_sound_snow_ws_cores(),

	on_construct = function(pos)
		pos.y = pos.y - 1
		if minetest.get_node(pos).name == "ws_core:dirt_with_grass" then
			minetest.set_node(pos, {name = "ws_core:dirt_with_snow"})
		end
	end,
})

-- 'is ground content = false' to avoid tunnels in sea ice or ice rivers
minetest.register_node("ws_core:ice", {
	description = "Ice",
	tiles = {"ws_core_ice.png"},
	is_ground_content = false,
	paramtype = "light",
	groups = {cracky = 3, puts_out_fire = 1, cools_lava = 1, slippery = 3},
	sounds = ws_core.node_sound_glass_ws_cores(),
})

-- Mapgen-placed ice with 'is ground content = true' to contain tunnels
minetest.register_node("ws_core:cave_ice", {
	description = "Cave Ice",
	tiles = {"ws_core_ice.png"},
	paramtype = "light",
	groups = {cracky = 3, puts_out_fire = 1, cools_lava = 1, slippery = 3},
	drop = "ws_core:ice",
	sounds = ws_core.node_sound_glass_ws_cores(),
})

--
-- Trees
--

minetest.register_node("ws_core:tree", {
	description = "Apple Tree",
	tiles = {"ws_core_tree_top.png", "ws_core_tree_top.png", "ws_core_tree.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = ws_core.node_sound_wood_ws_cores(),

	on_place = minetest.rotate_node
})

minetest.register_node("ws_core:wood", {
	description = "Apple Wood Planks",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"ws_core_wood.png"},
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, wood = 1},
	sounds = ws_core.node_sound_wood_ws_cores(),
})

minetest.register_node("ws_core:sapling", {
	description = "Apple Tree Sapling",
	drawtype = "plantlike",
	tiles = {"ws_core_sapling.png"},
	inventory_image = "ws_core_sapling.png",
	wield_image = "ws_core_sapling.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	on_timer = ws_core.grow_sapling,
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 7 / 16, 4 / 16}
	},
	groups = {snappy = 2, dig_immediate = 3, flammable = 2,
		attached_node = 1, sapling = 1},
	sounds = ws_core.node_sound_leaves_ws_cores(),

	on_construct = function(pos)
		minetest.get_node_timer(pos):start(math.random(300, 1500))
	end,

	on_place = function(itemstack, placer, pointed_thing)
		itemstack = ws_core.sapling_on_place(itemstack, placer, pointed_thing,
			"ws_core:sapling",
			-- minp, maxp to be checked, relative to sapling pos
			-- minp_relative.y = 1 because sapling pos has been checked
			{x = -2, y = 1, z = -2},
			{x = 2, y = 6, z = 2},
			-- maximum interval of interior volume check
			4)

		return itemstack
	end,
})

minetest.register_node("ws_core:leaves", {
	description = "Apple Tree Leaves",
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"ws_core_leaves.png"},
	special_tiles = {"ws_core_leaves_simple.png"},
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{
				-- player will get sapling with 1/20 chance
				items = {'ws_core:sapling'},
				rarity = 20,
			},
			{
				-- player will get leaves only if he get no saplings,
				-- this is because max_items is 1
				items = {'ws_core:leaves'},
			}
		}
	},
	sounds = ws_core.node_sound_leaves_ws_cores(),

	after_place_node = ws_core.after_place_leaves,
})

minetest.register_node("ws_core:apple", {
	description = "Apple",
	drawtype = "plantlike",
	tiles = {"ws_core_apple.png"},
	inventory_image = "ws_core_apple.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	is_ground_content = false,
	selection_box = {
		type = "fixed",
		fixed = {-3 / 16, -7 / 16, -3 / 16, 3 / 16, 4 / 16, 3 / 16}
	},
	groups = {fleshy = 3, dig_immediate = 3, flammable = 2,
		leafdecay = 3, leafdecay_drop = 1, food_apple = 1},
	on_use = minetest.item_eat(2),
	sounds = ws_core.node_sound_leaves_ws_cores(),

	after_place_node = function(pos, placer, itemstack)
		minetest.set_node(pos, {name = "ws_core:apple", param2 = 1})
	end,
})

minetest.register_node("ws_core:dead_wood", {
	description = "Dead Wood",
	tiles = {"ws_core_tree_top.png", "ws_core_tree_top.png", "ws_core_tree.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = ws_core.node_sound_wood_ws_cores(),

	on_place = minetest.rotate_node
})

minetest.register_node("ws_core:dead_wood_planks", {
	description = "Dead Wood Planks",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"ws_core_wood.png"},
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, wood = 1},
	sounds = ws_core.node_sound_wood_ws_cores(),
})

minetest.register_node("ws_core:jungletree", {
	description = "Jungle Tree",
	tiles = {"ws_core_jungletree_top.png", "ws_core_jungletree_top.png",
		"ws_core_jungletree.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = ws_core.node_sound_wood_ws_cores(),

	on_place = minetest.rotate_node
})

minetest.register_node("ws_core:junglewood", {
	description = "Jungle Wood Planks",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"ws_core_junglewood.png"},
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, wood = 1},
	sounds = ws_core.node_sound_wood_ws_cores(),
})

minetest.register_node("ws_core:jungleleaves", {
	description = "Jungle Tree Leaves",
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"ws_core_jungleleaves.png"},
	special_tiles = {"ws_core_jungleleaves_simple.png"},
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{items = {'ws_core:junglesapling'}, rarity = 20},
			{items = {'ws_core:jungleleaves'}}
		}
	},
	sounds = ws_core.node_sound_leaves_ws_cores(),

	after_place_node = ws_core.after_place_leaves,
})

minetest.register_node("ws_core:junglesapling", {
	description = "Jungle Tree Sapling",
	drawtype = "plantlike",
	tiles = {"ws_core_junglesapling.png"},
	inventory_image = "ws_core_junglesapling.png",
	wield_image = "ws_core_junglesapling.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	on_timer = ws_core.grow_sapling,
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 7 / 16, 4 / 16}
	},
	groups = {snappy = 2, dig_immediate = 3, flammable = 2,
		attached_node = 1, sapling = 1},
	sounds = ws_core.node_sound_leaves_ws_cores(),

	on_construct = function(pos)
		minetest.get_node_timer(pos):start(math.random(300, 1500))
	end,

	on_place = function(itemstack, placer, pointed_thing)
		itemstack = ws_core.sapling_on_place(itemstack, placer, pointed_thing,
			"ws_core:junglesapling",
			-- minp, maxp to be checked, relative to sapling pos
			-- minp_relative.y = 1 because sapling pos has been checked
			{x = -2, y = 1, z = -2},
			{x = 2, y = 15, z = 2},
			-- maximum interval of interior volume check
			4)

		return itemstack
	end,
})

minetest.register_node("ws_core:emergent_jungle_sapling", {
	description = "Emergent Jungle Tree Sapling",
	drawtype = "plantlike",
	tiles = {"ws_core_emergent_jungle_sapling.png"},
	inventory_image = "ws_core_emergent_jungle_sapling.png",
	wield_image = "ws_core_emergent_jungle_sapling.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	on_timer = ws_core.grow_sapling,
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 7 / 16, 4 / 16}
	},
	groups = {snappy = 2, dig_immediate = 3, flammable = 2,
		attached_node = 1, sapling = 1},
	sounds = ws_core.node_sound_leaves_ws_cores(),

	on_construct = function(pos)
		minetest.get_node_timer(pos):start(math.random(300, 1500))
	end,

	on_place = function(itemstack, placer, pointed_thing)
		itemstack = ws_core.sapling_on_place(itemstack, placer, pointed_thing,
			"ws_core:emergent_jungle_sapling",
			-- minp, maxp to be checked, relative to sapling pos
			{x = -3, y = -5, z = -3},
			{x = 3, y = 31, z = 3},
			-- maximum interval of interior volume check
			4)

		return itemstack
	end,
})


minetest.register_node("ws_core:pine_tree", {
	description = "Pine Tree",
	tiles = {"ws_core_pine_tree_top.png", "ws_core_pine_tree_top.png",
		"ws_core_pine_tree.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree = 1, choppy = 3, oddly_breakable_by_hand = 1, flammable = 3},
	sounds = ws_core.node_sound_wood_ws_cores(),

	on_place = minetest.rotate_node
})

minetest.register_node("ws_core:pine_wood", {
	description = "Pine Wood Planks",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"ws_core_pine_wood.png"},
	is_ground_content = false,
	groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3, wood = 1},
	sounds = ws_core.node_sound_wood_ws_cores(),
})

minetest.register_node("ws_core:pine_needles",{
	description = "Pine Needles",
	drawtype = "allfaces_optional",
	tiles = {"ws_core_pine_needles.png"},
	waving = 1,
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{items = {"ws_core:pine_sapling"}, rarity = 20},
			{items = {"ws_core:pine_needles"}}
		}
	},
	sounds = ws_core.node_sound_leaves_ws_cores(),

	after_place_node = ws_core.after_place_leaves,
})

minetest.register_node("ws_core:pine_sapling", {
	description = "Pine Tree Sapling",
	drawtype = "plantlike",
	tiles = {"ws_core_pine_sapling.png"},
	inventory_image = "ws_core_pine_sapling.png",
	wield_image = "ws_core_pine_sapling.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	on_timer = ws_core.grow_sapling,
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 7 / 16, 4 / 16}
	},
	groups = {snappy = 2, dig_immediate = 3, flammable = 3,
		attached_node = 1, sapling = 1},
	sounds = ws_core.node_sound_leaves_ws_cores(),

	on_construct = function(pos)
		minetest.get_node_timer(pos):start(math.random(300, 1500))
	end,

	on_place = function(itemstack, placer, pointed_thing)
		itemstack = ws_core.sapling_on_place(itemstack, placer, pointed_thing,
			"ws_core:pine_sapling",
			-- minp, maxp to be checked, relative to sapling pos
			-- minp_relative.y = 1 because sapling pos has been checked
			{x = -2, y = 1, z = -2},
			{x = 2, y = 14, z = 2},
			-- maximum interval of interior volume check
			4)

		return itemstack
	end,
})


minetest.register_node("ws_core:acacia_tree", {
	description = "Acacia Tree",
	tiles = {"ws_core_acacia_tree_top.png", "ws_core_acacia_tree_top.png",
		"ws_core_acacia_tree.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = ws_core.node_sound_wood_ws_cores(),

	on_place = minetest.rotate_node
})

minetest.register_node("ws_core:acacia_wood", {
	description = "Acacia Wood Planks",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"ws_core_acacia_wood.png"},
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, wood = 1},
	sounds = ws_core.node_sound_wood_ws_cores(),
})

minetest.register_node("ws_core:acacia_leaves", {
	description = "Acacia Tree Leaves",
	drawtype = "allfaces_optional",
	tiles = {"ws_core_acacia_leaves.png"},
	special_tiles = {"ws_core_acacia_leaves_simple.png"},
	waving = 1,
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{items = {"ws_core:acacia_sapling"}, rarity = 20},
			{items = {"ws_core:acacia_leaves"}}
		}
	},
	sounds = ws_core.node_sound_leaves_ws_cores(),

	after_place_node = ws_core.after_place_leaves,
})

minetest.register_node("ws_core:acacia_sapling", {
	description = "Acacia Tree Sapling",
	drawtype = "plantlike",
	tiles = {"ws_core_acacia_sapling.png"},
	inventory_image = "ws_core_acacia_sapling.png",
	wield_image = "ws_core_acacia_sapling.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	on_timer = ws_core.grow_sapling,
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 7 / 16, 4 / 16}
	},
	groups = {snappy = 2, dig_immediate = 3, flammable = 2,
		attached_node = 1, sapling = 1},
	sounds = ws_core.node_sound_leaves_ws_cores(),

	on_construct = function(pos)
		minetest.get_node_timer(pos):start(math.random(300, 1500))
	end,

	on_place = function(itemstack, placer, pointed_thing)
		itemstack = ws_core.sapling_on_place(itemstack, placer, pointed_thing,
			"ws_core:acacia_sapling",
			-- minp, maxp to be checked, relative to sapling pos
			-- minp_relative.y = 1 because sapling pos has been checked
			{x = -4, y = 1, z = -4},
			{x = 4, y = 7, z = 4},
			-- maximum interval of interior volume check
			4)

		return itemstack
	end,
})

minetest.register_node("ws_core:aspen_tree", {
	description = "Aspen Tree",
	tiles = {"ws_core_aspen_tree_top.png", "ws_core_aspen_tree_top.png",
		"ws_core_aspen_tree.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree = 1, choppy = 3, oddly_breakable_by_hand = 1, flammable = 3},
	sounds = ws_core.node_sound_wood_ws_cores(),

	on_place = minetest.rotate_node
})

minetest.register_node("ws_core:aspen_wood", {
	description = "Aspen Wood Planks",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"ws_core_aspen_wood.png"},
	is_ground_content = false,
	groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3, wood = 1},
	sounds = ws_core.node_sound_wood_ws_cores(),
})

minetest.register_node("ws_core:aspen_leaves", {
	description = "Aspen Tree Leaves",
	drawtype = "allfaces_optional",
	tiles = {"ws_core_aspen_leaves.png"},
	waving = 1,
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{items = {"ws_core:aspen_sapling"}, rarity = 20},
			{items = {"ws_core:aspen_leaves"}}
		}
	},
	sounds = ws_core.node_sound_leaves_ws_cores(),

	after_place_node = ws_core.after_place_leaves,
})

minetest.register_node("ws_core:aspen_sapling", {
	description = "Aspen Tree Sapling",
	drawtype = "plantlike",
	tiles = {"ws_core_aspen_sapling.png"},
	inventory_image = "ws_core_aspen_sapling.png",
	wield_image = "ws_core_aspen_sapling.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	on_timer = ws_core.grow_sapling,
	selection_box = {
		type = "fixed",
		fixed = {-3 / 16, -0.5, -3 / 16, 3 / 16, 0.5, 3 / 16}
	},
	groups = {snappy = 2, dig_immediate = 3, flammable = 3,
		attached_node = 1, sapling = 1},
	sounds = ws_core.node_sound_leaves_ws_cores(),

	on_construct = function(pos)
		minetest.get_node_timer(pos):start(math.random(300, 1500))
	end,

	on_place = function(itemstack, placer, pointed_thing)
		itemstack = ws_core.sapling_on_place(itemstack, placer, pointed_thing,
			"ws_core:aspen_sapling",
			-- minp, maxp to be checked, relative to sapling pos
			-- minp_relative.y = 1 because sapling pos has been checked
			{x = -2, y = 1, z = -2},
			{x = 2, y = 12, z = 2},
			-- maximum interval of interior volume check
			4)

		return itemstack
	end,
})

--
-- Ores
--

minetest.register_node("ws_core:stone_with_coal", {
	description = "Coal Ore",
	tiles = {"ws_core_stone.png^ws_core_mineral_coal.png"},
	groups = {cracky = 3},
	drop = 'ws_core:coal_lump',
	sounds = ws_core.node_sound_stone_ws_cores(),
})

minetest.register_node("ws_core:coalblock", {
	description = "Coal Block",
	tiles = {"ws_core_coal_block.png"},
	is_ground_content = false,
	groups = {cracky = 3},
	sounds = ws_core.node_sound_stone_ws_cores(),
})


minetest.register_node("ws_core:stone_with_iron", {
	description = "Iron Ore",
	tiles = {"ws_core_stone.png^ws_core_mineral_iron.png"},
	groups = {cracky = 2},
	drop = 'ws_core:iron_lump',
	sounds = ws_core.node_sound_stone_ws_cores(),
})

minetest.register_node("ws_core:steelblock", {
	description = "Steel Block",
	tiles = {"ws_core_steel_block.png"},
	is_ground_content = false,
	groups = {cracky = 1, level = 2},
	sounds = ws_core.node_sound_metal_ws_cores(),
})


minetest.register_node("ws_core:stone_with_copper", {
	description = "Copper Ore",
	tiles = {"ws_core_stone.png^ws_core_mineral_copper.png"},
	groups = {cracky = 2},
	drop = 'ws_core:copper_lump',
	sounds = ws_core.node_sound_stone_ws_cores(),
})

minetest.register_node("ws_core:copperblock", {
	description = "Copper Block",
	tiles = {"ws_core_copper_block.png"},
	is_ground_content = false,
	groups = {cracky = 1, level = 2},
	sounds = ws_core.node_sound_metal_ws_cores(),
})


minetest.register_node("ws_core:stone_with_tin", {
	description = "Tin Ore",
	tiles = {"ws_core_stone.png^ws_core_mineral_tin.png"},
	groups = {cracky = 2},
	drop = "ws_core:tin_lump",
	sounds = ws_core.node_sound_stone_ws_cores(),
})

minetest.register_node("ws_core:tinblock", {
	description = "Tin Block",
	tiles = {"ws_core_tin_block.png"},
	is_ground_content = false,
	groups = {cracky = 1, level = 2},
	sounds = ws_core.node_sound_metal_ws_cores(),
})


minetest.register_node("ws_core:bronzeblock", {
	description = "Bronze Block",
	tiles = {"ws_core_bronze_block.png"},
	is_ground_content = false,
	groups = {cracky = 1, level = 2},
	sounds = ws_core.node_sound_metal_ws_cores(),
})


minetest.register_node("ws_core:stone_with_mese", {
	description = "Mese Ore",
	tiles = {"ws_core_stone.png^ws_core_mineral_mese.png"},
	groups = {cracky = 1},
	drop = "ws_core:mese_crystal",
	sounds = ws_core.node_sound_stone_ws_cores(),
})

minetest.register_node("ws_core:mese", {
	description = "Mese Block",
	tiles = {"ws_core_mese_block.png"},
	paramtype = "light",
	groups = {cracky = 1, level = 2},
	sounds = ws_core.node_sound_stone_ws_cores(),
	light_source = 3,
})


minetest.register_node("ws_core:stone_with_gold", {
	description = "Gold Ore",
	tiles = {"ws_core_stone.png^ws_core_mineral_gold.png"},
	groups = {cracky = 2},
	drop = "ws_core:gold_lump",
	sounds = ws_core.node_sound_stone_ws_cores(),
})

minetest.register_node("ws_core:goldblock", {
	description = "Gold Block",
	tiles = {"ws_core_gold_block.png"},
	is_ground_content = false,
	groups = {cracky = 1},
	sounds = ws_core.node_sound_metal_ws_cores(),
})


minetest.register_node("ws_core:stone_with_diamond", {
	description = "Diamond Ore",
	tiles = {"ws_core_stone.png^ws_core_mineral_diamond.png"},
	groups = {cracky = 1},
	drop = "ws_core:diamond",
	sounds = ws_core.node_sound_stone_ws_cores(),
})

minetest.register_node("ws_core:diamondblock", {
	description = "Diamond Block",
	tiles = {"ws_core_diamond_block.png"},
	is_ground_content = false,
	groups = {cracky = 1, level = 3},
	sounds = ws_core.node_sound_stone_ws_cores(),
})

--
-- Plantlife (non-cubic)
--

minetest.register_node("ws_core:cactus", {
	description = "Cactus",
	tiles = {"ws_core_cactus_top.png", "ws_core_cactus_top.png",
		"ws_core_cactus_side.png"},
	paramtype2 = "facedir",
	groups = {choppy = 3},
	sounds = ws_core.node_sound_wood_ws_cores(),
	on_place = minetest.rotate_node,
})

minetest.register_node("ws_core:papyrus", {
	description = "Papyrus",
	drawtype = "plantlike",
	tiles = {"ws_core_papyrus.png"},
	inventory_image = "ws_core_papyrus.png",
	wield_image = "ws_core_papyrus.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, 0.5, 6 / 16},
	},
	groups = {snappy = 3, flammable = 2},
	sounds = ws_core.node_sound_leaves_ws_cores(),

	after_dig_node = function(pos, node, metadata, digger)
		ws_core.dig_up(pos, node, digger)
	end,
})

minetest.register_node("ws_core:dry_shrub", {
	description = "Dry Shrub",
	drawtype = "plantlike",
	waving = 1,
	tiles = {"ws_core_dry_shrub.png"},
	inventory_image = "ws_core_dry_shrub.png",
	wield_image = "ws_core_dry_shrub.png",
	paramtype = "light",
	paramtype2 = "meshoptions",
	place_param2 = 4,
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {snappy = 3, flammable = 3, attached_node = 1},
	sounds = ws_core.node_sound_leaves_ws_cores(),
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, 4 / 16, 6 / 16},
	},
})

minetest.register_node("ws_core:junglegrass", {
	description = "Jungle Grass",
	drawtype = "plantlike",
	waving = 1,
	visual_scale = 1.69,
	tiles = {"ws_core_junglegrass.png"},
	inventory_image = "ws_core_junglegrass.png",
	wield_image = "ws_core_junglegrass.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {snappy = 3, flora = 1, attached_node = 1, flammable = 1},
	sounds = ws_core.node_sound_leaves_ws_cores(),
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, 0.5, 6 / 16},
	},
})


minetest.register_node("ws_core:grass_1", {
	description = "Grass",
	drawtype = "plantlike",
	waving = 1,
	tiles = {"ws_core_grass_1.png"},
	-- Use texture of a taller grass stage in inventory
	inventory_image = "ws_core_grass_3.png",
	wield_image = "ws_core_grass_3.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {snappy = 3, flora = 1, attached_node = 1, grass = 1, flammable = 1},
	sounds = ws_core.node_sound_leaves_ws_cores(),
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, -5 / 16, 6 / 16},
	},

	on_place = function(itemstack, placer, pointed_thing)
		-- place a random grass node
		local stack = ItemStack("ws_core:grass_" .. math.random(1,5))
		local ret = minetest.item_place(stack, placer, pointed_thing)
		return ItemStack("ws_core:grass_1 " ..
			itemstack:get_count() - (1 - ret:get_count()))
	end,
})

for i = 2, 5 do
	minetest.register_node("ws_core:grass_" .. i, {
		description = "Grass",
		drawtype = "plantlike",
		waving = 1,
		tiles = {"ws_core_grass_" .. i .. ".png"},
		inventory_image = "ws_core_grass_" .. i .. ".png",
		wield_image = "ws_core_grass_" .. i .. ".png",
		paramtype = "light",
		sunlight_propagates = true,
		walkable = false,
		buildable_to = true,
		drop = "ws_core:grass_1",
		groups = {snappy = 3, flora = 1, attached_node = 1,
			not_in_creative_inventory = 1, grass = 1, flammable = 1},
		sounds = ws_core.node_sound_leaves_ws_cores(),
		selection_box = {
			type = "fixed",
			fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, -3 / 16, 6 / 16},
		},
	})
end


minetest.register_node("ws_core:dry_grass_1", {
	description = "Dry Grass",
	drawtype = "plantlike",
	waving = 1,
	tiles = {"ws_core_dry_grass_1.png"},
	inventory_image = "ws_core_dry_grass_3.png",
	wield_image = "ws_core_dry_grass_3.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {snappy = 3, flammable = 3, flora = 1,
		attached_node = 1, dry_grass = 1},
	sounds = ws_core.node_sound_leaves_ws_cores(),
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, -3 / 16, 6 / 16},
	},

	on_place = function(itemstack, placer, pointed_thing)
		-- place a random dry grass node
		local stack = ItemStack("ws_core:dry_grass_" .. math.random(1, 5))
		local ret = minetest.item_place(stack, placer, pointed_thing)
		return ItemStack("ws_core:dry_grass_1 " ..
			itemstack:get_count() - (1 - ret:get_count()))
	end,
})

for i = 2, 5 do
	minetest.register_node("ws_core:dry_grass_" .. i, {
		description = "Dry Grass",
		drawtype = "plantlike",
		waving = 1,
		tiles = {"ws_core_dry_grass_" .. i .. ".png"},
		inventory_image = "ws_core_dry_grass_" .. i .. ".png",
		wield_image = "ws_core_dry_grass_" .. i .. ".png",
		paramtype = "light",
		sunlight_propagates = true,
		walkable = false,
		buildable_to = true,
		groups = {snappy = 3, flammable = 3, flora = 1, attached_node = 1,
			not_in_creative_inventory=1, dry_grass = 1},
		drop = "ws_core:dry_grass_1",
		sounds = ws_core.node_sound_leaves_ws_cores(),
		selection_box = {
			type = "fixed",
			fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, -1 / 16, 6 / 16},
		},
	})
end


minetest.register_node("ws_core:fern_1", {
	description = "Fern",
	drawtype = "plantlike",
	waving = 1,
	tiles = {"ws_core_fern_1.png"},
	inventory_image = "ws_core_fern_1.png",
	wield_image = "ws_core_fern_1.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {snappy = 3, flammable = 3, flora = 1, attached_node = 1},
	sounds = ws_core.node_sound_leaves_ws_cores(),
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, -0.25, 6 / 16},
	},

	on_place = function(itemstack, placer, pointed_thing)
		-- place a random fern node
		local stack = ItemStack("ws_core:fern_" .. math.random(1, 3))
		local ret = minetest.item_place(stack, placer, pointed_thing)
		return ItemStack("ws_core:fern_1 " ..
			itemstack:get_count() - (1 - ret:get_count()))
	end,
})

for i = 2, 3 do
	minetest.register_node("ws_core:fern_" .. i, {
		description = "Fern",
		drawtype = "plantlike",
		waving = 1,
		visual_scale = 2,
		tiles = {"ws_core_fern_" .. i .. ".png"},
		inventory_image = "ws_core_fern_" .. i .. ".png",
		wield_image = "ws_core_fern_" .. i .. ".png",
		paramtype = "light",
		sunlight_propagates = true,
		walkable = false,
		buildable_to = true,
		groups = {snappy = 3, flammable = 3, flora = 1, attached_node = 1,
			not_in_creative_inventory=1},
		drop = "ws_core:fern_1",
		sounds = ws_core.node_sound_leaves_ws_cores(),
		selection_box = {
			type = "fixed",
			fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, -0.25, 6 / 16},
		},
	})
end


minetest.register_node("ws_core:marram_grass_1", {
	description = "Marram Grass",
	drawtype = "plantlike",
	waving = 1,
	tiles = {"ws_core_marram_grass_1.png"},
	inventory_image = "ws_core_marram_grass_1.png",
	wield_image = "ws_core_marram_grass_1.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {snappy = 3, flammable = 3, attached_node = 1},
	sounds = ws_core.node_sound_leaves_ws_cores(),
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, -0.25, 6 / 16},
	},

	on_place = function(itemstack, placer, pointed_thing)
		-- place a random marram grass node
		local stack = ItemStack("ws_core:marram_grass_" .. math.random(1, 3))
		local ret = minetest.item_place(stack, placer, pointed_thing)
		return ItemStack("ws_core:marram_grass_1 " ..
			itemstack:get_count() - (1 - ret:get_count()))
	end,
})

for i = 2, 3 do
	minetest.register_node("ws_core:marram_grass_" .. i, {
		description = "Marram Grass",
		drawtype = "plantlike",
		waving = 1,
		tiles = {"ws_core_marram_grass_" .. i .. ".png"},
		inventory_image = "ws_core_marram_grass_" .. i .. ".png",
		wield_image = "ws_core_marram_grass_" .. i .. ".png",
		paramtype = "light",
		sunlight_propagates = true,
		walkable = false,
		buildable_to = true,
		groups = {snappy = 3, flammable = 3, attached_node = 1,
			not_in_creative_inventory=1},
		drop = "ws_core:marram_grass_1",
		sounds = ws_core.node_sound_leaves_ws_cores(),
		selection_box = {
			type = "fixed",
			fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, -0.25, 6 / 16},
		},
	})
end


minetest.register_node("ws_core:bush_stem", {
	description = "Bush Stem",
	drawtype = "plantlike",
	visual_scale = 1.41,
	tiles = {"ws_core_bush_stem.png"},
	inventory_image = "ws_core_bush_stem.png",
	wield_image = "ws_core_bush_stem.png",
	paramtype = "light",
	sunlight_propagates = true,
	groups = {choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = ws_core.node_sound_wood_ws_cores(),
	selection_box = {
		type = "fixed",
		fixed = {-7 / 16, -0.5, -7 / 16, 7 / 16, 0.5, 7 / 16},
	},
})

minetest.register_node("ws_core:bush_leaves", {
	description = "Bush Leaves",
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"ws_core_leaves_simple.png"},
	paramtype = "light",
	groups = {snappy = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{items = {"ws_core:bush_sapling"}, rarity = 5},
			{items = {"ws_core:bush_leaves"}}
		}
	},
	sounds = ws_core.node_sound_leaves_ws_cores(),

	after_place_node = ws_core.after_place_leaves,
})

minetest.register_node("ws_core:bush_sapling", {
	description = "Bush Sapling",
	drawtype = "plantlike",
	tiles = {"ws_core_bush_sapling.png"},
	inventory_image = "ws_core_bush_sapling.png",
	wield_image = "ws_core_bush_sapling.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	on_timer = ws_core.grow_sapling,
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 2 / 16, 4 / 16}
	},
	groups = {snappy = 2, dig_immediate = 3, flammable = 2,
		attached_node = 1, sapling = 1},
	sounds = ws_core.node_sound_leaves_ws_cores(),

	on_construct = function(pos)
		minetest.get_node_timer(pos):start(math.random(300, 1500))
	end,

	on_place = function(itemstack, placer, pointed_thing)
		itemstack = ws_core.sapling_on_place(itemstack, placer, pointed_thing,
			"ws_core:bush_sapling",
			-- minp, maxp to be checked, relative to sapling pos
			{x = -1, y = 0, z = -1},
			{x = 1, y = 1, z = 1},
			-- maximum interval of interior volume check
			2)

		return itemstack
	end,
})

minetest.register_node("ws_core:acacia_bush_stem", {
	description = "Acacia Bush Stem",
	drawtype = "plantlike",
	visual_scale = 1.41,
	tiles = {"ws_core_acacia_bush_stem.png"},
	inventory_image = "ws_core_acacia_bush_stem.png",
	wield_image = "ws_core_acacia_bush_stem.png",
	paramtype = "light",
	sunlight_propagates = true,
	groups = {choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = ws_core.node_sound_wood_ws_cores(),
	selection_box = {
		type = "fixed",
		fixed = {-7 / 16, -0.5, -7 / 16, 7 / 16, 0.5, 7 / 16},
	},
})

minetest.register_node("ws_core:acacia_bush_leaves", {
	description = "Acacia Bush Leaves",
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"ws_core_acacia_leaves_simple.png"},
	paramtype = "light",
	groups = {snappy = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{items = {"ws_core:acacia_bush_sapling"}, rarity = 5},
			{items = {"ws_core:acacia_bush_leaves"}}
		}
	},
	sounds = ws_core.node_sound_leaves_ws_cores(),

	after_place_node = ws_core.after_place_leaves,
})

minetest.register_node("ws_core:acacia_bush_sapling", {
	description = "Acacia Bush Sapling",
	drawtype = "plantlike",
	tiles = {"ws_core_acacia_bush_sapling.png"},
	inventory_image = "ws_core_acacia_bush_sapling.png",
	wield_image = "ws_core_acacia_bush_sapling.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	on_timer = ws_core.grow_sapling,
	selection_box = {
		type = "fixed",
		fixed = {-3 / 16, -0.5, -3 / 16, 3 / 16, 2 / 16, 3 / 16}
	},
	groups = {snappy = 2, dig_immediate = 3, flammable = 2,
		attached_node = 1, sapling = 1},
	sounds = ws_core.node_sound_leaves_ws_cores(),

	on_construct = function(pos)
		minetest.get_node_timer(pos):start(math.random(300, 1500))
	end,

	on_place = function(itemstack, placer, pointed_thing)
		itemstack = ws_core.sapling_on_place(itemstack, placer, pointed_thing,
			"ws_core:acacia_bush_sapling",
			-- minp, maxp to be checked, relative to sapling pos
			{x = -1, y = 0, z = -1},
			{x = 1, y = 1, z = 1},
			-- maximum interval of interior volume check
			2)

		return itemstack
	end,
})

minetest.register_node("ws_core:sand_with_kelp", {
	description = "Kelp",
	drawtype = "plantlike_rooted",
	waving = 1,
	tiles = {"ws_core_sand.png"},
	special_tiles = {{name = "ws_core_kelp.png", tileable_vertical = true}},
	inventory_image = "ws_core_kelp.png",
	paramtype2 = "leveled",
	groups = {snappy = 3},
	selection_box = {
		type = "fixed",
		fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
				{-2/16, 0.5, -2/16, 2/16, 3.5, 2/16},
		},
	},
	node_dig_prediction = "ws_core:sand",
	node_placement_prediction = "",

	on_place = function(itemstack, placer, pointed_thing)
		-- Call on_rightclick if the pointed node defines it
		if pointed_thing.type == "node" and placer and
				not placer:get_player_control().sneak then
			local node_ptu = minetest.get_node(pointed_thing.under)
			local def_ptu = minetest.registered_nodes[node_ptu.name]
			if def_ptu and def_ptu.on_rightclick then
				return def_ptu.on_rightclick(pointed_thing.under, node_ptu, placer,
					itemstack, pointed_thing)
			end
		end

		local pos = pointed_thing.under
		if minetest.get_node(pos).name ~= "ws_core:sand" then
			return itemstack
		end

		local height = math.random(4, 6)
		local pos_top = {x = pos.x, y = pos.y + height, z = pos.z}
		local node_top = minetest.get_node(pos_top)
		local def_top = minetest.registered_nodes[node_top.name]
		local player_name = placer:get_player_name()

		if def_top and def_top.liquidtype == "source" and
				minetest.get_item_group(node_top.name, "water") > 0 then
			if not minetest.is_protected(pos, player_name) and
					not minetest.is_protected(pos_top, player_name) then
				minetest.set_node(pos, {name = "ws_core:sand_with_kelp",
					param2 = height * 16})
				if not (creative and creative.is_enabled_for
						and creative.is_enabled_for(player_name)) then
					itemstack:take_item()
				end
			else
				minetest.chat_send_player(player_name, "Node is protected")
				minetest.record_protection_violation(pos, player_name)
			end
		end

		return itemstack
	end,

	after_destruct  = function(pos, oldnode)
		minetest.set_node(pos, {name = "ws_core:sand"})
	end
})


--
-- Corals
--

minetest.register_node("ws_core:coral_brown", {
	description = "Brown Coral",
	tiles = {"ws_core_coral_brown.png"},
	groups = {cracky = 3},
	drop = "ws_core:coral_skeleton",
	sounds = ws_core.node_sound_stone_ws_cores(),
})

minetest.register_node("ws_core:coral_orange", {
	description = "Orange Coral",
	tiles = {"ws_core_coral_orange.png"},
	groups = {cracky = 3},
	drop = "ws_core:coral_skeleton",
	sounds = ws_core.node_sound_stone_ws_cores(),
})

minetest.register_node("ws_core:coral_skeleton", {
	description = "Coral Skeleton",
	tiles = {"ws_core_coral_skeleton.png"},
	groups = {cracky = 3},
	sounds = ws_core.node_sound_stone_ws_cores(),
})


--
-- Liquids
--

minetest.register_node("ws_core:water_source", {
	description = "Water Source",
	drawtype = "liquid",
	tiles = {
		{
			name = "ws_core_water_source_animated.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
		},
	},
	special_tiles = {
		-- New-style water source material (mostly unused)
		{
			name = "ws_core_water_source_animated.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
			backface_culling = false,
		},
	},
	alpha = 160,
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "ws_core:water_flowing",
	liquid_alternative_source = "ws_core:water_source",
	liquid_viscosity = 1,
	post_effect_color = {a = 103, r = 30, g = 60, b = 90},
	groups = {water = 3, liquid = 3, puts_out_fire = 1, cools_lava = 1},
	sounds = ws_core.node_sound_water_ws_cores(),
})

minetest.register_node("ws_core:water_flowing", {
	description = "Flowing Water",
	drawtype = "flowingliquid",
	tiles = {"ws_core_water.png"},
	special_tiles = {
		{
			name = "ws_core_water_flowing_animated.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.8,
			},
		},
		{
			name = "ws_core_water_flowing_animated.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.8,
			},
		},
	},
	alpha = 160,
	paramtype = "light",
	paramtype2 = "flowingliquid",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "ws_core:water_flowing",
	liquid_alternative_source = "ws_core:water_source",
	liquid_viscosity = 1,
	post_effect_color = {a = 103, r = 30, g = 60, b = 90},
	groups = {water = 3, liquid = 3, puts_out_fire = 1,
		not_in_creative_inventory = 1, cools_lava = 1},
	sounds = ws_core.node_sound_water_ws_cores(),
})


minetest.register_node("ws_core:river_water_source", {
	description = "River Water Source",
	drawtype = "liquid",
	tiles = {
		{
			name = "ws_core_river_water_source_animated.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
		},
	},
	special_tiles = {
		{
			name = "ws_core_river_water_source_animated.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
			backface_culling = false,
		},
	},
	alpha = 160,
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "ws_core:river_water_flowing",
	liquid_alternative_source = "ws_core:river_water_source",
	liquid_viscosity = 1,
	-- Not renewable to avoid horizontal spread of water sources in sloping
	-- rivers that can cause water to overflow riverbanks and cause floods.
	-- River water source is instead made renewable by the 'force renew'
	-- option used in the 'bucket' mod by the river water bucket.
	liquid_renewable = false,
	liquid_range = 2,
	post_effect_color = {a = 103, r = 30, g = 76, b = 90},
	groups = {water = 3, liquid = 3, puts_out_fire = 1, cools_lava = 1},
	sounds = ws_core.node_sound_water_ws_cores(),
})

minetest.register_node("ws_core:river_water_flowing", {
	description = "Flowing River Water",
	drawtype = "flowingliquid",
	tiles = {"ws_core_river_water.png"},
	special_tiles = {
		{
			name = "ws_core_river_water_flowing_animated.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.8,
			},
		},
		{
			name = "ws_core_river_water_flowing_animated.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.8,
			},
		},
	},
	alpha = 160,
	paramtype = "light",
	paramtype2 = "flowingliquid",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "ws_core:river_water_flowing",
	liquid_alternative_source = "ws_core:river_water_source",
	liquid_viscosity = 1,
	liquid_renewable = false,
	liquid_range = 2,
	post_effect_color = {a = 103, r = 30, g = 76, b = 90},
	groups = {water = 3, liquid = 3, puts_out_fire = 1,
		not_in_creative_inventory = 1, cools_lava = 1},
	sounds = ws_core.node_sound_water_ws_cores(),
})


minetest.register_node("ws_core:lava_source", {
	description = "Lava Source",
	drawtype = "liquid",
	tiles = {
		{
			name = "ws_core_lava_source_animated.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.0,
			},
		},
	},
	special_tiles = {
		-- New-style lava source material (mostly unused)
		{
			name = "ws_core_lava_source_animated.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.0,
			},
			backface_culling = false,
		},
	},
	paramtype = "light",
	light_source = ws_core.LIGHT_MAX - 1,
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "ws_core:lava_flowing",
	liquid_alternative_source = "ws_core:lava_source",
	liquid_viscosity = 7,
	liquid_renewable = false,
	damage_per_second = 4 * 2,
	post_effect_color = {a = 191, r = 255, g = 64, b = 0},
	groups = {lava = 3, liquid = 2, igniter = 1},
})

minetest.register_node("ws_core:lava_flowing", {
	description = "Flowing Lava",
	drawtype = "flowingliquid",
	tiles = {"ws_core_lava.png"},
	special_tiles = {
		{
			name = "ws_core_lava_flowing_animated.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.3,
			},
		},
		{
			name = "ws_core_lava_flowing_animated.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.3,
			},
		},
	},
	paramtype = "light",
	paramtype2 = "flowingliquid",
	light_source = ws_core.LIGHT_MAX - 1,
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "ws_core:lava_flowing",
	liquid_alternative_source = "ws_core:lava_source",
	liquid_viscosity = 7,
	liquid_renewable = false,
	damage_per_second = 4 * 2,
	post_effect_color = {a = 191, r = 255, g = 64, b = 0},
	groups = {lava = 3, liquid = 2, igniter = 1,
		not_in_creative_inventory = 1},
})

--
-- Tools / "Advanced" crafting / Non-"natural"
--

ws_core.chest = {}

function ws_core.chest.get_chest_formspec(pos)
	local spos = pos.x .. "," .. pos.y .. "," .. pos.z
	local formspec =
		"size[8,9]" ..
		ws_core.gui_bg ..
		ws_core.gui_bg_img ..
		ws_core.gui_slots ..
		"list[nodemeta:" .. spos .. ";main;0,0.3;8,4;]" ..
		"list[current_player;main;0,4.85;8,1;]" ..
		"list[current_player;main;0,6.08;8,3;8]" ..
		"listring[nodemeta:" .. spos .. ";main]" ..
		"listring[current_player;main]" ..
		ws_core.get_hotbar_bg(0,4.85)
	return formspec
end

function ws_core.chest.chest_lid_obstructed(pos)
	local above = {x = pos.x, y = pos.y + 1, z = pos.z}
	local def = minetest.registered_nodes[minetest.get_node(above).name]
	-- allow ladders, signs, wallmounted things and torches to not obstruct
	if def and
			(def.drawtype == "airlike" or
			def.drawtype == "signlike" or
			def.drawtype == "torchlike" or
			(def.drawtype == "nodebox" and def.paramtype2 == "wallmounted")) then
		return false
	end
	return true
end

function ws_core.chest.chest_lid_close(pn)
	local chest_open_info = ws_core.chest.open_chests[pn]
	local pos = chest_open_info.pos
	local sound = chest_open_info.sound
	local swap = chest_open_info.swap

	ws_core.chest.open_chests[pn] = nil
	for k, v in pairs(ws_core.chest.open_chests) do
		if v.pos.x == pos.x and v.pos.y == pos.y and v.pos.z == pos.z then
			return true
		end
	end

	local node = minetest.get_node(pos)
	minetest.after(0.2, minetest.swap_node, pos, { name = "ws_core:" .. swap,
			param2 = node.param2 })
	minetest.sound_play(sound, {gain = 0.3, pos = pos, max_hear_distance = 10})
end

ws_core.chest.open_chests = {}

minetest.register_on_player_receive_fields(function(player, formname, fields)
	if formname ~= "ws_core:chest" then
		return
	end
	if not player or not fields.quit then
		return
	end
	local pn = player:get_player_name()

	if not ws_core.chest.open_chests[pn] then
		return
	end

	ws_core.chest.chest_lid_close(pn)
	return true
end)

minetest.register_on_leaveplayer(function(player)
	local pn = player:get_player_name()
	if ws_core.chest.open_chests[pn] then
		ws_core.chest.chest_lid_close(pn)
	end
end)

function ws_core.chest.register_chest(name, d)
	local def = table.copy(d)
	def.drawtype = "mesh"
	def.visual = "mesh"
	def.paramtype = "light"
	def.paramtype2 = "facedir"
	def.legacy_facedir_simple = true
	def.is_ground_content = false

	if def.protected then
		def.on_construct = function(pos)
			local meta = minetest.get_meta(pos)
			meta:set_string("infotext", "Locked Chest")
			meta:set_string("owner", "")
			local inv = meta:get_inventory()
			inv:set_size("main", 8*4)
		end
		def.after_place_node = function(pos, placer)
			local meta = minetest.get_meta(pos)
			meta:set_string("owner", placer:get_player_name() or "")
			meta:set_string("infotext", "Locked Chest (owned by " ..
					meta:get_string("owner") .. ")")
		end
		def.can_dig = function(pos,player)
			local meta = minetest.get_meta(pos);
			local inv = meta:get_inventory()
			return inv:is_empty("main") and
					ws_core.can_interact_with_node(player, pos)
		end
		def.allow_metadata_inventory_move = function(pos, from_list, from_index,
				to_list, to_index, count, player)
			if not ws_core.can_interact_with_node(player, pos) then
				return 0
			end
			return count
		end
		def.allow_metadata_inventory_put = function(pos, listname, index, stack, player)
			if not ws_core.can_interact_with_node(player, pos) then
				return 0
			end
			return stack:get_count()
		end
		def.allow_metadata_inventory_take = function(pos, listname, index, stack, player)
			if not ws_core.can_interact_with_node(player, pos) then
				return 0
			end
			return stack:get_count()
		end
		def.on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
			if not ws_core.can_interact_with_node(clicker, pos) then
				return itemstack
			end

			minetest.sound_play(def.sound_open, {gain = 0.3,
					pos = pos, max_hear_distance = 10})
			if not ws_core.chest.chest_lid_obstructed(pos) then
				minetest.swap_node(pos,
						{ name = "ws_core:" .. name .. "_open",
						param2 = node.param2 })
			end
			minetest.after(0.2, minetest.show_formspec,
					clicker:get_player_name(),
					"ws_core:chest", ws_core.chest.get_chest_formspec(pos))
			ws_core.chest.open_chests[clicker:get_player_name()] = { pos = pos,
					sound = def.sound_close, swap = name }
		end
		def.on_blast = function() end
		def.on_key_use = function(pos, player)
			local secret = minetest.get_meta(pos):get_string("key_lock_secret")
			local itemstack = player:get_wielded_item()
			local key_meta = itemstack:get_meta()

			if key_meta:get_string("secret") == "" then
				key_meta:set_string("secret", minetest.parse_json(itemstack:get_metadata()).secret)
				itemstack:set_metadata("")
			end

			if secret ~= key_meta:get_string("secret") then
				return
			end

			minetest.show_formspec(
				player:get_player_name(),
				"ws_core:chest_locked",
				ws_core.chest.get_chest_formspec(pos)
			)
		end
		def.on_skeleton_key_use = function(pos, player, newsecret)
			local meta = minetest.get_meta(pos)
			local owner = meta:get_string("owner")
			local pn = player:get_player_name()

			-- verify placer is owner of lockable chest
			if owner ~= pn then
				minetest.record_protection_violation(pos, pn)
				minetest.chat_send_player(pn, "You do not own this chest.")
				return nil
			end

			local secret = meta:get_string("key_lock_secret")
			if secret == "" then
				secret = newsecret
				meta:set_string("key_lock_secret", secret)
			end

			return secret, "a locked chest", owner
		end
	else
		def.on_construct = function(pos)
			local meta = minetest.get_meta(pos)
			meta:set_string("infotext", "Chest")
			local inv = meta:get_inventory()
			inv:set_size("main", 8*4)
		end
		def.can_dig = function(pos,player)
			local meta = minetest.get_meta(pos);
			local inv = meta:get_inventory()
			return inv:is_empty("main")
		end
		def.on_rightclick = function(pos, node, clicker)
			minetest.sound_play(def.sound_open, {gain = 0.3, pos = pos,
					max_hear_distance = 10})
			if not ws_core.chest.chest_lid_obstructed(pos) then
				minetest.swap_node(pos, {
						name = "ws_core:" .. name .. "_open",
						param2 = node.param2 })
			end
			minetest.after(0.2, minetest.show_formspec,
					clicker:get_player_name(),
					"ws_core:chest", ws_core.chest.get_chest_formspec(pos))
			ws_core.chest.open_chests[clicker:get_player_name()] = { pos = pos,
					sound = def.sound_close, swap = name }
		end
		def.on_blast = function(pos)
			local drops = {}
			ws_core.get_inventory_drops(pos, "main", drops)
			drops[#drops+1] = "ws_core:" .. name
			minetest.remove_node(pos)
			return drops
		end
	end

	def.on_metadata_inventory_move = function(pos, from_list, from_index,
			to_list, to_index, count, player)
		minetest.log("action", player:get_player_name() ..
			" moves stuff in chest at " .. minetest.pos_to_string(pos))
	end
	def.on_metadata_inventory_put = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name() ..
			" moves " .. stack:get_name() ..
			" to chest at " .. minetest.pos_to_string(pos))
	end
	def.on_metadata_inventory_take = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name() ..
			" takes " .. stack:get_name() ..
			" from chest at " .. minetest.pos_to_string(pos))
	end

	local def_opened = table.copy(def)
	local def_closed = table.copy(def)

	def_opened.mesh = "chest_open.obj"
	for i = 1, #def_opened.tiles do
		if type(def_opened.tiles[i]) == "string" then
			def_opened.tiles[i] = {name = def_opened.tiles[i], backface_culling = true}
		elseif def_opened.tiles[i].backface_culling == nil then
			def_opened.tiles[i].backface_culling = true
		end
	end
	def_opened.drop = "ws_core:" .. name
	def_opened.groups.not_in_creative_inventory = 1
	def_opened.selection_box = {
		type = "fixed",
		fixed = { -1/2, -1/2, -1/2, 1/2, 3/16, 1/2 },
	}
	def_opened.can_dig = function()
		return false
	end
	def_opened.on_blast = function() end

	def_closed.mesh = nil
	def_closed.drawtype = nil
	def_closed.tiles[6] = def.tiles[5] -- swap textures around for "normal"
	def_closed.tiles[5] = def.tiles[3] -- drawtype to make them match the mesh
	def_closed.tiles[3] = def.tiles[3].."^[transformFX"

	minetest.register_node("ws_core:" .. name, def_closed)
	minetest.register_node("ws_core:" .. name .. "_open", def_opened)

	-- convert old chests to this new variant
	minetest.register_lbm({
		label = "update chests to opening chests",
		name = "ws_core:upgrade_" .. name .. "_v2",
		nodenames = {"ws_core:" .. name},
		action = function(pos, node)
			local meta = minetest.get_meta(pos)
			meta:set_string("formspec", nil)
			local inv = meta:get_inventory()
			local list = inv:get_list("ws_core:chest")
			if list then
				inv:set_size("main", 8*4)
				inv:set_list("main", list)
				inv:set_list("ws_core:chest", nil)
			end
		end
	})
end

ws_core.chest.register_chest("chest", {
	description = "Chest",
	tiles = {
		"ws_core_chest_top.png",
		"ws_core_chest_top.png",
		"ws_core_chest_side.png",
		"ws_core_chest_side.png",
		"ws_core_chest_front.png",
		"ws_core_chest_inside.png"
	},
	sounds = ws_core.node_sound_wood_ws_cores(),
	sound_open = "ws_core_chest_open",
	sound_close = "ws_core_chest_close",
	groups = {choppy = 2, oddly_breakable_by_hand = 2},
})

ws_core.chest.register_chest("chest_locked", {
	description = "Locked Chest",
	tiles = {
		"ws_core_chest_top.png",
		"ws_core_chest_top.png",
		"ws_core_chest_side.png",
		"ws_core_chest_side.png",
		"ws_core_chest_lock.png",
		"ws_core_chest_inside.png"
	},
	sounds = ws_core.node_sound_wood_ws_cores(),
	sound_open = "ws_core_chest_open",
	sound_close = "ws_core_chest_close",
	groups = {choppy = 2, oddly_breakable_by_hand = 2},
	protected = true,
})

local bookshelf_formspec =
	"size[8,7;]" ..
	ws_core.gui_bg ..
	ws_core.gui_bg_img ..
	ws_core.gui_slots ..
	"list[context;books;0,0.3;8,2;]" ..
	"list[current_player;main;0,2.85;8,1;]" ..
	"list[current_player;main;0,4.08;8,3;8]" ..
	"listring[context;books]" ..
	"listring[current_player;main]" ..
	ws_core.get_hotbar_bg(0,2.85)

local function update_bookshelf(pos)
	local meta = minetest.get_meta(pos)
	local inv = meta:get_inventory()
	local invlist = inv:get_list("books")

	local formspec = bookshelf_formspec
	-- Inventory slots overlay
	local bx, by = 0, 0.3
	local n_written, n_empty = 0, 0
	for i = 1, 16 do
		if i == 9 then
			bx = 0
			by = by + 1
		end
		local stack = invlist[i]
		if stack:is_empty() then
			formspec = formspec ..
				"image[" .. bx .. "," .. by .. ";1,1;ws_core_bookshelf_slot.png]"
		else
			local metatable = stack:get_meta():to_table() or {}
			if metatable.fields and metatable.fields.text then
				n_written = n_written + stack:get_count()
			else
				n_empty = n_empty + stack:get_count()
			end
		end
		bx = bx + 1
	end
	meta:set_string("formspec", formspec)
	if n_written + n_empty == 0 then
		meta:set_string("infotext", "Empty Bookshelf")
	else
		meta:set_string("infotext", "Bookshelf (" .. n_written ..
			" written, " .. n_empty .. " empty books)")
	end
end

minetest.register_node("ws_core:bookshelf", {
	description = "Bookshelf",
	tiles = {"ws_core_wood.png", "ws_core_wood.png", "ws_core_wood.png",
		"ws_core_wood.png", "ws_core_bookshelf.png", "ws_core_bookshelf.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3},
	sounds = ws_core.node_sound_wood_ws_cores(),

	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		local inv = meta:get_inventory()
		inv:set_size("books", 8 * 2)
		update_bookshelf(pos)
	end,
	can_dig = function(pos,player)
		local inv = minetest.get_meta(pos):get_inventory()
		return inv:is_empty("books")
	end,
	allow_metadata_inventory_put = function(pos, listname, index, stack)
		if minetest.get_item_group(stack:get_name(), "book") ~= 0 then
			return stack:get_count()
		end
		return 0
	end,
	on_metadata_inventory_move = function(pos, from_list, from_index, to_list, to_index, count, player)
		minetest.log("action", player:get_player_name() ..
			" moves stuff in bookshelf at " .. minetest.pos_to_string(pos))
		update_bookshelf(pos)
	end,
	on_metadata_inventory_put = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name() ..
			" puts stuff to bookshelf at " .. minetest.pos_to_string(pos))
		update_bookshelf(pos)
	end,
	on_metadata_inventory_take = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name() ..
			" takes stuff from bookshelf at " .. minetest.pos_to_string(pos))
		update_bookshelf(pos)
	end,
	on_blast = function(pos)
		local drops = {}
		ws_core.get_inventory_drops(pos, "books", drops)
		drops[#drops+1] = "ws_core:bookshelf"
		minetest.remove_node(pos)
		return drops
	end,
})

local function register_sign(material, desc, def)
	minetest.register_node("ws_core:sign_wall_" .. material, {
		description = desc .. " Sign",
		drawtype = "nodebox",
		tiles = {"ws_core_sign_wall_" .. material .. ".png"},
		inventory_image = "ws_core_sign_" .. material .. ".png",
		wield_image = "ws_core_sign_" .. material .. ".png",
		paramtype = "light",
		paramtype2 = "wallmounted",
		sunlight_propagates = true,
		is_ground_content = false,
		walkable = false,
		node_box = {
			type = "wallmounted",
			wall_top    = {-0.4375, 0.4375, -0.3125, 0.4375, 0.5, 0.3125},
			wall_bottom = {-0.4375, -0.5, -0.3125, 0.4375, -0.4375, 0.3125},
			wall_side   = {-0.5, -0.3125, -0.4375, -0.4375, 0.3125, 0.4375},
		},
		groups = def.groups,
		legacy_wallmounted = true,
		sounds = def.sounds,

		on_construct = function(pos)
			--local n = minetest.get_node(pos)
			local meta = minetest.get_meta(pos)
			meta:set_string("formspec", "field[text;;${text}]")
		end,
		on_receive_fields = function(pos, formname, fields, sender)
			--print("Sign at "..minetest.pos_to_string(pos).." got "..dump(fields))
			local player_name = sender:get_player_name()
			if minetest.is_protected(pos, player_name) then
				minetest.record_protection_violation(pos, player_name)
				return
			end
			local meta = minetest.get_meta(pos)
			if not fields.text then return end
			minetest.log("action", (player_name or "") .. " wrote \"" ..
				fields.text .. "\" to sign at " .. minetest.pos_to_string(pos))
			meta:set_string("text", fields.text)
			meta:set_string("infotext", '"' .. fields.text .. '"')
		end,
	})
end

register_sign("wood", "Wooden", {
	sounds = ws_core.node_sound_wood_ws_cores(),
	groups = {choppy = 2, attached_node = 1, flammable = 2, oddly_breakable_by_hand = 3}
})

register_sign("steel", "Steel", {
	sounds = ws_core.node_sound_metal_ws_cores(),
	groups = {cracky = 2, attached_node = 1}
})

minetest.register_node("ws_core:ladder_wood", {
	description = "Wooden Ladder",
	drawtype = "signlike",
	tiles = {"ws_core_ladder_wood.png"},
	inventory_image = "ws_core_ladder_wood.png",
	wield_image = "ws_core_ladder_wood.png",
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	climbable = true,
	is_ground_content = false,
	selection_box = {
		type = "wallmounted",
		--wall_top = = <ws_core>
		--wall_bottom = = <ws_core>
		--wall_side = = <ws_core>
	},
	groups = {choppy = 2, oddly_breakable_by_hand = 3, flammable = 2},
	legacy_wallmounted = true,
	sounds = ws_core.node_sound_wood_ws_cores(),
})

minetest.register_node("ws_core:ladder_steel", {
	description = "Steel Ladder",
	drawtype = "signlike",
	tiles = {"ws_core_ladder_steel.png"},
	inventory_image = "ws_core_ladder_steel.png",
	wield_image = "ws_core_ladder_steel.png",
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	climbable = true,
	is_ground_content = false,
	selection_box = {
		type = "wallmounted",
		--wall_top = = <ws_core>
		--wall_bottom = = <ws_core>
		--wall_side = = <ws_core>
	},
	groups = {cracky = 2},
	sounds = ws_core.node_sound_metal_ws_cores(),
})

ws_core.register_fence("ws_core:fence_wood", {
	description = "Apple Wood Fence",
	texture = "ws_core_fence_wood.png",
	inventory_image = "ws_core_fence_overlay.png^ws_core_wood.png^ws_core_fence_overlay.png^[makealpha:255,126,126",
	wield_image = "ws_core_fence_overlay.png^ws_core_wood.png^ws_core_fence_overlay.png^[makealpha:255,126,126",
	material = "ws_core:wood",
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
	sounds = ws_core.node_sound_wood_ws_cores()
})

ws_core.register_fence("ws_core:fence_acacia_wood", {
	description = "Acacia Wood Fence",
	texture = "ws_core_fence_acacia_wood.png",
	inventory_image = "ws_core_fence_overlay.png^ws_core_acacia_wood.png^ws_core_fence_overlay.png^[makealpha:255,126,126",
	wield_image = "ws_core_fence_overlay.png^ws_core_acacia_wood.png^ws_core_fence_overlay.png^[makealpha:255,126,126",
	material = "ws_core:acacia_wood",
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
	sounds = ws_core.node_sound_wood_ws_cores()
})

ws_core.register_fence("ws_core:fence_junglewood", {
	description = "Jungle Wood Fence",
	texture = "ws_core_fence_junglewood.png",
	inventory_image = "ws_core_fence_overlay.png^ws_core_junglewood.png^ws_core_fence_overlay.png^[makealpha:255,126,126",
	wield_image = "ws_core_fence_overlay.png^ws_core_junglewood.png^ws_core_fence_overlay.png^[makealpha:255,126,126",
	material = "ws_core:junglewood",
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
	sounds = ws_core.node_sound_wood_ws_cores()
})

ws_core.register_fence("ws_core:fence_pine_wood", {
	description = "Pine Wood Fence",
	texture = "ws_core_fence_pine_wood.png",
	inventory_image = "ws_core_fence_overlay.png^ws_core_pine_wood.png^ws_core_fence_overlay.png^[makealpha:255,126,126",
	wield_image = "ws_core_fence_overlay.png^ws_core_pine_wood.png^ws_core_fence_overlay.png^[makealpha:255,126,126",
	material = "ws_core:pine_wood",
	groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3},
	sounds = ws_core.node_sound_wood_ws_cores()
})

ws_core.register_fence("ws_core:fence_aspen_wood", {
	description = "Aspen Wood Fence",
	texture = "ws_core_fence_aspen_wood.png",
	inventory_image = "ws_core_fence_overlay.png^ws_core_aspen_wood.png^ws_core_fence_overlay.png^[makealpha:255,126,126",
	wield_image = "ws_core_fence_overlay.png^ws_core_aspen_wood.png^ws_core_fence_overlay.png^[makealpha:255,126,126",
	material = "ws_core:aspen_wood",
	groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3},
	sounds = ws_core.node_sound_wood_ws_cores()
})

minetest.register_node("ws_core:glass", {
	description = "Glass",
	drawtype = "glasslike_framed_optional",
	tiles = {"ws_core_glass.png", "ws_core_glass_detail.png"},
	paramtype = "light",
	paramtype2 = "glasslikeliquidlevel",
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {cracky = 3, oddly_breakable_by_hand = 3},
	sounds = ws_core.node_sound_glass_ws_cores(),
})

minetest.register_node("ws_core:obsidian_glass", {
	description = "Obsidian Glass",
	drawtype = "glasslike_framed_optional",
	tiles = {"ws_core_obsidian_glass.png", "ws_core_obsidian_glass_detail.png"},
	paramtype = "light",
	paramtype2 = "glasslikeliquidlevel",
	is_ground_content = false,
	sunlight_propagates = true,
	sounds = ws_core.node_sound_glass_ws_cores(),
	groups = {cracky = 3},
})


minetest.register_node("ws_core:brick", {
	description = "Brick Block",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"ws_core_brick.png"},
	is_ground_content = false,
	groups = {cracky = 3},
	sounds = ws_core.node_sound_stone_ws_cores(),
})


minetest.register_node("ws_core:meselamp", {
	description = "Mese Lamp",
	drawtype = "glasslike",
	tiles = {"ws_core_meselamp.png"},
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {cracky = 3, oddly_breakable_by_hand = 3},
	sounds = ws_core.node_sound_glass_ws_cores(),
	light_source = ws_core.LIGHT_MAX,
})

minetest.register_node("ws_core:mese_post_light", {
	description = "Mese Post Light",
	tiles = {"ws_core_mese_post_light_top.png", "ws_core_mese_post_light_top.png",
		"ws_core_mese_post_light_side_dark.png", "ws_core_mese_post_light_side_dark.png",
		"ws_core_mese_post_light_side.png", "ws_core_mese_post_light_side.png"},
	wield_image = "ws_core_mese_post_light_side.png",
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-2 / 16, -8 / 16, -2 / 16, 2 / 16, 8 / 16, 2 / 16},
		},
	},
	paramtype = "light",
	light_source = ws_core.LIGHT_MAX,
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
	sounds = ws_core.node_sound_wood_ws_cores(),
})

--
-- Misc
--

minetest.register_node("ws_core:cloud", {
	description = "Cloud",
	tiles = {"ws_core_cloud.png"},
	is_ground_content = false,
	sounds = ws_core.node_sound_ws_cores(),
	groups = {not_in_creative_inventory = 1},
})

--
-- register trees for leafdecay
--

if minetest.get_mapgen_setting("mg_name") == "v6" then
	ws_core.register_leafdecay({
		trunks = {"ws_core:tree"},
		leaves = {"ws_core:apple", "ws_core:leaves"},
		radius = 2,
	})

	ws_core.register_leafdecay({
		trunks = {"ws_core:jungletree"},
		leaves = {"ws_core:jungleleaves"},
		radius = 3,
	})

	ws_core.register_leafdecay({
		trunks = {"ws_core:pine_tree"},
		leaves = {"ws_core:pine_needles"},
		radius = 3,
	})
else
	ws_core.register_leafdecay({
		trunks = {"ws_core:tree"},
		leaves = {"ws_core:apple", "ws_core:leaves"},
		radius = 3,
	})

	ws_core.register_leafdecay({
		trunks = {"ws_core:jungletree"},
		leaves = {"ws_core:jungleleaves"},
		radius = 2,
	})

	ws_core.register_leafdecay({
		trunks = {"ws_core:pine_tree"},
		leaves = {"ws_core:pine_needles"},
		radius = 2,
	})
end

ws_core.register_leafdecay({
	trunks = {"ws_core:acacia_tree"},
	leaves = {"ws_core:acacia_leaves"},
	radius = 2,
})

ws_core.register_leafdecay({
	trunks = {"ws_core:aspen_tree"},
	leaves = {"ws_core:aspen_leaves"},
	radius = 3,
})

ws_core.register_leafdecay({
	trunks = {"ws_core:bush_stem"},
	leaves = {"ws_core:bush_leaves"},
	radius = 1,
})

ws_core.register_leafdecay({
	trunks = {"ws_core:acacia_bush_stem"},
	leaves = {"ws_core:acacia_bush_leaves"},
	radius = 1,
})
