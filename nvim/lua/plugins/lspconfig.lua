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
      pyright = {},
      ruff_lsp = {
        keys = {
          {
            "<leader>co",
            function()
              vim.lsp.buf.code_action({
                apply = true,
                context = {
                  only = { "source.organizeImports" },
                  diagnostics = {},
                },
              })
            end,
            desc = "Organize Imports",
          },
        },
      },
    },
    setup = {
      ruff_lsp = function()
        require("lazyvim.util").lsp.on_attach(function(client, _)
          if client.name == "ruff_lsp" then
            -- Disable hover in favor of Pyright
            client.server_capabilities.hoverProvider = false
          end
        end)
      end,
    },
  },
}
