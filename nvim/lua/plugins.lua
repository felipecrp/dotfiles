
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
            local ts_install = require('nvim-treesitter.install')
            local ts_update = ts_install.update({ with_sync = true })
            ts_update()
        end,
    }
    -- use 'nvim-treesitter/nvim-treesitter-context'

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
    use 'f3fora/cmp-spell'

    -- auto complete snipets
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'

    -- auto pair 
    use 'windwp/nvim-autopairs'

    -- git
    use "tpope/vim-fugitive"

    -- latex
    use 'lervag/vimtex'
    use 'frabjous/knap'

    -- ui
    use "SmiteshP/nvim-navic"
    use {
        "SmiteshP/nvim-navbuddy",
        requires = {
            "neovim/nvim-lspconfig",
            "SmiteshP/nvim-navic",
            "MunifTanjim/nui.nvim",
            "numToStr/Comment.nvim",        -- Optional
            "nvim-telescope/telescope.nvim" -- Optional
        }
    }

    --use 'b0o/incline.nvim'
    use 'morhetz/gruvbox'
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
    use 'kdheepak/tabline.nvim'
    use 'folke/zen-mode.nvim'
    -- use 'smithbm2316/centerpad.nvim'
    use { "shortcuts/no-neck-pain.nvim", tag = "*" }
end)

