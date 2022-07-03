
return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'nvim-lua/plenary.nvim'

    -- search
    use 'nvim-telescope/telescope.nvim'

    -- navigation
	use {
        'phaazon/hop.nvim',
        config = function()
            require'hop'.setup()
        end
    }

    -- user interface
    use 'bling/vim-airline'
    use 'vim-airline/vim-airline-themes'
    -- use 'feline-nvim/feline.nvim'
	use 'ericbn/vim-solarized'
    use 'lifepillar/vim-solarized8'
    use 'stevearc/dressing.nvim'
    use 'ryanoasis/vim-devicons'
    use 'b0o/incline.nvim'

    -- themes
    use 'morhetz/gruvbox'

	-- keybind and command palette
    use {
        'mrjones2014/legendary.nvim',
        config = function()
            require('legendary').setup({ include_builtin = true })
        end
    }

    -- git
    use 'tpope/vim-fugitive'

    -- highlights and navigation
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use 'nvim-treesitter/nvim-treesitter-context'

    -- comments
    use 'terrortylor/nvim-comment'

    -- auto pairs
    use 'windwp/nvim-autopairs'

    -- language server
    use 'neovim/nvim-lspconfig'
    use 'williamboman/nvim-lsp-installer'

    -- auto-complete
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/cmp-nvim-lua'
    use 'hrsh7th/vim-vsnip'
    use 'hrsh7th/nvim-cmp'
    use 'f3fora/cmp-spell'

    -- language markdown
    use 'godlygeek/tabular'
    use 'preservim/vim-markdown'
    use({ 'iamcco/markdown-preview.nvim', run = function() vim.fn['mkdp#util#install']() end })

    -- test
    use {
        'nvim-neotest/neotest',
        requires = {
            'nvim-lua/plenary.nvim',
            'nvim-treesitter/nvim-treesitter',
            'antoinemadec/FixCursorHold.nvim'
        },
    }
    use 'nvim-neotest/neotest-python'
    use 'nvim-neotest/neotest-vim-test'
    use 'vim-test/vim-test'

    -- debug
    use 'mfussenegger/nvim-dap'
    use 'mfussenegger/nvim-dap-python'
    use 'rcarriga/nvim-dap-ui'
    use 'theHamsta/nvim-dap-virtual-text'
    use 'Pocco81/dap-buddy.nvim'

    -- terminal
    use 'edkolev/tmuxline.vim'
    use 'christoomey/vim-tmux-navigator'

    -- repl
    use 'klafyvel/vim-slime-cells'
    use 'jpalardy/vim-slime'

    -- jupyter
    -- use 'untitled-ai/jupyter_ascending.vim'
end)

