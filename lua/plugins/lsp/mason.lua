return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		-- import mason
		local mason = require("mason")

		-- import mason-lspconfig
		local mason_lspconfig = require("mason-lspconfig")

		local mason_tool_installer = require("mason-tool-installer")
		-- ensure install list
		-- local lsp = require("plugins.lsp.ensure_install_list").lsp
		-- local formatting = require("plugins.lsp.ensure_install_list").formatting
		-- enable mason and configure icons
		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		mason_lspconfig.setup({
			-- list of servers for mason to install
			ensure_installed = {
				"tailwindcss",
				"tsserver",
				"gopls",
				"pyright",
				"emmet_ls",
				"html",
				"lua_ls",
				"yamlls",
				"denols",
				"dockerls",
				"bashls",
				"jsonls",
				"cssls",
			},
			-- -- auto-install configured servers (with lspconfig)
			automatic_installation = true, -- not the same as ensure_installed
		})

		mason_tool_installer.setup({
			ensure_installed = {
				"autopep8",
				"djlint",
				"eslint_d",
				"prettier",
				"stylua",
				"gofumpt",
				"golines",
				"goimports-reviser",
				-- "isort",
				-- "black",
			},
		})
	end,
}
