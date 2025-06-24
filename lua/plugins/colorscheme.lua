return {
    {
        "folke/tokyonight.nvim",
        opts = { style = "night" },
        config = function (specs, opts)
            require("tokyonight").setup(opts)
            vim.cmd([[colorscheme tokyonight]])
        end
    }
}
