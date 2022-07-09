-- LSP General Configuration

local lsp_config = require'lspconfig'
local lsp_installer = require'nvim-lsp-installer'
local cmp_lsp = require 'cmp_nvim_lsp'
local opts = { noremap=true, silent=true }

lsp_installer.setup {}

vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<space>de', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '<space>dq', vim.diagnostic.setloclist, opts)

local lsp_config_defaults = {
    -- flags = {
    --     debounce_text_changes = 150,
    --     allow_incremental_sync = false,
    -- },
    capabilities = cmp_lsp.update_capabilities(
        vim.lsp.protocol.make_client_capabilities()
    ),
    on_attach = function(client, bufnr)
        local bufopt = { noremap=true, silent=true, buffer=bufnr }

        vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopt)
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopt)
        vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopt)
        vim.keymap.set('n', 'gT', vim.lsp.buf.type_definition, bufopt)
        vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopt)

        vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopt)
        vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopt)

        vim.keymap.set('n', '<leader>cn', vim.lsp.buf.rename, bufopt)
        vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, bufopt)
        vim.keymap.set('n', '<leader>cf', vim.lsp.buf.formatting, bufopt)
    end,
}

lsp_config.util.default_config = vim.tbl_extend(
    'force',
    lsp_config.util.default_config,
    lsp_config_defaults
)

require'.lsp-lang'

