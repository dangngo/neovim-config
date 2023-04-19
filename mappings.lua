return {
  n = {
    -- CORE
    ["<leader>w"] = { "<cmd>confirm qall<cr>", desc = "Quit" },
    ["<leader>q"] = {
      function() require("astronvim.utils.buffer").close() end,
      desc = "Close buffer",
    },
    ["<leader>Q"] = {
      function() require("astronvim.utils.buffer").close(0, true) end,
      desc = "Force close buffer",
    },
    ["<leader><leader>"] = {
      function() require("telescope.builtin").find_files({ theme = "ivy" }) end,
      desc = "Find files",
    },
    ["<tab>"] = {
      function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Next buffer",
    },
    ["<S-tab>"] = {
      function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Previous buffer",
    },

    -- FIND STUFF
    ["<leader>ff"] = { "<cmd>Telescope current_buffer_fuzzy_find theme=ivy<cr>", desc = "Search Current Buffer" },
    ["<leader>fr"] = { "<cmd>Telescope oldfiles theme=ivy<cr>", desc = "Recent Files" },
    ["<leader>fy"] = { function() require("telescope.builtin").registers() end, desc = "Find registers" },
    ["<leader>/"] = { "<cmd>Telescope live_grep theme=ivy<cr>", desc = "Find Text" },
    --------------------
    -- TERMINAL
    ["<C-\\>"] = { "<cmd>ToggleTerm<cr>", desc = "Toggleterm" },
    --------------------
    -- Some stuffs
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },

    -- Disable idiot mappings
    ["|"] = false,
    ["\\"] = false,
  },
  i = {
    ["fd"] = { "<ESC>" },
  },
  t = {
    ["<C-\\>"] = { "<cmd>ToggleTerm<cr>", desc = "Toggleterm" },
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
