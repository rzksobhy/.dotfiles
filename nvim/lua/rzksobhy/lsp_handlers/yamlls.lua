local lspconfig = require("lspconfig")
local common = require("rzksobhy.lsp_handlers.common")

return function()
	lspconfig["yamlls"].setup({
		capabilities = common.capabilities,
		on_attach = function(client, _)
			client.server_capabilities.documentFormattingProvider = false
		end,
		settings = {
			yaml = {
				schemaStore = {
					-- You must disable built-in schemaStore support if you want to use
					-- this plugin and its advanced options like `ignore`.
					enable = false,
					-- Avoid TypeError: Cannot read properties of undefined (reading 'length')
					url = "",
				},
				schemas = require("schemastore").yaml.schemas(),
			},
		},
	})
end
