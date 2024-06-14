local lsp_zero = require('lsp-zero')

lsp_zero.preset("recommended")

lsp_zero.configure('lua-language-server', {
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
})

lsp_zero.set_sign_icons({
  error = 'E',
  warn = 'W',
  hint = 'H',
  info = 'I'
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
    virtual_text = true,
    signs = true,
    update_in_insert = false, -- ensure diagnostics update outside of insert mode
})

require("mason").setup()
require("mason-lspconfig").setup ({
    ensure_installed = {
        "lua_ls",
        "rust_analyzer",
        "html",
        "cssls",
        "sqlls",
        "pyright",
        "graphql",
        "tsserver",
        "marksman",
    },
    handlers = {
        function(server_name)
            require('lspconfig')[server_name].setup({})
        end,
    },
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
