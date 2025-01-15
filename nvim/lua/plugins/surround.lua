return {
  "echasnovski/mini.surround",
  opts = {
    -- mappings. Use `''` (empty string) to disable one.
    mappings = {
      add = "gsa",
      delete = "gsd", -- Delete surrounding
      find = "gsf", -- Find surrounding (to the right)
      find_left = "gsF", -- Find surrounding (to the left)
      highlight = "", -- Highlight surrounding
      replace = "gsr", -- Replace surrounding
      update_n_lines = "", -- Update `n_lines`
      suffix_last = "j", -- Suffix to search with "prev" method
      suffix_next = "l", -- Suffix to search with "next" method
    },
  },
}
