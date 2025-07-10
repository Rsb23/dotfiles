return {
    {
	'brenoprata10/nvim-highlight-colors',
	config = function()
	    require('nvim-highlight-colors').setup({})
	end
    },
    {
	'EdenEast/nightfox.nvim',
	config = function()
	    vim.cmd.colorscheme 'carbonfox'
	end
    },
}
