-- leader keys
vim.g.mapleader = ' '
vim.g.maplocalleader = ','

-- enable spellcheck (turned off by default)
vim.o.spell = true
vim.o.spelllang = "en_us"

-- folder tree
vim.keymap.set('n', '<leader>e', function()
    vim.cmd("NvimTreeToggle")
end)

-- bottom terminal
-- vim.api.nvim_set_keymap('n', '<Leader>t', ':bot terminal<CR> :resize 15<CR> :setlocal nospell<CR> i', {noremap = true, silent = true})

-- Term Toggle Function
-- https://www.reddit.com/r/vim/comments/8n5bzs/using_neovim_is_there_a_way_to_display_a_terminal/
local term_buf = nil
local term_win = nil

function TermToggle(height)
    if term_win and vim.api.nvim_win_is_valid(term_win) then
        vim.cmd("hide")
    else
        vim.cmd("bot new")
        local new_buf = vim.api.nvim_get_current_buf()
        vim.cmd("resize " .. height)
        if term_buf and vim.api.nvim_buf_is_valid(term_buf) then
            vim.cmd("buffer " .. term_buf) -- go to terminal buffer
            vim.cmd("bd " .. new_buf) -- cleanup new buffer
	    vim.cmd("setlocal nospell")
	    vim.cmd("normal i")
        else
            vim.cmd("terminal")
            term_buf = vim.api.nvim_get_current_buf()
            vim.wo.number = false
            vim.wo.relativenumber = false
            vim.wo.signcolumn = "no"
        end
    vim.cmd("startinsert!")
    term_win = vim.api.nvim_get_current_win()
    end
end

vim.keymap.set('n', '<Leader>t', ':lua TermToggle(15)<CR>', {noremap = true}) 
vim.api.nvim_set_keymap('t', '<ESC>','<C-\\><C-N><C-W>w<C-W>w', {noremap = true})  -- switch to different window when ESC pressed in terminal
vim.api.nvim_set_keymap('t', '<C-Q>', '<C-\\><C-N><C-W>c<C-W>w', {noremap = true})  -- completely quit terminal and move to working window when Ctrl + Q is pressed
