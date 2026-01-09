vim.g.mapleader = ";"
-- exit to file explorer
vim.keymap.set('n', '<leader>qq', vim.cmd.Ex)

-- copy paste
vim.keymap.set('i', '<S-Insert>', '<Esc>"+pa')
vim.keymap.set('n', '<S-Insert>', '<Esc>"+p')
vim.keymap.set('v', '<C-Insert>', "+y<Esc>")

-- block ex mode
vim.keymap.set('n', 'Q', '<Nop>')

-- format code
vim.keymap.set('n', '<leader>fc', function()
    vim.lsp.buf.format()
end)

-- shortcut for buffers
vim.keymap.set('n', "<C-l>", vim.cmd.bnext)
vim.keymap.set('n', "<C-h>", vim.cmd.bprev)
--

-- ins-completion
vim.keymap.set('i', "<C-n>", vim.cmd.completion)

-- Ctrl+c to copy selected block
vim.keymap.set('v', "<C-c>", '"+y')

-- leader-nl for cancel all highlight
vim.keymap.set('n', "<Leader>nl", vim.cmd.nohlsearch)

-- move highlighted block
-- 'K' always be used for hover, can't be binded, need fix
-- vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
-- vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv")

-- keep cursor in middle when jump half page up/down
vim.keymap.set('n', "<C-d>", "<C-d>zz")
vim.keymap.set('n', "<C-u>", "<C-u>zz")

-- a overwriting paste b but keep a in register
vim.keymap.set("x", "<leader>p", "\"_dP")

-- use leader-yank to copy content into system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- local cmp = require'cmp'
-- cmp.setup({
	      -- -- Classic completion keymaps
    -- mapping = cmp.mapping.preset.insert({
	  -- ['<CR>'] = cmp.mapping.confirm { select = true },
	  -- ['<Tab>'] = cmp.mapping.select_next_item(),
	  -- ['<S-Tab>'] = cmp.mapping.select_prev_item(),
    -- })
-- })



-- switch when termianl split
-- tmap <S-h> <C-\><C-N>h

-- open url
-- https://stackoverflow.com/questions/9458294/open-url-under-cursor-in-vim-with-browser
local function handle_url()
  local line = vim.api.nvim_get_current_line()
  -- Lua pattern equivalent to your Vim regex
  local uri = string.match(line, "%a+://[^%s>,;]*")

  if uri and uri ~= "" then
    print(uri)
    -- Using nvim_command to run the silent system call
	vim.cmd(string.format("!librewolf %s", uri))
	-- vim.cmd(string.format("silent !librewolf '%s'", uri))
  else
    print("No URI found in line.")
  end
end
vim.keymap.set("n", "<leader>U", handle_url, {desc="Open URL under cursor"})
vim.keymap.set("v", "<leader>U", handle_url, {desc="Open URL under cursor"})
