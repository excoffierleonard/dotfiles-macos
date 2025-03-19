return {
	{
		"akinsho/horizon.nvim",
		version = "*", -- Use the latest version
		config = function()
			-- Load the horizon theme
			vim.cmd([[colorscheme horizon]])

			-- Set transparent background
			vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
			vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
			vim.api.nvim_set_hl(0, "NonText", { bg = "none" })
		end,
	},
}
