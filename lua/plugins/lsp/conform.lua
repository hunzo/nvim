return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local conform = require("conform")

		-- 🔧 ตั้งค่า formatters สำหรับแต่ละ filetype
		local formatters_by_ft = {
			javascript = { "prettierd" },
			typescript = { "prettierd" },
			javascriptreact = { "prettierd" },
			typescriptreact = { "prettierd" },
			css = { "prettierd" },
			json = { "prettierd" },
			markdown = { "prettierd" },
			yaml = { "yamlfmt" },
			lua = { "stylua" },
			python = { "autopep8" },
			htmldjango = { "djlint" },
			html = { "djlint" },
			go = { "gofumpt", "golines" },
			sql = { "sqlfmt" },
			sh = { "beautysh" },
		}

		-- ⚙️ ตั้งค่า conform.nvim
		conform.setup({
			formatters_by_ft = formatters_by_ft,
			format_on_save = true,
			async = false,
			timeout_ms = 500,
			notify_on_error = true,
			log_level = vim.log.levels.DEBUG,
		})

		-- 🔁 เพิ่ม keymap <leader>f สำหรับ format
		vim.keymap.set({ "n", "v" }, "<leader>f", function()
			conform.format({
				lsp_fallback = true,
				async = false,
				timeout_ms = 500,
			})
		end, { desc = "Format file or range (in visual mode)" })
	end,
}
