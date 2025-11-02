return {
  -- Catppuccin (optional, for switching)
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = true, -- load only when you switch to it
    config = function()
      require("catppuccin").setup({
        flavour = "mocha",
        background = { light = "latte", dark = "mocha" },
        transparent_background = false,
        term_colors = true,
        styles = {
          comments = { "italic" },
          conditionals = { "italic" },
          functions = { "bold" },
          keywords = { "italic", "bold" },
        },
      })
    end,
  },

  -- TokyoNight (default theme)
  {
    "folke/tokyonight.nvim",
    name = "tokyonight",
    lazy = false, -- load at startup
    config = function()
      require("tokyonight").setup({
        style = "moon", -- set default to Moon
        transparent = false,
        styles = {
          comments = { italic = true },
          keywords = { italic = true },
        },
      })
      -- Set as default colorscheme
      vim.cmd([[colorscheme tokyonight]])
    end,
  },
}
