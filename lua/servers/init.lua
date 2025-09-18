-- lua/servers/init.lua
local M = {}

local capabilities = require("cmp_nvim_lsp").default_capabilities()
local on_attach = require("utils.lsp").on_attach

local default_cfg = {
	on_attach = on_attach,
	capabilities = capabilities,
}

function M.setup()
	local servers = {
		lua_ls = require("servers.lua_ls"),
		gopls = require("servers.gopls"),
		pyright = require("servers.pyright"),
		bashls = require("servers.bashls"),
		yamlls = require("servers.yamlls"),
		jsonls = require("servers.jsonls"),
		ts_ls = require("servers.ts_ls"),
		ansiblels = require("servers.ansiblels"),
		tailwindcss = require("servers.tailwindcss"),
		dockerls = require("servers.dockerls"),
		emmet_ls = require("servers.emmet_ls"),
	}

	for name, mod in pairs(servers) do
		vim.lsp.config[name] = vim.tbl_deep_extend("force", default_cfg, mod)
	end

	vim.lsp.enable(vim.tbl_keys(servers))
end

return M
