local status_ok, indent_blankline = pcall(require, "indent_blankline")
if not status_ok then
	return
end

vim.opt.list = true

indent_blankline.setup({
  char = "│",
  use_treesitter = true,
  -- show_end_of_line = true,
  space_char_blankline = " ",
  show_current_context = true,
  show_current_context_start = false,
  show_trailing_blankline_indent = false,
  show_first_indent_level = false,
  disable_with_nolist = false,
  buftype_exclude = { "terminal", "nofile" },
  filetype_exclude = {
    "help",
    "dashboard",
    "packer",
    "neogitstatus",
    "NvimTree",
    "Trouble",
  },
  context_patterns = {
    "class",
    "return",
    "function",
    "method",
    "^if",
    "^while",
    "jsx_element",
    "^for",
    "^object",
    "^table",
    "block",
    "arguments",
    "if_statement",
    "else_clause",
    "jsx_element",
    "jsx_self_closing_element",
    "try_statement",
    "catch_clause",
    "import_statement",
    "operation_type",
  },
})

