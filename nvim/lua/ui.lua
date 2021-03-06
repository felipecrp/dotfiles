-- Floating window name
require('incline').setup()

local telescope = require'telescope'
telescope.setup {
    defaults = {
        -- layout_strategy = 'vertical',
        layout_config = { 
            height = 0.95,
            preview_cutoff = 25,
            -- prompt_position = 'top',
        },
    }
}

-- vim.cmd [[
--     let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
--     let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
-- ]]

vim.opt.background = 'dark'
-- vim.cmd 'colorscheme solarized8'
vim.cmd ' colorscheme gruvbox'
-- vim.cmd 'colorscheme solarized'
-- vim.cmd [[ 
--     if &background == "dark"     
--       let s:base03 = "NONE"     
--       let s:base02 = "NONE"     
--     endif
-- ]]

vim.cmd[[ highlight WinSeparator guibg=None ]]
vim.opt.laststatus = 3

vim.api.nvim_set_keymap('n', '<Tab>', ':bn<CR>', { noremap = true } )
vim.api.nvim_set_keymap('n', '<S-Tab>', ':bn<CR>', { noremap = true } )

