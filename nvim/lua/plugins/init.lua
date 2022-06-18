
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
        "terrortylor/nvim-comment",
        config = function()
            require('nvim_comment').setup()
        end
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
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })

    -- test
    use 'vim-test/vim-test'

    -- development debug
    -- use 'puremourning/vimspector'

    -- development tests
    --use 'vim-test/vim-test'
    --use {
    --    "klen/nvim-test",
    --    config = function()
    --        require('nvim-test').setup()
    --        require('nvim-test.runners.pytest'):setup {
    --            command = "pytest"                                       -- a command to run the test runner
    --        }
    --    end
    --}

    -- terminal
    use 'edkolev/tmuxline.vim'
end)


