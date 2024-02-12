return {
  n = {

    ["gd"] = false,
    ["gD"] = false,

    -- lsp overrides
    ["<leader>ld"] = { function() vim.lsp.buf.definition() end, desc="Show Definition", noremap=true, silent=true },
    ["<leader>lD"] = { function() vim.lsp.buf.declaration() end, desc="Show Declaration", noremap=true, silent=true },
    ["<leader>lv"] = {
      function()
        vim.cmd("rightbelow vsplit")
        vim.lsp.buf.definition()
      end,
      desc="Show Definition in Split", noremap=true, silent=true },
    ["<leader>lV"] = {
      function()
        vim.cmd("rightbelow vsplit")
        vim.lsp.buf.declaration()
      end,
      desc="Show Declaration in split", noremap=true, silent=true },
    -- ["<leader>le"] = { function() vim.diagnostic.open_float() end, desc="Hover Diagnostics", noremap=true, silent=true },
    ["<leader>lE"] = { function() require("telescope.builtin").diagnostics() end, desc="Search Diagnostics", noremap=true, silent=true },

    -- lsp saga stuff
    ["<leader>lF"] = { "<cmd>Lspsaga finder<cr>", desc="Lsp Finder", silent = true, noremap = true },
    ["<leader>lk"] = { "<cmd>Lspsaga hover_doc<cr>", desc="Hover Commands", silent = true, noremap = true },
    ["<leader>la"] = { "<cmd>Lspsaga code_action<cr>", desc="Lsp Code Action", silent = true, noremap = true },
    ["<leader>lr"] = { "<cmd>Lspsaga rename<cr>", desc="Lsp Rename", silent = true, noremap = true },
    ["<leader>le"] = { "<cmd>Lspsaga show_line_diagnostics<cr>", desc="Line Diagnostics", silent = true, noremap = true },
    ["<leader>lc"] = { "<cmd>Lspsaga show_cursor_diagnostics<cr>", desc="Cursor Diagnostics", silent = true, noremap = true },
    ["<leader>ln"] = { "<cmd>Lspsaga diagnostic_jump_next<cr>", desc="Next Diagnostic", silent = true, noremap = true },
    ["<leader>lN"] = { "<cmd>Lspsaga diagnostic_jump_prev<cr>", desc="Previous Diagnostic", silent = true, noremap = true },
    ["<leader>lp"] = { "<cmd>Lspsaga peek_definition<cr>", desc="Peak Definition", silent = true, noremap = true },
    ["<leader>lt"] = { "<cmd>Lspsaga peek_type_definition<cr>", desc="Peak Type Definition", silent = true, noremap = true },

    ["<leader>xr"] = { "<cmd>Trouble lsp_references<cr>", desc = "Quick Fix", silent = true, noremap = true },
    ["<leader>xw"] = { "<cmd>Trouble workspace_diagnostics<cr>", desc = "Workspace Diagnostics", silent = true, noremap = true },
    ["<leader>xd"] = { "<cmd>Trouble document_diagnostics<cr>", desc = "Document Diagnostics", silent = true, noremap = true },
  }
}
