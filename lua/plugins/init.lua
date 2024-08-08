return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "typescript-language-server",
        "tailwindcss-language-server",
        "gopls",
        "eslint-lsp",
        "prettier",
        "ruby-lsp",
        "prettierd",
        "js-debug-adapter",
        "rust-analyzer",
        "lua-language-server",
        "pyright",
        "black",
        "clangd",
        "clang-format",
      },
    },
  },
  -- Rust specific configuration
  {
    "rust-lang/rust.vim",
    ft = "rust",
    init = function()
      vim.g.rustfmt_autosave = 1
    end,
  },

  -- Linting
  {
    "mfussenegger/nvim-lint",
    event = "VeryLazy",
    config = function()
      require "plugins.configs.lint"
    end,
  },

  -- Formatting
  {
    "nvimtools/none-ls.nvim",
    event = "VeryLazy",
    opts = function()
      return require "plugins.configs.null-ls"
    end,
  },

  -- Treesitter for syntax highlighting and more
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function()
      local opts = require "nvchad.configs.treesitter"
      opts.ensure_installed = {
        "lua",
        "markdown",
        "javascript",
        "typescript",
        "tsx",
        "go",
        "rust",
        "gleam",
        "c",
        "cpp",
      }
      return opts
    end,
  },

  -- Auto tag for React and similar file types
  {
    "windwp/nvim-ts-autotag",
    ft = {
      "javascript",
      "typescript",
      "javascriptreact",
      "typescriptreact",
    },
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },

  -- Vim and Tmux integration
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },

  -- Carbon Now snapshot tool
  {
    "ellisonleao/carbon-now.nvim",
    lazy = true,
    cmd = "CarbonNow",
    opts = {},
  },
}
