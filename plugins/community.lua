return {
  "AstroNvim/astrocommunity",
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- language packs
  { import = "astrocommunity.pack.bash" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.go" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.rust" },

  -- motions
  { import = "astrocommunity.motion.mini-ai" },
  { import = "astrocommunity.motion.mini-move" },

  -- projects
  { import = "astrocommunity.project.project-nvim" },
  { import = "astrocommunity.project.nvim-spectre" },

  -- themes
  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.colorscheme.nightfox" },
}
