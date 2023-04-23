local sections = {
  f = { desc = "󰍉 Find" },
  s = { desc = "󰥩 Search" },
  p = { desc = "󰏖 Packages" },
  l = { desc = " LSP" },
  u = { desc = " UI" },
  b = { desc = "󰓩 Buffers" },
  bs = { desc = "󰒺 Sort Buffers" },
  d = { desc = " Debugger" },
  g = { desc = " Git" },
  S = { desc = "󱂬 Session" },
  t = { desc = " Terminal" },
}

return {
  -- NORMAL MODE
  n = {
    -- CORE
    ["<leader><leader>"] = {
      function() require("telescope.builtin").find_files({ theme = "ivy" }) end,
      desc = "Find files",
    },
    ["<leader>w"] = { "<cmd>confirm qall<cr>", desc = "Quit" },
    ["<leader>q"] = {
      function() require("astronvim.utils.buffer").close() end,
      desc = "Close buffer",
    },
    ["<leader>Q"] = {
      function() require("astronvim.utils.buffer").close(0, true) end,
      desc = "Force close buffer",
    },
    ["<leader><tab>"] = { "<cmd>Telescope buffers<cr>", desc = "Buffers list" },
    ["<tab>"] = {
      function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Next buffer",
    },
    ["<S-tab>"] = {
      function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Previous buffer",
    },
    -- FIND STUFF
    ["<leader>f"] = sections.f,
    ["<leader>ff"] = { "<cmd>Telescope current_buffer_fuzzy_find<cr>", desc = "Search Current Buffer" },
    ["<leader>fr"] = { "<cmd>Telescope oldfiles<cr>", desc = "Recent Files" },
    ["<leader>fy"] = { "<cmd>Telescope registers<cr>", desc = "Find registers" },
    ["<leader>/"] = { "<cmd>Telescope live_grep<cr>", desc = "Find Text" },
    ["<leader>fn"] = {
      function() require("telescope").extensions.notify.notify(require("telescope.themes").get_dropdown({})) end,
      desc = "Find notifications",
    },
    -- SEARCH
    ["<leader>s"] = sections.s,
    ["<leader>sp"] = { "<cmd>Telescope projects<cr>", desc = "Search Projects" },
    ["<leader>ss"] = { function() require("spectre").open() end, desc = "Search & Replace" },
    --------------------
    -- TERMINAL
    ["<C-\\>"] = { "<cmd>ToggleTerm<cr>", desc = "Toggleterm" },
    --------------------
    -- BUFFERS
    ["<leader>b"] = sections.b,
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- Disable idiot mappings
    ["|"] = false,
    ["\\"] = false,
    ["s"] = false,
  },
  -- INSERT MODE
  i = {
    ["fd"] = { "<ESC>" },
  },
  -- TERMINAL NODE
  t = {
    ["<C-\\>"] = { "<cmd>ToggleTerm<cr>", desc = "Toggleterm" },
  },
}
