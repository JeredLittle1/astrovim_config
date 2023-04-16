--TODO: Test

return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
    event = "User AstroFile",
    cmd = { "TodoQuickFix" },
    keys = {
      { "<leader>T", "<cmd>TodoTelescope<cr>", desc = "Open TODOs in Telescope" }
    }
  },
  {
    "pwntester/octo.nvim",
    cmd = "Octo",
    config = function(_, opts)
      require("octo").setup(opts)
    end,
    keys = {
      { "<leader>gP", "<cmd>Octo pr list<cr>", desc = "List PRs" },
    }
  }
  -- {
  --   "kdheepak/lazygit.nvim",
  --   opts = {},
  --   event = "User AstroFile"
  -- }
}
