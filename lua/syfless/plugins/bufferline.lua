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
          style = "underline",
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
      highlights = {
        indicator_selected = {
          fg = "#ff5252",
          bg = "#33d9b2",
          sp = "#33d9b2",
        },
      },
    })
  end,
}
