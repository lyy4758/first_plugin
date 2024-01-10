local colors = {}

colors.foreground = "#FFFFFF"
colors.background = "#804015"
colors.header_background = "#2C896B"
colors.background_middle = "#252526"
local component_colors = {
	a = { fg = colors.foreground, bg = colors.header_background },
	b = { fg = colors.foreground, bg = colors.background },
	c = { fg = colors.foreground, bg = colors.background},
	-- d = { fg = colors.foreground, bg = colors.background_middle},
	x = { fg = colors.foreground, bg = colors.background },
	y = { fg = colors.foreground, bg = colors.background },
	z = { fg = colors.foreground, bg = colors.background },
}

return {
	normal = component_colors,
	insert = component_colors,
	visual = component_colors,
	replace = component_colors,
	command = component_colors,
	inactive = component_colors,
}
