return {
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("tokyonight").setup({
				transparent = true,
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
			vim.cmd([[colorscheme adwaita]])
        end,
	},
}
