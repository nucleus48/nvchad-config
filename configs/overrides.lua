local M = {}

M.conform = {
  formatters_by_ft = {
    typescript = { "prettier" },
    javascript = { "prettier" },
    typescriptreact = { "prettier" },
    css = { "prettier" },
    json = { "prettier" },
    jsonc = { "prettier" },
    html = { "prettier" }
  }
}

M.treesitter = {
  auto_install = true,
}

M.nvimtree = {
  git = {
    enable = true,
  },
  renderer = {
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
