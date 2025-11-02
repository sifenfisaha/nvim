return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false, -- load on startup
    config = function()
      -- Set default flavor to mocha
      vim.g.catppuccin_flavour = "mocha" -- latte, frappe, macchiato, mocha

      require("catppuccin").setup({
        background = {
          light = "latte",
          dark = "mocha",
        },
        transparent_background = false,
        term_colors = true,
        styles = {
          comments = { "italic" },
          conditionals = { "italic" },
          functions = { "bold" },
          keywords = { "italic", "bold" },
        },
        integrations = {
          cmp = true,
          gitsigns = true,
          nvimtree = true,
          telescope = true,
          treesitter = true,
        },
      })

      -- Load the colorscheme
      vim.cmd([[colorscheme catppuccin]])
    end,
  },
}
