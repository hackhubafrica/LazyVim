-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- ============================================================================
-- Sublime Text-like Options
-- ============================================================================

-- Line numbers (Sublime shows them)
vim.opt.number = true
vim.opt.relativenumber = false -- Sublime uses absolute line numbers

-- Highlight current line
vim.opt.cursorline = true

-- Mouse support (Sublime has full mouse support)
vim.opt.mouse = "a"

-- 4 spaces like Sublime default
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.softtabstop = 4

-- Auto indent like Sublime
vim.opt.autoindent = true
vim.opt.smartindent = true

-- No line wrap by default (Sublime default)
vim.opt.wrap = false

-- Keep some lines visible when scrolling
vim.opt.scrolloff = 8

-- Show matching brackets
vim.opt.showmatch = true

-- Search highlighting
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- Ignore case unless uppercase in search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Always show sign column (prevents shifting)
vim.opt.signcolumn = "yes"

-- Better terminal colors
vim.opt.termguicolors = true

-- Undo history
vim.opt.undofile = true

-- Update time for faster diagnostics
vim.opt.updatetime = 250

-- Split behavior (more intuitive)
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Show tabs
vim.opt.showtabline = 2

-- Sublime-like status
vim.opt.laststatus = 2

-- Complete menu like Sublime
vim.opt.completeopt = "menu,menuone,noselect"

-- Better diff
vim.opt.diffopt = "filler,vertical,algorithm:patience"

-- Conceal level for markdown
vim.opt.conceallevel = 0

-- Backup settings
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false
