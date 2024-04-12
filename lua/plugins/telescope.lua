-- local builtin = require("telescope.builtin")
-- vim.keymap.set("n", ",b", builtin.buffers, { desc = "Telescope Find buffers" })

vim.keymap.set("n", ",f", "<cmd>Telescope find_files<CR>", { desc = "Telescope Find files" })
vim.keymap.set("n", ",g", "<cmd>Telescope live_grep<CR>", { desc = "Telescope Live grep" })
vim.keymap.set("n", ",b", "<cmd>Telescope buffers<CR>", { desc = "Telescope Find buffers" })
vim.keymap.set("n", ",m", "<cmd>Telescope git_commits<CR>", { desc = "Telescope Git commits" })
vim.keymap.set("n", ",z", "<cmd>Telescope current_buffer_fuzzy_find<CR>", { desc = "Telescope Find in current buffer" })
vim.keymap.set("n", ",s", "<cmd>Telescope git_status<CR>", { desc = "Telescope Git status" })
-- vim.keymap.set("n", "<C-p>", builtin.git_files, {})
-- vim.keymap.set("n", "<leader>ps", function()
--     builtin.grep_string({ search = vim.fn.input("Grep > ") });
-- end)

local tc = require("telescope")
tc.setup {
    extensions = {
        fzf = {
            fuzzy = true,
            override_generic_sorter = true,
            override_file_sorter = true,
            case_mode = "smart_case",
        }
    }
}
tc.load_extension("fzf")

