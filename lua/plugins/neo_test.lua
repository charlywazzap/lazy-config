return {
  "nvim-neotest/neotest",
  -- optional = true,

  dependencies = {
    "nvim-neotest/neotest-python",
  },
  opts = {
    adapters = {
      ["neotest-python"] = {
        -- Here you can specify the settings for the adapter, i.e.
        args = { "--mysql-image=mysql/mysql-server", "--clear-docker-db", "--reuse-docker" },
        runner = "pytest",
        -- python = ".venv/bin/python",
      },
    },
  },
}
