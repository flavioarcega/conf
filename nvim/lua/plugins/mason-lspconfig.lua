return {
  "williamboman/mason-lspconfig.nvim",
  opts = {
    ensure_installed = {
      "prettier",
      "diagnosticls",
      "bashls",
      "lua_ls",
      -- markdown
      "marksman",
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
