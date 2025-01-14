return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    window = {
      mappings = {
        ["<2-LeftMouse>"] = "none",
        ["t"] = "none",
        ["w"] = "none",
        ["a"] = "none",
        ["<"] = "none",
        [">"] = "none",
        ["<bs>"] = "none",
        ["#"] = "none",
        ["l"] = "open",
        ["<leader>P"] = "focus_preview",
        ["T"] = {
          "add",
          -- this command supports BASH style brace expansion ("x{a,b,c}" -> xa,xb,xc). see `:h neo-tree-file-actions` for details
          -- some commands may take optional config options, see `:h neo-tree-mappings` for details
          config = {
            show_path = "none", -- "none", "relative", "absolute"
          },
        },
        ["M"] = "add_directory",
        ["h"] = "show_file_details",
        ["i"] = "move_cursor_up",
      },
    },
  },
}
