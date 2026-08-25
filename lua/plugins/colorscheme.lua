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
  { "wtfox/luna.nvim", lazy = true, priority = 1000, opts = {} },

  { "ellisonleao/gruvbox.nvim", priority = 1000, config = true, opts = ... },
  {
    "yorik1984/newpaper.nvim",
    lazy = true,
    opts = { style = "dark" },
  },
  {
    "LazyVim/LazyVim",
    opts = { colorscheme = "luna" },
  },
}
