local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
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
    -- work with files
    {
        "nvim-tree/nvim-tree.lua",
        version = "*",
        lazy = false,
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
    },
    {
        "Pocco81/auto-save.nvim",
        opts = {}
    },
    {
        "akinsho/bufferline.nvim",
        version = "*",
        dependencies = "nvim-tree/nvim-web-devicons",
    },

    -- text formatting
    { "nvim-treesitter/nvim-treesitter",     build = ":TSUpdate" },
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        opts = {} -- this is equalent to setup({}) function
    },
    {
        "numToStr/Comment.nvim",
        opts = {},
        lazy = false,
    },
    { "mbbill/undotree" },
    { "simrat39/symbols-outline.nvim",       opts = {} },
    { "mhartington/formatter.nvim" },

    -- colorthemes and decor
    { "sainnhe/gruvbox-material" },
    -- {
    --     "folke/tokyonight.nvim",
    --     lazy = false,
    --     priority = 1000,
    -- },
    { "lukas-reineke/indent-blankline.nvim", main = "ibl" }, -- decor
    { "NvChad/nvim-colorizer.lua" },                       -- decor

    -- lsp
    { "VonHeikemen/lsp-zero.nvim",           branch = "v3.x" },
    -- dependencies = {
    -- LSP Support
    { "neovim/nvim-lspconfig" },           -- Required
    { "williamboman/mason.nvim" },         -- Optional
    { "williamboman/mason-lspconfig.nvim" }, -- Optional

    -- Autocompletion
    { "hrsh7th/nvim-cmp" },       -- Required
    { "hrsh7th/cmp-nvim-lsp" },   -- Required
    { "L3MON4D3/LuaSnip" },       -- Required
    { "hrsh7th/cmp-buffer" },     -- Required
    { "hrsh7th/cmp-path" },       -- Required
    { "saadparwaiz1/cmp_luasnip" }, -- Required
    -- }
    -- },

    -- telescope
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.5",
        dependencies = { "nvim-lua/plenary.nvim" }
    },
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },

    -- terminal
    { "voldikss/vim-floaterm" },
})
