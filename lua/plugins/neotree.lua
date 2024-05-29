require("neo-tree").setup({
    close_if_last_window = false, -- Close Neo-tree if it is the last window left in the tab
    popup_border_style = "rounded",
    enable_git_status = true,
    enable_diagnostics = true,
})
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- vim.keymap.set("n", "<leader>t", ":Neotree toggle current reveal_force_cwd<CR>", { desc = "Neotree toggle current file" })
vim.keymap.set("n", "<leader>t", ":Neotree toggle<CR>")
vim.keymap.set("n", "<leader>e", ":Neotree reveal<CR>", { desc = "Focus on Neotree" })
-- vim.keymap.set("n", "<leader>b", ":Neotree toggle show buffers right<cr>", { desc = "Show buffers" })
vim.keymap.set("n", "<leader>b", ":Neotree float buffers<cr>", { desc = "Show buffers" })
vim.keymap.set("n", "<leader>s", ":Neotree float git_status<cr>", { desc = "Show git status files" })
