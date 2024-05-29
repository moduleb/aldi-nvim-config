require("nvim-treesitter.configs").setup({
    ensure_installed = { "lua", "printf", "luadoc", "vimdoc", "python", "javascript" },
    highlight = {
        enable = true,
        use_languagetree = true,
    },

    indent = { enable = true },
    -- sync_install = false,
    -- auto_install = true,
    -- highlight = { enable = true },
    -- indent = { enable = true },
})
