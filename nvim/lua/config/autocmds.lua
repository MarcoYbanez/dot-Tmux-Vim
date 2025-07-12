-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
vim.opt.swapfile = false
vim.g.maplocalleader = ","
-- grug-far
vim.keymap.set("n", "<leader>se", function()
  require("grug-far").open({ prefills = { search = vim.fn.expand("<cword>") } })
end, {
  desc = "Search and Replace Word",
})

vim.keymap.set("n", "go", "<c-o>", { desc = "Go Back" })
