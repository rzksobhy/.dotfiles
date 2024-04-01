local lspconfig = require("lspconfig")
local common = require("rzksobhy.lsp_handlers.common")

return function()
	lspconfig["cssls"].setup({
		capabilities = common.capabilities,
		on_attach = function(client)
			client.server_capabilities.documentFormattingProvider = false
		end,
	})
end
