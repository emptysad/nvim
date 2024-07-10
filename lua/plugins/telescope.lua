return {
    'nvim-telescope/telescope.nvim',
  enabled = false,
    branch = '0.1.x',
    dependencies = { 
        'nvim-lua/plenary.nvim',
        {'nvim-telescope/telescope-fzf-native.nvim', build = 'make'},
        'nvim-tree/nvim-web-devicons',
    },
    config = function ()
        require("telescope").load_extension("fzf");
    end

}
