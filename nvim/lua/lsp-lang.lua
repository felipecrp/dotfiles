-- LSP languages
local lsp_config = require'lspconfig'

-- python
lsp_config.pyright.setup {}

-- R
lsp_config.r_language_server.setup {}

-- Java
lsp_config.jdtls.setup {}

-- lua
lsp_config.sumneko_lua.setup {
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
}

-- css
lsp_config.cssls.setup {}

-- typescript
lsp_config.tsserver.setup {}

-- grammarly
-- lsp_config.grammarly.setup {}

-- latex
lsp_config.texlab.setup {}
