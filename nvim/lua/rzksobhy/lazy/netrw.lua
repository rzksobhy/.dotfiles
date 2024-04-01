return {
	"prichrd/netrw.nvim",

	config = function()
		local remove = function(path, type)
			local uname = vim.loop.os_uname().sysname

			if uname == "Linux" or uname == "Darwin" then
				os.execute("rm -rf " .. path)
			elseif uname == "Windows" then
				if type == 0 then
					-- directory
					os.execute("rmdir /s /q " .. path)
				elseif type == 1 then
					-- file
					os.execute("del /s /q" .. path)
				end
			end

			vim.cmd("e")
		end

		require("netrw").setup({
			mappings = {
				["D"] = function(payload)
					local dir = payload.dir
					local node = payload.node
					local path = dir .. "/" .. node

					vim.ui.select({ "yes", "no" }, {
						prompt = "Are you sure you want to delete this? ",
					}, function(choice)
						if choice == "yes" then
							remove(path, payload.type)
						end
					end)
				end,
			},
		})
	end,
}
