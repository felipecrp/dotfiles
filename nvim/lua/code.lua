-- Development configuration

-- treesitter

require('nvim-treesitter.configs').setup {
    highlight = {
        enable = true,
        -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
        -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
        -- Using this option may slow down your editor, and you may see some duplicate highlights.
        -- Instead of true it can also be a list of languages
        additional_vim_regex_highlighting = false
    },
    incremental_selection = {
        enable = true
    },
    indent = {
        enable = true
    },
}

--require'treesitter-context'.setup{
--    enable = true,
--    max_lines = 1,
--    trim_scope = 'outer'
--}

-- vim.cmd([[
--     set foldmethod=expr
--     set foldexpr=nvim_treesitter#foldexpr()
-- ]])
--

-- comments
--require('nvim_comment').setup()

-- auto pair ([{}])
--require("nvim-autopairs").setup()
