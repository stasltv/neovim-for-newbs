-- LSP
-- Load all LSP's in "lua/config/lsp"
local lsp_path = vim.fn.stdpath("config") .. "/lua/config/lsp"

-- First, explicitly load the global configuration
require("config.lsp.global")

-- Then load all other LSP configs
for _, file in ipairs(vim.fn.readdir(lsp_path)) do
    if file:match("%.lua$") and file ~= "global.lua" then
        local module_name = "config.lsp." .. file:gsub("%.lua$", "")
        require(module_name)
    end
end

-- Enable LSP completion
vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(ev)
        local client = vim.lsp.get_client_by_id(ev.data.client_id)
        if client ~= nil and client:supports_method('textDocument/completion') then
            vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
        end
    end,
})
