return {
  {
    "nvim-treesitter/nvim-treesitter",

    branch = 'master',
    lazy = false,
    build = ":TSUpdate",

    config = function()
      require('nvim-treesitter.configs').setup({
        ensure_installed = { 'lua', 'vim', 'vimdoc', 'markdown', 'ruby' },
        auto_install = true,

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
