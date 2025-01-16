return {
  -- markdown preview
  {
    "iamcco/markdown-preview.nvim",
    keys = {
      {
        "<leader>mp",
        ft = "markdown",
        "<cmd>MarkdownPreviewToggle<cr>",
        desc = "Markdown Preview",
      },
      {
        "<leader>cp",
        false,
      },
    },
  },
  -- markdown table mode
  {
    "Kicamon/markdown-table-mode.nvim",
    config = function()
      require("markdown-table-mode").setup()
    end,
  },

  {
    "ChuufMaster/markdown-toc",
    opts = {

      -- The heading level to match (i.e the number of "#"s to match to) max 6
      heading_level_to_match = -1,

      -- Set to True display a dropdown to allow you to select the heading level
      ask_for_heading_level = false,

      -- TOC default string
      -- WARN
      toc_format = "%s- [%s](<%s#%s>)",
    },
  },
}
