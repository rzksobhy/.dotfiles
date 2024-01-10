local opts = { noremap = true, silent = true }

vim.keymap.set("n", "<leader>a", require("harpoon.mark").add_file, opts)

vim.keymap.set("n", "<leader>h", require("harpoon.ui").toggle_quick_menu, opts)

vim.keymap.set("n", "<leader>j", require("harpoon.ui").nav_next, opts)
vim.keymap.set("n", "<leader>k", require("harpoon.ui").nav_prev, opts)

for i = 1, 9 do
    vim.keymap.set("n", "<leader>" .. i, string.format([[:lua require("harpoon.ui").nav_file(%i)<CR>]], i), opts)
end
