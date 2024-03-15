local install_path = vim.fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
    vim.fn.system({
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
    })
end

vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
    -- nvim libs
    use("wbthomason/packer.nvim")
    use("lewis6991/impatient.nvim")
    use("nvim-lua/plenary.nvim")
    use("williamboman/mason.nvim")

    -- git
    use("tpope/vim-fugitive")

    -- telescope
    use("nvim-telescope/telescope.nvim")
    use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })

    -- treesitter
    use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
    -- use("nvim-treesitter/nvim-treesitter-textobjects")

    -- completion
    use("hrsh7th/nvim-cmp")
    use("hrsh7th/cmp-nvim-lsp")
    use("hrsh7th/cmp-nvim-lua")
    use("hrsh7th/cmp-buffer")
    use("hrsh7th/cmp-path")
    use("hrsh7th/cmp-cmdline")

    -- snippets
    use("L3MON4D3/LuaSnip")
    use("saadparwaiz1/cmp_luasnip")

    -- lsp
    use("neovim/nvim-lspconfig")
    use("onsails/lspkind.nvim")
    use("jose-elias-alvarez/null-ls.nvim")
    use("j-hui/fidget.nvim")

    -- languages
    use("simrat39/rust-tools.nvim")
    use("b0o/SchemaStore.nvim")

    -- dap
    use("mfussenegger/nvim-dap")
    use("rcarriga/nvim-dap-ui")
    use("theHamsta/nvim-dap-virtual-text")

    -- extras
    use("windwp/nvim-autopairs")
    use("numToStr/Comment.nvim")
    use("mg979/vim-visual-multi")
    use("stevearc/dressing.nvim")
    use("Shatur/neovim-session-manager")
    use("ThePrimeagen/harpoon")
    use("tpope/vim-sleuth")
    use("nvim-tree/nvim-tree.lua")
    use("prichrd/netrw.nvim")

    -- colortheme
    use("navarasu/onedark.nvim")
    use("gruvbox-community/gruvbox")
    use("nvim-tree/nvim-web-devicons")
end)
