local keymap = vim.keymap

vim.g.mapleader = ' '

keymap.set('n', '<S-h>', ':bprevious<cr>', { desc = 'Previous buffer', silent = true })
keymap.set('n', '<S-l>', ':bnext<cr>', { desc = 'Next buffer', silent = true })
keymap.set('n', '<leader>q', ':bd<cr>', { desc = 'Close buffer', silent = true })

keymap.set('n', '<C-q>', ':bd<CR>', { noremap = true, silent = true, desc = 'Close buffer' })

keymap.set('n', '<leader>ee', ':NvimTreeToggle<cr>', { desc = 'Toggle file explorer', silent = true })
keymap.set('n', '<leader>ef', ':NvimTreeFindFile<cr>', { desc = 'Find file in explorer', silent = true })
