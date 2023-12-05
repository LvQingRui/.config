return {
  "rcarriga/nvim-dap-ui",
  keys = {
    {
      "<leader>du",
      function()
        require("dapui").toggle({})
      end,
      desc = "Dap UI",
    },
    --{ "<leader>de", function() require("dapui").eval() end, desc = "Eval", mode = {"n", "v"} },
    { "<leader>de", false },
  },
}
