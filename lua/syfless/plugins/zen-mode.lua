return {
  "folke/zen-mode.nvim",
  opts = {},
  config = function()
    -- set keymaps
    local keymap = vim.keymap

    keymap.set("n", "<leader>z", "<cmd>ZenMode<CR>", { desc = "Switch to Zen-Mode" })
  end,
}
