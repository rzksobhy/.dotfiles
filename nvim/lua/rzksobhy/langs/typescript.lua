local lsp = require("lspconfig")

lsp["html"].setup({
    capabilities = CAPABILITIES,
    on_attach = function(client, _)
        client.resolved_capabilities.document_formatting = false
        client.server_capabilities.documentFormattingProvider = false
    end,
})

lsp["cssls"].setup({
    capabilities = CAPABILITIES,
    on_attach = function(client, _)
        client.resolved_capabilities.document_formatting = false
        client.server_capabilities.documentFormattingProvider = false
    end,
})

lsp["tsserver"].setup({
    capabilities = CAPABILITIES,
    on_attach = function(client, _)
        client.resolved_capabilities.document_formatting = false
        client.server_capabilities.documentFormattingProvider = false
    end,
})

lsp["jsonls"].setup({
    capabilities = CAPABILITIES,
    on_attach = function(client, _)
        client.resolved_capabilities.document_formatting = false
        client.server_capabilities.documentFormattingProvider = false
    end,
    settings = {
        json = {
            schemas = require("schemastore").json.schemas(),
            validate = { enable = true },
        },
    },
})
