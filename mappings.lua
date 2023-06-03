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
  -- S = { desc = "󱂬 Session" },
  t = { desc = "󱂬 Tabs" },
  T = { desc = " Terminal" },
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

    -- GIT
    ["<leader>g"] = sections.g,
    ["<leader>gb"] = { "<cmd>:GitBlameToggle<cr>", desc = "Blame" },
    ["<leader>gl"] = { "<cmd>Telescope git_bcommits theme=ivy<cr>", desc = "Current buffer revisions" },

    -- TABS
    ["<leader>t"] = sections.t,
    ["<leader>ta"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>tc"] = { "<cmd>tabclose<cr>", desc = "Close tab" },
    ["<leader>tn"] = { "<cmd>tabn<cr>", desc = "Next tab" },
    ["<leader>tp"] = { "<cmd>tabp<cr>", desc = "Previous tab" },
    ["<leader>tf"] = false,
    ["<leader>th"] = false,
    ["<leader>tl"] = false,
    ["<leader>tv"] = false,

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
    ["<C-j>"] = false,
    ["<C-k>"] = false,
    ["<C-l>"] = false,
    ["<C-h>"] = false,
  },
}
