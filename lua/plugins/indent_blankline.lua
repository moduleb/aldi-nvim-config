-- vim.opt.list = true
-- vim.opt.listchars:append "space:⋅"
-- vim.opt.listchars:append "eol:↴"

require("ibl").setup({
	indent = {
		char = "┊",
        -- tab_char = { "a", "b", "c" },
		-- highlight = { "Function", "Label" },
        smart_indent_cap = true,
	},
	scope = {
		enabled = true,
		show_end = false,
		show_exact_scope = true,
	},
})
