
return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    -- fuzzy finder
    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.1',
	requires = { { 'nvim-lua/plenary.nvim' } }
    }

    -- navigation
    use {
        'phaazon/hop.nvim',
        config = function()
            require('hop').setup { keys = 'etovxqpdygfblzhckisuran' }
        end
    }

    -- code inspector
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }

    -- lsp
    use 'neovim/nvim-lspconfig'

    -- lsp installer
    use {
        "williamboman/mason.nvim",
        run = ":MasonUpdate",
    }
    use "williamboman/mason-lspconfig.nvim"

    -- auto complete
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'

    -- auto complete snipets
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'

    -- ui
    use 'b0o/incline.nvim'
    use 'morhetz/gruvbox'
end)

