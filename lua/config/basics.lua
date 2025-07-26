vim.cmd("set completeopt+=noselect")
vim.cmd("set completeopt+=fuzzy")
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set breakindent")
vim.cmd("set formatoptions=l")
vim.cmd("set lbr")
vim.cmd("set colorcolumn=120")

vim.o.winborder = "rounded"

vim.opt.number = true
vim.opt.numberwidth = 6
vim.opt.splitright = true

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99
vim.opt.foldnestmax = 5
