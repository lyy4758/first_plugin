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
			{ "branch", icon = "" },
			{
				"mode",
				fmt = function(content, context)
					return ("- %s -"):format(content)
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
		-- lualine_c = {
		-- 	{ "filename", path = 1 },
		-- },
		lualine_x = {
			{
				function()
					local icon = require("icons").kind.Copilot_alt
					local status = require("copilot.api").status.data
					return icon .. (status.message or "")
				end,
				cond = function()
					if not package.loaded["copilot"] then
						return
					end
					local ok, clients = pcall(require("util.lsp").get_clients, { name = "copilot", bufnr = 0 })
					if not ok then
						return false
					end
					return ok and #clients > 0
				end,
				color = function()
					if not package.loaded["copilot"] then
						return
					end
					local status = require("copilot.api").status.data
          local colors = require("first_plugin.extra.lualine.color").colors
					return colors[status.status] or colors[""]
				end,
			},
			-- 其他 lualine_x 配置...
			{ "encoding" },
			{ "filetype" },
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
