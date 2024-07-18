vim.g.mapleader = " "

-- no thanks
vim.keymap.set("n", "<Q>", "<Nop>")

-- Insert exit
vim.keymap.set("i", "jk", "<Esc>")

-- Visual exit 
vim.keymap.set("v", "jkjk", "<Esc>")

-- Search highlight exit
vim.keymap.set("n", "<Esc>", vim.cmd.noh)

-- Visual Block
vim.keymap.set("n", "<A-v>", "<C-q>")

-- Terminal open
vim.keymap.set("n", "<C-t>", function()
    vim.cmd("bel new")
    vim.cmd("term")
    vim.cmd("resize 15")
    vim.cmd("startinsert")
end)

-- Terminal navigation
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")
vim.keymap.set("t", "jk", "<C-\\><C-n>")

-- Copy/Paste
-- Copy to system clipboard
vim.keymap.set("v", "<C-c>", '"+y')

-- Paste from system clipboard in normal mode (no auto-indentation)
vim.keymap.set("n", "<C-v>", function()
    vim.cmd("set paste")
    vim.api.nvim_feedkeys('"*p', 'n', false)
    vim.cmd("set nopaste")
end)

-- Paste from system cilpboard in visual mode (no auto-indentation)
vim.keymap.set("v", "<C-v>", function()
    vim.cmd("set paste")
    vim.api.nvim_feedkeys('"*p', 'v', false)
    vim.cmd("set nopaste")
end)

-- Paste from system clipboard in insert mode (no auto-indentation)
vim.keymap.set("i", "<C-v>", function()
    vim.cmd("set paste")
    vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<C-r>*", true, true, true), 'i', true)
    vim.schedule(function()
        vim.cmd("set nopaste")
    end)
end, { noremap = true, silent = true })

-- Black hole paste in visual mode (no auto-indentation)
vim.keymap.set("v", "<leader>p", function()
    vim.cmd("set paste")
    vim.api.nvim_feedkeys("\"_dP", 'v', false)
    vim.cmd("set nopaste")
end)

-- File navigation
vim.keymap.set("n", "<leader>q", vim.cmd.q)
vim.keymap.set("n", "<leader>w", vim.cmd.w)
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set({"n", "v"}, "J", "5j")
vim.keymap.set({"n", "v"}, "K", "5k")
vim.keymap.set("n", "H", "^")
vim.keymap.set("n", "L", "$")
vim.keymap.set("v", "H", "0")
vim.keymap.set("v", "L", "$")

-- Search/replace
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Move lines
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv")

-- Quickfix
vim.keymap.set("n", "<C-j>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-k>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lprev<CR>zz")

-- Centered cursor
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Split navigation
vim.keymap.set("n", "<C-j>", "<C-w><down>")
vim.keymap.set("n", "<C-k>", "<C-w><up>")
vim.keymap.set("n", "<C-h>", "<C-w><left>")
vim.keymap.set("n", "<C-l>", "<C-w><right>")

-- Split resize
vim.keymap.set("n", "<A-j>", "<C-w>5-")
vim.keymap.set("n", "<A-k>", "<C-w>5+")
vim.keymap.set("n", "<A-l>", "<C-w>5<")
vim.keymap.set("n", "<A-h>", "<C-w>5>")

-- Copilot Chat
vim.keymap.set("n", "<leader>cc", vim.cmd.CopilotChat)
