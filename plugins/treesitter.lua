return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    -- add more things to the ensure_installed table protecting against community packs modifying it
    opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
      "lua",
      "python",
      "markdown",
      "markdown_inline",
      "rst",
      "bash",
      "cpp",
      "yaml",
      "json"
    })
    require "nvim-treesitter.install".compilers = {"gcc99", "gcc", "cc", "clang", "cl", "zig"}
    return opts
  end,
}
