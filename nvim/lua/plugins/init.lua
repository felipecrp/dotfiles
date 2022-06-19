
return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	-- search
    use {
      'nvim-telescope/telescope.nvim',
      requires = { 'nvim-lua/plenary.nvim' }
    }
	
    -- navigation
	use {
		'phaazon/hop.nvim',
		config = function()
			require'hop'.setup()
		end
	}

    -- user interface
    use 'bling/vim-airline'
	use 'ericbn/vim-solarized'
    use 'stevearc/dressing.nvim'

	-- keybind and command palette
    use { 
        'mrjones2014/legendary.nvim',
        config = function()
            require('legendary').setup({
                include_builtin = true
            })
        end
    }

    -- git
    use 'tpope/vim-fugitive'

    -- highlights and navigation
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
        config = function() require('plugins.treesitter') end
    }
    use 'nvim-treesitter/nvim-treesitter-context'

    -- comments
    use { 
        'terrortylor/nvim-comment',
        config = function() require('nvim_comment').setup() end
    }

    -- auto pairs
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }

    -- language server
    use {
        'neovim/nvim-lspconfig',
        config = function() require('lsp') end
    }
    use {
        'williamboman/nvim-lsp-installer',
        config = function() require('nvim-lsp-installer').setup() end
    }

    -- auto-complete
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/cmp-nvim-lua'
    use {
        'hrsh7th/nvim-cmp',
        config = function() require('plugins.cmp') end,
    }
    use 'hrsh7th/vim-vsnip'

    -- language markdown
    use 'godlygeek/tabular'
    use 'preservim/vim-markdown'
    use({
        'iamcco/markdown-preview.nvim',
        run = function() vim.fn['mkdp#util#install']() end,
    })

    -- test
    use {
        'nvim-neotest/neotest',
        requires = {
            'nvim-lua/plenary.nvim',
            'nvim-treesitter/nvim-treesitter',
            'antoinemadec/FixCursorHold.nvim'
        },
        config = function() require'plugins.neotest' end,
    }
    use {
        'nvim-neotest/neotest-python',
        requires = 'nvim-neotest/neotest',
    }
    use {
        'nvim-neotest/neotest-vim-test',
        requires = 'vim-test/vim-test'
    }

    -- debug
    use 'mfussenegger/nvim-dap-python'
    use { 'mfussenegger/nvim-dap', config = function() require'plugins.dap' end }
    use { 'rcarriga/nvim-dap-ui', requires = {'mfussenegger/nvim-dap'} }

    -- terminal
    use 'edkolev/tmuxline.vim'
end)


