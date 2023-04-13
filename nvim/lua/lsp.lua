require("mason").setup()

require("mason-lspconfig").setup {
    ensure_installed = {
        "lua_ls",
        "pylsp",
        "tsserver",
        "texlab"
    }
}

local capabilities = require("cmp_nvim_lsp").default_capabilities()
local navic = require("nvim-navic")
local navbuddy = require("nvim-navbuddy")

local on_attach = function(client, bufnr)
    if client.server_capabilities.documentSymbolProvider then
        navic.attach(client, bufnr)
        navbuddy.attach(client, bufnr)
    end
end

require("mason-lspconfig").setup_handlers {
    -- The first entry (without a key) will be the default handler
    -- and will be called for each installed server that doesn't have
    -- a dedicated handler.
    function (server_name) -- default handler (optional)
        require("lspconfig")[server_name].setup {
            capabilities = capabilities,
            on_attach = on_attach
        }
    end,

    ["lua_ls"] = function ()
        require("lspconfig")["lua_ls"].setup {
            settings = {
                Lua = {
                    diagnostics = {
                        globals = { "vim" }
                    },
                    workspace = {
                        -- Make the server aware of Neovim runtime files
                        library = vim.api.nvim_get_runtime_file("", true),
                    },
                    telemetry = {
                        -- Do not send telemetry data containing a randomized but unique identifier
                        enable = false,
                    },
                }
            },
            capabilities = capabilities,
            on_attach = on_attach
        }
    end,
}

