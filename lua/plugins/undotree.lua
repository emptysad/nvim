vim.keymap.set('n', '<F2>', function ()
  vim.cmd.UndotreeToggle()
  vim.cmd.UndotreeFocus()
end,
{ silent=true })
return {
  "mbbill/undotree",
}
