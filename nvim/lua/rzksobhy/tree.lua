require("nvim-tree").setup({
    disable_netrw = true,
    hijack_cursor = true,
    hijack_netrw = true,
    hijack_unnamed_buffer_when_opening = true,
    sort_by = "case_sensitive",
    view = {
        float = {
            enable = true,
            quit_on_focus_loss = true,
            open_win_config = {
                relative = "editor",
                border = "rounded",
                width = 30,
                height = 30,
                row = 1,
                col = 1,
            },
        },
    },
    renderer = {
        add_trailing = true,
        group_empty = false,
    },
    filters = {
        dotfiles = false,
    },
})

local opts = { noremap = true, silent = true }

vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", opts)
