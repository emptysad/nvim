return {
	"lewis6991/gitsigns.nvim",
	config = function()
		require("gitsigns").setup()
		vim.cmd([[highlight GitSignsAdd        guifg='#25b41d']])
		vim.cmd([[highlight GitSignsChange     guifg='#f3c325']])
		vim.cmd([[highlight GitSignsDelete     guifg='#b30909']])
	end,
}
