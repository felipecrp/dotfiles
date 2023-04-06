vim.g.mapleader = " "
vim.keymap.set('i', 'jk', '<ESC>', {})

local telescope_builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', telescope_builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', telescope_builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', telescope_builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', telescope_builtin.help_tags, {})

local hop = require('hop')
-- local directions = require('hop.hint').HintDirection
vim.keymap.set('n', '<leader>sc', function() hop.hint_char1() end, {})

vim.keymap.set('n', '<Tab>', ':bn<CR>', { noremap = true } )
vim.keymap.set('n', '<S-Tab>', ':bn<CR>', { noremap = true } )

-- lsp 
-- Global mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    -- Enable completion triggered by <c-x><c-o>
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    -- Buffer local mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local opts = { buffer = ev.buf }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
    vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
    vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
    vim.keymap.set('n', '<space>wl', function()
      print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, opts)
    vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
    vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    vim.keymap.set('n', '<space>f', function()
      vim.lsp.buf.format { async = true }
    end, opts)
  end,
})

local has_words_before = function()
  unpack = unpack or table.unpack
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

local luasnip = require("luasnip")
local cmp = require("cmp")
cmp.setup({
  mapping = cmp.mapping.preset.insert({
    ["<C-b>"] = cmp.mapping.scroll_docs(-4),
    ["<C-f>"] = cmp.mapping.scroll_docs(4),
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<C-e>"] = cmp.mapping.abort(),
    ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    ["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
        -- You could replace the expand_or_jumpable() calls with expand_or_locally_jumpable() 
        -- they way you will only jump inside the snippet region
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      elseif has_words_before() then
        cmp.complete()
      else
        fallback()
      end
    end, { "i", "s" }),

    ["<S-Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, { "i", "s" }),   
  }),
})

--
--
----vim.api.nvim_del_keymap("n", "s")
--
--local legendary = require'legendary'
--local opts = { noremap=true, silent=true }
--
--vim.keymap.set('n', 'z=', '<cmd>Telescope spell_suggest<cr>', opts)
--
---- navigation
--legendary.bind_keymaps {
--    { 's' },
--    { 'sc' , require'hop'.hint_char1 },
--    { 'sf' , ':Telescope find_files<CR>', description = "Find files" },
--    { 'sb' , ':Telescope buffers<CR>', description = "Find buffers" },
--    -- { 'sc' , ':Telescope commands<CR>', description = "Find commands" },
--    { 'sa' , ':Telescope live_grep<CR>', description = "Find all" },
--    { 'st' , ':Telescope tags<CR>', description = "Find tags" },
--    { 'sh' , ':Telescope search_history<CR>', description = "Find commands history" },
--}
--
--require('legendary').bind_keymaps({
--    -- menu
--    { '<C-s>', ':w<CR>', description = 'Save file' },
--    { '<Leader>fs', ':w<CR>', description = 'Save file' },
--
--    -- window navigation
--    { '<C-h>', '<C-w>h' },
--    { '<C-j>', '<C-w>j' },
--    { '<C-k>', '<C-w>k' },
--    { '<C-l>', '<C-w>l' },
--
--    -- Switch buffers
--    { '<Leader><Tab>', ':bprevious<CR>' },
--
--    -- search
--    { '<M-/>', ':HopChar1MW<CR>' },
--    { '\\', ':HopChar1MW<CR>' },
--    { '<C-_>w', ':HopWordMW<CR>' },
--    { '<C-_>l', ':HopLineMW<CR>' },
--
--    -- git
--    { '<Leader>gs', ':Git<CR>' },
--    { '<Leader>gg', ':Git ' },
--    { '<Leader>gp', ':Git push<CR>' },
--    { '<Leader>gP', ':Git pull<CR>' },
--    { '<Leader>gc', ':Git commit<CR>' },
--
--    -- files and menusini
--    { ',p', function() require('legendary').find() end, description = "Command Palette" },
--    { ',f', ':Telescope find_files<CR>', description = "Find files" },
--    { ',b', ':Telescope buffers<CR>', description = "Find buffers" },
--    { ',c', ':Telescope commands<CR>', description = "Find commands" },
--    { ',a', ':Telescope live_grep<CR>', description = "Find all" },
--    { ',t', ':Telescope tags<CR>', description = "Find tags" },
--    { ',h', ':Telescope search_history<CR>', description = "Find commands history" },
--
--    -- comment
--    { '<Leader>/', ':CommentToggle<CR>' },
--
--    -- completions
--    { '<Tab>', 'pumvisible() ? "<C-n>" : "<Tab>"', opts = { expr = true }, mode = { 'i' } },
--    { '<S-Tab>', 'pumvisible() ? "<C-p>" : "<S-Tab>"', opts = { expr = true }, mode = { 'i' } },
--
--    -- test
--    { '<Leader>rt', ':TestSuite<CR>' },
--    { '<Leader>rf', ':TestFile<CR>' },
--    { '<Leader>rl', ':TestLast<CR>' },
--    { '<Leader>rv', ':TestVisit<CR>' },
--    { '<Leader>rn', ':TestNearest<CR>' },
--})
--
--vim.cmd[[
--    imap jk <Esc>
--]]
