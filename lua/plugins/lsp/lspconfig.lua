return {
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      -- local on_attach = require("configs.lspconfig").on_attach

      local lspconfig = require("lspconfig")
      -- local lsp_server = require("configs.lspconfig").lsp
      local lsp_server = { "lua_ls" }
      for _, lsp in ipairs(lsp_server) do
        lspconfig[lsp].setup({
          capabilities = capabilities,
          -- on_attach = on_attach,
        })
      end
      -- custom configs
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
