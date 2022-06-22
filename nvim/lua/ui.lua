
require('incline').setup()

-- vim.cmd [[
--     let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
--     let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
-- ]]

vim.opt.background = 'dark'
vim.cmd 'colorscheme solarized'
-- vim.cmd [[ 
--     if &background == "dark"     
--       let s:base03 = "NONE"     
--       let s:base02 = "NONE"     
--     endif
-- ]]

vim.cmd[[ highlight WinSeparator guibg=None ]]
vim.opt.laststatus = 3
