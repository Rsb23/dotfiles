vim.opt.number = true
vim.opt.cursorline = true
vim.opt.relativenumber = true
vim.opt.shiftwidth = 4

vim.o.guicursor = 'n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20,t:ver25'  -- default except terminal cursor which is now a thin, vertical 25% width, blinking bar

vim.o.autowriteall = true  -- automatically write file without having to :w
vim.o.hidden = false -- by default nvim moves buffers to be hidden when switching to a new buffer preventing autowrite behaviour, this setting makes sure the above autowrite setting works
