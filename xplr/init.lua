version = "0.21.3"

local home = os.getenv("HOME")
package.path = home
  .. "/.config/xplr/plugins/?/init.lua;"
  .. home
  .. "/.config/xplr/plugins/?.lua;"
  .. package.path

local xpm_path = home .. "/.local/share/xplr/dtomvan/xpm.xplr"
local xpm_url = "https://github.com/dtomvan/xpm.xplr"
package.path = package.path
.. ";"
  .. xpm_path
  .. "/?.lua;"
  .. xpm_path
  .. "/?/init.lua"

os.execute(
  string.format(
    "[ -e '%s' ] || git clone '%s' '%s'",
    xpm_path,
    xpm_url,
    xpm_path
  )
)

require("xpm").setup({
  plugins = {
    'dtomvan/xpm.xplr',
    'sayanarijit/fzf.xplr',
    'gitlab:hartan/web-devicons.xplr',
    'sayanarijit/wl-clipboard.xplr',
    'sayanarijit/map.xplr',
    'sayanarijit/zoxide.xplr',
    'sayanarijit/zentable.xplr',
  },
  auto_install = true,
  auto_cleanup = true,
})

xplr.config.modes.builtin.default.key_bindings.on_key.x = {
  help = "xpm",
  messages = {
    "PopMode",
    { SwitchModeCustom = "xpm" },
  },
}

require("fzf").setup({
    mode = "default",
    key = "ctrl-f",
    bin = "fzf",
    recursive = true,
    enter_dir = true,
})

require("wl-clipboard").setup()
require("map").setup()
require("zoxide").setup()
require("zentable").setup()
require("icons").setup()
