require('refactoring').setup({})

vim.api.nvim_set_keymap('n', '<leader>ri', [[ <Esc><cmd>lua require('refactoring').refactor('Inline variable')<CR>]], { noremap = true, silent = true })

