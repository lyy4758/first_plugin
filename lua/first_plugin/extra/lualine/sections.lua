---@diagnostic disable: unused-local
return function()
	return {
		lualine_a = {
			{
				"headers",
				fmt = function(content, context)
					return "  "
				end,
			},
		},
		lualine_b = {
			{
				"mode",
				fmt = function(content, context)
					return ("%s"):format(content)
				end,
			},
		},
		lualine_c = {
			{
				"filename",
				symbols = {
					modified = "",
					readonly = "",
					unnamed = "",
					newfile = "",
				},
			},
		},
    lualine_y ={
			{ "branch", icon = "" },
    },
		lualine_z = {
			-- {
			-- 	"filetype",
			-- 	icons_enabled = false,
			-- },
			{
				"decorate",
				fmt = function(content, context)
					-- 
					return "   "
				end,
			},
		},
	}
end
