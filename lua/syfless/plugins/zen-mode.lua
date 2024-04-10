return {
  "folke/zen-mode.nvim",
  keys = {
    { "<leader>zz", "<cmd>ZenMode<CR>", desc = "Switch to Zen-Mode" },
  },
  config = function()
    -- local keymap = vim.keymap
    -- keymap.set("n", "<leader>zz", "<cmd>ZenMode<CR>", { desc = "Switch to Zen-Mode" })

    require("zen-mode").setup({
      window = {
        width = 0.7,
      },
      plugins = {
        tmux = { enabled = false },
      },
    })
  end,
}
