return {
	"nvim-treesitter/nvim-treesitter",
	-- cmd = { "TSInstall", "TSBufEnable", "TSBufDisable", "TSModuleInfo" },
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"lua",
			},
			auto_install = true,
			highlight = {
				enable = true,
				use_languagetree = true,
			},
			indent = {
				enable = true,
				-- disable = {
				-- 	"python",
				-- },
			},
		})
	end,
}
