-- folder tree
vim.keymap.set('n', '<leader>e', function()
    vim.cmd("NvimTreeFocus")
end)

-- leader keys
vim.g.mapleader = ' '
vim.g.maplocalleader = ','

-- tab movement
vim.api.nvim_set_keymap('t','<ESC>','<C-W>C', {noremap = true})  -- easier way to exit terminal mode

-- enable spellcheck (turned off by default)
vim.o.spell = true
vim.o.spelllang = { "en_us" }

-- bottom terminal
vim.api.nvim_set_keymay('n', '<Leader>t', ':bot terminal', {noremap = true, silent = true})
