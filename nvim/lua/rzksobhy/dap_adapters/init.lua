return {
	function(config)
		-- all sources with no handler get passed here

		-- Keep original functionality
		require("mason-nvim-dap").default_setup(config)
	end,

	codelldb = require("rzksobhy.dap_adapters.codelldb"),

	node2 = require("rzksobhy.dap_adapters.node2"),

	delve = require("rzksobhy.dap_adapters.delve"),
}
