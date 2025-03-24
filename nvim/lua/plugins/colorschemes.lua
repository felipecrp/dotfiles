return {
	{
		'shaunsingh/solarized.nvim',
		enabled = false,
		config = function ()
			vim.opt.background = 'light'
			require('solarized').set()
		end,
	}
}
