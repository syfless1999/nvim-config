return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  event = "VeryLazy",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-telescope/telescope-live-grep-args.nvim",
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")
    local lga_actions = require("telescope-live-grep-args.actions")

    telescope.setup({
      defaults = {
        file_ignore_patterns = {
          "yarn.lock",
          "^.git/",
        },
        -- path_display = {
        --   "truncate",
        -- shorten = {
        --   len = 3,
        --   exclude = { 1, -1 },
        -- },
        -- },
        -- path_display={"smart"},
        mappings = {
          i = {
            ["<C-k>"] = actions.move_selection_previous, -- move to prev result
            ["<C-j>"] = actions.move_selection_next,     -- move to next result
            -- ["<C-h>"] = actions.results_scrolling_left,
            -- ["<C-l>"] = actions.results_scrolling_right,
            ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
          },
        },
      },
      extensions = {
        live_grep_args = {
          mappings = {
            i = {
              ["<C-i>"] = lga_actions.quote_prompt({ postfix = " --iglob " }),
            },
          },
        },
      },
    })

    telescope.load_extension("fzf")
    telescope.load_extension("live_grep_args")

    -- set keymaps
    local keymap = vim.keymap -- for conciseness

    keymap.set(
      "n",
      "<leader>ff",
      "<cmd>Telescope find_files hidden=true layout_strategy=vertical<cr>",
      { desc = "Fuzzy find files in cwd" }
    )
    keymap.set("n", "<leader>fo", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
    keymap.set(
      "n",
      "<leader>fs",
      ":lua require('telescope').extensions.live_grep_args.live_grep_args({ layout_strategy = 'vertical' })<CR>",
      { desc = "Find string in cwd" }
    )
    keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })
    keymap.set("n", "<leader>fr", "<cmd>Telescope resume<cr>", { desc = "Telescope resume" })
    keymap.set("n", "<leader>fg", "<cmd>Telescope git_status<cr>", { desc = "Telescope Git status" })
    keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Telescope buffers" })
    keymap.set("n", "<leader>ft", "<cmd>TodoTelescope layout_strategy=vertical<cr>", { desc = "Find todos" })
    keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", { desc = "Telescope help "})
  end,
}
