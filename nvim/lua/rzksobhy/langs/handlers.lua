CAPABILITIES = require("cmp_nvim_lsp").default_capabilities()

local group = vim.api.nvim_create_augroup("Lsp_Handlers", { clear = true })

vim.api.nvim_create_autocmd("LspAttach", {
    group = group,
    callback = function(args)
        if not (args.data and args.data.client_id) then
            return
        end

        local bufnr = args.buf
        local client = vim.lsp.get_client_by_id(args.data.client_id)

        local bufopts = { noremap = true, silent = true, buffer = bufnr }

        vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)
        vim.keymap.set("n", "gr", vim.lsp.buf.references, bufopts)
        vim.keymap.set("n", "gk", vim.lsp.buf.signature_help, bufopts)
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
        vim.keymap.set("n", "gD", vim.lsp.buf.declaration, bufopts)
        vim.keymap.set("n", "gi", vim.lsp.buf.implementation, bufopts)
        vim.keymap.set("n", "<leader>lr", vim.lsp.buf.rename, bufopts)
        vim.keymap.set("n", "<leader>la", vim.lsp.buf.code_action, bufopts)
        vim.keymap.set("n", "<leader>ld", vim.diagnostic.open_float)

        if client.server_capabilities.documentFormattingProvider then
            local format = function()
                vim.lsp.buf.format({ async = true })
            end

            vim.api.nvim_buf_create_user_command(bufnr, "LspFormat", format, {})

            vim.keymap.set("n", "<leader>lf", format, bufopts)
        end
    end,
})
