local config = function()
  -- Set the colorscheme to Catppuccin
  vim.cmd.colorscheme("catppuccin")

  -- Set the background to dark
  vim.opt.background = "dark"
end

return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = config,
  }
}
