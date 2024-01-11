local options = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "htmldjango",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "c",
    "markdown",
    "markdown_inline",
    "python",
    "go",
    "bash",
    "dockerfile",
    "yaml",
  },
  auto_install = true,
  highlight = {
    enable = true,
    use_languagetree = true,
  },
  indent = {
    enable = true,
    -- disable = {
    -- 	"python",
    -- },
  },
}

return options
