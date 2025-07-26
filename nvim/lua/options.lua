vim.cmd "set undofile"
-- vim.opt.isfname:append("@-@")
vim.g.mapleader = ' '

local options = {
    nu = true,
    relativenumber = true,

    tabstop = 4,
    softtabstop = 4,
    shiftwidth = 4,
    expandtab = true,

    smartindent = false,
    autoindent = true,

    wrap = true,

    hlsearch = false,
    incsearch = true,

    scrolloff = 8,
    signcolumn = "no",
    cursorline = true,
    cursorlineopt = "number",

    ignorecase = true,
    smartcase = true,

    showmode = false,
}

for k, v in pairs(options) do
	vim.opt[k] = v
end
