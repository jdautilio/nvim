vim.keymap.set('n', '<S-h>', ':bprevious<cr>', { desc = 'Previous buffer', silent = true })
vim.keymap.set('n', '<S-l>', ':bnext<cr>', { desc = 'Next buffer', silent = true })
vim.keymap.set('n', '<leader>q', ':bd<cr>', { desc = 'Close buffer', silent = true })

vim.keymap.set('n', '<C-q>', ':bd<CR>', { noremap = true, silent = true, desc = 'Close buffer' })

