
return require('packer').startup(function()
	use 'wbthomason/packer.nvim'

	use 'junegunn/fzf.vim'
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

	-- language server
	use 'neovim/nvim-lspconfig'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'

	-- keybinds
	use 'mrjones2014/legendary.nvim'
end)
