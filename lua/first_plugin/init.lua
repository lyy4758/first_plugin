local default_config = require("first_plugin.conf")
local core = require("first_plugin.core")
local test = require("first_plugin.test")
local M = {
	_conf = {},
	_colors = {},
}
function M.get_config()
	return M._conf
end
function M.get_color()
	return M._colors
end
test.begin()
M.info = "this is my first neovim plugin"
function M.setup(opts)
	-- vim.notify(M.info, "info")
	-- vim.print(default_config)
	-- vim.print(opts)

	-- user config overwrite default config
	local conf = vim.tbl_deep_extend("force", default_config, opts or {})
	core.set_normal_background(conf.color, conf.style)
	-- vim.print(conf)
end

function M.get_lualine_sections()
    return require("first_plugin.extra.lualine.sections")()
end
function M.get_bufferline_right()
	-- vim.notify("get_bufferline_right", "info")
	return require("first_plugin.extra.bufferline.right")()
end
return M
