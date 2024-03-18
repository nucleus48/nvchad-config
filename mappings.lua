---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },

    ["<leader>fm"] = {
      function()
        require("conform").format({ async = true, lsp_fallback = true })
      end,
      "formatting",
    },

    ["<C-z>"] = { "" }
  },
  v = {
    [">"] = { ">gv", "indent" },
  },
}

-- more keybinds!

return M
