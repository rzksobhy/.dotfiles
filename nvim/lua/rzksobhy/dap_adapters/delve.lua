return function()
	local dap = require("dap")

	dap.adapters["delve"] = {
		-- https://github.com/mfussenegger/nvim-dap/wiki/Debug-Adapter-installation#go-using-delve-directly
		type = "server",
		port = "${port}",
		executable = {
			command = vim.fn.exepath("dlv"),
			args = { "dap", "-l", "127.0.0.1:${port}" },
		},
	}

	dap.configurations.go = {
		{
			type = "delve",
			name = "Debug",
			request = "launch",
			program = "${file}",
		},
		{
			type = "delve",
			name = "Debug test", -- configuration for debugging test files
			request = "launch",
			mode = "test",
			program = "${file}",
		},
		-- works with go.mod packages and sub packages
		{
			type = "delve",
			name = "Debug test (go.mod)",
			request = "launch",
			mode = "test",
			program = "./${relativeFileDirname}",
		},
	}
end
