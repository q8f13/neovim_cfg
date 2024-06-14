-- relative line number
vim.opt.nu = true
vim.opt.rnu = true

-- remember only 50 oldfiles
vim.opt.shada= "!,'50,<100,s10,h"
vim.opt.encoding = "utf-8"

-- 
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.shortmess = vim.opt.shortmess + "c"
vim.opt.updatetime = 50
vim.opt.syntax = "on"
vim.opt.cul = true

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false
vim.opt.smartindent = false

vim.opt.smartindent = true
vim.opt.wrap = false

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.colorcolumn = ""

-- font
vim.opt.termencoding = "utf8"
vim.opt.fileencodings = 'ucs-bom,utf-8,default,gb2312,gbk,gb18030'
vim.opt.ambiwidth = 'double'

vim.g.mapleader = ";"
