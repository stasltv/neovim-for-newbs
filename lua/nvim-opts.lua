vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set number")
vim.cmd("set relativenumber")
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.opt.number = true -- Enable line numbers
vim.opt.numberwidth = 6

-- Autosave
vim.opt.updatetime = 5000

local autosave = vim.api.nvim_create_augroup("autosave", { clear = true })

vim.api.nvim_create_autocmd({ "CursorHoldI", "CursorHold" }, {
    group = autosave,
    callback = function()
        if vim.bo.modified then
            vim.lsp.buf.format()
            vim.cmd("silent! write")
        end
    end,
})
