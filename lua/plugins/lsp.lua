-- local lsp = require("lsp-zero").preset({})
--
-- lsp.on_attach(function(_, bufnr)
-- 	-- see :help lsp-zero-keybindings
-- 	-- to learn the available actions
-- 	lsp.default_keymaps({ buffer = bufnr })
-- end)
--
-- -- (Optional) setup all installed_servers
-- -- require("lspinstall").setup()
-- -- local servers = require("lspinstall").installed_servers()
-- -- for _, server in pairs(servers) do
-- -- 	require("lspconfig")[server].setup({})
-- -- end
--
-- -- (Optional) Configure lua language server for neovim
-- require("lspconfig").lua_ls.setup(lsp.nvim_lua_ls())
--
-- lsp.setup()
--
-- local cmp = require("cmp")
-- cmp.setup({
-- 	sources = {
-- 		{ name = "nvim_lsp" },
-- 		{ name = "buffer" },
-- 		{ name = "path" },
-- 		{ name = "luasnip" },
-- 	},
-- 	mapping = {
-- 		["<CR>"] = cmp.mapping.confirm({ select = true }),
-- 		["<C-Space>"] = cmp.mapping.complete(),
-- 	},
-- })
--
local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
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
