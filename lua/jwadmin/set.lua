-- Set relative line numbers
vim.opt.nu = true
vim.opt.rnu = true

-- Set indentation
vim.opt.tabstop = 4
vim.opt.softtabstop = 4 
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- Undotree
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = vim.fn.stdpath('config') .. '/undo'
vim.opt.undofile = true

-- Search behavior
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Set terminal
vim.opt.shell="powershell"
vim.opt.shellcmdflag="-command"
vim.opt.shellquote="\""
vim.opt.shellxquote=""

-- Set terminal colorscheme
vim.opt.termguicolors = true

-- Extras
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

