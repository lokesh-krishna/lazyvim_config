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
