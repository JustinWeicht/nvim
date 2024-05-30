vim.g.mapleader = " "

-- no thanks
vim.keymap.set("n", "<Q>", "<Nop>")

-- Insert exit
vim.keymap.set("i", "jk", "<Esc>")

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
vim.keymap.set("n", "<C-v>", '"+p')
vim.keymap.set("v", "<C-v>", '"+p')
vim.keymap.set("v", "<C-c>", '"+y')
vim.keymap.set("i", "<C-v>", "<C-r>*")
vim.keymap.set("x", "<leader>p", "\"_dP")

-- File navigation
vim.keymap.set("n", "<leader>q", vim.cmd.q)
vim.keymap.set("n", "<leader>w", vim.cmd.w)
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "J", "5j")
vim.keymap.set("n", "K", "5k")
vim.keymap.set("n", "<leader>h", "^")
vim.keymap.set("n", "<leader>l", "$")

-- Search/replace
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Move lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

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

-- Make executable
vim.keymap.set("n", "<leader>x:", ":!chmod +x %<CR>", { silent = true })

-- Shoutout
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

