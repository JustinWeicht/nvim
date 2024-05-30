-- Load remap and set configurations
require("jwadmin.remap")
require("jwadmin.set")

-- Set up Lazy.nvim for managing plugins
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

-- Set global leader keys
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Setup Lazy.nvim plugins
return require('lazy').setup('plugins', {defaults = {lazy = true}})

