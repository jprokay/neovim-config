local o = vim.opt

o.guicursor = ""

o.nu = true
o.relativenumber = true

o.expandtab = true
o.smartindent = true
o.tabstop = 2
o.shiftwidth = 2

o.hlsearch = false
o.incsearch = true

o.termguicolors = true

o.scrolloff = 8
vim.api.nvim_create_autocmd("TextYankPost", {
	group = vim.api.nvim_create_augroup("highlight_yank", {}),
	desc = "Hightlight selection on yank",
	pattern = "*",
	callback = function()
		vim.highlight.on_yank({ higroup = "IncSearch", timeout = 500 })
	end,
})

vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"

o.clipboard = "unnamedplus"
