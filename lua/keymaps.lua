require('legendary').bind_keymaps({
    -- Search 
    { '/', '<Nop>' },
    { '/c', ':HopChar1<CR>' },
    { '/w', ':HopWord<CR>' },
    { '/l', ':HopLine<CR>' },
    { '//', '/' },

    -- Git
    { '<leader>g', ':Git ' },
    { '<leader>gg', ':Git<CR>' },
    

    -- Files and Menus
    { '<leader>p', ':Files<CR>' },
    { '<leader>f', ':Files<CR>' },
    { '<leader>b', ':Buffers<CR>' },
    { '<leader>c', ':Commands<CR>' },
    { '<leader>a', ':Ag<CR>' },
    { '<leader>t', ':Tags<CR>' },
    { '<leader>h', ':History<CR>' },
})
