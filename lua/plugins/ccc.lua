vim.keymap.set('n', '<leader>c', ':CccPick<CR>', {})

return {
  "uga-rosa/ccc.nvim",
  config = function ()
    require("ccc").setup({
      highlighter = {
        auto_enable = false,
        lsp = false,
      }
    })
  end
}
