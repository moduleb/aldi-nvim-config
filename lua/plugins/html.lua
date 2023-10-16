require("lspconfig").html.setup({
    init_options = {
        ["html.format.indentHandlebars"] = true,
        ["html.format.indentInnerHtml"] = true,
        ["html.trace.server"] = "on",
    }
})
