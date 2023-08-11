local builtin = require('telescope.builtin')

vim.keymap.set('n', ',f', builtin.find_files, {})
vim.keymap.set('n', ',g', builtin.live_grep, {})
vim.keymap.set('n', ',b', builtin.buffers, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)

local tc = require('telescope')
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
tc.load_extension('fzf')

