vim.api.nvim_create_user_command("RelPathCopy", function()
  local path = vim.fn.expand("%:~:.")
  vim.fn.setreg("+", path)
  vim.notify('Copied "' .. path .. '" to the clipboard!')
end, {})

vim.api.nvim_create_user_command("RelPath", function()
  local path = vim.fn.expand("%:~:.")
  vim.notify(path)
end, {})

-- open help doc in vertical split use `:h`
-- open help doc in horizontal split use `:H`
vim.cmd("cnoreabbrev H h")
vim.cmd("cnoreabbrev h vert h")
