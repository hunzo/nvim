return {
	"hrsh7th/nvim-cmp",
	event = "InsertEnter",
	dependencies = {
		"hrsh7th/cmp-buffer", -- Source: current buffer text
		"hrsh7th/cmp-path", -- Source: filesystem paths
		{
			"L3MON4D3/LuaSnip", -- Snippet engine
			version = "v2.*",
			build = "make install_jsregexp",
		},
		"saadparwaiz1/cmp_luasnip", -- Connect LuaSnip with cmp
		"rafamadriz/friendly-snippets", -- Common snippets
		"onsails/lspkind.nvim", -- VSCode-style pictograms
		{
			"hrsh7th/cmp-nvim-lsp", -- LSP source for completion
			lazy = false,
			config = true,
		},
	},

	config = function()
		local cmp = require("cmp")
		local luasnip = require("luasnip")
		local lspkind = require("lspkind")

		-- 🔄 Load VSCode-like snippets from friendly-snippets
		require("luasnip.loaders.from_vscode").lazy_load()

		-- 🧠 Completion key mappings
		local mappings = cmp.mapping.preset.insert({
			["<C-k>"] = cmp.mapping.select_prev_item(),
			["<C-j>"] = cmp.mapping.select_next_item(),
			["<C-b>"] = cmp.mapping.scroll_docs(-4),
			["<C-f>"] = cmp.mapping.scroll_docs(4),
			["<C-Space>"] = cmp.mapping.complete(),
			["<C-e>"] = cmp.mapping.abort(),
			["<CR>"] = cmp.mapping.confirm({ select = false }),
		})

		-- 📚 Sources for autocompletion
		local sources = cmp.config.sources({
			{ name = "nvim_lsp" },
			{ name = "luasnip" },
			{ name = "buffer" },
			{ name = "path" },
		})

		-- 🎨 Custom formatting with pictograms
		local formatting = {
			format = lspkind.cmp_format({
				mode = "symbol_text",
				maxwidth = 50,
				ellipsis_char = "...",
			}),
		}

		-- ⚙️ Main CMP setup
		cmp.setup({
			completion = {
				completeopt = "menu,menuone,preview,noselect",
			},
			snippet = {
				expand = function(args)
					luasnip.lsp_expand(args.body)
				end,
			},
			mapping = mappings,
			sources = sources,
			window = {
				documentation = cmp.config.window.bordered(),
				completion = cmp.config.window.bordered(),
			},
			formatting = formatting,
		})
	end,
}
