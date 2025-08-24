--		VISUAL		--
vim.o.number = true
vim.o.relativenumber = true
vim.o.wrap = false
vim.o.tabstop = 2
vim.o.shiftwidth = 4
vim.o.signcolumn = 'yes'
vim.o.swapfile = false
vim.o.winborder = 'rounded'
vim.o.clipboard = "unnamedplus"
vim.g.mapleader = ' '

--		PACK		--
vim.pack.add({
	{ src = 'https://github.com/nordtheme/vim' },
	{ src = 'https://github.com/stevearc/oil.nvim' },
	{ src = 'https://github.com/echasnovski/mini.pick' },
	{ src = 'https://github.com/neovim/nvim-lspconfig' },
})

--		SETUP		--
require 'mini.pick'.setup()
require 'oil'.setup()

vim.lsp.enable({ "lua_ls" })

vim.api.nvim_create_autocmd('LspAttach', {
		callback = function(ev)
				local client = vim.lsp.get_client_by_id(ev.data.client_id)
				if client:supports_method('textDocument/completion') then
						vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
				end
		end,
})
vim.cmd('set completeopt+=noselect')

--		BINDINGS		--
vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format)

vim.keymap.set('n', '<leader>f', ':Pick files<CR>')
vim.keymap.set('n', '<leader>h', ':Pick help<CR>')
vim.keymap.set('n', '<leader>e', ':Oil<CR>')

--		COLORSCHEME		--
vim.cmd("colorscheme nord")
vim.cmd(":hi statusline guibg=NONE")
