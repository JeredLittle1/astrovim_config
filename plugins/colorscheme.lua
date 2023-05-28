return {
  'Mofiqul/vscode.nvim',
  lazy = false,    -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
  config = function()
    local c = require('vscode.colors').get_colors()
    require('vscode').setup({
      -- Alternatively set style in setup
      -- style = 'light'

      -- Enable transparent background
      transparent = true,

      -- Enable italic comment
      italic_comments = true,

      -- Disable nvim-tree background color
      -- Override colors (see ./lua/vscode/colors.lua)

      -- Override highlight groups (see ./lua/vscode/theme.lua)
    })
    require('vscode').load()
  end,

}
