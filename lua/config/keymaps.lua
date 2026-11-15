-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- ============================================================================
-- Sublime Text-like Key Bindings
-- ============================================================================
local map = vim.keymap.set

-- File operations (like Sublime)
map("n", "<C-s>", "<cmd>w<cr>", { desc = "Save file" })
map("i", "<C-s>", "<cmd>w<cr>", { desc = "Save file" })
map("n", "<C-o>", "<cmd>Telescope find_files<cr>", { desc = "Open file" })
map("n", "<C-p>", "<cmd>Telescope find_files<cr>", { desc = "Quick switch file" })
map("n", "<C-Shift-p>", "<cmd>Telescope commands<cr>", { desc = "Command palette" })

-- Save and quit
map("n", "<C-q>", "<cmd>qa<cr>", { desc = "Quit all" })

-- Find & Replace (like Sublime)
map("n", "<C-f>", "/", { desc = "Find" })
map("v", "<C-f>", "/", { desc = "Find in selection" })
map("n", "<C-h>", ":%s/", { desc = "Find and replace" })
map("n", "<C-Shift-f>", "<cmd>Telescope live_grep<cr>", { desc = "Find in files" })

-- Line operations (Sublime: Ctrl+Shift+K = delete line)
map("n", "<C-Shift-k>", '"_dd', { desc = "Delete line" })
map("n", "<C-Enter>", "o<esc>", { desc = "New line below" })
map("n", "<C-Shift-Enter>", "O<esc>", { desc = "New line above" })
map("n", "<C-Shift-d>", "yyp", { desc = "Duplicate line" })
map("n", "<A-Up>", "<cmd>move-2<cr>", { desc = "Move line up" })
map("n", "<A-Down>", "<cmd>move+1<cr>", { desc = "Move line down" })

-- Multi-cursor / Select next occurrence (Sublime: Ctrl+D)
map("n", "<C-d>", "*``cgn", { desc = "Select next occurrence" })
map("v", "<C-d>", 'y\\v<C-r>"<cr>', { desc = "Select next occurrence" })

-- Selection (like Sublime)
map("n", "<C-a>", "ggVG", { desc = "Select all" })
map("n", "<C-l>", "V", { desc = "Select line" })
map("n", "<C-Shift-l>", "ggVG", { desc = "Select all lines" })

-- Clipboard (system clipboard like Sublime)
map("n", "<C-c>", '"+y', { desc = "Copy to system clipboard" })
map("n", "<C-x>", '"+d', { desc = "Cut to system clipboard" })
map("n", "<C-v>", '"+p', { desc = "Paste from system clipboard" })
map("v", "<C-c>", '"+y', { desc = "Copy to system clipboard" })
map("v", "<C-x>", '"+d', { desc = "Cut to system clipboard" })
map("i", "<C-v>", "<C-r>+", { desc = "Paste from system clipboard" })

-- Undo/Redo
map("n", "<C-z>", "u", { desc = "Undo" })
map("n", "<C-y>", "<cmd>redo<cr>", { desc = "Redo" })
map("i", "<C-z>", "<cmd>undo<cr>", { desc = "Undo" })
map("i", "<C-y>", "<cmd>redo<cr>", { desc = "Redo" })

-- Comment toggle (like Sublime Ctrl+/)
map("n", "<C-/>", "<cmd>CommentToggle<cr>", { desc = "Toggle comment" })
map("v", "<C-/>", "<cmd>CommentToggle<cr>", { desc = "Toggle comment" })

-- Go to definition (like Sublime F12)
map("n", "<F12>", "<cmd>lua vim.lsp.buf.definition()<cr>", { desc = "Go to definition" })

-- Go to line / grep (like Sublime Ctrl+G)
map("n", "<C-g>", "<cmd>lua require('telescope.builtin').live_grep()<cr>", { desc = "Go to line / grep" })

-- Buffer navigation (Sublime: Ctrl+Tab / Ctrl+Shift+Tab)
map("n", "<C-Tab>", "<cmd>bnext<cr>", { desc = "Next buffer" })
map("n", "<C-S-Tab>", "<cmd>bprevious<cr>", { desc = "Previous buffer" })

-- Window navigation (like Sublime focus pane)
map("n", "<C-h>", "<cmd>wincmd h<cr>", { desc = "Focus left window" })
map("n", "<C-j>", "<cmd>wincmd j<cr>", { desc = "Focus bottom window" })
map("n", "<C-k>", "<cmd>wincmd k<cr>", { desc = "Focus top window" })
map("n", "<C-l>", "<cmd>wincmd l<cr>", { desc = "Focus right window" })

-- Save all files
map("n", "<C-S-s>", "<cmd>wa<cr>", { desc = "Save all files" })

-- Close file/buffer (like Sublime Ctrl+W)
map("n", "<C-w>", "<cmd>q<cr>", { desc = "Close buffer" })
