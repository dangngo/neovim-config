return {
  "AstroNvim/astrocommunity",
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- language packs
  { import = "astrocommunity.pack.bash" },
  { import = "astrocommunity.pack.go" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.typescript" },

  -- buffers & tabs
  { import = "astrocommunity.bars-and-lines.scope-nvim" },

  -- editor
  { import = "astrocommunity.editing-support.nvim-ts-rainbow2" },
  { import = "astrocommunity.debugging.nvim-bqf" },

  -- motions
  { import = "astrocommunity.motion.mini-ai" },
  { import = "astrocommunity.motion.mini-move" },

  -- projects
  { import = "astrocommunity.project.project-nvim" },

  -- themes
  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.colorscheme.nightfox-nvim" },
  { import = "astrocommunity.colorscheme.kanagawa-nvim" },
}
