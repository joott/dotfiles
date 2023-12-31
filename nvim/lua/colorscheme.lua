require("catppuccin").setup({
    flavour = "macchiato",
    background = {
        light = "latte",
        dark = "macchiato",
    },
    custom_highlights = function (colors)
        return {
            CursorLineNr = { fg = colors.flamingo },
        }
    end,
    integrations = {
        cmp = true,
        telescope = true,
    },
})

vim.cmd.colorscheme "catppuccin"
