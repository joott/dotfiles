vim.g.vim_markdown_conceal = 2
vim.g.vim_markdown_math = 1
vim.g.vim_markdown_toc_autofit = 1

local map = vim.keymap.set;
local opts = { noremap = false, silent = true}

map('', 'o', '<Plug>Markdown_NewLineBelow<Esc>', opts)
map('', 'O', '<Plug>Markdown_NewLineAbove<Esc>', opts)
