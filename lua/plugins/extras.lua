return {
  { import = "lazyvim.plugins.extras.dap.core" },

  { import = "lazyvim.plugins.extras.lang.typescript" },
  { import = "lazyvim.plugins.extras.formatting.prettier" },
  { import = "lazyvim.plugins.extras.lang.go" },
  { import = "lazyvim.plugins.extras.lang.rust" },
  { import = "lazyvim.plugins.extras.lang.clangd" },
  { import = "lazyvim.plugins.extras.lang.java" },

  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        html = {},
        cssls = {},
      },
    },
  },

  {
    "stevearc/conform.nvim",
    opts = function(_, opts)
      opts.formatters = opts.formatters or {}
      opts.formatters.prettier = vim.tbl_deep_extend("force", opts.formatters.prettier or {}, {
        prepend_args = { "--tab-width", "4" },
      })
    end,
  },
    { -- This plugin
        "Zeioth/makeit.nvim",
        cmd = {"MakeitOpen", "MakeitToggleResults", "MakeitRedo"},
        dependencies = { "stevearc/overseer.nvim" },
        opts = {},
        },
    { -- The task runner we use
        "stevearc/overseer.nvim",
        commit = "400e762648b70397d0d315e5acaf0ff3597f2d8b",
        cmd = {"MakeitOpen", "MakeitToggleResults", "MakeitRedo"},
        opts = {
            task_list = {
                direction = "bottom",
                min_height = 25,
                max_height = 25,
                default_detail = 1
            },
    },
},






}
