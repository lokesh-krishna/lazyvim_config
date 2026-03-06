-- Setup format on write for air and disable r-languageserver's formatting
vim.lsp.config["air"] = {
  on_attach = function(_, bufnr)
    vim.api.nvim_create_autocmd("BufWritePre", {
      buffer = bufnr,
      callback = function()
        vim.lsp.buf.format()
      end,
    })
  end,
}
vim.lsp.config["r_language_server"] = {
  on_attach = function(client, _)
    client.server_capabilities.documentFormattingProvider = false
    client.server_capabilities.documentRangeFormattingProvider = false
  end,
}
-- Setup R.nvim
return {
  "R-nvim/R.nvim",
  opts = {
    -- custom keymaps
    hook = {
      on_filetype = function()
        vim.keymap.set("i", "<M-m>", " |>")
      end,
    },
    -- start automatically when opening a R or Quarto file
    auto_start = "always",
    -- always open in a vertical split
    rconsole_width = 0,
    -- use visidata to view dataframes
    view_df = {
      open_app = "terminal:csvlens",
      n_lines = 0,
    },
    -- split path with here
    path_split_fun = "here",
    -- R output in terminal follows colorscheme
    Rout_follow_colorscheme = true,
  },
}
