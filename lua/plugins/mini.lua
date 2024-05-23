return {
  {
    "echasnovski/mini.nvim",
    config = function()
      require("mini.ai").setup({})
      require("mini.operators").setup({})
      require("mini.surround").setup({})
      require("mini.comment").setup({})
    end
  },
}
