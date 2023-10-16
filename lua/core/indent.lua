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
