-- CONFIGURATION
local lsp_zero = require('lsp-zero')
lsp_zero.on_attach(function(client, bufnr)
    -- see :help lsp-zero-keybindings
    -- to learn the available actions
    lsp_zero.default_keymaps({
        buffer = bufnr,
        preserve_mappings = false
    })
end)

lsp_zero.set_sign_icons({
    error = '✘',
    warn = '▲',
    hint = '⚑',
    info = '»'
})

-- to learn how to use mason.nvim with lsp-zero
-- read this: https://github.com/VonHeikemen/lsp-zero.nvim/blob/v3.x/doc/md/guide/integrate-with-mason-nvim.md
require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = { 'html', 'cssls', 'pyright' },
    handlers = {
        lsp_zero.default_setup,
        --- replace `example_server` with the name of a language server
        example_server = function()
            -- in this function you can setup
            -- the language server however you want.
            -- in this example we just use lspconfig
            require('lspconfig').example_server.setup({
                -- in here you can add your own
                -- custom configuration
            })
        end,
    },
})



local cmp = require('cmp')
local cmp_format = require('lsp-zero').cmp_format({ details = true })
local cmp_action = require('lsp-zero').cmp_action()
require('luasnip.loaders.from_vscode').lazy_load()


cmp.setup({
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },
    window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
    },
    sources = {
        { name = 'nvim_lsp' },
        { name = 'buffer' },
        { name = 'luasnip' },
    },
    formatting = cmp_format,
    mapping = {
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
        ['<C-c>'] = cmp.mapping.abort(),
        ['<C-k>'] = cmp.mapping.select_prev_item({ behavior = 'select' }),
        ['<C-j>'] = cmp.mapping.select_next_item({ behavior = 'select' }),
        ['<C-f>'] = cmp_action.luasnip_jump_forward(),
        ['<C-b>'] = cmp_action.luasnip_jump_backward(),
        -- ['<C-p>'] = cmp.mapping(function()
        --   if cmp.visible() then
        --     cmp.select_prev_item({behavior = 'insert'})
        --   else
        --     cmp.complete()
        --   end
        -- end),
        -- ['<C-n>'] = cmp.mapping(function()
        --   if cmp.visible() then
        --     cmp.select_next_item({behavior = 'insert'})
        --   else
        --     cmp.complete()
        --   end
        -- end),
    },
})
