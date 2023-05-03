return {
  "f-person/git-blame.nvim",
  event = "BufRead",
  init = function()
    vim.g.gitblame_enabled = 0
    vim.g.gitblame_message_template = "<author> • <summary> • <date>"
    vim.g.gitblame_highlight_group = "Comment"
    vim.g.gitblame_ignored_filetypes = { "NvimTree", "toggleterm" }
    vim.g.gitblame_set_extmark_options = {
      virt_text_pos = "right_align",
    }
  end,
}
