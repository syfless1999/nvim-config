return {
  "stevearc/conform.nvim",
  lazy = true,
  event = { "BufReadPre", "BufNewFile" }, -- to disable, comment this out
  config = function()
    local conform = require("conform")

    local option = {
      lsp_fallback = true,
      async = false,
      timeout_ms = 2000,
    }

    conform.setup({
      formatters_by_ft = {
        javascript = { "prettier" },
        typescript = { "prettier" },
        javascriptreact = { "prettier" },
        typescriptreact = { "prettier" },
        svelte = { "prettier" },
        css = { "prettier" },
        html = { "prettier" },
        json = { "prettier" },
        yaml = { "prettier" },
        markdown = { "prettier" },
        graphql = { "prettier" },
        lua = { "stylua" },
      },
    })

    vim.keymap.set({ "n", "v" }, "<leader>fm", function()
      conform.format(option)
    end, { desc = "Format file or range (in visual mode)" })
  end,
}
