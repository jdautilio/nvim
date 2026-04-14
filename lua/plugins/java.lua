return {
  {
    'nvim-java/nvim-java',
    dependencies = { 'neovim/nvim-lspconfig' },
    config = function()
      local M = require('config/lsp')
      require('java').setup()
      M.setup_server('jdtls')
    end,
  }
}
