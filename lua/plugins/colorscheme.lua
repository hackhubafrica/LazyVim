return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000, -- Load colorscheme before other plugins
    config = function()
      vim.cmd.colorscheme("catppuccin-mocha") -- Set the variant (e.g., latte, frappe, macchiato, mocha)
    end,
  },
  -- Tell LazyVim which colorscheme to use globally
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
