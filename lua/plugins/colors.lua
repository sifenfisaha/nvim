return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin", -- or "tokyonight", "kanagawa"
    },
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = true,
    opts = { flavour = "frappe", transparent_background = true }, -- example variant
  },
}
