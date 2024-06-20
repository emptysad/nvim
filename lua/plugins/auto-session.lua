return {
  "rmagatti/auto-session",
  config = function()
    require("auto-session").setup({
      log_level = "error",
      auto_session_suppress_dirs = { "~/", "~/ITSTEPACADEMY/Work", "~/Downloads", "/", "~/.config/nvim" },
      pre_save_cmds = {
        function()
          vim.cmd([[tabdo lua require("nvim-tree.api").tree.close()]])
        end,
      },
      post_restore_cmds = {
        function()
          vim.cmd([[tabdo lua require("nvim-tree.api").tree.close()]])
          vim.cmd([[tabdo lua require("nvim-tree.api").tree.open({find_file=true})]])
        end,
      },
    })
  end,
}
