local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    "nvim-tree/nvim-web-devicons",
    "mbbill/undotree",
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'saadparwaiz1/cmp_luasnip',
    'feline-nvim/feline.nvim',
    'lervag/vimtex',
    'MeanderingProgrammer/render-markdown.nvim',
    'sitiom/nvim-numbertoggle',
    'folke/twilight.nvim',
    'lewis6991/gitsigns.nvim',
    { 'akinsho/toggleterm.nvim', version = "*", config = true },
    { 'echasnovski/mini.files', version = '*' },
    { 'echasnovski/mini.trailspace', version = '*' },
    { 'echasnovski/mini.move', version = '*' },
    { 'numToStr/Comment.nvim', lazy = false, },
    {
        "goolord/alpha-nvim",
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
          local startify = require("alpha.themes.startify")
          startify.file_icons.provider = "devicons"
          require("alpha").setup(
            startify.config
          )
        end,
    },
    {
        'nvim-telescope/telescope.nvim', branch = '0.1.x',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    {
		"nvim-treesitter/nvim-treesitter",
		build = function()
			require("nvim-treesitter.install").update({ with_sync = true })
		end,
	},
    {
        "L3MON4D3/LuaSnip",
        version = "v2.*",
        build = "make install_jsregexp"
    },
    {
        "smoka7/hop.nvim",
        version = "*",
        config = function()
            require("hop").setup({ keys = "tnseridhaofuwyplcqxz" })
        end,
    },
    {
        'romgrk/barbar.nvim',
        init = function() vim.g.barbar_auto_setup = false end,
        opts = {
            sidebar_filetypes = {
                undotree = {
                    text = 'undotree',
                    align = 'center',
                },
            },
        },
    },
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = function()
            require("nvim-autopairs").setup {
                disable_filetype = { "tex" },
            }
        end
    },
    {
        'RedsXDD/neopywal.nvim',
        name = "neopywal",
        lazy = false,
        priority = 1000,
    },
    {
        'hedyhli/outline.nvim',
        config = function()
            require("outline").setup({
                keymaps = {
                    fold = '<Left>',
                    unfold = '<Right>',
                }
            })
        end,
    },
})
