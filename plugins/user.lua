return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function()
      require("lsp_signature").setup()
    end,
  },
  {
    "tpope/vim-surround",
    lazy = false
  },
  {
    "tpope/vim-repeat",
    lazy = false
  },
  {
    "tpope/vim-fugitive",
    enabled = vim.fn.executable "git" == 1,
    event = "User AstroGitFile"
  },
  {
    "ggandor/leap.nvim",
    lazy=false,
    config=function()
      require('leap').add_default_mappings()
    end
  },
  {
    "MagicRedDeer/vimya.vim",
    dependencies = "vim-scripts/Tail-Bundle",
    lazy = false,
    init = function()
      vim.g.Tail_Height = 15
      vim.g.vimyaPort = 7720
      vim.g.vimyaTailCommand = "STail"
      vim.g.vimyaSplitBelow = 1
      vim.g.vimyaForceRefresh = 1
      vim.g.vimyaRefreshWait = 2.0
    end,
  },
  {
    "MagicRedDeer/nuke.vim",
    lazy = false,
    init = function()
      vim.g.nukevimHost = "127.0.0.1"
      vim.g.nukevimHost = "10191"
    end,
  },
  {
    'nvimdev/lspsaga.nvim',
    config = function()
      require('lspsaga').setup({})
    end,
    dependencies = {
      'nvim-treesitter/nvim-treesitter',
      'nvim-tree/nvim-web-devicons'
    },
    event = "LspAttach"
  },
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {},
    cmds = {"Trouble", "TroubleClose", "Telescope"}
  }
}
