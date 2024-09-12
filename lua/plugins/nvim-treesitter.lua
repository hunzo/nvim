return {
	{
		"nvim-treesitter/nvim-treesitter",
		-- cmd = { "TSInstall", "TSBufEnable", "TSBufDisable", "TSModuleInfo" },
		build = ":TSUpdate",
		opts = function()
			return require("config.treesitter")
		end,
		config = function(_, opts)
			require("nvim-treesitter.configs").setup(opts)
		end,
	},
}

-- return {
-- 	{
-- 		"nvim-treesitter/nvim-treesitter",
-- 		build = ":TSUpdate",
-- 		config = function()
-- 			local configs = require("nvim-treesitter.configs")
--
-- 			configs.setup({
-- 				ensure_installed = {
-- 					"vim",
-- 					"lua",
-- 					"html",
-- 					"htmldjango",
-- 					"css",
-- 					"javascript",
-- 					"typescript",
-- 					"tsx",
-- 					"c",
-- 					"markdown",
-- 					"markdown_inline",
-- 					"python",
-- 					"go",
-- 					"bash",
-- 					"dockerfile",
-- 					"yaml",
-- 				},
-- 				sync_install = false,
-- 				highlight = { enable = true },
-- 				indent = { enable = true },
-- 			})
-- 		end,
-- 	},
-- }
