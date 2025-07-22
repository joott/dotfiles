local function map(m, k, v)
	vim.keymap.set(m, k, v, { noremap = true, silent = true })
end
local builtin = require('telescope.builtin')

map('', '<Up>', 'gk')
map('', '<Down>', 'gj')
map('n', 'J', 'mzJ`z')

map('', 'o', 'o<Esc>')
map('', 'O', 'O<Esc>')

map('t', '<C-Space>', '<C-\\><C-n>')
map('v', '<PageDown>', "<cmd>m '>+1<CR>gv=gv")
map('v', '<PageUp>', "<cmd>m '<-2<CR>gv=gv")

-- telescope
map('n', '<leader>pf', builtin.find_files, {})
map('n', '<leader>pg', function()
    -- If the directory is not a git repository, fallback to regular find_files.
    if pcall(builtin.git_files) then
    else
        pcall(builtin.find_files)
    end
end, {})
map('n', '<leader>fs', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end, {})

-- mini
map('n', '-', '<cmd>lua MiniFiles.open()<CR>')
map('n', '<leader>wt', '<cmd>lua MiniTrailspace.trim()<CR>')

-- toggleterm
map('n', '<leader>g', '<cmd>lua _lazygit_toggle()<CR>')

-- misc plugin keymaps
map('n', '<leader>u', vim.cmd.UndotreeToggle)

map('n', '<C-h>', vim.cmd.HopWord)

map('n', '<leader>vv', vim.cmd.VimtexCompile)
map('n', '<leader>vc', '<cmd>VimtexClean!<CR>')

map('n', '<leader>tw', '<cmd>Twilight<CR>')

-- buffers
map('n', '<PageUp>', '<cmd>bnext<CR>')
map('n', '<PageDown>', '<cmd>bprevious<CR>')
map('n', '<leader>br', '<cmd>BufferClose<CR>')
map('n', '<leader>Q', '<cmd>BufferClose!<CR>')
map('n', '<leader>bn', '<cmd>BufferOrderByBufferNumber<CR>')
map('n', '<leader>U', '<cmd>bufdo bd<CR>') --close all
map('n', '<leader>vs', '<cmd>vsplit<CR><cmd>bnext<CR>') --ver split + open next buffer

-- buffer position nav + reorder
map('n', '<A-Left>', '<cmd>BufferMovePrevious<CR>')
map('n', '<A-Right>', '<cmd>BufferMoveNext<CR>')
map('n', '<A-1>', '<cmd>BufferGoto 1<CR>')
map('n', '<A-2>', '<cmd>BufferGoto 2<CR>')
map('n', '<A-3>', '<cmd>BufferGoto 3<CR>')
map('n', '<A-4>', '<cmd>BufferGoto 4<CR>')
map('n', '<A-5>', '<cmd>BufferGoto 5<CR>')
map('n', '<A-6>', '<cmd>BufferGoto 6<CR>')
map('n', '<A-7>', '<cmd>BufferGoto 7<CR>')
map('n', '<A-8>', '<cmd>BufferGoto 8<CR>')
map('n', '<A-9>', '<cmd>BufferGoto 9<CR>')
map('n', '<A-0>', '<cmd>BufferLast<CR>')
map('n', '<A-p>', '<cmd>BufferPin<CR>')

-- window resizing
map('n', '<S-Left>', ':vertical resize -2<CR>')
map('n', '<S-Right>', ':vertical resize +2<CR>')
map('n', '<S-Up>', ':resize +2<CR>')
map('n', '<S-Down>', ':resize -2<CR>')

-- clipboard management
map('x', 'p', '\"_dP')

map('n', '<leader>y', '\"+y')
map('v', '<leader>y', '\"+y')
map('n', '<leader>Y', '\"+Y')

map('n', '<leader>d', '\"+d')
map('v', '<leader>d', '\"+d')

-- luasnip
vim.cmd([[
imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>'
inoremap <silent> <S-Tab> <cmd>lua require'luasnip'.jump(-1)<CR>

snoremap <silent> <Tab> <cmd>lua require('luasnip').jump(1)<CR>
snoremap <silent> <S-Tab> <cmd>lua require('luasnip').jump(-1)<CR>
]])
