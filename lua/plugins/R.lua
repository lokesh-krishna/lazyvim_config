return {
  "R-nvim/R.nvim",
  keys = {
    { "i", "<M-m", " |>" },
  },
  opts = {
    -- start automatically when opening a R or Quarto file
    auto_start = "always",
    -- always open in a vertical split
    rconsole_width = 0,
    -- use visidata to view dataframes
    view_df = {
      open_app = "terminal:vd",
      save_fun = "function(obj, ojb_name) {f <- paste0(obj_name, '.parquet'); arrow::write_parquet(obj, f) ; f}",
      n_lines = 0,
    },
    -- split path with here
    path_split_fun = "here",
    -- use radian instead of R as the interactive console
    R_app = "radian",
  },
}
