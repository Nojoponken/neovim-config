vim.g.mapleader = " "

-- Lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")

-- Telescope stuff
local builtin = require("telescope.builtin")

-- Vim commands
vim.cmd("set number")
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=0")

-- Vim keybinds
vim.keymap.set("n", "<C-p>", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>win", "<cmd>cd $HOMEPATH/Appdata/Local/nvim<cr>", {}) -- Windows get to config
vim.keymap.set("n", "<C-.>", "<cmd>ToggleTerm<cr>", {})
vim.keymap.set("t", "<C-.>", "<cmd>ToggleTerm<cr>", {})

-- Plugin keybinds
vim.keymap.set("n", "<leader>g", "<cmd>Neogit<cr>", {})
vim.keymap.set("n", "<leader>t", "<cmd>Neotree filesystem reveal left<cr>", {})
vim.keymap.set("n", "<leader>c", vim.lsp.buf.code_action, {})
vim.keymap.set("n", "<leader>i", vim.lsp.buf.format, {})
