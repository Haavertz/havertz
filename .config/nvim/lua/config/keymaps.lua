vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.scrolloff = 10
vim.opt.signcolumn = 'yes'
vim.opt.termguicolors = true
vim.opt.winborder = "solid"

vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.breakindent = true
vim.opt.smartindent = true
vim.opt.undofile = true

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.inccommand = 'split'

vim.opt.mouse = 'a'
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300
vim.opt.list = false
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

vim.opt.clipboard:append("unnamedplus")
vim.opt.hlsearch = true

vim.cmd.colorscheme("default")

vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
vim.keymap.set({ 'n' }, '<leader>ca', vim.lsp.buf.code_action, {})
