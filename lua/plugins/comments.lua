return {
	{
		"tpope/vim-commentary",
		config = function()
			vim.api.nvim_set_keymap("n", "<leader>td", ":TodoLocList<CR>", { noremap = true, silent = true })
		end,
	},
}
