return {
    'ggandor/leap.nvim',
    config = function()
        require('leap').create_default_mappings()
        require('leap').opts.special_keys = {
            next_target = '<C-j>',
            prev_target = '<C-h>',
            next_group = '<space>',
            prev_group = '<tab>',
        }
    end
}
