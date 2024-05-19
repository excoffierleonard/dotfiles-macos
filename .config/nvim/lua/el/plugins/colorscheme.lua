return {
	"folke/tokyonight.nvim",
	priority = 1000,
	config = function()
		local transparent = false -- set to true if you would like to enable transparency
		require("tokyonight").setup({
			-- you can place your customization parameters here
		})
		vim.cmd("colorscheme tokyonight")
	end,
}
