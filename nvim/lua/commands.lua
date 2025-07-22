vim.api.nvim_create_autocmd("ColorScheme", {
    pattern = "*",
    callback = function()
        package.loaded["feline"] = nil
        package.loaded["catppuccin.groups.integrations.feline"] = nil
        require("feline").setup {
            components = require("catppuccin.groups.integrations.feline").get(),
        }
    end,
})

vim.api.nvim_create_autocmd({'BufEnter', 'BufWinEnter'}, {
    pattern = '*.jl',
    callback = function(ev)
        vim.keymap.set('n', '<leader>js', '<cmd>lua _jlrepl_open()<CR>', { noremap = true, silent = true , buffer = true })
    end
})

vim.api.nvim_create_autocmd({'BufEnter', 'BufWinEnter'}, {
    pattern = '*.tex',
    callback = function(ev)
        vim.keymap.set('i', '<C-f>', [[<Esc>: silent exec '.!inkscape-figures create "'.getline('.').'" "'.b:vimtex.root.'/figures/"'<CR><CR>:w<CR>]], { buffer = true})
        vim.keymap.set('n', '<C-f>', [[: silent exec '!inkscape-figures edit "'.b:vimtex.root.'/figures/" > /dev/null 2>&1 &'<CR><CR>:redraw!<CR>]], { buffer = true})

        vim.keymap.set('i', '<C-x>', [[<Esc>: silent exec '.!xoppdog shake "'.getline('.').'" "'.b:vimtex.root.'/figures/"'<CR><CR>:w<CR>]], { buffer = true})
        vim.keymap.set('n', '<C-x>', [[: silent exec '!xoppdog fetch "'.b:vimtex.root.'/figures/" > /dev/null 2>&1 &'<CR><CR>:redraw!<CR>]], { buffer = true})
    end
})
