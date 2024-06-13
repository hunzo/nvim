return {
	"xiyaowong/nvim-transparent",
	enabled = true,
	config = function()
		local opts = require("config.nvim-transparent")
		local transparent = require("transparent")
		transparent.setup(opts)
		transparent.clear_prefix("NeoTree")
	end,
}
