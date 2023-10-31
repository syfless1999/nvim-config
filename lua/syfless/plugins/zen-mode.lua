return {
  "folke/zen-mode.nvim",
  opts = {},
  config = function()
    -- set keymaps
    local keymap = vim.keymap

    keymap.set("n", "z", "<cmd>ZenMode<CR>", { desc = "Switch to Zen-Mode" })
  end,
}
