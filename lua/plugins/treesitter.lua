return {
  {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPre", "BufNewFile" },
    build = ":TSUpdate",
    dependencies = {
      "windwp/nvim-ts-autotag",
    },

    config = function()
      require('nvim-treesitter').setup({
        ensure_installed = { 'lua', 'vim', 'vimdoc', 'markdown', 'ruby' },
        auto_install = true,

        highlight = {
          enable = true,
        },

        indent = {
          enable = true,
          disable = { 'ruby' },
        },

        autotag = {
          enable = true,
        },
      })

      vim.wo.foldmethod = 'expr'
      vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
    end
  },
  {
    "nvim-treesitter/nvim-treesitter-context",
  }
}
