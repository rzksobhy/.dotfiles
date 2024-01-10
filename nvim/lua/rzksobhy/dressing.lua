require("dressing").setup({
    select = {
        -- Set to false to disable the vim.ui.select implementation
        enabled = true,

        -- Priority list of preferred vim.select implementations
        backend = { "builtin", "fzf" },

        builtin = {
            relative = "cursor",
        },
    },
})
