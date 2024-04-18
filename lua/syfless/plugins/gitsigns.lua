return {
  "lewis6991/gitsigns.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    require("gitsigns").setup({
      on_attach = function(bufnr)
        local gs = package.loaded.gitsigns

        local function map(mode, l, r, desc)
          vim.keymap.set(mode, l, r, { buffer = bufnr, desc = desc })
        end

        map("n", "<leader>b", function()
          gs.blame_line({ full = true })
        end, "Blame line")

        map("n", "<leader>hd", gs.diffthis, "Diff this")
      end,
    })
  end,
}
