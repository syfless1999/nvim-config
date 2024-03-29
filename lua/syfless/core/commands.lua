vim.api.nvim_create_user_command("RelPathCopy", function()
  local path = vim.fn.expand("%:~:.")
  vim.fn.setreg("+", path)
  vim.notify('Copied "' .. path .. '" to the clipboard!')
end, {})

vim.api.nvim_create_user_command("RelPath", function()
  local path = vim.fn.expand("%:~:.")
  vim.notify(path)
end, {})
