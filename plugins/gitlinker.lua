return {
  "ruifm/gitlinker.nvim",
  lazy = false,
  config = function()
    require "gitlinker".setup({
      callbacks = {
        ["git.MYCOMPANY.com"] = require "gitlinker.hosts".get_github_type_url
      }
    })
  end,
}
