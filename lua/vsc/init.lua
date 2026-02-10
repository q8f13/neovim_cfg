-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

vim.opt.ignorecase=true

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use "whiteinge/diffconflicts"

	-- ime auto switch
	-- use {"keaising/im-select.nvim",
		-- config = function()
			-- require("im_select").setup({})
		-- end,
	-- }

	use 'junegunn/fzf.vim'

	use 'tpope/vim-surround'
end)

