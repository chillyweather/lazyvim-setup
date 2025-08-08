return {
  {
    "zaldih/themery.nvim",
    lazy = false, -- Load during startup since it's a colorscheme manager
    priority = 1000,
    opts = {
      mappings = {
        themery = "<leader>tc", -- theme change
      },
    },
    config = function()
      -- Enable true-color support
      vim.o.termguicolors = true

      -- Setup Themery with your themes (use tables to avoid concat errors)
      require("themery").setup({
        themes = {
          {
            name = "Luca",
            colorscheme = "luca",
            before = [[
              vim.o.termguicolors = true
            ]],
          },
          { name = "Github Light", colorscheme = "github_light" },
          { name = "Catppuccin Latte", colorscheme = "catppuccin-latte" },
          { name = "DayFox", colorscheme = "dayfox" },
          { name = "NordFox", colorscheme = "nordfox" },
          { name = "Catppuccin Frappe", colorscheme = "catppuccin-frappe" },
          { name = "Github Dark", colorscheme = "github_dark" },
          { name = "Tokyonight Storm", colorscheme = "tokyonight-storm" },
          { name = "NightFox", colorscheme = "nightfox" },
          { name = "Catppuccin Mocha", colorscheme = "catppuccin-mocha" },
          { name = "TeraFox", colorscheme = "terafox" },
          { name = "Kanagawa", colorscheme = "kanagawa-wave" },
          { name = "Sonokai", colorscheme = "sonokai" },
          { name = "forest-night", colorscheme = "forest-night" },
          { name = "Ristretto", colorscheme = "monokai-pro-ristretto" },
          { name = "Bamboo", colorscheme = "bamboo" },
        },
        live_preview = true, -- preview when cycling through themes
        remember = true, -- remember last used theme
        statusline = { separator = "->" },
      })

      -- General ColorScheme tweaks
      vim.api.nvim_create_autocmd("ColorScheme", {
        pattern = "*",
        callback = function()
          vim.cmd([[highlight LineNr guifg=#666666]])
        end,
      })

      -- Set guicursor for reliable cursor color that adapts to colorscheme
      vim.opt.guicursor = "n-v-c:block-Cursor/lCursor,i-ci-ve:ver25-Cursor/lCursor,r-cr:hor20,o:hor50"

      -- Set cursor colors to adapt to theme automatically
      vim.api.nvim_create_autocmd("ColorScheme", {
        pattern = "*",
        callback = function()
          -- This gets inverted colors from current theme for cursor
          local bg = vim.api.nvim_get_hl(0, { name = "Normal" }).bg or "#000000"
          local fg = vim.api.nvim_get_hl(0, { name = "Normal" }).fg or "#ffffff"
          vim.api.nvim_set_hl(0, "Cursor", { fg = bg, bg = fg })
          vim.api.nvim_set_hl(0, "lCursor", { fg = bg, bg = fg })
        end,
        group = vim.api.nvim_create_augroup("CursorHighlight", { clear = true }),
      })
    end,

    -- Theme dependencies
    dependencies = {
      "folke/tokyonight.nvim",
      "catppuccin/nvim",
      "shaunsingh/nord.nvim",
      "rebelot/kanagawa.nvim",
      "raphamorim/lucario",
      "nordtheme/vim",
      "gregsexton/Atom",
      "projekt0n/github-nvim-theme",
      "EdenEast/nightfox.nvim",
      "sainnhe/sonokai",
      "adibhanna/forest-night.nvim",
      "loctvl842/monokai-pro.nvim",
      "ribru17/bamboo.nvim",
    },
  },
}
