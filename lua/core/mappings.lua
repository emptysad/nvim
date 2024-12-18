vim.g.mapleader = ' '
vim.b.TEXTMODE = false

-- define common options
local opts = {
    noremap = true,      -- non-recursive
    silent = true,       -- do not show message
}


local function textModeToggle()
  TEXTMODE = not TEXTMODE
    print("Text Mode:", TEXTMODE)
  if TEXTMODE then
    vim.keymap.set('n', 'j', 'gj', {noremap = true, silent = true, buffer = true})
    vim.keymap.set('n', 'k', 'gk', {noremap = true, silent = true, buffer = true})
    vim.keymap.set('v', 'j', 'gj', {noremap = true, silent = true, buffer = true})
    vim.keymap.set('v', 'k', 'gk', {noremap = true, silent = true, buffer = true})
    vim.keymap.set('n', '$', 'g$', {noremap = true, silent = true, buffer = true})
    vim.keymap.set('n', '0', 'g0', {noremap = true, silent = true, buffer = true})
    vim.keymap.set('n', 'l', ' ', {noremap = true, silent = true, buffer = true})
    vim.keymap.set('n', 'h', '<Backspace>', {noremap = true, silent = true, buffer = true})
  else
    vim.keymap.del('n', 'j', {noremap = true, silent = true, buffer = true})
    vim.keymap.del('n', 'k', {noremap = true, silent = true, buffer = true})
    vim.keymap.del('v', 'j', {noremap = true, silent = true, buffer = true})
    vim.keymap.del('v', 'k', {noremap = true, silent = true, buffer = true})
    vim.keymap.del('n', '$', {noremap = true, silent = true, buffer = true})
    vim.keymap.del('n', '0', {noremap = true, silent = true, buffer = true})
    vim.keymap.del('n', 'l', {noremap = true, silent = true, buffer = true})
    vim.keymap.del('n', 'h', {noremap = true, silent = true, buffer = true})
  end
end

-- Hint: see `:h vim.map.set()`
-- Better window navigation

vim.keymap.set('n', '<leader>tm', textModeToggle, opts)

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
vim.keymap.set('n', '<leader>y', '"+y', opts)
vim.keymap.set('v', '<leader>y', '"+y', opts)

vim.keymap.set('n', '<leader>d', '"+d', opts)
vim.keymap.set('n', '<leader>D', '"+D', opts)
vim.keymap.set('v', '<leader>d', '"+d', opts)
vim.keymap.set('v', '<leader>D', '"+D', opts)
vim.keymap.set('n', '<leader>P', '"+P', opts)
vim.keymap.set('n', '<leader>p', '"+p', opts)
vim.keymap.set('v', '<leader>P', '"+P', opts)
vim.keymap.set('v', '<leader>p', '"+p', opts)

vim.keymap.set('n', '<leader>w', ':w<CR>', opts)
vim.keymap.set('n', '<leader>tn', '<cmd>tabnew<CR>', opts)
vim.keymap.set('n', '<leader>th', '<cmd>tabprevious<CR>', opts)
vim.keymap.set('n', '<leader>tl', '<cmd>tabnext<CR>', opts)
vim.keymap.set('n', '<leader>tt', '<cmd>tabnext<CR>', opts)
vim.keymap.set('n', '<leader>tq', '<cmd>tabclose<CR>', opts)

-- Resize with arrows
-- delta: 2 lines
vim.keymap.set('n', '<C-Up>', ':resize -1<CR>', opts)
vim.keymap.set('n', '<C-Down>', ':resize +1<CR>', opts)
vim.keymap.set('n', '<C-Left>', ':vertical resize -1<CR>', opts)
vim.keymap.set('n', '<C-Right>', ':vertical resize +1<CR>', opts)

-- Hint: start visual mode with the same area as the previous area and the same mode
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)

vim.keymap.set('i', 'jk', '<esc>', opts)
vim.keymap.set('i', '<C-j>', 'j', opts)
