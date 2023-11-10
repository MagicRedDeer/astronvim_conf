-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map

    -- navigate buffer tabs with `H` and `L`
    -- L = {
    --   function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
    --   desc = "Next buffer",
    -- },
    -- H = {
    --   function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
    --   desc = "Previous buffer",
    -- },

    -- mappings seen under group name "Buffer"
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    ["<leader>m"] = { name = "maya" },
    ["<leader>ms"] = { "<cmd>py vimyaRun ()<cr>", desc = "Maya / Send", silent = true, noremap = true },
    ["<leader>mb"] = { "<cmd>py vimyaRun (forceBuffer = True)<cr>", desc = "Maya / Send Buffer", silent = true, noremap = true },
    ["<leader>mr"] = { "<cmd>py vimyaRefreshLog()<cr>", desc = "Maya / Refresh Log", silent = true, noremap = true },
    ["<leader>mt"] = { "<cmd>py vimyaOpenLog()<cr>", desc = "Maya / Open Log", silent = true, noremap = true },
    ["<leader>ml"] = { "<cmd>py vimyaResetLog()<cr>", desc = "Maya / Reset Log", silent = true, noremap = true },
    ["<leader>mw"] = { "<cmd>vimyaWhatIs()<cr>", desc = "Maya / What Is", silent = true, noremap = true },
    ["<leader>mu"] = { "<cmd>VimyaSend undo()<cr>", desc = "Maya / Send Undo", silent = true, noremap = true },
    ["<leader>mU"] = { "<cmd>VimyaSend redo()<cr>", desc = "Maya / Send Redo", silent = true, noremap = true },


    ["<leader>n"] = { name = "nuke" },
    ["<leader>ns"] = { "<cmd>py nukevimRun ()<cr>", desc = "Nuke / Send", silent = true, noremap = true },
    ["<leader>nb"] = { "<cmd>py nukevimRun (forceBuffer = True)<cr>", desc = "Nuke / Send Buffer", silent = true, noremap = true },
    ["<leader>nr"] = { "<cmd>py nukevimResetScratchWindow ()<cr>", desc = "Nuke / Reset Log", silent = true, noremap = true },

    ["<leader>x"] = { name = "trouble" },
    ["<leader>xx"] = { "<cmd>Trouble<cr>", desc = "Open", silent = true, noremap = true },
    ["<leader>xl"] = { "<cmd>Trouble loclist<cr>", desc = "Location List", silent = true, noremap = true },
    ["<leader>xq"] = { "<cmd>Trouble quickfix<cr>", desc = "Quick Fix", silent = true, noremap = true },
    ["<leader>xc"] = { "<cmd>TroubleClose<cr>", desc = "Close", silent = true, noremap = true },

    ["<leader>nn"] = { "<cmd>enew<cr>", desc = "New File" },

  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
    ["<C-i>"] = { "<C-\\><C-n>", desc = "Exit terminal mode" },
    ["<C-w>"] = { "<C-\\><C-n><C-w>", desc = "Exit terminal mode" },
  },
  v = {
    ["<leader>m"] = { name = "maya" },
    ["<leader>ms"] = {"<cmd>py vimyaRun ()<cr>", desc = "Maya / Send", silent = true, noremap = true},
    ["<leader>mb"] = {"<cmd>py vimyaRun (forceBuffer = True)<cr>", desc = "Maya / Send Buffer", silent = true, noremap = true},

    ["<leader>n"] = { name = "nuke" },
    ["<leader>ns"] = {"<cmd>py nukevimRun ()<cr>", desc = "Nuke / Send", silent = true, noremap = true},
    ["<leader>nb"] = {"<cmd>py nukevimRun (forceBuffer = True)<cr>", desc = "Nuke / Send Buffer", silent = true, noremap = true},

    [">"] = {"><CR>gv", noremap=true},
    ["<"] = {"<<CR>gv", noremap=true},
  },
  i = {
    ["<C-U>"] = {"<C-G>u<C-U>", noremap = true}
  }
}
