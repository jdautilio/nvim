return {
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    require('bufferline').setup({
      options = {
        diagnostics = 'nvim_lsp',
        separator_style = 'slant',
        always_show_bufferline = false,
        auto_toggle_bufferline = true
      }
    })
  end
}
