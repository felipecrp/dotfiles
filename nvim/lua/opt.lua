
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

vim.opt.termguicolors = true

-- windows

vim.cmd [[
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
]]

vim.opt.background = 'dark'
vim.cmd 'colorscheme solarized'
vim.cmd [[ 
    if &background == "dark"     
      let s:base03 = "NONE"     
      let s:base02 = "NONE"     
    endif
]]

vim.cmd[[ highlight WinSeparator guibg=None ]]
vim.opt.laststatus = 3
