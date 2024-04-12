require("bufferline").setup({
    options = {
        diagnostics = "nvim_lsp",
        separator_style = "padded_slope",
        offsets = {
            -- {
            --   filetype = "NvimTree",
            --   text = function()
            --     return vim.fn.getcwd()
            --   end,
            --   highlight = "Directory",
            --   text_align = "left"
            -- }
            {
                filetype = "NvimTree",
                text = "File Explorer",
                text_align = "center", -- | "left" | "right"
                separator = true
            },
        },
        hover = {
            enabled = true,
            delay = 200,
            reveal = {'close'}
        },
        indicator = {
            icon = '▎', -- this should be omitted if indicator style is not 'icon'
            style = 'icon' -- | 'underline' | 'none',
        },
    },
})
