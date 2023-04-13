-- Floating window name
--require('incline').setup()

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

local navic = require('nvim-navic')
require('lualine').setup {
    winbar = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {
            {
                function()
                    return navic.get_location()
                end,
                cond = function()
                    return navic.is_available()
                end
            }
        },
        lualine_x = {},
        lualine_y = {},
        lualine_z = {}
    }
}

require('tabline').setup {
    enable = true
}

require("zen-mode").setup {
    on_open = function(win)
        require("lualine").hide({ unhide = true })
    end,
    on_close = function()
    end
}



-- vim.cmd [[
--     let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
--     let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
-- ]]

vim.opt.background = 'dark'
-- vim.cmd 'colorscheme solarized8'
-- vim.cmd ' colorscheme gruvbox'
-- vim.cmd 'colorscheme solarized'
-- vim.cmd [[ 
--     if &background == "dark"     
--       let s:base03 = "NONE"     
--       let s:base02 = "NONE"     
--     endif
-- ]]

vim.cmd[[ highlight WinSeparator guibg=None ]]
vim.opt.laststatus = 3

vim.cmd.colorscheme("gruvbox")

