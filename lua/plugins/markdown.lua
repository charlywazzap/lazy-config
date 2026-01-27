local M = {
  "MeanderingProgrammer/markdown.nvim",
  opts = {
    file_types = { "markdown", "norg", "rmd", "org" },
    code = {
      sign = false,
      width = "block",
      right_pad = 1,
    },
    heading = {
      sign = false,
      icons = {},
    },
  },
  ft = { "markdown", "norg", "rmd", "org" },
  config = function(_, opts)
    require("render-markdown").setup(opts)
    Snacks.toggle("<leader>um", {
      name = "Render Markdown",
      get = function()
        return require("render-markdown.state").enabled
      end,
      set = function(enabled)
        local m = require("render-markdown")
        if enabled then
          m.enable()
        else
          m.disable()
        end
      end,
    })
  end,
}

local N = {
  "MeanderingProgrammer/render-markdown.nvim",
  -- dependencies = { "nvim-treesitter/nvim-treesitter", "echasnovski/mini.nvim" }, -- if you use the mini.nvim suite
  -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' }, -- if you use standalone mini plugins
  dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" }, -- if you prefer nvim-web-devicons
  ---@module 'render-markdown'
  ---@type render.md.UserConfig
  ft = function(_, ft)
    vim.list_extend(ft, { "Avante" })
  end,

  opts = function(_, opts)
    opts.file_types = vim.list_extend(opts.file_types or {}, { "Avante" })
    opts.completions = { blink = { enabled = true } }
    opts.render_modes = { "n", "c", "t" }
  end,
}

return N
