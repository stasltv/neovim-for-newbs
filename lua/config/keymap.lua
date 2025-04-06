-- TODO: Use utils for keymaps

vim.keymap.set("n", "<leader>fm", function()
    vim.lsp.buf.format({ timeout = 5000 })
    vim.cmd("write")
end, {})

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.keymap.set("i", "jk", "<esc>")
vim.api.nvim_set_keymap("n", "<leader>h", ":nohlsearch<CR>", { noremap = true, silent = true })
