-- Editor settings
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.colorcolumn = "80"

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.number = true

vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.wrap = false
vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.fillchars = { fold = " "}
vim.opt.foldmethod = "indent"
-- vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.opt.foldcolumn = "0"
vim.opt.foldlevel = 99

vim.diagnostic.config({
    virtual_text = false
})
