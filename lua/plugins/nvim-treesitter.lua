return {
  "nvim-treesitter/nvim-treesitter",
  config = function ()
    require'nvim-treesitter.configs'.setup {
      autotag = {
        enable = true,
      },
      auto_install = true,
      highlight = {
        enable = true,
        disable = { "gitcommit" },
      },
      indent = {enable = true},
    }
  end
}
