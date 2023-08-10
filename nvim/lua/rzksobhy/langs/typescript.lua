local lsp = require("lspconfig")

lsp["html"].setup({
    capabilities = CAPABILITIES,
    on_attach = function(client, _)
        client.resolved_capabilities.document_formatting = false -- 0.7 and earlier
        client.server_capabilities.documentFormattingProvider = false -- 0.8 and later
    end,
})

lsp["cssls"].setup({
    capabilities = CAPABILITIES,
    on_attach = function(client, _)
        client.resolved_capabilities.document_formatting = false -- 0.7 and earlier
        client.server_capabilities.documentFormattingProvider = false -- 0.8 and later
    end,
})

lsp["tsserver"].setup({
    capabilities = CAPABILITIES,
    on_attach = function(client, _)
        client.resolved_capabilities.document_formatting = false -- 0.7 and earlier
        client.server_capabilities.documentFormattingProvider = false -- 0.8 and later
    end,
})

lsp["jsonls"].setup({
    capabilities = CAPABILITIES,
    on_attach = function(client, _)
        client.resolved_capabilities.document_formatting = false -- 0.7 and earlier
        client.server_capabilities.documentFormattingProvider = false -- 0.8 and later
    end,
    settings = {
        json = {
            schemas = require("schemastore").json.schemas(),
            validate = { enable = true },
        },
    },
})
