--- @param lspconfig table The lspconfig module from nvim-lspconfig plugin
--- @param capabilities table LSP client capabilities (typically from nvim-cmp or similar)
--- @param on_attach function Callback function executed when LSP attaches to a buffer
--- @return nil
return function(lspconfig, capabilities, on_attach)
	lspconfig.ansiblels.setup({
		capabilities = capabilities,
		on_attach = on_attach,
		filetypes = { "yaml.asible", "yml" },
		settings = {
			ansible = {
				ansible = {
					path = "ansible",
				},
				ansibleLint = {
					enabled = true,
					path = "ansible-lint",
				},
				executionEnvironment = {
					enabled = false,
				},
			},
		},
	})
end
