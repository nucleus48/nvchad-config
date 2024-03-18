local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities
capabilities.workspace.didChangeWatchedFiles.dynamicRegistration = true

local lspconfig = require "lspconfig"

lspconfig.util.default_config = vim.tbl_extend(
  "force",
  lspconfig.util.default_config,
  {
    on_attach = on_attach,
    capabilities = capabilities,
  }
)

lspconfig.html.setup {}
lspconfig.tsserver.setup {}
-- lspconfig.tailwindcss.setup {}
-- lspconfig.clangd.setup {}
lspconfig.eslint.setup {}

-- lspconfig.svelte.setup {
--   settings = {
--     svelte = {
--       plugin = {
--         css = { globals = "src/app.html,src/app.css,src/index.css" }
--       }
--     }
--   }
-- }

lspconfig.cssls.setup {
  init_options = {
    provideFormatter = true
  }
}

lspconfig.jsonls.setup {
  settings = {
    json = {
      schemas = require('schemastore').json.schemas(),
      validate = { enable = true },
    },
  },
}

vim.diagnostic.config {
  virtual_text = false,
  severity_sort = true,
  float = {
    source = "always",
    header = "",
    prefix = "",
    suffix = "",
  }
}
