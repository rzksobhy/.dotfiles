local lspconfig = require("lspconfig")
local common = require("rzksobhy.lsp_handlers.common")

return function()
	lspconfig["lua_ls"].setup({
		capabilities = common.capabilities,
		on_attach = function(client)
			client.server_capabilities.documentFormattingProvider = false
		end,
		settings = {
			Lua = {
				diagnostics = {
					globals = { "vim", "it", "describe", "before_each", "after_each" },
				},

				format = {
					enable = true,
					defaultConfig = {
						indent_style = "space",
						indent_size = "2",
					},
				},
			},
		},
	})
end
