vim.keymap.set('n', '<leader>|', ':vsplit<CR>', { desc = 'Split vertically', silent = true })
vim.keymap.set('n', '<leader>-', ':split<CR>', { desc = 'Split horizontally', silent = true })

-- The following commented mappings are handled by the tmux plugin

-- -- Move between panes with Ctrl + hjkl
-- vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'Move to left pane', silent = true })
-- vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = 'Move to pane below', silent = true })
-- vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = 'Move to pane above', silent = true })
-- vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'Move to right pane', silent = true })
--
-- -- Resize with Alt + hjkl
-- vim.keymap.set('n', '<A-h>', ':vertical resize -2<CR>', { desc = 'Resize left', silent = true })
-- vim.keymap.set('n', '<A-j>', ':resize +2<CR>', { desc = 'Resize down', silent = true })
-- vim.keymap.set('n', '<A-k>', ':resize -2<CR>', { desc = 'Resize up', silent = true })
-- vim.keymap.set('n', '<A-l>', ':vertical resize +2<CR>', { desc = 'Resize right', silent = true })

-- Move between buffers with Shift + hj
vim.keymap.set('n', '<S-h>', ':bp<CR>', { desc = 'Move to previous buffer', silent = true })
vim.keymap.set('n', '<S-l>', ':bn<CR>', { desc = 'Move to next buffer', silent = true })
vim.keymap.set('n', '<leader>bd', ':bdelete<CR>', { desc = 'Delete buffer', silent = true })

vim.keymap.set('i', 'jk', '<Esc>', { desc = 'Escape', silent = true })

