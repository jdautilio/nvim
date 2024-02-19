return {
	{
		"stevearc/conform.nvim",
		opts = {
			formatters_by_ft = {
				lua = { "stylua" },
				javascript = { "prettierd" },
                javascriptreact = { "prettierd" },
				html = { "prettierd" },
                sql = { "sql-formatter" },
                java = { "google-java-format" },
                xml = { "xmlformat" }
			},
		},
	},
}
