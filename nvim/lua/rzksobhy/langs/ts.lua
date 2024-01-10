local lsp = require("lspconfig")

lsp["eslint"].setup({
    capabilities = CAPABILITIES,
    on_attach = function(_, bufnr)
        vim.api.nvim_create_autocmd("BufWritePre", {
            buffer = bufnr,
            command = "EslintFixAll",
        })
    end,
})

lsp["html"].setup({
    capabilities = CAPABILITIES,
    on_attach = function(client, _)
        client.server_capabilities.documentFormattingProvider = false
    end,
})

lsp["cssls"].setup({
    capabilities = CAPABILITIES,
    on_attach = function(client, _)
        client.server_capabilities.documentFormattingProvider = false
    end,
})

lsp["tsserver"].setup({
    capabilities = CAPABILITIES,
    on_attach = function(client, _)
        client.server_capabilities.documentFormattingProvider = false
    end,
})

lsp["jsonls"].setup({
    capabilities = CAPABILITIES,
    on_attach = function(client, _)
        client.server_capabilities.documentFormattingProvider = false
    end,
    settings = {
        json = {
            schemas = require("schemastore").json.schemas(),
            validate = { enable = true },
        },
    },
})
