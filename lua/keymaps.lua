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

    -- files and menus
    { '<leader>p', ':Files<CR>' },
    { '<leader>f', ':Files<CR>' },
    { '<leader>b', ':Buffers<CR>' },
    { '<leader>c', ':Commands<CR>' },
    { '<leader>a', ':Ag<CR>' },
    { '<leader>t', ':Tags<CR>' },
    { '<leader>h', ':History<CR>' },

    -- coc
    -- { '<Tab>', 'coc#refresh()', opts = { expr = true }, mode = { 'i' } },
    -- { '<Tab>', 'pumvisible() ? "<C-n>" : "<Tab>"', opts = { expr = true }, mode = { 'i' } }
    { '<Tab>', 'pumvisible() ? "<C-n>" : "<Tab>"', opts = { expr = true }, mode = { 'i' } },
    { '<S-Tab>', 'pumvisible() ? "<C-p>" : "<S-Tab>"', opts = { expr = true }, mode = { 'i' } }
})
