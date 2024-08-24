return  {
    'nvim-neo-tree/neo-tree.nvim',
    branch = 'v3.x',
    dependencies = {
        'nvim-lua/plenary.nvim',
        'nvim-tree/nvim-web-devicons',
        'MunifTanjim/nui.nvim'
    },
    config = function()
        require('neo-tree').setup({
            filesystem = {
                filtered_items = {
                    visible = true,
                    hide_dotfiles = false,
                    hide_gitignored = false
                },
            }
        })

        vim.keymap.set('n', '<leader>nt', ':Neotree toggle<CR>', {})
        vim.api.nvim_create_autocmd('VimEnter', {
            command = 'Neotree',
        })
    end
}

