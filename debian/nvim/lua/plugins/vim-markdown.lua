-- Highlight YAML front matter
vim.api.nvim_set_var("vim_markdown_frontmatter ", 1)

return {
  "plasticboy/vim-markdown",
  dependencies = {
    "godlygeek/tabular",
  },
}
