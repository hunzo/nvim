-- LSP configuration with custom keymaps and special setup
return {
	"neovim/nvim-lspconfig",
	lazy = false,
	config = function()
		local lspconfig = require("lspconfig")
		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		local servers = {
			"tailwindcss",
			"ts_ls",
			"gopls",
			"pyright",
			"html",
			"lua_ls",
			"yamlls",
			"denols",
			"dockerls",
			"bashls",
			"jsonls",
			"cssls",
			"ansiblels",
		}

		local function on_attach(ev)
			local opts = { buffer = ev.buf, silent = true }
			local keymap = vim.keymap

			local map = function(mode, lhs, rhs, desc)
				opts.desc = desc
				keymap.set(mode, lhs, rhs, opts)
			end

			map("n", "gR", "<cmd>Telescope lsp_references<CR>", "Show LSP references")
			map("n", "gD", vim.lsp.buf.declaration, "Go to declaration")
			map("n", "gd", "<cmd>Telescope lsp_definitions<CR>", "Show LSP definitions")
			map("n", "gi", "<cmd>Telescope lsp_implementations<CR>", "Show LSP implementations")
			map("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", "Show LSP type definitions")
			map({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, "Code actions")
			map("n", "<leader>rn", vim.lsp.buf.rename, "Smart rename")
			map("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", "Buffer diagnostics")
			map("n", "<leader>d", vim.diagnostic.open_float, "Line diagnostics")
			map("n", "[d", vim.diagnostic.goto_prev, "Previous diagnostic")
			map("n", "]d", vim.diagnostic.goto_next, "Next diagnostic")
			map("n", "K", vim.lsp.buf.hover, "Hover documentation")
			map("n", "<leader>rs", ":LspRestart<CR>", "Restart LSP")
		end

		vim.api.nvim_create_autocmd("LspAttach", {
			group = vim.api.nvim_create_augroup("UserLspConfig", {}),
			callback = on_attach,
		})

		for _, server in ipairs(servers) do
			lspconfig[server].setup({
				capabilities = capabilities,
			})
		end

		-- Emmet
		lspconfig.emmet_ls.setup({
			capabilities = capabilities,
			filetypes = {
				"html",
				"typescriptreact",
				"javascriptreact",
				"css",
				"sass",
				"scss",
				"less",
				"svelte",
			},
		})

		-- YAML
		lspconfig.yamlls.setup({
			capabilities = capabilities,
			settings = {
				yaml = {
					customTags = { "!vault" },
				},
			},
		})

		-- Lua
		lspconfig.lua_ls.setup({
			capabilities = capabilities,
			settings = {
				Lua = {
					runtime = { version = "LuaJIT" },
					diagnostics = {
						globals = { "vim", "require" },
					},
					workspace = {
						library = vim.api.nvim_get_runtime_file("", true),
					},
					telemetry = { enable = false },
				},
			},
		})
	end,
}
