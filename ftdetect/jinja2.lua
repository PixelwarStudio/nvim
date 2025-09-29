vim.api.nvim_create_autocmd({"BufRead", "BufNewFile"}, {
    pattern = {"*.tex.j2"},
    callback = function ()
        vim.cmd("set filetype=tex")
    end,
})
