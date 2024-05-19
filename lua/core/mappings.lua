vim.g.mapleader = ' '

-- define common options
local opts = {
    noremap = true,      -- non-recursive
    silent = true,       -- do not show message
}

-- Hint: see `:h vim.map.set()`
-- Better window navigation
vim.keymap.set('n', '<C-h>', '<C-w>h', opts)
vim.keymap.set('n', '<C-j>', '<C-w>j', opts)
vim.keymap.set('n', '<C-k>', '<C-w>k', opts)
vim.keymap.set('n', '<C-l>', '<C-w>l', opts)
vim.keymap.set('n', '<Tab>', '>>', opts)
vim.keymap.set('n', '<S-Tab>', '<<', opts)
vim.keymap.set('v', '<Tab>', '>', opts)
vim.keymap.set('v', '<S-Tab>', '<', opts)
vim.keymap.set('n', '<leader>q', '<cmd>q<CR>', opts)
vim.keymap.set('n', 'd', '"_d', opts)
vim.keymap.set('n', 'x', '"_x', opts)
vim.keymap.set('n', 'D', '"_D', opts)
vim.keymap.set('v', 'd', '"_d', opts)
vim.keymap.set('n', 'y', '"+y', opts)
vim.keymap.set('n', '<leader>d', '"+d', opts)
vim.keymap.set('n', '<leader>D', '"+D', opts)
vim.keymap.set('v', '<leader>d', '"+d', opts)
vim.keymap.set('v', '<leader>p', '"+p', opts)
vim.keymap.set('n', '<leader>w', ':w<CR>', opts)
vim.keymap.set('n', '<leader>tn', '<cmd>tabnew<CR>', opts)
vim.keymap.set('n', '<leader>th', '<cmd>tabprevious<CR>', opts)
vim.keymap.set('n', '<leader>tl', '<cmd>tabNext<CR>', opts)
vim.keymap.set('n', '<leader>tx', '<cmd>tabclose<CR>', opts)
-- Resize with arrows
-- delta: 2 lines
vim.keymap.set('n', '<C-Up>', ':resize -1<CR>', opts)
vim.keymap.set('n', '<C-Down>', ':resize +1<CR>', opts)
vim.keymap.set('n', '<C-Left>', ':vertical resize -1<CR>', opts)
vim.keymap.set('n', '<C-Right>', ':vertical resize +1<CR>', opts)

-- Hint: start visual mode with the same area as the previous area and the same mode
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)

vim.keymap.set('i', 'jj', '<esc>', opts)
vim.keymap.set('i', 'jk', '<CR>', opts)
