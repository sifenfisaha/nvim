return {
  {
    "tanvirtin/monokai.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("monokai").setup({
        palette = require("monokai").ristretto,
        transparent = false,
      })
      vim.cmd.colorscheme("monokai_ristretto")
    end,
  },
}
