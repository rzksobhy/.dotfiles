local lspconfig = require("lspconfig")
local common = require("rzksobhy.lsp_handlers.common")

return function()
	lspconfig["clangd"].setup({
		capabilities = common.capabilities,
		cmd = {
			"clangd",
			"--background-index",
			"--pch-storage=memory",
			"--clang-tidy",
			"--suggest-missing-includes",
			"--all-scopes-completion",
			"--pretty",
			"--header-insertion=never",
			"-j=4",
			"--inlay-hints",
			"--header-insertion-decorators",
		},
	})
end
