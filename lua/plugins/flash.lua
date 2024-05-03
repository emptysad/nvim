return {
  "folke/flash.nvim",
  event = "VeryLazy",
  ---@type Flash.Config
  opts = {},
  -- stylua: ignore
  keys = {
    { "s",     mode = { "n", "x", "o" }, function() require("flash").jump() end,              desc = "Flash" },
    { "S",     mode = { "n", "x", "o" }, function() require("flash").treesitter() end,        desc = "Flash Treesitter" },
    { "r",     mode = "o",               function() require("flash").remote() end,            desc = "Remote Flash" },
    { "R",     mode = { "o", "x" },      function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
    { "<c-s>", mode = { "c" },           function() require("flash").toggle() end,            desc = "Toggle Flash Search" },
  },
  config = function()
    -- vim.cmd([[highlight FlashBackdrop     guibg='']])
    vim.cmd([[highlight FlashMatch        guibg='NONE' guifg='#ffffff']])
    vim.cmd([[highlight FlashCurrent      guibg='#fff314' guifg='#000000']])
    vim.cmd([[highlight FlashLabel        guibg='NONE' guifg='#ffa929']])
    -- vim.cmd([[highlight FlashPrompt       guibg='']])
    -- vim.cmd([[highlight FlashPromptIcon   guibg='']])
    -- vim.cmd([[highlight FlashCursor       guibg='']])
  end,
}
