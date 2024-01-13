return {
	"folke/noice.nvim",
	event = "VeryLazy",
	opts = {
		-- background_colour = "#000000",
	},
	dependencies = {
		"MunifTanjim/nui.nvim",
		"rcarriga/nvim-notify",
	},
	config = function()
		local noice = require("noice")
		local opts = require("config.noiceconfig")
		noice.setup(opts)

		require("notify").setup(vim.tbl_extend("keep", {
			-- other stuff
			background_colour = "#000000",
		}, opts))
	end,
}
