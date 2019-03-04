-- Minetest 0.4 mod: ws_core
-- See README.txt for licensing and other information.

-- The API documentation in here was moved into game_api.txt

-- Definitions made by this mod that other mods can use too
ws_core = {}

ws_core.LIGHT_MAX = 14

-- Load files
local ws_core_path = minetest.get_modpath("ws_core")

dofile(ws_core_path.."/functions.lua")
dofile(ws_core_path.."/nodes.lua")
dofile(ws_core_path.."/tools.lua")
dofile(ws_core_path.."/item_entity.lua")
dofile(ws_core_path.."/craftitems.lua")
dofile(ws_core_path.."/crafting.lua")
dofile(ws_core_path.."/mapgen.lua")
dofile(ws_core_path.."/aliases.lua")
dofile(ws_core_path.."/legacy.lua")
