-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
map('n', 'j', 'gj', opts)
map('n', 'k', 'gk', opts)
map('n', 'Y', 'y$', opts)
map('n', '<Esc><Esc>', ':nohlsearch<CR><Esc>', opts)
