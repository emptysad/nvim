---@diagnostic disable: inject-field
return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
  config = function()
    require("tokyonight").setup({
      -- your configuration comes here
      -- or leave it empty to use the default settings
      style = "moon",      -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
      light_style = "day", -- The theme is used when the background is set to light
      transparent = true, -- Enable this to disable setting the background color
      terminal_colors = true, -- Configure the colors used when opening a `:terminal` in [Neovim](https://github.com/neovim/neovim)
      styles = {
        -- Style to be applied to different syntax groups
        -- Value is any valid attr-list value for `:help nvim_set_hl`
        comments = { italic = true },
        keywords = { italic = true },
        functions = {},
        variables = {},
        -- Background styles. Can be "dark", "transparent" or "normal"
        sidebars = "transparent",           -- style for sidebars, see below
        floats = "transparent",             -- style for floating windows
      },
      sidebars = { "qf", "help" },   -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
      day_brightness = 0.3,          -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
      hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
      dim_inactive = false,          -- dims inactive windows
      lualine_bold = true,           -- When `true`, section headers in the lualine theme will be bold

      --- You can override specific color groups to use other groups or a hex color
      --- function will be called with a ColorScheme table
      ---@param colors ColorScheme
      on_colors = function(colors)
        --colors.fg_gutter=colors.orange
        colors.bg_dark = "#1e2030"    --
        colors.bg = "#1a1c2a"         --
        colors.bg_highlight = "#2f334d" --
        colors.terminal_black = "#444a73" --
        colors.fg = "#c8d3f5"         --
        colors.fg_dark = "#828bb8"    --
        colors.fg_gutter = "#3b4261"
        colors.dark3 = "#545c7e"
        colors.comment = "#7a88cf" --
        colors.dark5 = "#737aa2"
        colors.blue0 = "#3e68d7" --
        colors.blue = "#82aaff" --
        colors.cyan = "#86e1fc" --
        colors.blue1 = "#65bcff" --
        colors.blue2 = "#0db9d7"
        colors.blue5 = "#89ddff"
        colors.blue6 = "#b4f9f8" --
        colors.blue7 = "#394b70"
        colors.purple = "#fca7ea" --
        colors.magenta2 = "#ff007c"
        colors.magenta = "#c099ff" --
        colors.orange = "#ff966c" --
        colors.yellow = "#ffc777" --
        colors.green = "#c3e88d" --
        colors.green1 = "#4fd6be" --
        colors.green2 = "#41a6b5"
        colors.teal = "#4fd6be" --
        colors.red = "#ff757f" --
        colors.red1 = "#c53b53" --
        colors.bg_statusline = colors.none
      end,

      --- You can override specific highlights to use other groups or a hex color
      --- function will be called with a Highlights and ColorScheme table
      ---@param highlights Highlights
      ---@param colors ColorScheme
      on_highlights = function(highlights, colors)
        highlights.CursorLineNr = { fg = colors.yellow }
        highlights.CursorLine = { bg = colors.bg_dark }
        highlights.NvimTreeWinSeparator = { fg = colors.bg, bg = colors.none}
        highlights.WinSeparator = { fg = "#59472c", bold = false }
      end,
    })
    vim.cmd([[colorscheme tokyonight-moon]])
  end,
}
