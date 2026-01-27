return {
  "3rd/image.nvim",
  opts = {
    backend = "kitty", -- or "ueberzug" if not using Kitty
    integrations = {
      markdown = { enabled = true },
    },
    max_width = 100,
    max_height = 12,
    window_overlap_clear_enabled = true,
  },
}
