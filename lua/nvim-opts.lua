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

-- Create a custom highlight group for muted lines
vim.api.nvim_exec([[
  augroup HighlightConsoleDebug
    autocmd!
    autocmd ColorScheme * highlight MutedConsoleDebug guifg=#808080
    autocmd BufEnter,BufWinEnter,WinEnter * call v:lua.HighlightDebugLines()
  augroup END
]], false)

-- Function to apply the highlight on lines containing 'console.debug'
function HighlightDebugLines()
    vim.fn.matchadd('MutedConsoleDebug', '.*console\\.debug.*')
end

-- Apply the highlight initially
HighlightDebugLines()
