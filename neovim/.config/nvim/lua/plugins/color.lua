return {
  {
    "EdenEast/nightfox.nvim",
    name = "nightfox",
    config = function()
      vim.cmd.colorscheme("carbonfox")
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = { colorscheme = "carbonfox" },
  },
}
