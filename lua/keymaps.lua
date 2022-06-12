require('legendary').bind_keymaps({
    -- Search 
    { '/', '<Nop>' },
    { '/c', ':HopChar1<CR>' },
    { '/w', ':HopWord<CR>' },
    { '/l', ':HopLine<CR>' },
    { '//', '/' },

    -- Files
    { '<leader>p', ':Files<CR>' },
    { '<leader>f', ':Files<CR>' },
    { '<leader>b', ':Buffers<CR>' },
})
