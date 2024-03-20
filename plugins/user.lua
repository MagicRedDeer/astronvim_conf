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
  },
  {
    "danymat/neogen",
    dependencies = "nvim-treesitter/nvim-treesitter",
    opts={
      enabled = true,
      languages = {
        python = {
          annotation_convention = "google_docstrings"
        }
      }
    },
    cmd = { "Neogen" },
    lazy = false,
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      style = "night",
      transparent = false,
      styles = {
        sidebars = "transparent",
        floats = "transparent"
      }
    },
  },
  {
    "nvim-treesitter/nvim-treesitter-context",
    config = function()
      require'treesitter-context'.setup{
        enable = true, -- Enable this plugin (Can be enabled/disabled later via commands)
        max_lines = 0, -- How many lines the window should span. Values <= 0 mean no limit.
        min_window_height = 0, -- Minimum editor window height to enable context. Values <= 0 mean no limit.
        line_numbers = true,
        multiline_threshold = 20, -- Maximum number of lines to show for a single context
        trim_scope = 'outer', -- Which context lines to discard if `max_lines` is exceeded. Choices: 'inner', 'outer'
        mode = 'cursor',  -- Line used to calculate context. Choices: 'cursor', 'topline'
        -- Separator between context and content. Should be a single character string, like '-'.
        -- When separator is set, the context will only show up when there are at least 2 lines above cursorline.
        separator = nil,
        zindex = 20, -- The Z-index of the context window
        on_attach = nil, -- (fun(buf: integer): boolean) return false to disable attaching
      }
    end,
    dependencies = "nvim-treesitter/nvim-treesitter",
  }
}
