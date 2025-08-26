local opt = vim.opt
local g = vim.g
local keymap = vim.keymap

-- Basic editor settings
opt.expandtab = true -- Use spaces instead of tabs
opt.tabstop = 2 -- Number of spaces that a <Tab> in the file counts for
opt.softtabstop = 2 -- Number of spaces that a <Tab> counts for while performing editing operations
opt.shiftwidth = 2 -- Size of an indent
opt.relativenumber = true -- Show relative line numbers
opt.number = true -- Show absolute line number on current line
opt.signcolumn = "yes" -- Always show the signcolumn
opt.termguicolors = true -- Enable 24-bit RGB colors
opt.wrap = false -- Disable line wrap

-- Markdown indentation fix
g.markdown_recommended_style = 0

-- Leader key
g.mapleader = " "

-- Key mapping defaults
local opts = { noremap = true, silent = true }

-- LSP
keymap.set("n", "K", vim.lsp.buf.hover, { desc = "LSP Hover" })
keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "Go to Definition" })
keymap.set("n", "<leader>gi", vim.lsp.buf.implementation, { desc = "Go to Implementation" })
keymap.set("n", "<leader>gr", vim.lsp.buf.references, { desc = "Go to References" })
keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Action" })
keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename Symbol" })
keymap.set("n", "<leader>f", vim.lsp.buf.format, { desc = "Format Document" })

-- Move selected lines
keymap.set("v", "J", ":m '>+1<CR>gv=gv", opts)
keymap.set("v", "K", ":m '<-2<CR>gv=gv", opts)

-- Window navigation
keymap.set("n", "<C-h>", "<C-w>h", opts)
keymap.set("n", "<C-j>", "<C-w>j", opts)
keymap.set("n", "<C-k>", "<C-w>k", opts)
keymap.set("n", "<C-l>", "<C-w>l", opts)

-- Clear search highlight
keymap.set("n", "<leader>n", ":nohlsearch<CR>", opts)

-- Tabs
keymap.set("n", "te", ":tabedit<CR>", opts)
keymap.set("n", "<Tab>", ":tabnext<CR>", opts)
keymap.set("n", "<S-Tab>", ":tabprev<CR>", opts)

-- Increment/decrement
keymap.set("n", "+", "<C-a>", opts)
keymap.set("n", "-", "<C-x>", opts)

-- Split windows
keymap.set("n", "ss", ":split<CR>", opts)
keymap.set("n", "sv", ":vsplit<CR>", opts)

-- Resize windows easily
keymap.set("n", "<C-Left>", "<C-w><", opts)
keymap.set("n", "<C-Right>", "<C-w>>", opts)
keymap.set("n", "<C-Up>", "<C-w>+", opts)
keymap.set("n", "<C-Down>", "<C-w>-", opts)

-- Plugin mappings
-- Neo-Tree filesystem toggle
keymap.set("n", "<C-n>", ":Neotree toggle filesystem reveal float<CR>", opts)

-- Telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { desc = "Find Files" })
keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<CR>", { desc = "Recent Files" })
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<CR>", { desc = "Live Grep" })
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<CR>", { desc = "Grep String" })
