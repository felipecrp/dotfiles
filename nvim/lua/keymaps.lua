--vim.api.nvim_del_keymap("n", "s")

local legendary = require'legendary'
local opts = { noremap=true, silent=true }

vim.keymap.set('n', 'z=', '<cmd>Telescope spell_suggest<cr>', opts)

-- navigation
legendary.bind_keymaps {
    { 's' },
    { 'sc' , require'hop'.hint_char1 },
    { 'sf' , ':Telescope find_files<CR>', description = "Find files" },
    { 'sb' , ':Telescope buffers<CR>', description = "Find buffers" },
    -- { 'sc' , ':Telescope commands<CR>', description = "Find commands" },
    { 'sa' , ':Telescope live_grep<CR>', description = "Find all" },
    { 'st' , ':Telescope tags<CR>', description = "Find tags" },
    { 'sh' , ':Telescope search_history<CR>', description = "Find commands history" },
}

require('legendary').bind_keymaps({
    -- menu
    { '<C-s>', ':w<CR>', description = 'Save file' },
    { '<Leader>fs', ':w<CR>', description = 'Save file' },

    -- window navigation
    { '<C-h>', '<C-w>h' },
    { '<C-j>', '<C-w>j' },
    { '<C-k>', '<C-w>k' },
    { '<C-l>', '<C-w>l' },

    -- Switch buffers
    { '<Leader><Tab>', ':bprevious<CR>' },

    -- search
    { '<M-/>', ':HopChar1MW<CR>' },
    { '\\', ':HopChar1MW<CR>' },
    { '<C-_>w', ':HopWordMW<CR>' },
    { '<C-_>l', ':HopLineMW<CR>' },

    -- git
    { '<Leader>gs', ':Git<CR>' },
    { '<Leader>gg', ':Git ' },
    { '<Leader>gp', ':Git push<CR>' },
    { '<Leader>gP', ':Git pull<CR>' },
    { '<Leader>gc', ':Git commit<CR>' },

    -- files and menusini
    { ',p', function() require('legendary').find() end, description = "Command Palette" },
    { ',f', ':Telescope find_files<CR>', description = "Find files" },
    { ',b', ':Telescope buffers<CR>', description = "Find buffers" },
    { ',c', ':Telescope commands<CR>', description = "Find commands" },
    { ',a', ':Telescope live_grep<CR>', description = "Find all" },
    { ',t', ':Telescope tags<CR>', description = "Find tags" },
    { ',h', ':Telescope search_history<CR>', description = "Find commands history" },

    -- comment
    { '<Leader>/', ':CommentToggle<CR>' },

    -- completions
    { '<Tab>', 'pumvisible() ? "<C-n>" : "<Tab>"', opts = { expr = true }, mode = { 'i' } },
    { '<S-Tab>', 'pumvisible() ? "<C-p>" : "<S-Tab>"', opts = { expr = true }, mode = { 'i' } },

    -- test
    { '<Leader>rt', ':TestSuite<CR>' },
    { '<Leader>rf', ':TestFile<CR>' },
    { '<Leader>rl', ':TestLast<CR>' },
    { '<Leader>rv', ':TestVisit<CR>' },
    { '<Leader>rn', ':TestNearest<CR>' },
})

vim.cmd[[
    imap jk <Esc>
]]
