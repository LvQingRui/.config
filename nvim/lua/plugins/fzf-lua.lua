return {
  "ibhagwan/fzf-lua",
  keys = {
    { "<leader>:", false },
    { "<leader><space>", false },
    { "<leader>sa", false },
    { "<leader>sC", false },
    { "<leader>sm", false },
    { "<leader>sl", false },
    { "<leader>sR", false },
    { "<leader>sc", "<cmd>FzfLua commands<cr>", desc = "Commands" },
    { "<leader>sG", LazyVim.pick("live_grep"), desc = "Grep (Root Dir)" },
    { "<leader>sg", LazyVim.pick("live_grep", { root = false }), desc = "Grep (cwd)" },
  },
}
