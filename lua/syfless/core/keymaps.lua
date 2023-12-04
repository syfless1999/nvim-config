vim.g.mapleader = " "
local keymap = vim.keymap -- for conciseness

-- general keymaps
keymap.set("i", "jk", "<ESC>")

-- clear search highlight
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- delete without copy
keymap.set("n", "x", '"_x')

keymap.set("n", "x", '"_x')
keymap.set("n", "x", '"_x')

keymap.set("n", "H", "0")
keymap.set("n", "L", "$")

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew %<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<C-[>", ":tabp<CR>") --  go to previous tab
keymap.set("n", "<C-]>", ":tabn<CR>") -- go to next tab
keymap.set("n", "<leader>nu", ":set relativenumber!<CR>") -- toggle relativenumber

-- plugin keymaps
keymap.set("n", "<leader>gb", ":Git blame<CR>") -- vim-fugitive blame
