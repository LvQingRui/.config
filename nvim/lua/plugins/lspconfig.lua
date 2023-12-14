return {
  "neovim/nvim-lspconfig",
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      {
        "williamboman/mason-lspconfig.nvim",
        opt = { automatic_installation = false },
      },
      init = function()
        local keys = require("lazyvim.plugins.lsp.keymaps").get()
        -- change a keymap
        --keys[#keys + 1] = { "K", "<cmd>echo 'hello'<cr>" }
        -- disable a keymap
        keys[#keys + 1] = { "K", false }
        -- add a keymap
        --keys[#keys + 1] = { "H", "<cmd>echo 'hello'<cr>" }
      end,
    },
  },
}
