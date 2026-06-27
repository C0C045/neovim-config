return {
  "craftzdog/solarized-osaka.nvim",
  lazy = true,
  priority = 1000,
  opts = function()
    return {
      transparent = true,
      styles = {
        -- Hace transparentes las ventanas laterales (NvimTree, Neo-tree, qf, help, etc.)
        sidebars = "transparent",
        -- Hace transparentes las ventanas flotantes (Telescope, LSP hover, diagnósticos, etc.)
        floats = "transparent",
      },
      on_highlights = function(hl, c)
        -- Quita el fondo de los grupos flotantes que el theme no limpia por defecto
        hl.NormalFloat = { bg = "NONE" }
        hl.FloatBorder = { bg = "NONE" }
        hl.FloatTitle = { bg = "NONE" }
        hl.Pmenu = { bg = "NONE" }
        hl.TelescopeNormal = { bg = "NONE" }
        hl.TelescopeBorder = { bg = "NONE" }
        hl.NormalNC = { bg = "NONE" }

        -- Línea del cursor: mismo color de resaltado del tema pero más sutil.
        -- Neovim no soporta opacidad real en CursorLine, así que mezclamos el
        -- color de resaltado con el fondo (alpha 0.35 = 35% del color, resto fondo).
        local util = require("solarized-osaka.util")
        hl.CursorLine = { bg = util.blend(c.bg_highlight, c.bg, 0.35) }
        hl.CursorLineNr = { fg = c.orange, bold = true }
      end,
    }
  end,
}
