-- setup nvim-cmp
require('blink.cmp').setup({
  keymap = {
	  preset = 'default',
	  ['<Tab>'] = { 'select_and_accept', 'show', 'fallback' },
	  ['<C-p>'] = { 'select_prev', 'fallback_to_mappings' },
	  ['<C-n>'] = { 'select_next', 'fallback_to_mappings' },
  },
  -- disallow_partial_fuzzy_matching
  appearance = {
    nerd_font_variant = 'mono'
  },
  completion = {
    documentation = { auto_show = false }
  },
  sources = {
    default = { 'lsp', 'path', 'snippets', 'buffer' },
  },
  fuzzy = {
    implementation = "lua"
  }
})

----------------------------

-- local cmp = require 'cmp'
-- local luasnip = require 'luasnip'
-- cmp.setup({
	-- snippet = {
		-- -- REQUIRED - you must specify a snippet engine
		-- expand = function(args)
			-- -- vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
			-- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
			-- -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
			-- -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
			-- vim.snippet.expand(args.body) -- For native neovim snippets (Neovim v0.10+)

			-- -- For `mini.snippets` users:
			-- -- local insert = MiniSnippets.config.expand.insert or MiniSnippets.default_insert
			-- -- insert({ body = args.body }) -- Insert at cursor
			-- -- cmp.resubscribe({ "TextChangedI", "TextChangedP" })
			-- -- require("cmp.config").set_onetime({ sources = {} })
		-- end,
	-- },
	-- window = {
		-- completion = cmp.config.window.bordered(),
		-- documentation = cmp.config.window.bordered(),
	-- },
	-- mapping = {
		-- -- ['<C-b>'] = cmp.mapping.scroll_docs(-4),
		-- -- ['<C-f>'] = cmp.mapping.scroll_docs(4),
		-- -- ['<C-Space>'] = cmp.mapping.complete(),
		-- -- ['<C-e>'] = cmp.mapping.abort(),
		-- ['<CR>'] = cmp.mapping(function(fallback)
			-- if cmp.visible() then
				-- if luasnip.expandable() then
					-- luasnip.expand()
				-- else
					-- cmp.confirm({
						-- select = true,
					-- })
				-- end
			-- else
				-- fallback()
			-- end
		-- end),

		-- -- ['<Tab>'] = cmp.mapping(function() print('123') end, {"i","s"}),
		-- ["<Tab>"] = cmp.mapping(function(fallback)
			-- if cmp.visible() then
				-- cmp.select_next_item()
			-- elseif luasnip.locally_jumpable(1) then
				-- luasnip.jump(1)
			-- else
				-- fallback()
			-- end
		-- end, { "i", "s" }),

		-- ["<S-Tab>"] = cmp.mapping(function(fallback)
			-- if cmp.visible() then
				-- cmp.select_prev_item()
			-- elseif luasnip.locally_jumpable(-1) then
				-- luasnip.jump(-1)
			-- else
				-- fallback()
			-- end
		-- end, { "i", "s" }),
	-- },
	-- sources = cmp.config.sources({
		-- { name = 'nvim_lsp' },
		-- { name = 'luasnip' }, -- For luasnip users.
		-- -- { name = 'ultisnips' }, -- For ultisnips users.
		-- -- { name = 'snippy' }, -- For sn:ippy users.
	-- }, {
		-- { name = 'buffer' },
	-- }),
	-- matching = {
		-- disallow_fuzzy_matching = false,
		-- disallow_fullfuzzy_matching = false,
		-- disallow_partial_fuzzy_matching = false,
		-- disallow_partial_matching = false,
		-- disallow_prefix_unmatching = false,
	-- },
-- })

-- -- -- Set configuration for specific filetype.
-- -- cmp.setup.filetype('gitcommit', {
	-- -- sources = cmp.config.sources({
		-- -- { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
	-- -- }, {
		-- -- { name = 'buffer' },
	-- -- })
-- -- })

-- -- -- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
-- -- cmp.setup.cmdline('/', {
	-- -- sources = {
		-- -- { name = 'buffer' }
	-- -- }
-- -- })

-- -- -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
-- -- cmp.setup.cmdline(':', {
	-- -- sources = cmp.config.sources({
		-- -- { name = 'cmdline' },
		-- -- { name = 'path' },
	-- -- })
-- -- })
