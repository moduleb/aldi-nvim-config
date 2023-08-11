require("bufferline").setup({
    options = {
        diagnostics = "nvim_lsp",
        separator_style = "padded_slope",
        offsets = {
            {
                filetype = "NvimTree",
                text = "File Explorer",
                text_align = "center", -- | "left" | "right"
                separator = true
            }
        },
    },
})
