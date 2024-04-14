return {
  "mfussenegger/nvim-dap",
  lazy = true,
  dependencies = {
    "rcarriga/nvim-dap-ui",
  },
  keys = {
    {
      "<leader>db",
      function()
        require("dap").toggle_breakpoint()
      end,
    },
    {
      "<leader>dc",
      function()
        require("dap").continue()
      end,
    },
  },
  config = function()
    require("dapui").setup()
  end,
}
