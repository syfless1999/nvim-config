vim.g.mapleader = " "
local keymap = vim.keymap -- for conciseness

-- clear search highlight
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- delete without copy
keymap.set("n", "x", '"_x')

-- quick jump to start / end
keymap.set("n", "H", "0")
keymap.set("n", "L", "$")

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew %<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab
keymap.set("n", "<leader>tn", ":tabn<CR>") -- go to next tab
keymap.set("n", "<leader>nu", ":set relativenumber!<CR>") -- toggle relativenumber

-- buffer wider
keymap.set("n", "<C-w>l", "5<C-w>>")
keymap.set("n", "<C-w>h", "5<C-w><")
keymap.set("n", "<C-w>j", "5<C-w>-")
keymap.set("n", "<C-w>k", "5<C-w>+")

-- fold
keymap.set("n", "z{", "zfa{")
