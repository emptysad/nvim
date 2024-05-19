-- Hint: use `:h <option>` to figure out the meaning if needed
-- vim.opt.clipboard = 'unnamedplus'   -- use system clipboard 
vim.opt.completeopt = {'menu', 'menuone'}
vim.opt.mouse = 'a'                 -- allow the mouse to be used in Nvim
vim.opt.diffopt:append("linematch:100")               -- enable more accurate diff
vim.opt.scrolloff = 5
vim.opt.shell = 'zsh'
vim.opt.sidescrolloff = 5
vim.opt.undofile = true
vim.opt.virtualedit = 'block'
vim.opt.wildmode = 'longest:full,full'
vim.opt.statuscolumn = '%s%C%=%{&nu? (&rnu && v:relnum?v:relnum:v:lnum):""} '
vim.opt.foldcolumn = "auto"
vim.opt.numberwidth = 4

-- Tab
vim.opt.tabstop = 2                 -- number of visual spaces per TAB
vim.opt.shiftwidth = 2              -- insert 4 spaces on a tab
vim.opt.smarttab = true
vim.opt.expandtab = true            -- tabs are spaces, mainly because of python
vim.opt.smartindent = true

-- UI config
vim.opt.number = true               -- show absolute number
vim.opt.relativenumber = true       -- add numbers to each line on the left side
vim.opt.cursorline = true           -- highlight cursor line underneath the cursor horizontally
vim.opt.splitbelow = true           -- open new vertical split bottom
vim.opt.splitright = true           -- open new horizontal splits right
vim.opt.termguicolors = true        -- enable 24-bit RGB color in the TUI
vim.opt.showmode = false            -- we are experienced, wo don't need the "-- INSERT --" mode hint
vim.cmd([[:set fillchars+=vert:┊]]) --▏│▕
vim.cmd([[:set fillchars+=vertright:┊]]) --▏│▕
vim.cmd([[:set fillchars+=vertleft:┊]]) --▏│▕
vim.cmd([[:set fillchars+=verthoriz:┊]]) --▏│▕
vim.cmd([[:set fillchars+=horiz:╌]]) --▏│▕
vim.cmd([[:set fillchars+=horizup:╌]]) --▏│▕
vim.cmd([[:set fillchars+=horizdown:╌]]) --▏│▕
vim.opt.fillchars:append('eob: ')
vim.opt.showtabline = 0

-- Searching
vim.opt.incsearch = true            -- search as characters are entered
vim.opt.hlsearch = false            -- do not highlight matches
vim.opt.ignorecase = true           -- ignore case in searches by default
vim.opt.smartcase = true            -- but make it case sensitive if an uppercase is entered

vim.opt.listchars = {
  eol = '$',
  space = '.',
  nbsp = '⦸',
  tab = '>-',
  trail = '~',
  extends = '»',
  precedes = '«',
}
