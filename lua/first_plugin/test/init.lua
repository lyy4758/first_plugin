local M = {}

local function reload_plugin()
  for plugin_name, _ in pairs(package.loaded) do
      if plugin_name:match("first_plugin") then
          package.loaded[plugin_name] = nil
    end
  end

  require('first_plugin').setup()
end

function M.begin()
   vim.keymap.set("n","<leader>rt",reload_plugin,{desc='quick reload plugin',})
end
return M
