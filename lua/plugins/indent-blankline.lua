return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  opts = {},
  config = function()
    -- RAINBOW DARK
    vim.cmd([[highlight RainbowDarkRed       guifg='#592a30']])
    vim.cmd([[highlight RainbowDarkOrange    guifg='#5f473e']])
    vim.cmd([[highlight RainbowDarkYellow    guifg='#656451']])
    vim.cmd([[highlight RainbowDarkGreen     guifg='#415449']])
    vim.cmd([[highlight RainbowDarkBlue      guifg='#383f69']])
    vim.cmd([[highlight RainbowDarkViolet    guifg='#594676']])

    -- RAINBOW
    vim.cmd([[highlight RainbowRed           guifg='#E30022']])
    vim.cmd([[highlight RainbowOrange        guifg='#FF8B00']])
    vim.cmd([[highlight RainbowYellow        guifg='#FEE72F']])
    vim.cmd([[highlight RainbowGreen         guifg='#03C03C']])
    vim.cmd([[highlight RainbowBlue          guifg='#1F75FE']])
    vim.cmd([[highlight RainbowViolet        guifg='#662B7E']])

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
      },
    })
  end,
}
