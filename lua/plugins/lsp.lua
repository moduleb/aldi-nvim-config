local pyright_settings = require("plugins.pyright")
local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(_, bufnr)
    -- see :help lsp-zero-keybindings
    -- to learn the available actions
    lsp_zero.default_keymaps({ buffer = bufnr })
end)

require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = {},
    handlers = {
        lsp_zero.default_setup,
        lua_ls = function()
            local lua_opts = lsp_zero.nvim_lua_ls()
            require('lspconfig').lua_ls.setup(lua_opts)
        end,
    }
})

local cmp = require('cmp')
local cmp_format = lsp_zero.cmp_format()

cmp.setup({
    formatting = cmp_format,
    mapping = cmp.mapping.preset.insert({
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
        ["<C-Space>"] = cmp.mapping.complete(),
        -- scroll up and down the documentation window
        ['<C-u>'] = cmp.mapping.scroll_docs(-4),
        ['<C-d>'] = cmp.mapping.scroll_docs(4),
    }),
})


local lspconfig = require('lspconfig')
lspconfig.ruff_lsp.setup {
    init_options = {
        settings = {
            -- Any extra CLI arguments for `ruff` go here.
            args = {
                -- "--select=PL,D,C4,E,G,W,F,B,SIM,UP,N,I,ASYNC,S,PTH,ARG,RUF",
                "--ignore=ANN201,ANN003,COM812,CPY,D100,D102,D103,D107,D205,ERA001,RET502,RUF001,RUF002,RUF003",
                "--select=ALL",
                "--line-length=88",
                "--preview",
                "--respect-gitignore", -- Исключать из сканирования файлы в .gitignore
                "--target-version=py312"
            },
        }
    }
}
lspconfig.pyright.setup {
    settings = pyright_settings
}
