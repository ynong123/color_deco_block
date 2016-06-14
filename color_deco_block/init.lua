-- Mod: Color Decoration Block
-- Created by ynong123

color_deco_block = {}

function color_deco_block.register_deco_block(name, subdescription)
	minetest.register_node("color_deco_block:" .. name, {
		description = subdescription .. " Decoration Block",
		tiles = {name .. ".png"},
		groups = {cracky = 2},
		is_ground_content = false,
		paramtype = "light",
		light_source = default.LIGHT_MAX - 1
	})
	minetest.register_craft({
		output = "color_deco_block:" .. name .. " 1",
		type = "shapeless",
		recipe = {"default:glass", "dye:" .. name}
	})
	minetest.register_node("color_deco_block:stair_" .. name, {
		description = subdescription .. " Decoration Stair",
		tiles = {name .. ".png"},
		groups = {cracky = 2},
		is_ground_content = false,
		paramtype = "light",
		paramtype2 = "facedir",
		light_source = default.LIGHT_MAX - 1,
		legacy_facedir_simple = true,
		drawtype = "nodebox",
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
				{-0.5, 0, 0, 0.5, 0.5, 0.5}
			}
		}
	})
	minetest.register_craft({
		output = "color_deco_block:stair_" .. name .. " 6",
		recipe = {
			{"", "", "color_deco_block:" .. name},
			{"", "color_deco_block:" .. name, "color_deco_block:" .. name},
			{"color_deco_block:" .. name, "color_deco_block:" .. name, "color_deco_block:" .. name}
		}
	})
	minetest.register_craft({
		output = "color_deco_block:stair_" .. name .. " 6",
		recipe = {
			{"color_deco_block:" .. name, "", ""},
			{"color_deco_block:" .. name, "color_deco_block:" .. name, ""},
			{"color_deco_block:" .. name, "color_deco_block:" .. name, "color_deco_block:" .. name}
		}
	})
end

color_deco_block.register_deco_block("black", "Black")
color_deco_block.register_deco_block("blue", "Blue")
color_deco_block.register_deco_block("brown", "Brown")
color_deco_block.register_deco_block("cyan", "Cyan")
color_deco_block.register_deco_block("dark_green", "Dark Green")
color_deco_block.register_deco_block("dark_grey", "Dark Grey")
color_deco_block.register_deco_block("green", "Green")
color_deco_block.register_deco_block("grey", "Grey")
color_deco_block.register_deco_block("magenta", "Magenta")
color_deco_block.register_deco_block("orange", "Orange")
color_deco_block.register_deco_block("pink", "Pink")
color_deco_block.register_deco_block("red", "Red")
color_deco_block.register_deco_block("violet", "Violet")
color_deco_block.register_deco_block("white", "White")
color_deco_block.register_deco_block("yellow", "Yellow")