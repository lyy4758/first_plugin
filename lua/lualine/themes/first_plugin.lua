-- local colors = {}
local util = require("first_plugin.util.util")
-- colors.foreground = "#FFFFFF"
-- colors.background = "#804015"
-- colors.header_background = "#2C896B"
-- colors.background_green = "##00FF00"
-- colors.background_LimeGreen = "#32CD32"
-- colors.background_LawnGreen = "#7CFC00"
-- colors.background_LightGreen = "#90EE90"
-- colors.background_Purple = "#800080"
local colors = require("first_plugin.colors").colors
local component_colors = {
	a = { fg = colors.white, bg = colors.deep_green },
	b = { fg = colors.white, bg = colors.olive },
	c = { fg = colors.deep_cyan, bg = util.get_normal_bg_color() },

	x = { fg = colors.white, bg = util.get_normal_bg_color() },
	y = { fg = colors.white, bg = colors.dark_slate_gray },
	z = { fg = colors.black, bg = colors.plum},
}

return {
	normal = component_colors,
	insert = component_colors,
	visual = component_colors,
	replace = component_colors,
	command = component_colors,
	inactive = component_colors,
}
