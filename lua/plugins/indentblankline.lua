return {
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",

    opts = {
      indent = { highlight = { "LineNr" }, char = "│" },
      -- indent = { highlight = { "LineNr" }, char = "|" },
      scope = { enabled = false },
    },
  },
}
