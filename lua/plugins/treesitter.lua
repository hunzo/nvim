return {
	"nvim-treesitter/nvim-treesitter",
	-- cmd = { "TSInstall", "TSBufEnable", "TSBufDisable", "TSModuleInfo" },
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"lua",
				"yaml",
				"bash",
				"go",
				"python",
				"html",
				"javascript",
			},
			modules = {},
			auto_install = true,
			ignore_install = {},
			sync_install = false,
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
			indent = {
				enable = true,
			},
		})
	end,
}
