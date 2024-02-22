local opts = { noremap = true, silent = true }

vim.keymap.set("n", "<leader>a", require("harpoon.mark").add_file, opts)

vim.keymap.set("n", "<leader>h", require("harpoon.ui").toggle_quick_menu, opts)

vim.keymap.set("n", "<TAB>", require("harpoon.ui").nav_next, opts)
vim.keymap.set("n", "<S-TAB>", require("harpoon.ui").nav_prev, opts)

for i = 1, 9 do
    vim.keymap.set("n", "<leader>" .. i, function()
        require("harpoon.ui").nav_file(i)
    end, opts)
end

require("harpoon").setup({
    global_settings = {
        tabline = true,
        tabline_prefix = "   ",
        tabline_suffix = "   ",
    },
})
