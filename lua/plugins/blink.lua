return {
  {
    "saghen/blink.cmp",
    dependencies = {
      "jmbuhr/cmp-pandoc-references",
      "mikavilpas/blink-ripgrep.nvim",
    },
    opts = {
      sources = {
        default = { "lsp", "path", "snippets", "buffer", "ripgrep", "references" },
        providers = {
          lsp = { fallbacks = {} },
          ripgrep = {
            module = "blink-ripgrep",
            name = "ripgrep",
          },
          references = {
            name = "pandoc_references",
            module = "cmp-pandoc-references.blink",
          },
        },
      },
      keymap = {
        preset = "default",
      },
    },
  },
}
