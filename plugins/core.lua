return {
  -- customize alpha options
  {
    "goolord/alpha-nvim",
    opts = function(_, opts)
      -- customize the dashboard header
      opts.section.header.val = {
        " █████  ███████ ████████ ██████   ██████",
        "██   ██ ██         ██    ██   ██ ██    ██",
        "███████ ███████    ██    ██████  ██    ██",
        "██   ██      ██    ██    ██   ██ ██    ██",
        "██   ██ ███████    ██    ██   ██  ██████",
        " ",
        "    ███    ██ ██    ██ ██ ███    ███",
        "    ████   ██ ██    ██ ██ ████  ████",
        "    ██ ██  ██ ██    ██ ██ ██ ████ ██",
        "    ██  ██ ██  ██  ██  ██ ██  ██  ██",
        "    ██   ████   ████   ██ ██      ██",
      }
      return opts
    end,
  },
  {
    "rcarriga/nvim-notify",
    opts = {
      render = "compact",
      stages = "fade",
      timeout = 500,
    },
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      default_component_configs = {
        buffers = {},
        git_status = {},
        diagnostics = {},
      },
      source_selector = {
        winbar = false,
      },
    },
  },
  {
    "nvim-telescope/telescope.nvim",
    opts = {
      defaults = {
        file_ignore_patterns = { ".git/", ".cache" },
        path_display = { "smart" },
      },
      pickers = {
        colorscheme = {
          enable_preview = true,
        },
        find_files = {
          theme = "ivy",
          hidden = true,
        },
        buffers = {
          theme = "ivy",
        },
        live_grep = {
          theme = "ivy",
        },
        current_buffer_fuzzy_find = {
          theme = "ivy",
        },
        oldfiles = {
          theme = "ivy",
        },
        registers = {
          theme = "cursor",
        },
      },
    },
  },
  {
    "akinsho/toggleterm.nvim",
    opts = {
      size = 10,
      shading_factor = 2,
      direction = "float",
      float_opts = {
        border = "curved",
        highlights = { border = "curved", background = "Normal" },
      },
    },
  },
}
