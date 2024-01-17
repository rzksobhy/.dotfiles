local lsp = require("lspconfig")

lsp["pyright"].setup({
    capabilities = CAPABILITIES,
    on_attach = function(client, _)
        client.resolved_capabilities.document_formatting = false
        client.server_capabilities.documentFormattingProvider = false
    end,
    settings = {
        python = {
            analysis = { diagnosticMode = "off", typeCheckingMode = "off" },
        },
    },
})
