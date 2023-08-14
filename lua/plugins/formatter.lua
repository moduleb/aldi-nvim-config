require("formatter").setup({
	logging = false,
	filetype = {
		lua = {
			require("formatter.filetypes.lua").stylua,
		},
		python = {
			require("formatter.filetypes.python").black,
		},
		javascript = {
			require("formatter.filetypes.javascript").prettierd,
		},
		javascriptreact = {
			require("formatter.filetypes.javascript").prettierd,
		},
		typescript = {
			require("formatter.filetypes.javascript").prettierd,
		},
		typescriptreact = {
			require("formatter.filetypes.javascript").prettierd,
		},
		html = {
			require("formatter.filetypes.javascript").prettierd,
		},
		css = {
			require("formatter.filetypes.javascript").prettierd,
		},
	},
})
