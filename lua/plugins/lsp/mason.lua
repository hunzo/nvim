return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup({
				ui = {
					border = "rounded",
					icons = {
						package_installed = "✓",
						package_pending = "➜",
						package_uninstalled = "✗",
					},
				},
			})
		end,
	},

	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		dependencies = { "mason.nvim" },
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"bashls",
					"cssls",
					"denols",
					"dockerls",
					"emmet_ls",
					"gopls",
					"html",
					"jsonls",
					"lua_ls",
					"pyright",
					"tailwindcss",
					"tsserver",
					"yamlls",
					"ansiblels",
				},
				automatic_installation = true,
			})
		end,
	},
}
