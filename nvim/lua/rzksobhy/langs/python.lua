local lsp = require("lspconfig")

lsp["pyright"].setup({
    capabilities = CAPABILITIES,
    on_attach = function(client, _)
        client.resolved_capabilities.document_formatting = false      -- 0.7 and earlier
        client.server_capabilities.documentFormattingProvider = false -- 0.8 and later
    end,
})
