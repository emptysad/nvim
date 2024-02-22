vim.g.mapleader = ' '


-- define common options
local opts = {
    noremap = true,      -- non-recursive
    silent = true,       -- do not show message
}

-----------------
-- Normal mode --
-----------------

-- Hint: see `:h vim.map.set()`
-- Better window navigation
vim.keymap.set('n', '<C-h>', '<C-w>h', opts)
vim.keymap.set('n', '<C-j>', '<C-w>j', opts)
vim.keymap.set('n', '<C-k>', '<C-w>k', opts)
vim.keymap.set('n', '<C-l>', '<C-w>l', opts)
vim.keymap.set('n', '<Tab>', '>>')
vim.keymap.set('n', '<S-Tab>', '<<')

-- Resize with arrows
-- delta: 2 lines
vim.keymap.set('n', '<C-Up>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<C-Down>', ':resize +2<CR>', opts)
vim.keymap.set('n', '<C-Left>', ':vertical resize -2<CR>', opts)
vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>', opts)

-----------------
-- Visual mode --
-----------------

-- Hint: start visual mode with the same area as the previous area and the same mode
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)

-----------------
-- Insert mode --
-----------------

vim.keymap.set('i', 'jj', '<esc>', opts)

--Neo-tree
vim.keymap.set('n', '<leader>ee', '<cmd>NvimTreeToggle<CR>')
vim.keymap.set('n', '<leader>ef', '<cmd>NvimTreeFindFileToggle<CR>')
vim.keymap.set('n', '<leader>ec', '<cmd>NvimTreeCollapse<CR>')
vim.keymap.set('n', '<leader>er', '<cmd>NvimTreeRefresh<CR>')

