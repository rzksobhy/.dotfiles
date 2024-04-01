local common = require("rzksobhy.lsp_handlers.common")

return {
	function(server_name) -- default handler (optional)
		require("lspconfig")[server_name].setup({
			capabilities = common.capabilities,
		})
	end,

	["lua_ls"] = require("rzksobhy.lsp_handlers.lua_ls"),

	["clangd"] = require("rzksobhy.lsp_handlers.clangd"),

	["pyright"] = require("rzksobhy.lsp_handlers.pyright"),

	["eslint"] = require("rzksobhy.lsp_handlers.eslint"),

	["html"] = require("rzksobhy.lsp_handlers.html"),

	["cssls"] = require("rzksobhy.lsp_handlers.cssls"),

	["tsserver"] = require("rzksobhy.lsp_handlers.tsserver"),

	["jsonls"] = require("rzksobhy.lsp_handlers.jsonls"),

	["yamlls"] = require("rzksobhy.lsp_handlers.yamlls"),
}
