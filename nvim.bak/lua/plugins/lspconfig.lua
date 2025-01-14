return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    {
      "williamboman/mason-lspconfig.nvim",
      opt = { automatic_installation = true },
    },
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
  opts = {
    servers = {
      -- pyright = {
      --   vim.cmd([[
      --   let g:PyrightSetPythonPath="/Users/lvqingrui/anaconda3/bin/python"
      --   ]]),
      -- },
    },
    setup = {},
  },
}
