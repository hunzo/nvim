-- lazy.nvim format
return {
	"ojroques/nvim-osc52",
	event = "VeryLazy",
	config = function()
		require("osc52").setup({
			max_length = 0, -- ไม่จำกัดขนาดข้อความ
			trim = false,
			silent = false,
			tmux_passthrough = true,
		})

		-- Auto copy เมื่อ yank
		local function copy()
			if vim.v.event.operator == "y" and vim.v.event.regname == "" then
				require("osc52").copy_register("")
			end
		end

		vim.api.nvim_create_autocmd("TextYankPost", {
			callback = copy,
		})
	end,
}
