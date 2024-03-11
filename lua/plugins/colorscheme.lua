return {
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("tokyonight").setup({
				-- transparent = true,
			})
			-- vim.cmd([[colorscheme tokyonight]])
		end,
	},
	{
		"Mofiqul/adwaita.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			-- vim.g.adwaita_transparent = true
			-- vim.cmd([[colorscheme adwaita]])
		end,
	},
	{
		"craftzdog/solarized-osaka.nvim",
		lazy = false,
		priority = 1000,
		opts = {
			transparent = true,
		},
		config = function()
			-- vim.cmd([[colorscheme solarized-osaka]])
		end,
	},
	{
		"EdenEast/nightfox.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("nightfox").setup({
				options = {
					transparent = true,
				},
			})
			vim.cmd([[colorscheme carbonfox]])
		end,
	},
}
