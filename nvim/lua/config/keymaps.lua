vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>e', function()
    vim.cmd("NvimTreeFocus")
end)
