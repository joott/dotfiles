local map = vim.keymap.set
local opts = { noremap = false, silent = true}

map('', 'o', '<Plug>Markdown_NewLineBelow<Esc>', opts)
map('', 'O', '<Plug>Markdown_NewLineAbove<Esc>', opts)
