local opts = { noremap = true, silent = true }

-- indent
vim.keymap.set("n", "<", "<<", opts)
vim.keymap.set("n", ">", ">>", opts)
vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)

-- move lines
vim.keymap.set("n", "<A-j>", ":m +1<CR>==", opts)
vim.keymap.set("n", "<A-k>", ":m -2<CR>==", opts)
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", opts)
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", opts)

-- stay at the center
vim.keymap.set("n", "n", "nzzzv", opts)
vim.keymap.set("n", "N", "Nzzzv", opts)
vim.keymap.set("v", "n", "nzzzv", opts)
vim.keymap.set("v", "N", "Nzzzv", opts)
vim.keymap.set("n", "<C-d>", "<C-d>zz", opts)
vim.keymap.set("n", "<C-u>", "<C-u>zz", opts)
vim.keymap.set("v", "<C-d>", "<C-d>zz", opts)
vim.keymap.set("v", "<C-u>", "<C-u>zz", opts)

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]], opts)

-- these are annoying
vim.keymap.set("n", "Q", "<NOP>", opts)
vim.keymap.set("n", "<C-z>", "<NOP>", opts)

-- better escape
vim.keymap.set("i", "<C-c>", "<ESC>", opts)
vim.keymap.set("x", "<C-c>", "<ESC>", opts)
vim.keymap.set("t", "<C-\\><C-n>", "<ESC>", opts)

-- quick fixlist
vim.keymap.set("n", "<leader>j", ":cnext<CR>", opts)
vim.keymap.set("n", "<leader>k", ":cprev<CR>", opts)
