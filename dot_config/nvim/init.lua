-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Install package manager
--    https://github.com/folke/lazy.nvim
--    `:help lazy.nvim.txt` for more info
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

-- Disable Netrw before loading plugins
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Plugins
require('lazy').setup({
  { import = 'plugins' }
})

-- Options
require('config.options')

-- Keymaps
require('config.keymaps')

-- Autocommands
require('config.autocommands')

-- vim: ts=2 sts=2 sw=2 et