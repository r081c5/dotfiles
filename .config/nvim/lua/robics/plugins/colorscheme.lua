return {
	{
		"ellisonleao/gruvbox.nvim",
		priority = 1000,
		config = function()
			vim.cmd.colo("gruvbox")
			-- vim.cmd([[colorscheme gruvbox]])

			-- making the bg transparent again
			vim.cmd("highlight Normal guibg=none")
			-- vim.cmd("highlight NonText guibg=none")
			-- vim.cmd("highlight Normal cterm=none")
			-- vim.cmd("highlight NonText cterm=none")
		end,
	},
	"kepano/flexoki-neovim",
}
