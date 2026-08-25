if vim.loader then vim.loader.enable() end

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.compatible = false
vim.opt.showmatch = true
vim.opt.ignorecase = true
vim.opt.mouse = "a"
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.autoindent = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wildmode = { "longest", "list" }
vim.opt.cursorline = true
vim.opt.ttyfast = true
vim.opt.clipboard = "unnamedplus"

-- Lazy + plugins
require('lazy_setup')

-- Python/Jupyter
vim.g.python3_host_prog = os.getenv("HOME") .. "/.config/nvim/.venv/bin/python"

-- QOL Keymaps
vim.keymap.set("n", "<leader>w", "<cmd>w<CR>", { noremap = true })
vim.keymap.set("n", "<leader>q", "<cmd>wq<CR>", { noremap = true })
vim.keymap.set("n", "<leader>x", "<cmd>q!<CR>", { noremap = true })

vim.cmd("colorscheme dark")

