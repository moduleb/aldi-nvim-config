local bufferline = require("bufferline")
bufferline.setup({
    options = {
        diagnostics = "nvim_lsp",
        diagnostics_indicator = function(count, level)
            local icon = level:match("error") and " " or " "
            return " " .. icon .. count
        end,
        -- diagnostics_indicator = function(count, level, diagnostics_dict, context)
        --     return "(" .. count .. ")"
        -- end,
        separator_style = "slant",
        style_preset = bufferline.style_preset.italic,
        hover = {
            enabled = true,
            delay = 200,
            reveal = { 'close' }
        },
        indicator = {
            icon = '▎', -- this should be omitted if indicator style is not 'icon'
            style = 'icon' -- | 'underline' | 'none',
        },
        numbers = function(opts)
            return string.format('%s·%s', opts.raise(opts.id), opts.lower(opts.ordinal))
        end,
    },
})
