return {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
	local configs = require('nvim-treesitter.configs')
	configs.setup({
	    highlight = {
		enable = true,
	    },
	    indent = {
		enable = true,
	    },
	    autotag = {
		enable = true,
	    },
	    ensure_installed = {
		'lua',
		'python',
		'bash',
		'arduino',
		'cpp',
		'json',
		'html',
		'css',
		'javascript',
		'java',
		'latex',
		'markdown',
		'nginx',
		'sql',
		'ssh_config',
	    },
	    auto_install = false
	})
    end
}
