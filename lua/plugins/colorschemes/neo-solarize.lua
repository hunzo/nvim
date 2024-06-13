return {
	{
		"Tsuzat/NeoSolarized.nvim",
		lazy = false, -- make sure we load this during startup if it is your main colorscheme
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			vim.cmd([[ colorscheme NeoSolarized ]])
		end,
	},

	-- {
	--   "craftzdog/solarized-osaka.nvim",
	--   lazy = false,
	--   priority = 1000,
	--   opts = {
	--     transparent = true,
	--     terminal_colors = true,
	--   },

	--   config = function()
	--     vim.cmd([[colorscheme solarized-osaka]])
	--   end,
	-- },
}
