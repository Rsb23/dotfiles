return {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
	local configs = require('nvim-treesitter.configs')
	configs.setup({
	    highlight = {
		enable = true,
		disable = {"latex"},
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
		'markdown',
		'nginx',
		'sql',
		'ssh_config',
		'ruby',
		'liquid',
	    },
	    auto_install = false
	})
    end
}
