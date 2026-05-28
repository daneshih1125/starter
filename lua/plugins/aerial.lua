return {
  {
    "stevearc/aerial.nvim",
    opts = {
      backends = { "treesitter" },

      filter_kind = {
        "Class",
        "Constructor",
        "Function",
        "Method",
      },

      focus_on_open = false,
    },
  },
}
