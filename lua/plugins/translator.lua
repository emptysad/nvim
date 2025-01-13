vim.keymap.set("v", "<leader>tr", "<CMD>Translate RU<CR>", { silent = true })
vim.keymap.set("v", "<leader>te", "<CMD>Translate EN<CR>", { silent = true })
vim.keymap.set("n", "<leader>tr", "<CMD>Translate RU<CR>", { silent = true })
vim.keymap.set("n", "<leader>te", "<CMD>Translate EN<CR>", { silent = true })

return {
  "uga-rosa/translate.nvim",
  config = function ()
    require('translate').setup({
      default = {
        command = "translate_shell",
      },
      preset = {
        command = {
          translate_shell = {
            args = {
              '-d'
            }
          }
        }
      }
    })
  end
}
