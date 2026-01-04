-- local lsp = require('lsp-zero')

-- lsp.preset("recommended")
-- lsp.ensure_installed(
	-- {'eslint', 'lua_ls', 'pylsp', 'rust_analyzer', 'svelte', 'omnisharp'}
-- )

	vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
	vim.keymap.set("n", "<C-k>", function() vim.lsp.buf.hover() end, opts)
	vim.keymap.set("n", "<Leader>gm", function() vim.lsp.buf.workspace_symbol() end, opts)
    -- vim.keymap.set("n", "<Leader>gm", function() vim.lsp.buf.document_symbol() end, opts)
    vim.keymap.set("n", "<Leader>vd", function() vim.diagnostic.open_float() end, opts)
	vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
	vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
	vim.keymap.set("n", "C-.", function() vim.lsp.buf.code_action() end, opts)
	vim.keymap.set("n", "<Leader>fu", function() vim.lsp.buf.references() end, opts)
	vim.keymap.set("n", "<Leader>r", function() vim.lsp.buf.rename() end, opts)
	vim.keymap.set("i", "C-h", function() vim.lsp.buf.signature_help() end, opts)

-- lsp.on_attach(function(client, bufnr)
	-- local opts = {buffer = bufnr, remap = false}

	-- vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
	-- vim.keymap.set("n", "<C-k>", function() vim.lsp.buf.hover() end, opts)
	-- vim.keymap.set("n", "<Leader>gm", function() vim.lsp.buf.workspace_symbol() end, opts)
    -- -- vim.keymap.set("n", "<Leader>gm", function() vim.lsp.buf.document_symbol() end, opts)
    -- vim.keymap.set("n", "<Leader>vd", function() vim.diagnostic.open_float() end, opts)
	-- vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
	-- vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
	-- vim.keymap.set("n", "C-.", function() vim.lsp.buf.code_action() end, opts)
	-- vim.keymap.set("n", "<Leader>fu", function() vim.lsp.buf.references() end, opts)
	-- vim.keymap.set("n", "<Leader>r", function() vim.lsp.buf.rename() end, opts)
	-- vim.keymap.set("i", "C-h", function() vim.lsp.buf.signature_help() end, opts)
-- -- see :help lsp-zero-keybindings
-- -- to learn the available actions
-- -- lsp.default_keymaps({buffer = bufnr})
-- end)

-- When you don't have mason.nvim installed
-- You'll need to list the servers installed in your system
-- lsp.setup_servers()
-- require('mason').setup({})
-- require('mason-lspconfig').setup({
	-- ensure_installed = {},
	-- handlers = {
		-- function (server_name)
			-- require('lspconfig')[server_name].setup({})
		-- end,
	-- },
-- })

-- (Optional) Configure lua language server for neovim
-- require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

-- gdscript
vim.lsp.config('gdscript', {})
vim.lsp.enable('gdscript')

-- cmp
-- local cmp = require('cmp')
-- cmp.setup({
  -- snippet = {
	-- expand = function(args)
	  -- require('luasnip').lsp_expand(args.body)
    -- end,
  -- },
  -- window = {
	-- completion = cmp.config.window.bordered(),
  -- },
  -- mapping = {
    -- ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    -- ['<C-f>'] = cmp.mapping.scroll_docs(4),
    -- ['<C-Space>'] = cmp.mapping.complete(),
    -- ['<C-e>'] = cmp.mapping.close(),
    -- ['<CR>'] = cmp.mapping.confirm({ select = true }),
  -- },

  -- sources = {
    -- { name = 'nvim_lsp' },
    -- { name = 'buffer' },
	-- { name = 'luasnip' },
  -- }
-- })
-- local cmp_select = {behavior = cmp.SelectBehavior.Select}
-- local cmp_mappings = lsp.defaults.cmp_mappings({
-- 	['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
-- 	['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
-- 	['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
-- 	['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
-- })

-- lsp.setup()

