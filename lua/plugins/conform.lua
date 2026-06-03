return {
  'stevearc/conform.nvim',
  config = function()
    require("conform").setup({
      formatters_by_ft = {
        go = { "gofmt" },
        lua = { "stylua" },
        html = { "htmlbeautifier" },
        eruby = { "htmlbeautifier" },
        -- Conform will run the first available formatter
        javascript = { "prettierd", "prettier", stop_after_first = true },
        typescript = { "prettierd", "prettier", stop_after_first = true },
      },
    })
  end
}
