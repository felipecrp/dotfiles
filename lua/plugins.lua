
return require('packer').startup(function()
	use 'wbthomason/packer.nvim'

	-- search
    use 'junegunn/fzf.vim'
    
    -- user interface
	use 'scrooloose/nerdtree'
    use 'bling/vim-airline'
	use 'ericbn/vim-solarized'

	-- navigation
	use {
		'phaazon/hop.nvim',
		config = function()
			require'hop'.setup()
		end
	}
	-- use 'easymotion/vim-easymotion'

    -- git
    use 'tpope/vim-fugitive'

	-- language server
	use 'neovim/nvim-lspconfig'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'

    -- development
    use {
       'nvim-treesitter/nvim-treesitter'
    }

    -- development tests
    use 'vim-test/vim-test'
    --use {
    --    "klen/nvim-test",
    --    config = function()
    --        require('nvim-test').setup()
    --        require('nvim-test.runners.pytest'):setup {
    --            command = "pytest"                                       -- a command to run the test runner
    --        }
    --    end
    --}

	-- keybinds
	use 'mrjones2014/legendary.nvim'
end)


