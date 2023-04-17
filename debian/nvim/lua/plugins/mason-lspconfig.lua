return {
  "williamboman/mason-lspconfig.nvim",
  opts = {
    ensure_installed = {
      "lua_ls",
      -- web
      "html",
      "cssls",
      -- java
      "jdtls",
      -- python
      "pylint",
      "jedi_language_server",
    },
  },
}
