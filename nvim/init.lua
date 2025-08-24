--		VISUAL		--
vim.o.number = true
vim.o.relativenumber = true
vim.o.wrap = false
vim.o.tabstop = 2
vim.o.swapfile = false

--		PACK		--
vim.pack.add({
				{	src	=	'https://github.com/vague2k/vague.nvim' },
})

--		BINDINGS		--
vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>o', ':update<CR> :source<CR>')
vim.keymap.set('n', '<leader>w', ':write<CR>')
vim.keymap.set('n', '<leader>q', ':quit<CR>')

--		COLORSCHEME		--

