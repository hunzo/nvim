return {
	"nvimtools/none-ls.nvim",
	dependencies = {
		"nvimtools/none-ls-extras.nvim",
	},
	config = function()
		local null_ls = require("null-ls")
		local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

		null_ls.setup({
			sources = {
				-- Formatting
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettier.with({
					extra_args = {
						"--no-semi",
						"--single-qoute",
						"--jsx-single-qoute",
					},
				}),
				null_ls.builtins.formatting.djlint.with({
					filetypes = { "htmldjango", "html" },
					command = "djlint",
					args = { "--reformat", "-" },
					extra_args = {
						"--indent",
						"2",
					},
				}),

				null_ls.builtins.formatting.yamlfmt,
				null_ls.builtins.formatting.gofumpt,
				null_ls.builtins.formatting.isort,
				-- null_ls.builtins.formatting.autopep8,
				null_ls.builtins.formatting.goimports_reviser,
				null_ls.builtins.formatting.golines,
				null_ls.builtins.formatting.sql_formatter,
				require("none-ls.formatting.autopep8"),

				-- Diagnostics
				require("none-ls.diagnostics.ruff"),
				require("none-ls.diagnostics.eslint_d"),
				-- null_ls.builtins.diagnostics.eslint_d,
				-- null_ls.builtins.diagnostics.ruff,
				-- null_ls.builtins.diagnostics.golangci_lint,
				-- null_ls.builtins.diagnostics.mypy,
				-- null_ls.builtins.diagnostics.pylint.with({
				-- 	prefer_local = "venv/bin",
				-- }),
				-- https://github.com/nvimtools/none-ls.nvim/discussions/81
			},

			on_attach = function(client, bufnr)
				-- check none-ls on_attach
				-- print("on_attach @none-ls")

				-- local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

				if client.supports_method("textDocument/formatting") then
					vim.api.nvim_clear_autocmds({
						group = augroup,
						buffer = bufnr,
					})
					vim.api.nvim_create_autocmd("BufWritePre", {
						group = augroup,
						buffer = bufnr,
						callback = function()
							vim.lsp.buf.format({ bufr = bufnr })
						end,
					})
				end
			end,
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
