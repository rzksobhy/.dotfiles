return {
	{
		"williamboman/mason.nvim",

		name = "mason",

		dependencies = {
			"b0o/SchemaStore.nvim",
			"williamboman/mason-lspconfig.nvim",
		},

		config = function()
			require("mason").setup()
		end,
	},
}
