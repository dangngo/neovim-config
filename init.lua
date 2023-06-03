return {
  -- Configure AstroNvim updates
  updater = {
    remote = "origin",     -- remote to use
    channel = "stable",    -- "stable" or "nightly"
    version = "latest",    -- "latest", tag name, or regex search like "v1.*" to only do updates before v2 (STABLE ONLY)
    branch = "nightly",    -- branch name (NIGHTLY ONLY)
    commit = nil,          -- commit hash (NIGHTLY ONLY)
    pin_plugins = nil,     -- nil, true, false (nil will pin plugins on stable only)
    skip_prompts = false,  -- skip prompts about breaking changes
    show_changelog = true, -- show the changelog after performing an update
    auto_quit = false,     -- automatically quit the current session after a successful update
  },
  -- colorscheme = "catppuccin",
  -- colorscheme = "nightfox",
  colorscheme = "kanagawa",
  diagnostics = {
    virtual_text = false,
    virtual_lines = true,
    underline = true,
  },
  lsp = {
    formatting = {
      format_on_save = {
        enabled = true,     -- enable or disable format on save globally
        allow_filetypes = { -- enable format on save for specified filetypes only
          "go",
          "terraform",
        },
        ignore_filetypes = {}, -- disable format on save for specified filetypes
      },
      disabled = {},           -- disable formatting capabilities for the listed language servers
      timeout_ms = 1000,       -- default format timeout
      -- filter = function(client) -- fully override the default formatting function
      --   return true
      -- end
    },
    -- enable servers that you already have installed without mason
    servers = {},
  },
  lazy = {
    defaults = { lazy = true },
    performance = {
      rtp = {
        -- customize default disabled vim plugins
        disabled_plugins = { "tohtml", "gzip", "matchit", "zipPlugin", "netrwPlugin", "tarPlugin" },
      },
    },
  },
  -- This function is run last and is a good place to configuring
  -- augroups/autocommands and custom filetypes also this just pure lua so
  -- anything that doesn't fit in the normal config locations above can go here
  polish = function()
    -- don't auto commenting new lines
    vim.api.nvim_create_autocmd(
      { "BufEnter" },
      { pattern = { "*" }, callback = function() vim.opt.formatoptions = vim.opt.formatoptions - { "c", "r", "o" } end }
    )

    vim.api.nvim_create_autocmd({ "TermOpen" }, {
      pattern = { "term://*" },
      callback = function()
        local opts = { noremap = true }
        vim.api.nvim_buf_set_keymap(0, "t", "fd", [[<C-\><C-n>]], opts)
      end,
    })

    -- Set up custom filetypes
    -- vim.filetype.add {
    --   extension = {
    --     foo = "fooscript",
    --   },
    --   filename = {
    --     ["Foofile"] = "fooscript",
    --   },
    --   pattern = {
    --     ["~/%.config/foo/.*"] = "fooscript",
    --   },
    -- }
  end,
}
