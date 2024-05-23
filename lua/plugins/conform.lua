return {
	{
		"stevearc/conform.nvim",
		opts = {
			lsp_fallback = true,
			formatters_by_ft = {
				c = { "clang_format" },
				lua = { "stylua" },
				javascript = { "prettierd" },
				javascriptreact = { "prettierd" },
				html = { "prettierd" },
				sql = { "sql-formatter" },
				java = { "google-java-format" },
				xml = { "xmlformat" },
				python = { "black" },
				ruby = { "rubocop" },
			},
		},
	},
}
