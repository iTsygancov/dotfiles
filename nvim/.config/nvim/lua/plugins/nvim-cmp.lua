return {
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      local cmp = require("cmp")
      local luasnip = require("luasnip")

      opts.mapping = vim.tbl_extend("force", opts.mapping, {
        ["<C-o>"] = cmp.mapping.complete({ select = true }),
        ["<Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_next_item()
          elseif luasnip.expand_or_locally_jumpable() then
            luasnip.expand_or_jump()
          else
            fallback()
          end
        end, { "i", "s" }),
        ["<S-Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_prev_item()
          elseif luasnip.locally_jumpable(-1) then
            luasnip.jump(-1)
          else
            fallback()
          end
        end, { "i", "s" }),
      })
    end,
    sorting = {
      -- This prioritizes LSP entries, moving them to the top
      comparators = {
        function(entry_a, entry_b)
          if entry_a.source.name == "nvim_lsp" then
            return true -- Entry 'a' should come before 'b'
          elseif entry_b.source.name == "nvim_lsp" then
            return false -- Entry 'b' should come before 'a'
          else
            return false -- No preference, use other sorting criteria
          end
        end,
      },
    },
  },
}
