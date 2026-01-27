return {
  "Kolkhis/streamer-mode.nvim",
  opts = {
    -- Streamer Mode will apply to any path in here. Defaults to all paths.
    -- This means that Streamer Mode will hide any of the `keywords` below
    -- when inside any of these directories or filetypes.
    paths = { "/temp" },
    -- Exclude all the default keywords and only use the ones you specify
    exclude_all_default_keywords = false, -- | true

    -- Only exclude the given keywords from the default values
    exclude_default_keywords = {},

    -- Exclude the default path (which is '*', all paths) and only use the ones you specify
    exclude_default_paths = false,

    -- Same as `exclude_default_paths`
    exclude_all_default_paths = false,

    -- Any text appearing after one of the keywords specified here will be concealed.
    -- They are case-insensitive.
    -- E.g., passing in 'API_KEY' will conceal both 'API_KEY' and 'api_key'.
    keywords = {
      "CRYPT_SECRET_KEY",
      "JWT_SECRET_KEY",
      "CERBY_CLIENT_SECRET",
      "STATE_SECRET_KEY",
      "GOOGLE_CLIENT_SECRET",
      "PROXY_GOOGLE_ADS_DEVELOPER_TOKEN",
      "DATABASE_PASSWORD",
      "PASSWORD",
      "TWILIO_AUTH_TOKEN",
      "SECRET_KEY",
      "STATE_SECRET_KEY",
      "GOOGLE_CLIENT_SECRET",
      "SEGMENTIO_WRITE_KEY",
      "OTEL_PASSWORD",
      "api_key",
      "token",
      "client_secret",
      "powershell",
      "$env:",
      "export",
      "alias",
      "name",
      "userpassword",
      "username",
      "user.name",
      "user.password",
      "user.email",
      "email",
      "signingkey",
      "IdentityFile",
      "server",
      "host",
      "port",
      "credential.helper",
    },

    level = "secure", -- | 'edit' | 'soft'
    default_state = "off", -- Whether or not streamer mode turns on when nvim is launched.

    conceal_char = "*", -- Default. This is what will be displayed instead
    -- of your secrets.
  },
  config = function(_, opts)
    require("streamer-mode").setup(opts)
  end,
}
