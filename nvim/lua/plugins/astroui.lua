-- AstroUI provides the basis for configuring the AstroNvim User Interface
-- Configuration documentation can be found with `:h astroui`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  "AstroNvim/astroui",
  ---@type AstroUIOpts
  opts = {
    -- change colorscheme
    -- colorscheme = "astrodark",
    colorscheme = "catppuccin",
    -- AstroUI allows you to easily modify highlight groups easily for any and all colorschemes
    highlights = {
      init = function()
        local get_hlgroup = require("astroui").get_hlgroup
        -- get highlights from highlight groups
        local normal = get_hlgroup "Normal"
        local fg, bg = normal.fg, normal.bg
        local bg_alt = get_hlgroup("Visual").bg
        local green = get_hlgroup("String").fg
        local red = get_hlgroup("Error").fg
        -- return a table of highlights for telescope based on
        -- colors gotten from highlight groups
        return {
          lineNr = { fg = "#A6A6A6" },
          cursorLineNr = { fg = "#FFFFFF" },
          visual = { bg = "#FFFFD2", fg = "#008000" },
          -- normal = { bg = "none", ctermbg = "none" },
          -- neoTreeNormal = { bg = "none" },
          -- neoTreeNormalNc = { bg = "none", ctermbg = "none" },
          -- comment = { fg = "#A6A6A6" },
          TelescopeBorder = { fg = "#FFFFFF", bg = bg },
          TelescopeNormal = { bg = bg },
          TelescopePreviewBorder = { fg = "#FFFFFF", bg = bg },
          TelescopePreviewNormal = { bg = bg },
          TelescopePreviewTitle = { fg = "#000000", bg = green },
          TelescopePromptBorder = { fg = bg_alt, bg = bg_alt },
          TelescopePromptNormal = { fg = fg, bg = bg_alt },
          TelescopePromptPrefix = { fg = red, bg = bg_alt },
          TelescopePromptTitle = { fg = bg, bg = red },
          TelescopeResultsBorder = { fg = "#FFFFFF", bg = bg },
          TelescopeResultsNormal = { bg = bg },
          TelescopeResultsTitle = { fg = bg, bg = bg },
        }
      end,
      astrotheme = { -- a table of overrides/changes when applying the astrotheme theme
      },
    },
    -- Icons can be configured throughout the interface
    icons = {
      -- configure the loading of the lsp in the status line
      LSPLoading1 = "⠋",
      LSPLoading2 = "⠙",
      LSPLoading3 = "⠹",
      LSPLoading4 = "⠸",
      LSPLoading5 = "⠼",
      LSPLoading6 = "⠴",
      LSPLoading7 = "⠦",
      LSPLoading8 = "⠧",
      LSPLoading9 = "⠇",
      LSPLoading10 = "⠏",
    },
  },
}
