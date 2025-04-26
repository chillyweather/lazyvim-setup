return {
  -- {
  --   "hrsh7th/nvim-cmp",
  --   init = function()
  --     vim.g.cmp_disabled = false
  --   end,
  --   opts = function(_, opts)
  --     opts.enabled = function()
  --       -- local context = require("cmp.config.context")
  --       if vim.g.cmp_disabled == true then
  --         return false
  --       end
  --       -- some other conditions (like not in commments) can go here
  --       return true
  --     end
  --   end,
  --   keys = {
  --     {
  --       "<leader>uj",
  --       function()
  --         vim.g.cmp_disabled = not vim.g.cmp_disabled
  --         local msg = ""
  --         if vim.g.cmp_disabled == true then
  --           msg = "Autocompletion (cmp) disabled"
  --         else
  --           msg = "Autocompletion (cmp) enabled"
  --         end
  --         vim.notify(msg, vim.log.levels.INFO)
  --       end,
  --       noremap = true,
  --       silent = true,
  --       desc = "Toggle autocompletion",
  --     },
  --   },
  -- },

  -- Inlay hints toggle
  {
    "neovim/nvim-lspconfig",
    init = function()
      -- Initialize the global variable
      vim.g.inlay_hints_enabled = false
    end,
  },
}
