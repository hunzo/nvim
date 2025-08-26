return {
	"mfussenegger/nvim-lint",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local lint = require("lint")

		lint.linters_by_ft = {
			javascript = { "eslint_d" },
			javascriptreact = { "eslint_d" },
			typescript = { "eslint_d" },
			typescriptreact = { "eslint_d" },
			dockerfile = { "hadolint" },
			python = { "ruff" },
			go = { "golangcilint" },
		}

		local lint_augroup = vim.api.nvim_create_augroup("LintOnEvents", { clear = true })

		local function setup_autocmds()
			vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
				group = lint_augroup,
				callback = function()
					lint.try_lint()
				end,
			})
		end

		local function setup_keymaps()
			vim.keymap.set("n", "<leader>l", function()
				lint.try_lint()
			end, { desc = "Trigger linting manually" })
		end

		setup_autocmds()
		setup_keymaps()
	end,
}
