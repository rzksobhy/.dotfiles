require("rzksobhy.opts")
require("rzksobhy.keys")
require("rzksobhy.packer")
-- require("rzksobhy.nvimtree")
require("rzksobhy.netrw")
require("rzksobhy.telescope")
require("rzksobhy.vim-visual-multi")
require("rzksobhy.treesitter")
require("rzksobhy.cmp")
require("rzksobhy.dressing")
require("rzksobhy.session-manager")
require("rzksobhy.dap")
require("rzksobhy.langs")
require("rzksobhy.harpoon")

-- others
require("mason").setup()
require("Comment").setup()
require("nvim-autopairs").setup()

vim.cmd.colorscheme("gruvbox")
