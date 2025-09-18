return {
	-- filetypes = { "go", "gomod", "gowork", "gotmpl" },
	-- root_dir = require("lspconfig.util").root_pattern("go.work", "go.mod", ".git"),
	-- settings = {
	-- 	gopls = {
	-- 		usePlaceholders = true,
	-- 		completeUnimported = true,
	-- 		analyses = {
	-- 			unusedparams = true,
	-- 			shadow = true,
	-- 		},
	-- 		staticcheck = true,
	-- 	},
	-- },
	--
	settings = {
		gopls = {
			usePlaceholders = true,
			completeUnimported = true,
			analyses = {
				unusedparams = true,
				shadow = true,
			},
			staticcheck = true,
		},
	},
}
