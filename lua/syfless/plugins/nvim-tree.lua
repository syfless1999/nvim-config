local setup, nvimtree = pcall(require, 'nvim-tree')

if not setup then
  return
end

-- change color for arrows in tree to light blue
vim.cmd([[ highlight NvimTreeIndentMarker guifg=#3FC5FF ]])

-- recommended settigns from documentation
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

nvimtree.setup({
  -- disable window_picker for
  -- explorer to work well with
  -- window splits
  actions = {
    open_file = {
      window_picker = {
        enable = false,
      },
    },
  },
  git = {
    ignore = true,
  },
})
