local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
	print("installing folke/lazy.nvim.git...")

	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})

	print("done!")
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	spec = "rzksobhy.lazy",
	change_detection = { notify = false },
})
