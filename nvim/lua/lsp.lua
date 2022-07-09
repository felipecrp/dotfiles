-- LSP General Configuration

local lsp_config = require'lspconfig'
local lsp_installer = require'nvim-lsp-installer'
local cmp_lsp = require 'cmp_nvim_lsp'
local opts = { noremap = true, silent = true }

lsp_config_defaults = {
    capabilities = cmp_lsp.update_capabilities(
        vim.lsp.protocol.make_client_capabilities()
    ),
    on_attach = function(client, bufnr)

    end,
}

lsp_config.util.default_config = vim.tbl_extend(
    'force',
    lsp_config.util.default_config,
    lsp_config_defaults
)

