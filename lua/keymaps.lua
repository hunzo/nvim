-- =========================
-- Global Settings
-- =========================
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.relativenumber = true
vim.wo.number = true

vim.g.markdown_recommended_style = 0
vim.g.mapleader = " "

-- =========================
-- Keymaps
-- =========================
local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Move lines up/down in visual mode
keymap.set("v", "J", ":m '>+1<CR>gv=gv", opts)
keymap.set("v", "K", ":m '<-2<CR>gv=gv", opts)

-- Better window navigation
keymap.set("n", "<C-h>", "<C-w>h", opts)
keymap.set("n", "<C-j>", "<C-w>j", opts)
keymap.set("n", "<C-k>", "<C-w>k", opts)
keymap.set("n", "<C-l>", "<C-w>l", opts)

-- Clear search highlight
keymap.set("n", "<leader>h", ":nohlsearch<CR>", { desc = "Clear search highlight" })

-- Tabs
keymap.set("n", "te", ":tabedit<CR>", { desc = "New tab" })
keymap.set("n", "<Tab>", ":tabnext<CR>", opts)
keymap.set("n", "<S-Tab>", ":tabprev<CR>", opts)

-- Increment/Decrement
keymap.set("n", "+", "<C-a>", { desc = "Increment number" })
keymap.set("n", "-", "<C-x>", { desc = "Decrement number" })

-- Split windows
keymap.set("n", "ss", ":split<CR>", { desc = "Horizontal split" })
keymap.set("n", "sv", ":vsplit<CR>", { desc = "Vertical split" })

-- Resize windows
keymap.set("n", "<C-w><left>", "<C-w><", opts)
keymap.set("n", "<C-w><right>", "<C-w>>", opts)
keymap.set("n", "<C-w><up>", "<C-w>+", opts)
keymap.set("n", "<C-w><down>", "<C-w>-", opts)

-- Diagnostics navigation
keymap.set("n", "<C-d>", vim.diagnostic.goto_next, { desc = "Next diagnostic" })

-- LSP basic
keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover doc" })
keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "LSP: Go to definition" })
keymap.set("n", "<leader>gr", vim.lsp.buf.references, { desc = "LSP: Show references" })
keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "LSP: Code action" })

-- Neo-tree
keymap.set("n", "<C-n>", ":Neotree toggle filesystem reveal float<CR>", { desc = "Toggle Neo-tree" })

-- Telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { desc = "Find files in cwd" })
keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<CR>", { desc = "Recent files" })
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<CR>", { desc = "Live grep in cwd" })
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<CR>", { desc = "Grep string under cursor" })
