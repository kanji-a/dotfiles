local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
map('i', 'jk', '<Esc>', opts)
map('n', 'Y', 'y$', opts)
map('n', '<Esc><Esc>', ':nohlsearch<CR><Esc>', opts)
