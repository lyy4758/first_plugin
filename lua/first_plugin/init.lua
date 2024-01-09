local default_config = require('first_plugin.conf')
local core = require('first_plugin.core')
local test = require('first_plugin.test')
local M = {}
test.begin()
M.info =  "this is my first neovim plugin"
function M.setup(opts)
  vim.notify(M.info,"info")
  -- vim.print(default_config)
  -- vim.print(opts)

  -- user config overwrite default config
  local conf = vim.tbl_deep_extend("force", default_config, opts or {})
  core.set_normal_background(conf.color,conf.style)
  -- vim.print(conf)
end
return M
