vim.cmd.colorscheme "catppuccin"
vim.opt.termguicolors = true

require("bufferline").setup({
    options = {
        offsets = {
            {
                filetype = "undotree",
                text = "Undo Zone",
                text_align = "center",
                separator = true
            }
        },
        show_buffer_icons = true, -- disable filetype icons for buffers
        separator_style = "thick",
        hover = {
            enabled = true,
            delay = 200,
            reveal = {'close'}
        },
    }
})
