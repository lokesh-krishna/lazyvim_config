return {
  {
    "stevearc/conform.nvim",
    formatters = {
      caddy = {
        command = "caddy",
        args = { "fmt", "-" },
        stdin = true,
      },
    },
    formatters_by_ft = {
      caddy = { "caddy" },
    },
  },
}
