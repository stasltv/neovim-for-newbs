-- TODO: Use utils for keymaps

vim.keymap.set("n", "<leader>fm", function()
    vim.lsp.buf.format({ timeout = 5000 })
    vim.cmd("write")
end, {})

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.keymap.set("i", "jk", "<esc>")
vim.api.nvim_set_keymap("n", "<leader>h", ":nohlsearch<CR>", { noremap = true, silent = true })

-- Window navigation with leader + arrow keys
vim.api.nvim_set_keymap("n", "<leader><Left>", "<C-w>h", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader><Right>", "<C-w>l", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader><Up>", "<C-w>k", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader><Down>", "<C-w>j", { noremap = true, silent = true })

-- Copilot keymaps
vim.api.nvim_set_keymap("n", "<leader>ct", ":CopilotChatToggle<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>cm", ":CopilotChatModels<CR>", { noremap = true, silent = true })
