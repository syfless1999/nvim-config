return {
  "akinsho/bufferline.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  version = "*",
  config = function()
    local bufferline = require("bufferline")
    bufferline.setup({

      options = {
        mode = "tabs",
        style_preset = bufferline.style_preset.minimal,
        show_duplicate_prefix = false, -- whether to show duplicate buffer prefix
        separator_style = "thick",
        show_close_icon = false,
        indicator = {
          icon = "▎", -- this should be omitted if indicator style is not 'icon'
          style = "icon",
        },
        show_buffer_close_icons = false,
        offsets = {
          {
            filetype = "NvimTree",
            text = "",
            separator = true,
          },
        },
      },
    })
  end,
}
