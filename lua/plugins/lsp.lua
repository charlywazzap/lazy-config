local util = require("lspconfig/util")

local merge_tb = vim.tbl_deep_extend

return {
  -- add texlab custom options to lspconfig
  "neovim/nvim-lspconfig",
  ---@class PluginLspOpts
  opts = function(_, default_opts)
    -- merge default + user opts
    local user = {}

    user.opts = {
      servers = {
        ["pylsp"] = {
          settings = {
            pylsp = {
              -- configurationSources = {},
              plugins = {
                -- ruff = {
                --   enabled = true,
                --   lineLength = 88, -- Line length to pass to ruff checking and formatting
                -- },

                mccabe = { enabled = false },
                flake8 = { enabled = false },

                -- formatter options
                black = { enabled = false },
                autopep8 = { enabled = false },
                yapf = { enabled = false },
                -- linter options
                pylint = { enabled = true, executable = "ruff" },
                pyflakes = { enabled = false },
                pycodestyle = { enabled = false },
                -- type checker
                pylsp_mypy = { enabled = false },
                -- auto-completion options
                jedi_completion = { enabled = true, fuzzy = true, include_params = true },
                -- import sorting
                pyls_isort = { enabled = false, executable = "ruff" },
              },
            },
          },

          flags = {
            debounce_text_changes = 200,
          },
        },
        -- pyright lsp opts
        -- ["pyright"] = {
        --
        --   root_dir = util.root_pattern(".git", "Pipfile"),
        --   settings = {
        --     pyright = {
        --       disableLanguageServices = false,
        --       disableOrganizeImports = false,
        --     },
        --     python = {
        --       --pythonPath = py.get_pipenv_dir() .. "/bin/python",
        --       analysis = {
        --         autoImportCompletions = true,
        --         autoSearchPaths = true,
        --         -- diagnosticMode = "openFilesOnly", -- openFilesOnly, workspace
        --         typeCheckingMode = "basic", -- off, basic, strict
        --         useLibraryCodeForTypes = true,
        --       },
        --     },
        --   },
        -- },

        -- ruff_lsp
        ["ruff_lsp"] = {
          root_dir = util.root_pattern(".git", "Pipfile"),
          filetypes = { "python" },
          settings = {},
        },
      },
    }

    local opts = merge_tb("force", default_opts, user.opts or {})
    return opts
  end,

  keys = {},

  workspace = {
    didChangeWatchedFiles = {
      dynamicRegistration = false,
    },
  },
}
