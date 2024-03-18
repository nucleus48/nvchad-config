local cmp = require("cmp")

return {
  completion = {
    completeopt = "menu,menuone,noselect",
  },
  formatting = {
    format = require("lspkind").cmp_format({
      mode = 'symbol_text',
      maxwidth = 40,
      ellipsis_char = '...',
      preset = "codicons",
      show_labelDetails = true,
      before = function(_, vim_item)
        vim_item.menu = ""
        return vim_item
      end
    }),
    fields = { "abbr", "kind", "menu" }
  },
  mapping = {
    ["<Up>"] = cmp.mapping.select_prev_item({
      behavior = "select"
    }),
    ["<Down>"] = cmp.mapping.select_next_item({
      behavior = "select"
    }),
    ["<CR>"] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Insert,
      select = false,
    },
  }
}
