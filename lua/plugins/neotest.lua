return {
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-neotest/nvim-nio",
      "nvim-lua/plenary.nvim",
      "antoinemadec/FixCursorHold.nvim",
      "nvim-treesitter/nvim-treesitter",
      "nvim-neotest/neotest-python",
    },
    config = function()
      require("neotest").setup({
        adapters = {
          require("neotest-python")({
            dap = { runner = "pytest" },
          }),
        },
      })
      local neotest = require("neotest")
      vim.keymap.set("n", "<leader>tr", function()
        neotest.run.run()
      end, { desc = "Run Nearest Test" })
      vim.keymap.set("n", "<leader>tf", function()
        neotest.run.run(vim.fn.expand("%"))
      end, { desc = "Run File" })
      vim.keymap.set("n", "<leader>ts", function()
        neotest.summary.toggle()
      end, { desc = "Toggle Summary Panel" })
      vim.keymap.set("n", "<leader>to", function()
        neotest.output_panel.toggle()
      end, { desc = "Toggle Output Panel" })
    end,
  },
}
