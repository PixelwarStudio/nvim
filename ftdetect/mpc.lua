vim.api.nvim_create_autocmd({"BufRead", "BufNewFile"}, {
    pattern = {"*.mpc"},
    callback = function ()
        vim.cmd("set filetype=python")
    end,
})
