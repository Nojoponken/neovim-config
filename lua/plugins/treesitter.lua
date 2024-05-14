return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")
		configs.setup({
			automatic_installation = true,
			--ensure_installed = { "lua", "c" },
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
