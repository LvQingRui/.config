return {
  "akinsho/bufferline.nvim",
  keys = {
    { "<leader>bp", false },
    { "<leader>bP", false },
    { "<leader>bo", false },
    { "<leader>br", false },
    { "<leader>bl", false },
    { "<S-h>", false },
    { "<S-l>", false },
    { "[b", false },
    { "]b", false },
    -- new keys to set
    { "<leader>bj", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev buffer" },
    { "<leader>bl", "<cmd>BufferLineCycleNext<cr>", desc = "Next buffer" },
    { "<leader>bp", "<Cmd>BufferLineTogglePin<CR>", desc = "Toggle pin" },
    -- { "Bdn", "<Cmd>BufferLineGroupClose ungrouped<CR>", desc = "Delete non-pinned buffers" },
    { "<leader>bo", "<Cmd>BufferLineCloseOthers<CR>", desc = "Delete other buffers" },
  },
}
