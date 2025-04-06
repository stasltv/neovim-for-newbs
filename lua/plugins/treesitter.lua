return {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
        local config = require('nvim-treesitter.configs')
        config.setup({
            modules = {},
            sync_install = false,
            auto_install = true,
            highlight = { enable = true },
            indent = { enable = true },
            ignore_install = {},
            ensure_installed = {
                "bash",
                "css",
                "gitignore",
                "haskell",
                "html",
                "htmldjango",
                "javascript",
                "jsdoc",
                "json",
                "lua",
                "markdown",
                "markdown_inline",
                "python",
                "scss",
                "sql",
                "toml",
                "tsx",
                "typescript",
                "vim",
                "vimdoc",
                "yaml",
            }
        })
    end
}
