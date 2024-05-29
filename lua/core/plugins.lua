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
    ------------------------------ WORK WITH FILES ------------------------------
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
            -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
        }
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

    ------------------------------ TEXT FORMATTING ------------------------------
    { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
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
    { "simrat39/symbols-outline.nvim", opts = {} },
    { "mhartington/formatter.nvim" },

    ------------------------------ COLORTHEMES AND DECOR ------------------------------
    { "sainnhe/gruvbox-material" },
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        -- opts = {},
    },
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
    { "lukas-reineke/indent-blankline.nvim", main = "ibl" }, -- decor
    { "NvChad/nvim-colorizer.lua" },                         -- decor
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        -- opts = { theme = "tokyonight" }
    },

    ------------------------------ LSP ------------------------------
    { "VonHeikemen/lsp-zero.nvim", branch = "v3.x" },
    -- dependencies = {
    -- LSP Support
    { "neovim/nvim-lspconfig" },             -- Required
    { "williamboman/mason.nvim" },           -- Optional
    { "williamboman/mason-lspconfig.nvim" }, -- Optional

    ------------------------------ AUTOCOMPLETION ------------------------------
    { "hrsh7th/nvim-cmp" },         -- Required
    { "hrsh7th/cmp-nvim-lsp" },     -- Required
    { "L3MON4D3/LuaSnip" },         -- Required
    { "hrsh7th/cmp-buffer" },       -- Required
    { "hrsh7th/cmp-path" },         -- Required
    { "saadparwaiz1/cmp_luasnip" }, -- Required
    -- }
    -- },

    ------------------------------ TELESCOPE ------------------------------
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.5",
        dependencies = { "nvim-lua/plenary.nvim" }
    },
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },

    ------------------------------ TERMINAL ------------------------------
    { "voldikss/vim-floaterm" },

    ------------------------------ GIT ------------------------------
    {
        "rbong/vim-flog",
        lazy = false,
        cmd = { "Flog", "Flogsplit", "Floggit" },
        dependencies = {
            "tpope/vim-fugitive",
        },
    },
    { "sindrets/diffview.nvim",  lazy = false },
    { "lewis6991/gitsigns.nvim", opts = {} }
})
