-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
-- config.color_scheme = 'Catppuccin Macchiato'

local scheme = wezterm.color.get_builtin_schemes()['Catppuccin Macchiato']
scheme.ansi = {
    "#414559", 
    "#FB6E71", 
    "#A1EB70", 
    "#FBCF7A", 
    "#81A6F9", 
    "#FEAEE9", 
    "#67e5d4", 
    "#CDD2E4", 
}

scheme.brights = {
    "#51576d",
    "#FB6E71", 
    "#A1EB70", 
    "#FBCF7A", 
    "#81A6F9", 
    "#FEAEE9", 
    "#67e5d4", 
	"#DADFF1",
}

config.color_schemes = {
    ["BETTERppuccin"] = scheme
}
config.color_scheme = "BETTERppuccin"

-- config.font = wezterm.font 'FiraCode Nerd Font'
config.font = wezterm.font_with_fallback {
    'FiraCode Nerd Font',
}
config.font_size = 11.0

config.hide_tab_bar_if_only_one_tab = true

-- and finally, return the configuration to wezterm
return config
