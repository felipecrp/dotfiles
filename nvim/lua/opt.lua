
vim.cmd [[ set nofoldenable ]]

vim.opt.mouse = 'a'
vim.opt.cursorline = true

-- line number
vim.opt.number = true
vim.opt.relativenumber = true

-- column
-- vim.opt.colorcolumn = 80

-- tabs to space
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- scroll
vim.opt.scrolloff = 8

-- clipboard
vim.opt.clipboard = vim.opt.clipboard + 'unnamedplus'

-- spell
vim.opt.spellsuggest = { 'best', 9 }

vim.opt.termguicolors = true

