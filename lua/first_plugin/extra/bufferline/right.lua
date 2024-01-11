---@diagnostic disable-next-line: unused-local
local util = require("first_plugin.util.util")
return function()
	return function()
		return {
			{ text = "  ", bg =util.get_normal_bg_color(), fg = "#FFFFFF" },
			{ text = "  ", bg =util.get_normal_bg_color(), fg = "#FFFFFF" },
			{ text = "  ", bg =util.get_normal_bg_color(), fg = "#FFFFFF" },
		}
	end
end
