return {
  "neovim/nvim-lspconfig",
  opts = {
    inlay_hints = {
      enabled = false,
    },
    setup = {
      -- If needed for specific LSPs
      ["*"] = function(_, opts)
        if vim.lsp.inlay_hint then
          vim.lsp.inlay_hint.enabled = function() end
        end
        return false
      end,
    },
  },
}
