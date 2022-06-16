require('legendary').bind_keymaps({
    -- window navigation
    { '<C-h>', '<C-w>h' },
    { '<C-j>', '<C-w>j' },
    { '<C-k>', '<C-w>k' },
    { '<C-l>', '<C-w>l' },

    -- search 
    { '/', '<Nop>' },
    { '/c', ':HopChar1MW<CR>' },
    { '/w', ':HopWordMW<CR>' },
    { '/l', ':HopLineMW<CR>' },
    { '//', '/' },

    -- git
    { '<leader>g', ':Git ' },
    { '<leader>gg', ':Git<CR>' },

    -- files and menusini
    { '<leader>p', function() require('legendary').find() end, description = "Command Palette" },
    { '<leader>f', ':Telescope find_files<CR>', description = "Find files" },
    { '<leader>b', ':Telescope buffers<CR>', description = "Find buffers" },
    { '<leader>c', ':Telescope commands<CR>', description = "Find commands" },
    { '<leader>a', ':Telescope live_grep<CR>', description = "Find all" },
    { '<leader>t', ':Telescope tags<CR>', description = "Find tags" },
    { '<leader>h', ':Telescope search_history<CR>', description = "Find commands history" },

    -- completions
    { '<Tab>', 'pumvisible() ? "<C-n>" : "<Tab>"', opts = { expr = true }, mode = { 'i' } },
    { '<S-Tab>', 'pumvisible() ? "<C-p>" : "<S-Tab>"', opts = { expr = true }, mode = { 'i' } }
    -- { '<Tab>', 'pumvisible() ? "<C-n>" : CheckBackspace() ? "<Tab>" : coc#refresh()', opts = { expr = true }, mode = { 'i' } },
    -- { '<S-Tab>', 'pumvisible() ? "<C-p>" : "<S-Tab>"', opts = { expr = true }, mode = { 'i' } }
})

