-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr)
          require("astronvim.utils.buffer").close(
            bufnr)
        end)
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    ["<C-s>"] = { ":w!<cr>", desc = "Save File" }, -- change description but the same command
    ["<leader>w"] = { "<cmd>echo 'Quicknote/Wiki Commands'<cr>", desc = "QuickNote" },
    ["<leader>wn"] = { "<cmd>:lua require('quicknote').NewNoteAtCurrentLine()<cr>", desc = "New Note at Line" },
    ["<leader>wc"] = { "<cmd>:lua require('quicknote').NewNoteAtCWD()<cr>", desc = "New Note at Current Dir" },
    ["<leader>wg"] = { "<cmd>:lua require('quicknote').NewNoteAtGlobal()<cr>", desc = "New Note Globally" },
    ["<leader>wS"] = { "<cmd>:lua require('quicknote').ShowNoteSigns()<cr>", desc = "Show Notes in Buffer" },
    ["<leader>wo"] = { "<cmd>:lua require('quicknote').OpenNoteAtCurrentLine()<cr>", desc = "Open Note at Current Line" },
    ["<leader>wC"] = { "<cmd>:lua require('quicknote').OpenNoteAtCWD()<cr>", desc = "Open Notes in CWD" },
    ["<leader>wG"] = { "<cmd>:lua require('quicknote').OpenNoteAtGlobal()<cr>", desc = "Open Global Notes" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
  v = {
    ["<leader>W"] = { "<cmd>echo 'Select a Command'<cr>", desc = "Windows WSL Commands" },
    ["<leader>Wc"] = { ":'<,'>w !clip.exe<cr>", desc = "Copy Selection to Clipboard (WSL)" },
    ["<leader>Wf"] = { ":w !clip.exe<cr>", desc = "Copy File to Clipboard (WSL)" },
  }
}
