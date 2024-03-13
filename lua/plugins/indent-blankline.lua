return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	opts = {},
	config = function()
		local highlightDark = {
			"RainbowDarkRed",
			"RainbowDarkOrange",
			"RainbowDarkYellow",
			"RainbowDarkGreen",
			"RainbowDarkBlue",
			"RainbowDarkViolet",
		}

		local highlight = {
			"RainbowRed",
			"RainbowOrange",
			"RainbowYellow",
			"RainbowGreen",
			"RainbowBlue",
			"RainbowViolet",
		}
		require("ibl").setup({
			indent = {
				char = "┊",
				highlight = highlightDark,
			},
      scope = {
        char = "┋",
        highlight = highlight,
        show_start = false,
        show_end = false,
      }
		})
	end,
}
