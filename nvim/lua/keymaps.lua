local map = vim.keymap.set;
local builtin = require('telescope.builtin')
local opts = { noremap = true, silent = true}

map('', '<Up>', 'gk', opts)
map('', '<Down>', 'gj', opts)
map('n', 'J', 'mzJ`z', opts)

map('', 'o', 'o<Esc>', opts)
map('', 'O', 'O<Esc>', opts)

map('i', '<C-Space>', '<Esc>', opts)
map('v', '<C-Space>', '<Esc>', opts)
map('t', '<C-Space>', '<C-\\><C-n>', opts)
map('v', '<PageDown>', ":m '>+1<CR>gv=gv", opts)
map('v', '<PageUp>', ":m '<-2<CR>gv=gv", opts)

map('n', 'Q', '<nop>')

--
-- telescope
-- 
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
--

map("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
map('n', '<leader>u', vim.cmd.UndotreeToggle)
map('n', '<PageUp>', vim.cmd.BufferLineCycleNext)
map('n', '<PageDown>', vim.cmd.BufferLineCyclePrev)
map('n', '<leader>br', vim.cmd.BufDel)

--
-- window resizing
--
-- map('n', '<S-Left>', ':vertical resize -2<CR>', { silent = true })
-- map('n', '<S-Right>', ':vertical resize +2<CR>', { silent = true })
-- map('n', '<S-Up>', ':resize +2<CR>', { silent = true })
-- map('n', '<S-Down>', ':resize -2<CR>', { silent = true })

map('n', '<C-p>', ':MarkdownPreview<CR>', { silent = true })

map('x', 'p', '\"_dP')

map('n', '<leader>y', '\"+y')
map('v', '<leader>y', '\"+y')
map('n', '<leader>Y', '\"+Y')

map('n', '<leader>d', '\"+d')
map('v', '<leader>d', '\"+d')

map('n', '<leader>js', ':vertical botright Repl julia<CR>')
map('n', '<leader>jr', function()
    vim.cmd.ReplSend(string.format('include("%s")', vim.fn.expand('%:p')))
end)
map('n', '<leader>j;', function()
    vim.cmd.ReplSend(string.format('include("%s");', vim.fn.expand('%:p')))
end)

map('n', '<C-h>', vim.cmd.HopWord)

map('n', '<leader>vv', vim.cmd.VimtexCompile)
map('n', '<leader>vc', ':VimtexClean!<CR>')

map('i', '<C-f>', [[<Esc>: silent exec '.!inkscape-figures create "'.getline('.').'" "'.b:vimtex.root.'/figures/"'<CR><CR>:w<CR>]], opts)
map('n', '<C-f>', [[: silent exec '!inkscape-figures edit "'.b:vimtex.root.'/figures/" > /dev/null 2>&1 &'<CR><CR>:redraw!<CR>]], opts)

map('i', '<C-x>', [[<Esc>: silent exec '.!xoppdog shake "'.getline('.').'" "'.b:vimtex.root.'/figures/"'<CR><CR>:w<CR>]], opts)
map('n', '<C-x>', [[: silent exec '!xoppdog fetch "'.b:vimtex.root.'/figures/" > /dev/null 2>&1 &'<CR><CR>:redraw!<CR>]], opts)

vim.cmd([[
imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>' 
inoremap <silent> <S-Tab> <cmd>lua require'luasnip'.jump(-1)<Cr>

snoremap <silent> <Tab> <cmd>lua require('luasnip').jump(1)<Cr>
snoremap <silent> <S-Tab> <cmd>lua require('luasnip').jump(-1)<Cr>
]])

map('n', '<leader>xx', function() require('trouble').toggle() end)
