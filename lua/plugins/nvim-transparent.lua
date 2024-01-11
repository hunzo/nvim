return {
	"xiyaowong/nvim-transparent",
	enabled = false,
	config = function()
		local opts = require("config.nvim-transparent")
		require("transparent").setup(opts)
	end,
}
