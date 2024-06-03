local lsp_zero = require('lsp-zero')

lsp_zero.set_preferences({
    suggest_lsp_config = true,
    sign_icons = {
        error = 'E',
        warning = 'W',
        hint = 'H',
        information = 'I'
    }
})

lsp_zero.on_attach(function(client, bufnr)
  local opt = { buffer = bufnr, remap = false }

  vim.keymap.set('n', 'gd', function() vim.lsp_zero.buf.definition(opt) end, opts)
  vim.keymap.set('n', '<leader>vws', function() vim.lsp_zero.buf.workspace_symbol() end, opts)
  vim.keymap.set('n', '<leader>vd', function() vim.lsp_zero.buf.open_float() end, opts)
  vim.keymap.set('n', '[d', function() vim.lsp_zero.buf.goto_next() end, opts)
  vim.keymap.set('n', ']d', function() vim.lsp_zero.buf.goto_prev() end, opts)
  vim.keymap.set('n', '<leader>vca', function() vim.lsp_zero.buf.code_action() end, opts)
  vim.keymap.set('n', '<leader>vrr', function() vim.lsp_zero.buf.references() end, opts)
  vim.keymap.set('n', '<leader>vrn', function() vim.lsp_zero.buf.rename() end, opts)
end)

lsp_zero.setup()

vim.diagnostic.config({
    virtual_text = true
})

local cmp = require('cmp')

cmp.setup({
	sources = {
		{name = 'nvim_lsp'},
	},
	mapping = {
		['<C-Space>'] = cmp.mapping.complete(),
		['<C-y>'] = cmp.mapping.confirm({select = true}),
		['<C-e>'] = cmp.mapping.abort(),
		['<Up>'] = cmp.mapping.select_prev_item({behavior = 'select'}),
		['<Down>'] = cmp.mapping.select_next_item({behavior = 'select'}),
		['<C-p>'] = cmp.mapping(function()
			if cmp.visible() then
				cmp.select_prev_item({behavior = 'insert'})
			else
				cmp.complete()
			end
		end),
		['<C-n>'] = cmp.mapping(function()
			if cmp.visible() then
				cmp.select_next_item({behavior = 'insert'})
			else
				cmp.complete()
			end
		end),
	},
	snippet = {
		expand = function(args)
			require('luasnip').lsp_expand(args.body)
		end,
	},
})
