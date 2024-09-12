vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set relativenumber")

-- Fix markdown indentation settings
vim.g.markdown_recommended_style = 0
vim.g.mapleader = " "
-- vim.g.transparent_enabled = true
-- vim.g.neosolarized_contrast = "hight"

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- keymap
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Navigate vim panes better
keymap.set("n", "<c-k>", "<C-w>k", opts)
keymap.set("n", "<c-j>", "<C-w>j", opts)
keymap.set("n", "<c-h>", "<C-w>h", opts)
keymap.set("n", "<c-l>", "<C-w>l", opts)

keymap.set("n", "<leader>h", ":nohlsearch<CR>")
vim.wo.number = true

-- New tab
keymap.set("n", "te", ":tabedit", opts)
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<S-tab>", ":tabprev<Return>", opts)

-- increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

-- resize windows
keymap.set("n", "<C-w><left>", "<C-w><", opts)
keymap.set("n", "<C-w><right>", "<C-w>>", opts)
keymap.set("n", "<C-w><up>", "<C-w>+", opts)
keymap.set("n", "<C-w><down>", "<C-w>-", opts)

-- diagnostics
keymap.set("n", "<C-d>", function()
	vim.diagnostic.goto_next()
end, opts)

-- lsp
keymap.set("n", "K", vim.lsp.buf.hover, {})
keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})

-- Neo-Tree
-- keymap.set("n", "<C-n>", "<cmd>NvimTreeToggle<CR>", opts)
-- keymap.set("n", "<leader>bf", ":Neotree toggle buffers reveal float<CR>", opts)
keymap.set("n", "<C-n>", ":Neotree toggle filesystem reveal float<CR>", opts)

-- Telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })
