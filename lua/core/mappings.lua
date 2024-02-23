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
vim.keymap.set('v', '<Tab>', '>')
vim.keymap.set('v', '<S-Tab>', '<')
vim.keymap.set('n', '<leader>q', '<cmd>q<CR>')

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

--Nvim-tree
vim.keymap.set('n', '<leader>ee', '<cmd>NvimTreeFocus<CR>')
vim.keymap.set('n', '<leader>ef', '<cmd>NvimTreeFindFileToggle<CR>')
vim.keymap.set('n', '<leader>ec', '<cmd>NvimTreeCollapse<CR>')
vim.keymap.set('n', '<leader>er', '<cmd>NvimTreeRefresh<CR>')

--Telescope
vim.keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<CR>', {})
vim.keymap.set('n', '<leader>fg', '<cmd>Telescope live_grep<CR>', {})
vim.keymap.set('n', '<leader>fb', '<cmd>Telescope buffers<CR><Esc>', {})
vim.keymap.set('n', '<leader>fh', '<cmd>Telescope help_tags<CR>', {})
vim.keymap.set('n', '<leader>fr', '<cmd>Telescope oldfiles<CR><Esc>', {})
vim.keymap.set('n', '<leader>fs', '<cmd>Telescope grep_string<CR><Esc>', {})
