-- folder tree
vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>e', function()
    vim.cmd("NvimTreeFocus")
end)

-- tab movement
vim.api.nvim_set_keymap('t','<ESC>','<C-\\><C-n>gt',{noremap = true})  -- easier way to exit terminal mode
