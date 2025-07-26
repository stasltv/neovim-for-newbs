vim.lsp.config.volar = {
    cmd = { "vue-language-server", "--stdio" },
    filetypes = { "vue" },
    root_markers = { '.git', 'package.json', 'tsconfig.json' },
    init_options = {
        typescript = {
            tsdk = "/Users/sltv/.nvm/versions/node/v20.19.3/lib/node_modules/typescript/lib"
        }
    },
}

vim.lsp.enable("volar")
