vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set breakindent")
vim.cmd("set formatoptions=l")
vim.cmd("set lbr")
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.opt.number = true -- Enable line numbers
vim.opt.numberwidth = 6
vim.keymap.set("i", "jk", "<esc>")
vim.cmd("set colorcolumn=120")
vim.api.nvim_set_keymap("n", "<leader>h", ":nohlsearch<CR>", { noremap = true, silent = true })

-- Buffers navigation
vim.api.nvim_set_keymap("n", "<leader><left><left>", ":bp<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader><right><right>", ":bn<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader><down><down>", ":bd<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader><up><up>", ":ls<CR>", { noremap = true, silent = true })

-- Folding
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.opt.foldcolumn = "0"
vim.opt.foldtext = ""
vim.opt.foldlevel = 9
vim.opt.foldlevelstart = 2
vim.opt.foldnestmax = 2
