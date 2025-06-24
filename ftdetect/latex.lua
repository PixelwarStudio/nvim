vim.api.nvim_create_autocmd({"BufRead", "BufNewFile"}, {
    pattern = {"*.tex", "*.tex.j2"},
    callback = function ()
        vim.opt.wrap = true
        vim.opt.colorcolumn = "-1"
    end,
})
