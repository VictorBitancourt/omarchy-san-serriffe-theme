return {
  {
    "bjarneo/aether.nvim",
    branch = "v3",
    name = "aether",
    priority = 1000,
    opts = {
      transparent = false,
      dim_inactive = false,
      colors = {
        bg = "#EFE3CD",
        bg_dark = "#E3D4BA",
        bg_dark1 = "#D7C6A8",
        bg_highlight = "#DCC9A5",

        fg = "#2B2318",
        fg_dark = "#544738",
        fg_gutter = "#705F4C",
        comment = "#705F4C",
        dark3 = "#705F4C",
        dark5 = "#544738",
        terminal_black = "#705F4C",

        red = "#AF3029",
        red1 = "#C44536",
        orange = "#BC5215",
        yellow = "#AD8301",
        green = "#4A7A40",
        green1 = "#5C9A50",
        green2 = "#4A7A40",
        cyan = "#24837B",
        teal = "#24837B",
        blue = "#205EA6",
        blue0 = "#205EA6",
        blue1 = "#205EA6",
        blue2 = "#3A7BD5",
        blue5 = "#3A7BD5",
        blue6 = "#3A7BD5",
        blue7 = "#205EA6",
        purple = "#7B3FA0",
        magenta = "#7B3FA0",
        magenta2 = "#9855C0",
        special_char = "#6B4423",
      },
      on_colors = function()
        vim.o.background = "light"
      end,
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "aether",
    },
  },
}
