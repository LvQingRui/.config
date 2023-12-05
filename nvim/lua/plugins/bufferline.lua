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
    { "Bj", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev buffer" },
    { "Bl", "<cmd>BufferLineCycleNext<cr>", desc = "Next buffer" },
    { "Bp", "<Cmd>BufferLineTogglePin<CR>", desc = "Toggle pin" },
    { "Bdn", "<Cmd>BufferLineGroupClose ungrouped<CR>", desc = "Delete non-pinned buffers" },
    { "Bo", "<Cmd>BufferLineCloseOthers<CR>", desc = "Delete other buffers" },
  },
}
