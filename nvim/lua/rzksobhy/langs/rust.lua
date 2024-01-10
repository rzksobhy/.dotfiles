local dap = require("dap")

require("rust-tools").setup({
    server = {
        cmd = { "rustup", "run", "stable", "rust-analyzer" },
    },
    dap = {
        adapter = dap.adapters.codelldb,
    },
})
