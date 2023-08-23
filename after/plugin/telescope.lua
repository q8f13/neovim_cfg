local tb = require('telescope.builtin')

-- vim.keymap.set('n', '<leader>pf', tb.find_files, {})
vim.keymap.set('n', '<leader>ff', tb.find_files, {})
vim.keymap.set('n', '<C-p>', tb.git_files, {})
-- vim.keymap.set('n', '<leader>fg', tb.live_grep, {})
vim.keymap.set('n', '<leader>bs', tb.buffers, {})
vim.keymap.set('n', '<M-o>', tb.oldfiles, {})
-- vim.keymap.set('n', '<leader>ll', tb.live_grep, {})
vim.keymap.set('n', '<leader>ll', function()
	tb.grep_string({ search = vim.fn.input("Grep > ")})
-- vim.keymap.set('n', '<leader>fh', tb.help_tags, {})
end)

-- search in selected text
function vim.getVisualSelection()
	vim.cmd('noau normal! "vy"')
	local text = vim.fn.getreg('v')
	vim.fn.setreg('v', {})

	text = string.gsub(text, "\n", "")
	if #text > 0 then
		return text
	else
		return ''
	end
end

local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<Leader>ff', tb.current_buffer_fuzzy_find, opts)

-- default_text for telescope is broken now. fix it when ready
-- vim.keymap.set('v', '<space>g', function()
-- 	local text = vim.getVisualSelection()
-- 	tb.current_buffer_fuzzy_find({ default_text = text })
-- end, opts)

