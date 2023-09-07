local plugins = {
  {
    -- autocomplete
    "hrsh7th/nvim-cmp",
    opts = {
      sources = {
        -- trigger_characters is for unocss lsp
        { name = "nvim_lsp", trigger_characters = { "-" } },
        { name = "luasnip" },
        { name = "buffer" },
        { name = "nvim_lua" },
        { name = "path" },
      },
    },
  },

  -- nvim-tree
  { "nvim-tree/nvim-tree.lua",
    opts = {
      filters = {
        dotfiles = true,
        custom = { "node_modules" },
      },

      git = {
        enable = true,
      },

      renderer = {
        highlight_git = true,
        icons = {
          show = {
            git = true,
          },
        },
      },
    }
  },

  -- treesitter support
  { "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "c",
        "css",
        "csv",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "proto",
        "python",
        "rust",
        "sql",
        "toml",
        "tsv",
        "tsx",
        "typescript",
        "vim",
        "xml",
        "yaml",
      },
    }
  },

  -- smooth scrolling
  {
    "karb94/neoscroll.nvim",
    keys = { "<C-d>", "<C-u>" },
    config = function()
      require("neoscroll").setup()
    end,
  },

  -- dim inactive windows
  {
    "andreadev-it/shade.nvim",
    keys = "<Bslash>",
    config = function()
      require("shade").setup {
        exclude_filetypes = { "NvimTree" },
      }
    end,
  },

  -- Lua
  {
    "folke/zen-mode.nvim",
    cmd = "ZenMode",
    config = function()
      require "custom.configs.zenmode"
    end,
  },

}
return plugins
