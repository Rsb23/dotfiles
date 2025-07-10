return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = { 
	theme = 'auto',
	icons_enabled = true,
	always_divide_middle = false,
	sections = {
	    lualine_a = { 'mode' },
	    lualine_b = { 'branch', 'filename' },
	    lualine_c = { '' },
	    lualine_x = { '' },
	    lualine_y = { '' },
	    lualine_z = { 
		{
		    'datetime',
		    style = '%H:%M:%S',
		},
	    },
	},
    },
}
