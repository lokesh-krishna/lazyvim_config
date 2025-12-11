return {
  {
    "stevearc/conform.nvim",
    formatters = {
      rprettify = {
        inherit = false,
        stdin = false,
        command = "rprettify",
        args = { "$FILENAME" },
      },
    },
    formatters_by_ft = {
      r = { "rprettify" },
      quarto = { "rprettify" },
    },
  },
}
