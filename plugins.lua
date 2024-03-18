local overrides = require("custom.configs.overrides")

---@type NvPluginSpec[]
local plugins = {
  "onsails/lspkind.nvim",
  "b0o/schemastore.nvim",

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },

  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      return vim.tbl_deep_extend("force", opts, require("custom.configs.cmp"))
    end
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  {
    "stevearc/conform.nvim",
    opts = overrides.conform
  }
}

return plugins
