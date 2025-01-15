return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      {
        "williamboman/mason-lspconfig.nvim",
        opt = { automatic_installation = true },
      },
    },
    opts = {
      inlay_hints = { enabled = false },
      --@type lspconfig.options
      servers = {
        -- Python
        pyright = {
          vim.cmd([[
        let g:PyrightSetPythonPath="/Users/lvqingrui/anaconda3/bin/python"
        ]]),
        },
        -- CSS
        cssls = {},
        tailwindcss = {
          root_dir = function(...)
            return require("lspconfig.util").root_pattern(".git")(...)
          end,
        },
        -- html
        html = {},
      },
    },
  },

  {
    "neovim/nvim-lspconfig",
    opts = function()
      local keys = require("lazyvim.plugins.lsp.keymaps").get()
      keys[#keys + 1] = { "<leader>cA", false }
      keys[#keys + 1] = { "K", false }
      keys[#keys + 1] = { "gk", false }
      keys[#keys + 1] = { "<leader>ca", false }
      keys[#keys + 1] = { "<leader>cA", false }
      keys[#keys + 1] = { "<leader>cc", false }
      keys[#keys + 1] = { "<leader>cC", false }
      keys[#keys + 1] = { "<a-n>", false }
      keys[#keys + 1] = { "<a-p>", false }
      keys[#keys + 1] = { "gI", false }
      keys[#keys + 1] = { "gy", false }
      keys[#keys + 1] = { "gD", false }
    end,
  },
}
