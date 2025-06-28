return {
	"williamboman/mason.nvim",
	-- version = "1.28.0", -- ✅ ป้องกันปัญหา automatic_enable
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		-- ========== Import Modules ==========
		local mason = require("mason")
		local mason_lspconfig = require("mason-lspconfig")
		local mason_tool_installer = require("mason-tool-installer")

		-- ========== Setup mason ==========
		mason.setup({
			max_concurrent_installers = 8,
			ui = {
				border = "rounded",
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		-- ========== Setup mason-lspconfig ==========
		mason_lspconfig.setup({
			ensure_installed = {
				-- LSP Servers
				"tailwindcss",
				"ts_ls", -- ✅ แทน tsserver ที่ถูก deprecate แล้ว
				"gopls",
				"pyright@1.1.377",
				"emmet_ls",
				"html",
				"lua_ls",
				"yamlls",
				"denols",
				"dockerls",
				"bashls",
				"jsonls",
				"cssls",
				"ansiblels",
			},
			automatic_enable = true,
			automatic_installation = true,
		})

		-- ========== Setup mason-tool-installer ==========
		mason_tool_installer.setup({
			ensure_installed = {
				-- Formatters
				"autopep8",
				"djlint",
				"eslint_d",
				"prettierd",
				"stylua",
				"gofumpt",
				"golines",
				"sqlfmt",
				"yamlfmt",
				"shfmt",
				"nginx-config-formatter",
				"goimports-reviser",

				-- Linters
				"ruff",
				"golangci-lint",
				"ansible-lint",
			},
		})
	end,
}
