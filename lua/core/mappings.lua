-- global
vim.g.mapleader = " "
vim.keymap.set("i", "jk", "<ESC>")

-- copy
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- other
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- move strings
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("n", "J", "mzJ`z")

-- search
vim.keymap.set("n", ",<space>", "<cmd>:nohlsearch<CR>")

-- buffers
vim.keymap.set("n", "H", ":bp<Enter>")
vim.keymap.set("n", "L", ":bn<Enter>")
vim.keymap.set("n", "<leader>x", ":bd<Enter>")

-- treesitter playground
vim.keymap.set("n", "<F8>", vim.cmd.TSPlaygroundToggle, {})

-- undotree
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle, {})

-- symbols-outline
vim.keymap.set("n", "<leader>o", vim.cmd.SymbolsOutline, {})

-- запускает python файл
vim.api.nvim_create_autocmd(
    "FileType",
    { pattern = {"python"}, command = [[map <buffer><C-h> :FloatermNew --wintype=split --height=0.4 --autoclose=0 python % <CR>]]}
)


