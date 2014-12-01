local pixel = {}
pixels.colors = {
	{"white",      "White",      nil},
	{"grey",       "Grey",       "basecolor_grey"},
	{"black",      "Black",      "basecolor_black"},
	{"red",        "Red",        "basecolor_red"},
	{"yellow",     "Yellow",     "basecolor_yellow"},
	{"green",      "Green",      "basecolor_green"},
	{"cyan",       "Cyan",       "basecolor_cyan"},
	{"blue",       "Blue",       "basecolor_blue"},
	{"magenta",    "Magenta",    "basecolor_magenta"},
	{"orange",     "Orange",     "excolor_orange"},
	{"violet",     "Violet",     "excolor_violet"},
	{"brown",      "Brown",      "unicolor_dark_orange"},
	{"pink",       "Pink",       "unicolor_light_red"},
	{"dark_grey",  "Dark Grey",  "unicolor_darkgrey"},
	{"dark_green", "Dark Green", "unicolor_dark_green"},
}

for _, row in ipairs(pixels.colors) do
	local name = row[1]
	local desc = row[2]
	local craft_color_group = row[3]
	minetest.register_node("pixels:"..name, {
		description = desc.." Pixel",
		tiles = {"pixel_"..name..".png"},
		groups = {snappy=2,choppy=2,oddly_breakable_by_hand=3,flammable=3,wool=1},
--		sounds = default.node_sound_defaults(),
	})
end
