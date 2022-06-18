require('legendary').bind_keymaps({
    -- window navigation
    { '<C-h>', '<C-w>h' },
    { '<C-j>', '<C-w>j' },
    { '<C-k>', '<C-w>k' },
    { '<C-l>', '<C-w>l' },

    -- Switch buffers
    { '<leader><Tab>', ':bprevious<CR>' },
    -- search 
    { '<M-/>', ':HopChar1MW<CR>' },
    { '\\', ':HopChar1MW<CR>' },
    { '<C-_>w', ':HopWordMW<CR>' },
    { '<C-_>l', ':HopLineMW<CR>' },

    -- git
    { '<leader>g', ':Git ' },
    { '<leader>gg', ':Git<CR>' },

    -- files and menusini
    { '<leader>p', function() require('legendary').find() end, description = "Command Palette" },
    { ',f', ':Telescope find_files<CR>', description = "Find files" },
    { ',b', ':Telescope buffers<CR>', description = "Find buffers" },
    { ',c', ':Telescope commands<CR>', description = "Find commands" },
    { ',a', ':Telescope live_grep<CR>', description = "Find all" },
    { ',t', ':Telescope tags<CR>', description = "Find tags" },
    { ',h', ':Telescope search_history<CR>', description = "Find commands history" },

    -- completions
    { '<Tab>', 'pumvisible() ? "<C-n>" : "<Tab>"', opts = { expr = true }, mode = { 'i' } },
    { '<S-Tab>', 'pumvisible() ? "<C-p>" : "<S-Tab>"', opts = { expr = true }, mode = { 'i' } }
    -- { '<Tab>', 'pumvisible() ? "<C-n>" : CheckBackspace() ? "<Tab>" : coc#refresh()', opts = { expr = true }, mode = { 'i' } },
    -- { '<S-Tab>', 'pumvisible() ? "<C-p>" : "<S-Tab>"', opts = { expr = true }, mode = { 'i' } }
})

