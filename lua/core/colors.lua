function ColorMyPencils(color)
    color = color or "gruvbox-material"
    if color == "gruvbox-material" then
        vim.g.gruvbox_material_transparent_background = 2
        vim.g.gruvbox_material_dim_inactive_windows = 1
        vim.g.gruvbox_material_show_eob = 1
    end
    vim.cmd.colorscheme(color)

    -- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

end

ColorMyPencils()

