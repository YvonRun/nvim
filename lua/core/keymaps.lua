vim.g.mapleader = ' ' 
vim.g.maplocalleader = ' '

vim.wo.number = true
vim.wo.relativenumber = true


vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true
vim.opt.swapfile = false
vim.opt.ignorecase = true

-- spaces / indent
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.shiftround = true
vim.opt.expandtab = true

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.api.nvim_set_option("clipboard","unnamed")

vim.keymap.set('v', '<C-c>', '"+y')
