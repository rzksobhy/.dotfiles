local opts = { noremap = true, silent = true }

vim.keymap.set("n", "<leader>ha", require("harpoon.mark").add_file, opts)

vim.keymap.set("n", "<leader>hh", require("harpoon.ui").toggle_quick_menu, opts)

vim.keymap.set("n", "<leader>hj", require("harpoon.ui").nav_next, opts)
vim.keymap.set("n", "<leader>hk", require("harpoon.ui").nav_prev, opts)

for i = 1, 9 do
    vim.keymap.set("n", "<leader>" .. i, string.format([[:lua require("harpoon.ui").nav_file(%i)<CR>]], i), opts)
end
