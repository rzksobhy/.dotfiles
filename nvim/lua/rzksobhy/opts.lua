vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.wrap = false
vim.opt.signcolumn = "yes"

vim.opt.colorcolumn = "80"

local tab_width = 4
vim.opt.tabstop = tab_width
vim.opt.softtabstop = tab_width
vim.opt.shiftwidth = tab_width
vim.opt.expandtab = true
vim.opt.ignorecase = true

vim.opt.smartcase = true
vim.opt.ignorecase = true
vim.opt.incsearch = true
vim.opt.hlsearch = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.undofile = true

vim.opt.termguicolors = true
vim.opt.clipboard = "unnamedplus"

vim.opt.confirm = true

vim.opt.isfname:append("@-@")
vim.opt.grepprg = "rg --vimgrep"

vim.opt.wildmode = ""
vim.opt.completeopt = { "menu", "menuone", "noselect" }

vim.opt.guicursor = ""
vim.opt.showmode = false

vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.laststatus = 3

vim.g.mapleader = " "
vim.g.netrw_banner = 0
