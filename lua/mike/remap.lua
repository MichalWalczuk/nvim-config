vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>c", vim.cmd.bw)
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.opt.cursorline = true
vim.opt.number = true
vim.opt.updatetime = 50
vim.opt.signcolumn = "number"
vim.opt.scrolloff = 6
