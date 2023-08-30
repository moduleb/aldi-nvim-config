local M = {}

function M.set_tabulation()
    local bufnumber = vim.api.nvim_get_current_buf()
    local filetype = vim.filetype.match({ buf = bufnumber })
    if filetype == "javascript" then
        vim.opt.shiftwidth = 2
        vim.opt.tabstop = 2
        vim.opt.softtabstop = 2
    elseif filetype == "html" then
        vim.opt.shiftwidth = 2
        vim.opt.tabstop = 2
        vim.opt.softtabstop = 2
    elseif filetype == "css" then
        vim.opt.shiftwidth = 2
        vim.opt.tabstop = 2
        vim.opt.softtabstop = 2
    elseif filetype == "typescript" then
        vim.opt.shiftwidth = 2
        vim.opt.tabstop = 2
        vim.opt.softtabstop = 2
    end
end

return M

-- local function change_buf_left()
--     vim.cmd.bp()
--     set_tabulation()
-- end
--
-- local function change_buf_right()
--     vim.cmd.bn()
--     set_tabulation()
-- end

-- vim.keymap.set("n", "H", change_buf_left, {})
-- vim.keymap.set("n", "L", change_buf_right, {})
