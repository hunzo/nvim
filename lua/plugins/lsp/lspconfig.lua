return {
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lspconfig = require("lspconfig")
			local lsp_server = {
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
				"sqlls",
			}
			for _, lsp in ipairs(lsp_server) do
				lspconfig[lsp].setup({
					capabilities = capabilities,
					-- on_attach = on_attach,
				})
			end
			-- custom configs
			lspconfig.yamlls.setup({
				settings = {
					yaml = {
						customTags = {
							"!vault",
						},
					},
				},
			})

			lspconfig.lua_ls.setup({
				settings = {
					Lua = {
						runtime = {
							version = "LuaJIT",
						},
						diagnostics = {
							globals = {
								"vim",
								"require",
							},
						},
						workspace = {
							library = vim.api.nvim_get_runtime_file("", true),
						},
						telemetry = {
							enable = false,
						},
					},
				},
			})
		end,
	},
}
