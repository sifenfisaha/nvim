return {
  {
    "github/copilot.vim",
    event = "InsertEnter", -- loads only when needed
    config = function()
      -- Disable default <Tab> mapping
      vim.g.copilot_no_tab_map = true

      -- Custom accept mapping
      vim.keymap.set("i", "<C-l>", 'copilot#Accept("<CR>")', {
        expr = true,
        silent = true,
        replace_keycodes = false,
        desc = "Accept Copilot suggestion",
      })

      -- Optional: disable Copilot in certain filetypes
      vim.g.copilot_filetypes = {
        ["TelescopePrompt"] = false,
        [""] = false,
        ["neo-tree"] = false,
        ["dap-repl"] = false,
      }
    end,
  },
}
