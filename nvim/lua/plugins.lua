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
    "ojroques/nvim-bufdel",
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
    'tpope/vim-fugitive',
    'axvr/zepl.vim',
    'lervag/vimtex',
    'ixru/nvim-markdown',
    'mg979/vim-visual-multi',
    'stevearc/oil.nvim',
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.4',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    { "catppuccin/nvim", name = "catppuccin" },
    {
        'akinsho/bufferline.nvim', version = "*",
        dependencies = 'nvim-tree/nvim-web-devicons'
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
        'numToStr/Comment.nvim',
        opts = {
            -- add any options here
        },
        lazy = false,
    },
    {
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        ft = { "markdown" },
        build = function() vim.fn["mkdp#util#install"]() end,
    },
    {
        "smoka7/hop.nvim",
        version = "*",
        config = function()
            require("hop").setup({ keys = "tnseridhaofuwyplcqxz" })
        end,
    },
})
