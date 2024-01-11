return {
	"xiyaowong/nvim-transparent",
	enabled = true,
	config = function()
		local opts = require("config.nvim-transparent")
		require("transparent").setup(opts)
	end,
}
