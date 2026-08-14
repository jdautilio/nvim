vim.cmd("let g:netrw_liststyle = 3")

local o   = vim.o
local opt = vim.opt

vim.g.mapleader         = " "

o.shiftwidth        = 2
o.tabstop           = 2
o.expandtab         = true

o.number            = true
o.relativenumber    = true

o.hlsearch          = false

o.foldcolumn = '1'
o.foldlevel = 99
o.foldlevelstart = 99
o.foldenable = true



-- (./lua/nconf/set.lua)

opt.tabstop     = 2
opt.softtabstop = 2
opt.shiftwidth  = 2
opt.expandtab   = true
opt.autoindent  = true
opt.smartindent = true
opt.smarttab    = true
opt.list        = true
opt.listchars   = { tab = '>-', trail = '~', extends = '>', precedes = '<' }

opt.number          = true
opt.relativenumber  = true
opt.cursorline      = true
opt.signcolumn      = "yes"
opt.scrolloff       = 8
opt.showcmd         = true

opt.swapfile  = false
opt.backup    = false
opt.undofile  = true

opt.hlsearch    = true
opt.incsearch   = true
opt.ignorecase  = true
opt.smartcase   = true

opt.termguicolors = true

opt.showmode = false

-- No automatic comment insertion
-- vim.cmd([[autocmd FileType * set formatoptions-=ro]])

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})
