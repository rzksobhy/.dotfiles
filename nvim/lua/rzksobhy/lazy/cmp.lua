return {
	"hrsh7th/nvim-cmp",

	dependencies = {
		"onsails/lspkind.nvim",

		-- sources
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-nvim-lua",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-cmdline",

		-- snippets
		"L3MON4D3/LuaSnip",
		"saadparwaiz1/cmp_luasnip",
	},

	config = function()
		local cmp = require("cmp")
		local lspkind = require("lspkind")
		local luasnip = require("luasnip")
		local cmp_autopairs = require("nvim-autopairs.completion.cmp")

		require("luasnip").config.set_config({
			-- This tells LuaSnip to remember to keep around the last snippet.
			-- You can jump back into it even if you move outside of the selection
			history = false,

			-- This one is cool cause if you have dynamic snippets, it updates as you type!
			update_events = { "TextChanged", "TextChangedI" },

			delete_check_events = "InsertLeave",
			region_check_events = "CursorMoved",

			-- Autosnippets:
			enable_autosnippets = true,
		})

		cmp.setup({
			mapping = {
				["<C-d>"] = cmp.mapping.scroll_docs(-4),
				["<C-u>"] = cmp.mapping.scroll_docs(4),
				["<C-e>"] = cmp.mapping.close(),
				["<CR>"] = cmp.mapping.confirm({
					behavior = cmp.ConfirmBehavior.Insert,
					select = true,
				}),
				["<C-Space>"] = cmp.mapping.complete(),
				["<TAB>"] = cmp.mapping(function(fallback)
					if cmp.visible() then
						cmp.select_next_item()
					elseif luasnip.expand_or_jumpable() then
						luasnip.expand_or_jump()
					else
						fallback()
					end
				end),
				["<C-n>"] = cmp.mapping(function(fallback)
					if cmp.visible() then
						cmp.select_next_item()
					else
						fallback()
					end
				end),
				["<S-TAB>"] = cmp.mapping(function(fallback)
					if cmp.visible() then
						cmp.select_prev_item()
					elseif luasnip.jumpable(-1) then
						luasnip.jump(-1)
					else
						fallback()
					end
				end),
				["<C-p>"] = cmp.mapping(function(fallback)
					if cmp.visible() then
						cmp.select_prev_item()
					else
						fallback()
					end
				end),
			},

			sources = {
				{ name = "nvim_lua" },
				{ name = "luasnip" },
				{ name = "nvim_lsp" },
				{ name = "path" },
				{ name = "buffer", keyword_length = 5 },
			},

			snippet = {
				expand = function(args)
					luasnip.lsp_expand(args.body)
				end,
			},

			formatting = {
				format = lspkind.cmp_format(),
			},
		})

		-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
		cmp.setup.cmdline({ "/", "?" }, {
			mapping = cmp.mapping.preset.cmdline(),
			sources = {
				{ name = "buffer" },
			},
		})

		-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
		cmp.setup.cmdline(":", {
			mapping = cmp.mapping.preset.cmdline(),
			sources = cmp.config.sources({
				{ name = "path" },
			}, {
				{ name = "cmdline" },
			}),
		})

		-- If you want insert `(` after select function or method item
		cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
	end,
}
