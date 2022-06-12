
return require('packer').startup(function()
	use 'wbthomason/packer.nvim'

	use 'junegunn/fzf.vim'
	use 'scrooloose/nerdtree'
	use 'bling/vim-airline'
	use 'easymotion/vim-easymotion'
	use 'ericbn/vim-solarized'

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
