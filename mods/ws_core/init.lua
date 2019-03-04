-- Minetest 0.4 mod: ws_core
-- See README.txt for licensing and other information.

-- The API documentation in here was moved into game_api.txt

-- Definitions made by this mod that other mods can use too
ws_core = {}

ws_core.LIGHT_MAX = 14

-- GUI related stuff
ws_core.gui_bg     = ""
ws_core.gui_bg_img = ""
ws_core.gui_slots  = ""

minetest.register_on_joinplayer(function(player)
	player:set_formspec_prepend([[
			bgcolor[#080808BB;true]
			background[5,5;1,1;gui_formbg.png;true]
			listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF] ]])
end)

function ws_core.get_hotbar_bg(x,y)
	local out = ""
	for i=0,7,1 do
		out = out .."image["..x+i..","..y..";1,1;gui_hb_bg.png]"
	end
	return out
end

ws_core.gui_survival_form = "size[8,8.5]"..
			ws_core.gui_bg..
			ws_core.gui_bg_img..
			ws_core.gui_slots..
			"list[current_player;main;0,4.25;8,1;]"..
			"list[current_player;main;0,5.5;8,3;8]"..
			"list[current_player;craft;1.75,0.5;3,3;]"..
			"list[current_player;craftpreview;5.75,1.5;1,1;]"..
			"image[4.75,1.5;1,1;gui_furnace_arrow_bg.png^[transformR270]"..
			"listring[current_player;main]"..
			"listring[current_player;craft]"..
			ws_core.get_hotbar_bg(0,4.25)

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
