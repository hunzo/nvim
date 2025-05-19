vim.filetype.add({
  pattern = {
    [".*/playbooks/.*%.yml"] = "yaml.ansible",
    [".*/roles/.*/tasks/.*%.yml"] = "yaml.ansible",
    [".*/handlers/.*%.yml"] = "yaml.ansible",
    [".*/group_vars/.*%.yml"] = "yaml.ansible",
    [".*/host_vars/.*%.yml"] = "yaml.ansible",
  },
})
