return {
	"mason-org/mason.nvim",
	-- version = "1.28.0", -- ✅ fix automatic_enable
	dependencies = {
		"mason-org/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		-- ========== Import Modules ==========
		local mason = require("mason")
		local mason_lspconfig = require("mason-lspconfig")
		local mason_tool_installer = require("mason-tool-installer")

		-- ========== Setup mason ==========
		mason.setup({
			max_concurrent_installers = 4,
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
				"ts_ls",
				"gopls",
				-- "pyright@1.1.377",
				"pyright",
				"emmet_ls",
				"html",
				"lua_ls",
				"yamlls",
				"dockerls",
				"bashls",
				"jsonls",
				"cssls",
				"ansiblels",
				"docker_compose_language_service",
			},
			automatic_enable = true,
			automatic_installation = true,
		})

		-- ========== Setup mason-tool-installer ==========
		mason_tool_installer.setup({
			ensure_installed = {
				-- Formatters
				"autopep8",
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
				"eslint_d",
				"djlint",
				"golangci-lint",
				"ansible-lint",
				"hadolint",
			},
		})
	end,
}
