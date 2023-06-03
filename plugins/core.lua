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
      filesystem = {
        filtered_items = {
          visible = true, -- when true, they will just be displayed differently than normal items
          hide_dotfiles = true,
          hide_gitignored = true,
          hide_by_name = {
            "node_modules",
          },
          never_show = { -- remains hidden even if visible is toggled to true, this overrides always_show
            ".DS_Store",
            ".git",
          },
        },
      },
      window = {
        mappings = {
          ["u"] = "navigate_up",
        },
      },
    },
  },
  {
    "nvim-telescope/telescope.nvim",
    opts = {
      defaults = {
        file_ignore_patterns = { ".git/", ".cache" },
        path_display = { "smart" },
        mappings = {
          n = {
            ["<c-q>"] = function(bufnr)
              require("telescope.actions").smart_send_to_qflist(bufnr)
              require("telescope.actions").open_qflist(bufnr)
            end,
          },
        },
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
  {
    "rebelot/heirline.nvim",
    opts = function(_, opts)
      opts.winbar = nil
      return opts
    end,
  },
}
