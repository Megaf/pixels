local pixels = {}
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
		tiles = {"pixel_frame.png", "pixel_".'.name..'.png", ""pixel_'..name..'.png^pixel_frame.png"},
		groups = {cracky=3,oddly_breakable_by_hand=3},
		stack_max = 10000,
		sunlight_propagates = true,
	})
end
