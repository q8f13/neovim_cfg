function ColorMyPencils(color)
	color = color or "neodarker"
	vim.cmd.colorscheme(color)

	-- transparent background
	-- seems not working on nvim-qt
	-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMyPencils()
