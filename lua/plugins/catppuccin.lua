return {
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        transparent_background = true,
        custom_highlights = function(colors)
          return {
            Comment = { fg = "#ffffe0" }, -- Very light yellow for comments
            LineNr = { fg = "#ffffff" },  -- White for line numbers
            CursorLineNr = { fg = "#ffffff" }, -- White for current line number
          }
        end
      })
      vim.cmd.colorscheme "catppuccin-frappe"
    end
  }
}
