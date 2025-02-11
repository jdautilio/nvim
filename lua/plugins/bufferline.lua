return {
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function ()
      vim.opt.termguicolors = true
      require("bufferline").setup({
        options = {
          middle_mouse_command = "bdelete! %d",
          auto_toggle_bufferline = true,
          diagnostics = "nvim_lsp",
        }
      })
    end
  }
}
