return {
  {
    "tiagovla/tokyodark.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
    config = function(_, opts)
      require("tokyodark").setup(opts)
    end,
  },
  { "rebelot/kanagawa.nvim" },
  { "ayu-theme/ayu-vim" },
  { "nuvic/flexoki-nvim", name = "flexoki" },
  { "wtfox/luna.nvim", lazy = false, priority = 1000, opts = {} },

  { "ellisonleao/gruvbox.nvim", priority = 1000, config = true, opts = ... },
  {
    "yorik1984/newpaper.nvim",
    priority = 1000,
    config = function()
      require("newpaper").setup({ style = "dark" })
      vim.cmd("colorscheme newpaper")
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = { colorscheme = "gruvbox" },
  },
}
