-- Auto load changes in plugins.lua
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

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

	-- keybind and command palette
    use { 
        'mrjones2014/legendary.nvim',
        config = function()
            require('legendary').setup({
                include_builtin = true
            })
        end
    }
    use {'stevearc/dressing.nvim'}

    -- development
    -- git
    use 'tpope/vim-fugitive'

    -- highlights and navigation
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
        config = function()
            require('nvim-treesitter.configs').setup {
                highlight = {
                    enable = true,
                    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
                    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
                    -- Using this option may slow down your editor, and you may see some duplicate highlights.
                    -- Instead of true it can also be a list of languages
                    additional_vim_regex_highlighting = false,
                },
                incremental_selection = {
                    enable = true
                },
                indent = {
                    enable = true
                }
            }

            vim.cmd([[
                set foldmethod=expr
                set foldexpr=nvim_treesitter#foldexpr()
            ]])
        end
    }

    -- comments
    use { 
        "terrortylor/nvim-comment",
        config = function()
            require('nvim_comment').setup()
        end
    }
    -- language server
    --use {
    --    'neoclide/coc.nvim', 
    --    branch = 'release'
    --}

    -- language markdown
    -- use 'godlygeek/tabular'
    -- use 'preservim/vim-markdown'
    -- use({
    --     "iamcco/markdown-preview.nvim",
    --     run = function() vim.fn["mkdp#util#install"]() end,
    -- })

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
end)


