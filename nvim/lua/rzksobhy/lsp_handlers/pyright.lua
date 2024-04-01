local lspconfig = require("lspconfig")
local common = require("rzksobhy.lsp_handlers.common")

return function()
	lspconfig["pyright"].setup({
		capabilities = common.capabilities,
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
end
