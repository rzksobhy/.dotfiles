local lspconfig = require("lspconfig")
local common = require("rzksobhy.lsp_handlers.common")

return function()
	lspconfig["jsonls"].setup({
		capabilities = common.capabilities,
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
end
