---@type ChadrcConfig
local M = {}

local highlights = require "custom.highlights"

M.ui = {
  theme = "tokyonight",
  theme_toggle = { "tokyonight", "tokyodark" },
  hl_override = highlights.override,
  hl_add = highlights.add,
  lsp_semantic_tokens = true,
  nvdash = {
    load_on_startup = true
  },
  statusline = {
    theme = "vscode_colored"
  }
}

M.plugins = "custom.plugins"

M.mappings = require "custom.mappings"

return M
