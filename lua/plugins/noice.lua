return {
  "folke/noice.nvim",
  -- opts = {
  -- 	background_colour = "#000000",
  -- 	render = "compact",
  -- },
  event = "VeryLazy",
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
  },
  config = function()
    local noice = require("noice")
    local opts = require("config.noiceconfig")
    noice.setup(opts)

    require("notify").setup(vim.tbl_extend("keep", {
      -- other stuff
      background_colour = "#000000",
      render = "wrapped-compact",
      timeout = 3000,
      -- top_down = false,
    }, opts))
  end,
}
