-- Somewhere in your Neovim startup, e.g. init.lua
require("luasnip").config.set_config({ -- Setting LuaSnip config
    enable_autosnippets = true,
    store_selection_keys = "<Tab>",
    region_check_events = 'InsertEnter',
    delete_check_events = 'InsertLeave'
})

-- Load all snippets from the nvim/LuaSnip directory at startup
require("luasnip.loaders.from_lua").load({paths = "~/.config/nvim/snips/"})
