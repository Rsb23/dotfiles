return {
    {
	'brenoprata10/nvim-highlight-colors',
	config = function()
	    require('nvim-highlight-colors').setup({})
	end
    },
    {
	'olimorris/onedarkpro.nvim',
	config = function()
	    vim.cmd.colorscheme 'onedark'
	end
    },
}
