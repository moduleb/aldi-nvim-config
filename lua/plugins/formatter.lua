local util = require("formatter.util")

local function copyf(f)
	return function(...)
		return f(...)
	end
end

local prettierFormat = function(parser)
	if not parser then
		return {
			exe = "prettier",
			args = {
				"--stdin-filepath",
				util.escape_path(util.get_current_buffer_file_path()),
				"--tab-width",
				"4",
			},
			stdin = true,
			try_node_modules = true,
		}
	end

	return {
		exe = "prettier",
		args = {
			"--stdin-filepath",
			util.escape_path(util.get_current_buffer_file_path()),
			"--tab-width",
			"4",
			"--parser",
			parser,
		},
		stdin = true,
		try_node_modules = true,
	}
end

require("formatter").setup({
	logging = false,
	filetype = {
		lua = { require("formatter.filetypes.lua").stylua },
		python = { require("formatter.filetypes.python").black },
		typescript = { prettierFormat("typescript") },
		typescriptreact = { prettierFormat("typescriptreact") },
		javascript = { copyf(prettierFormat) },
		javascriptreact = { copyf(prettierFormat) },
		html = { copyf(prettierFormat) },
		css = { prettierFormat("css") },
	},
})
