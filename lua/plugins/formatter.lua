local util = require("formatter.util")

local function copyf(f)
	return function(...)
		return f(...)
	end
end

local function copyf_with_params(f, parser, tab_width)
	return function(...)
		return f(parser, tab_width, ...)
	end
end

local prettierFormat = function(parser, tab_width)
	tab_width = tab_width or "4"
	if not parser then
		return {
			exe = "prettier",
			args = {
				"--stdin-filepath",
				util.escape_path(util.get_current_buffer_file_path()),
				"--tab-width",
				tab_width,
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
			tab_width,
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
		typescript = { copyf_with_params(prettierFormat, "typescript", "4") },
		typescriptreact = { copyf_with_params(prettierFormat, "typescriptreact", 4) },
		javascript = { copyf_with_params(prettierFormat, nil, "4") },
		javascriptreact = { copyf_with_params(prettierFormat, nil, "4") },
		html = { copyf_with_params(prettierFormat, nil, "2") },
		css = { copyf_with_params(prettierFormat, "css", "2") },
	},
})
