-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
local options = {
  -- LazyVim will use these options when formatting with the conform.nvim formatter
  format = {
    timeout_ms = 10000,
    async = false, -- not recommended to change
    quiet = false, -- not recommended to change
  },
  ---@type table<string, conform.FormatterUnit[]>
  formatters_by_ft = {
    lua = { "stylua" },
    fish = { "fish_indent" },
    sh = { "shfmt" },
    python = { "isort", "black", "ruff" },
  },
  -- The options you set here will be merged with the builtin formatters.
  -- You can also define any custom formatters here.
  ---@type table<string, conform.FormatterConfigOverride|fun(bufnr: integer): nil|conform.FormatterConfigOverride>
  formatters = {
    injected = { options = { ignore_errors = true } },
    -- # Example of using dprint only when a dprint.json file is present
    -- dprint = {
    --   condition = function(ctx)
    --     return vim.fs.find({ "dprint.json" }, { path = ctx.filename, upward = true })[1]
    --   end,
    -- },
    --
    -- # Example of using shfmt with extra args
    -- shfmt = {
    --   prepend_args = { "-i", "2", "-ci" },
    -- },
  },
}
vim.opt.spell = true
vim.opt.spelllang = { "en_us" }
require("conform").format(options)
