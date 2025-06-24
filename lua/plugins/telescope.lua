return {
    {
        "nvim-telescope/telescope.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
        opts = {
            pickers = {
                find_files = {
                    follow = true,
                    hidden = true,
                    no_ignore = true
                }
            }
        },
        config = function (spec, opts)
            require("telescope").setup(opts)
            local builtin = require("telescope.builtin")
            vim.keymap.set("n", "<leader>f", builtin.find_files, {})
            vim.keymap.set("n", "<leader>b", builtin.buffers, {})
        end
    }
}
