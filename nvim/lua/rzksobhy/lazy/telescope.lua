return {
	{
		"nvim-telescope/telescope.nvim",

		dependencies = {
			"nvim-lua/plenary.nvim",

			{
				"nvim-telescope/telescope-fzf-native.nvim",
				build = "make",
			},
		},

		config = function()
			local telescope = require("telescope")
			local builtin = require("telescope.builtin")
			local themes = require("telescope.themes")

			telescope.setup({
				pickers = {
					find_files = {
						hidden = true,
					},
					help_tags = themes.get_dropdown({
						previewer = false,
					}),
				},
				extensions = {
					fzf = {
						fuzzy = true,
						override_generic_sorter = true,
						override_file_sorter = true,
						case_mode = "smart_case",
					},
				},
			})

			telescope.load_extension("fzf")
			local opts = { noremap = true, silent = true }

			vim.keymap.set("n", "<C-p>", ":Telescope git_files<CR>", opts)

			vim.keymap.set("n", "<leader>pf", ":Telescope find_files<CR>", opts)

			vim.keymap.set("n", "<leader>ph", ":Telescope help_tags<CR>", opts)

			vim.keymap.set("n", "<leader>pw", function()
				builtin.grep_string({ search = vim.fn.expand("<cword>") })
			end, opts)

			vim.keymap.set("n", "<leader>pW", function()
				builtin.grep_string({ search = vim.fn.expand("<cWORD>") })
			end, opts)

			vim.keymap.set("n", "<leader>ps", function()
				builtin.grep_string({ search = vim.fn.input("Grep > ") })
			end, opts)
		end,
	},
}
