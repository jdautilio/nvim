return {
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",

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
        }
      })

      vim.wo.foldmethod = 'expr'
      vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
    end
  },
  {
    "nvim-treesitter/nvim-treesitter-context",
  }
}
