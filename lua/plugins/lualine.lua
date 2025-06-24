return {
    {
        "nvim-lualine/lualine.nvim",
        opts = {
            options = {
                component_separators = { left = "|", right = "|"},
                section_separators = { left = "", right = ""},
            },
            sections = {
                lualine_a = {"mode"},
                lualine_b = {"branch", "diff"},
                lualine_c = {"filename"},
                lualine_x = {},
                lualine_y = {"progress"},
                lualine_z = {"location"},
            }
        }
    }
}
