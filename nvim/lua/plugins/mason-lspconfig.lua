return {
  "williamboman/mason-lspconfig.nvim",
  opts = {
    ensure_installed = {
      "diagnosticls",
      "bashls",
      "lua_ls",
      -- web
      "html",
      "cssls",
      -- java
      "jdtls",
      -- python
      "pylint",
      "jedi_language_server",
      -- docker
      "dockerls",
      "docker_compose_language_service",
    },
  },
}
