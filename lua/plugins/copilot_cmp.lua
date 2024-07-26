local M = {
  "zbirenbaum/copilot-cmp",
  config = function()
    require("copilot_cmp").setup({
      suggestion = { enabled = false },
      panel = { enabled = false },
    })
  end,
}

-- function M.config()
--   local status_ok, copilot = pcall(require, "copilot")
--   if not status_ok then
--     return
--   end
--
--   copilot.setup()
-- end

return M
