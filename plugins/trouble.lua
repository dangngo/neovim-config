return {
  "folke/trouble.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    use_diagnostic_signs = true,
    action_keys = {
      close = { "q", "<esc>" },
      cancel = "<c-c>",
    },
  },
}
