return function()
	local dap = require("dap")

	dap.adapters.node2 = {
		type = "executable",
		command = vim.fn.exepath("node-debug2-adapter"),
	}

	dap.configurations.javascript = {
		{
			-- For this to work you need to make sure the node process is started with the `--inspect` flag.
			name = "Attach to process",
			type = "node2",
			request = "attach",
			processId = require("dap.utils").pick_process,
		},
	}

	dap.configurations.typescript = {
		{
			-- For this to work you need to make sure the node process is started with the `--inspect` flag.
			name = "Attach to process",
			type = "node2",
			request = "attach",
			processId = require("dap.utils").pick_process,
		},
	}
end
