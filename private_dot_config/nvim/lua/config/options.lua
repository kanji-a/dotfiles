-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

opt.fileencoding = "utf-8"
opt.backup = false
opt.swapfile = false
opt.autoread = true
opt.hidden = true
opt.showcmd = true
opt.clipboard = "unnamedplus"
opt.number = true
opt.cursorline = true
opt.virtualedit = "block"
opt.smartindent = true
opt.showmatch = true
opt.laststatus = 2
opt.wildmode = "list:longest"
opt.syntax = "enable"
opt.list = true
opt.listchars = "tab:▸-"
opt.incsearch = true
opt.wrapscan = true
opt.hlsearch = true
opt.spelllang = { "en", "cjk" }
