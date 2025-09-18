-- return {
-- 	"folke/trouble.nvim",
-- 	opts = {}, -- for default options, refer to the configuration section for custom setup.
-- 	cmd = "Trouble",
-- 	lazy = true,
-- 	keys = {
-- 		{
-- 			"<leader>xx",
-- 			"<cmd>Trouble diagnostics toggle<cr>",
-- 			desc = "Workspace Diagnostics (Trouble)",
-- 		},
-- 		{
-- 			"<leader>xX",
-- 			"<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
-- 			desc = "Buffer Diagnostics (Trouble)",
-- 		},
-- 		{
-- 			"<leader>cs",
-- 			"<cmd>Trouble symbols toggle focus=false<cr>",
-- 			desc = "Symbols (Trouble)",
-- 		},
-- 		{
-- 			"<leader>cl",
-- 			"<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
-- 			desc = "LSP Definitions / references / ... (Trouble)",
-- 		},
-- 		{
-- 			"<leader>xL",
-- 			"<cmd>Trouble loclist toggle<cr>",
-- 			desc = "Location List (Trouble)",
-- 		},
-- 		{
-- 			"<leader>xQ",
-- 			"<cmd>Trouble qflist toggle<cr>",
-- 			desc = "Quickfix List (Trouble)",
-- 		},
-- 	},
-- }

-- lua/plugins/trouble.lua
return {
	"folke/trouble.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	cmd = { "Trouble" },
	opts = {}, -- ใช้ค่า default ของ trouble
	keys = {
		-- Diagnostics
		{ "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>", desc = "Diagnostics (Workspace)" },
		{ "<leader>xX", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", desc = "Diagnostics (Buffer)" },

		-- Quickfix/Loclist
		{ "<leader>xq", "<cmd>Trouble qflist toggle<cr>", desc = "Quickfix (Trouble)" },
		{ "<leader>xl", "<cmd>Trouble loclist toggle<cr>", desc = "Location List (Trouble)" },

		-- LSP views
		{ "<leader>xr", "<cmd>Trouble lsp_references toggle<cr>", desc = "LSP References (Trouble)" },
		{ "<leader>xd", "<cmd>Trouble lsp_definitions toggle<cr>", desc = "LSP Definitions (Trouble)" },
		{ "<leader>xt", "<cmd>Trouble lsp_type_definitions toggle<cr>", desc = "LSP Type Defs (Trouble)" },
		{ "<leader>xi", "<cmd>Trouble lsp_implementations toggle<cr>", desc = "LSP Implementations (Trouble)" },
	},
}
