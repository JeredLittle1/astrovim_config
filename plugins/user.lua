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
      { "<leader>Oi",    "",                                           desc = " Issues" },
      { "<leader>Oic",   "<cmd>Octo issue close<cr>",                  desc = "Close current issue" },
      { "<leader>Oir",   "<cmd>Octo issue reopen<cr>",                 desc = "Reopen current issue" },
      { "<leader>Oin",   "<cmd>Octo issue create<cr>",                 desc = "Create new issue" },
      { "<leader>Oie",   "<cmd>Octo issue edit<cr>",                   desc = "Edit issue" },
      { "<leader>Oil",   "<cmd>Octo issue list<cr>",                   desc = "List issues" },
      { "<leader>Ois",   "<cmd>Octo issue search<cr>",                 desc = "Search issues" },
      { "<leader>OiR",   "<cmd>Octo issue reload<cr>",                 desc = "Reload issue" },
      { "<leader>Oib",   "<cmd>Octo issue browser<cr>",                desc = "Open issue in browser" },
      { "<leader>Oiu",   "<cmd>Octo issue url<cr>",                    desc = "Copy issue URL" },
      { "<leader>Op",    "",                                           desc = " Pull Requests" },
      { "<leader>Opl",   "<cmd>Octo pr list<cr>",                      desc = "List PRs" },
      { "<leader>Ops",   "<cmd>Octo pr search<cr>",                    desc = "Search PRs" },
      { "<leader>Ope",   "<cmd>Octo pr edit<cr>",                      desc = "Edit PR" },
      { "<leader>OpR",   "<cmd>Octo pr reopen<cr>",                    desc = "Reopen current PR" },
      { "<leader>Opc",   "<cmd>Octo pr create<cr>",                    desc = "Create new PR" },
      { "<leader>OpC",   "<cmd>Octo pr close<cr>",                     desc = "Close current PR" },
      { "<leader>Opo",   "<cmd>Octo pr checkout<cr>",                  desc = "Checkout PR" },
      { "<leader>Opm",   "<cmd>Octo pr commits<cr>",                   desc = "List PR commits" },
      { "<leader>Oph",   "<cmd>Octo pr changes<cr>",                   desc = "Show PR changes" },
      { "<leader>Opd",   "<cmd>Octo pr diff<cr>",                      desc = "Show PR diff" },
      { "<leader>OP",    "",                                           desc = " PR Merge Methods" },
      { "<leader>OPc",   "<cmd>Octo pr merge commit<cr>",              desc = "Merge PR: commit" },
      { "<leader>OPr",   "<cmd>Octo pr merge rebase<cr>",              desc = "Merge PR: rebase" },
      { "<leader>OPs",   "<cmd>Octo pr merge squash<cr>",              desc = "Merge PR: squash" },
      { "<leader>OppR",  "",                                           desc = " PR Ready & Reload" },
      { "<leader>OppRr", "<cmd>Octo pr ready<cr>",                     desc = "Mark PR ready for review" },
      { "<leader>OppRl", "<cmd>Octo pr reload<cr>",                    desc = "Reload PR" },
      { "<leader>Oppb",  "<cmd>Octo pr browser<cr>",                   desc = "Open PR in browser" },
      { "<leader>Opu",   "<cmd>Octo pr url<cr>",                       desc = "Copy PR URL" },
      { "<leader>Or",    "",                                           desc = "Repositories" },
      { "<leader>Orl",   "<cmd>Octo repo list<cr>",                    desc = "List repos" },
      { "<leader>Orf",   "<cmd>Octo repo fork<cr>",                    desc = "Fork repo" },
      { "<leader>Orb",   "<cmd>Octo repo browser<cr>",                 desc = "Open repo in browser" },
      { "<leader>Oru",   "<cmd>Octo repo url<cr>",                     desc = "Copy repo URL" },
      { "<leader>Orv",   "<cmd>Octo repo view<cr>",                    desc = "Open repo by path" },
      { "<leader>Og",    "",                                           desc = "Gists" },
      { "<leader>Ogl",   "<cmd>Octo gist list [repo] [key=value]<cr>", desc = "List user gists" },
      { "<leader>Oc",    "",                                           desc = " Comments" },
      { "<leader>Oca",   "<cmd>Octo comment add<cr>",                  desc = "Add comment" },
      { "<leader>Ocd",   "<cmd>Octo comment delete<cr>",               desc = "Delete comment" },
      { "<leader>Ot",    "",                                           desc = "Review Threads" },
      { "<leader>Otr",   "<cmd>Octo thread resolve<cr>",               desc = "Resolve thread" },
      { "<leader>Otu",   "<cmd>Octo thread unresolve<cr>",             desc = "Unresolve thread" },
      { "<leader>Ol",    "",                                           desc = " Labels" },
      { "<leader>Ola",   "<cmd>Octo label add [label]<cr>",            desc = "Add label" },
      { "<leader>Olrm",  "<cmd>Octo label remove [label]<cr>",         desc = "Remove label" },
      { "<leader>Olcr",  "<cmd>Octo label create [label]<cr>",         desc = "Create label" },
      { "<leader>Oa",    "",                                           desc = " Assignees" },
      { "<leader>Oaa",   "<cmd>Octo assignee add [login]<cr>",         desc = "Assign user" },
      { "<leader>Oar",   "<cmd>Octo assignee remove [login]<cr>",      desc = "Unassign user" },
      { "<leader>Orrv",  "",                                           desc = "Reviewers" },
      { "<leader>Orrva", "<cmd>Octo reviewer add [login]<cr>",         desc = "Assign reviewer" },
      { "<leader>Oh",    "",                                           desc = " Reactions" },
      { "<leader>Ohu",   "<cmd>Octo reaction thumbs_up<cr>",           desc = "👍" },
      { "<leader>Ohd",   "<cmd>Octo reaction thumbs_down<cr>",         desc = "👎" },
      { "<leader>Ohe",   "<cmd>Octo reaction eyes<cr>",                desc = "👀" },
      { "<leader>Ohl",   "<cmd>Octo reaction laugh<cr>",               desc = "😄" },
      { "<leader>Ohc",   "<cmd>Octo reaction confused<cr>",            desc = "😕" },
      { "<leader>Ohr",   "<cmd>Octo reaction rocket<cr>",              desc = "🚀" },
      { "<leader>Ohh",   "<cmd>Octo reaction heart<cr>",               desc = "❤️" },
      { "<leader>Ohy",   "<cmd>Octo reaction hooray<cr>",              desc = "🎉" },
      { "<leader>Oca",   "",                                           desc = "Project Cards" },
      { "<leader>Ocaa",  "<cmd>Octo card add<cr>",                     desc = "Add card" },
      { "<leader>Ocar",  "<cmd>Octo card remove<cr>",                  desc = "Remove card" },
      { "<leader>Ocam",  "<cmd>Octo card move<cr>",                    desc = "Move card" },
      { "<leader>Orw",   "",                                           desc = " Reviews" },
      { "<leader>Orws",  "<cmd>Octo review start<cr>",                 desc = "Start review" },
      { "<leader>OrwS",  "<cmd>Octo review submit<cr>",                desc = "Submit review" },
      { "<leader>Orwr",  "<cmd>Octo review resume<cr>",                desc = "Resume review" },
      { "<leader>Orwd",  "<cmd>Octo review discard<cr>",               desc = "Discard review" },
      { "<leader>Orwc",  "<cmd>Octo review comments<cr>",              desc = "View review comments" },
      { "<leader>OrwC",  "<cmd>Octo review commit<cr>",                desc = "Review specific commit" },
      { "<leader>Orwc",  "<cmd>Octo review close<cr>",                 desc = "Close review window" },
      { "<leader>Oa",    "",                                           desc = "Octo Actions" },
      { "<leader>Oal",   "<cmd>Octo actions<cr>",                      desc = "List Octo actions" },
      { "<leader>Os",    "<cmd>Octo search<cr>",                       desc = "Search GitHub" }
    }
  }


  -- {
  --   "kdheepak/lazygit.nvim",
  --   opts = {},
  --   event = "User AstroFile"
  -- }
}
