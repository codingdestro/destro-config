-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"
local util = require "lspconfig/util"

local servers = { "html", "cssls" }
local nvlsp = require "nvchad.configs.lspconfig"
local on_attach = nvlsp.on_attach
local capabilities = nvlsp.capabilities

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

lspconfig.tsserver.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  init_options = {
    preferences = {
      disableSuggestions = true,
    },
  },
}

--rust lsp
lspconfig.rust_analyzer.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "rust" },
  root_dir = util.root_pattern "Cargo.toml",
  settings = {
    ["rust-analyzer"] = {
      cargo = {
        allFeatures = true,
      },
    },
  },
}

-- tailwindcss lsp
lspconfig.tailwindcss.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

--go lsp
lspconfig.gopls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { "gopls" },
  filetypes = { "go", "gomod", "gowork", "gotmpl" },
  root_dir = util.root_pattern("go.work", "go.mod", ".git"),
  settings = {
    gopls = {
      completeUnimported = true,
      usePlaceholders = true,
      analyses = {
        unusedparams = true,
      },
    },
  },
}

-- Lua Lsp Configuration
lspconfig.lua_ls.setup {
  settings = {
    Lua = {
      runtime = {
        version = "LuaJIT",
        path = vim.split(package.path, ";"),
      },
      diagnostics = {
        globals = { "vim" },
      },
      workspace = {
        library = vim.api.nvim_get_runtime_file("", true),
        checkThirdParty = false,
      },
      telemetry = {
        enable = false,
      },
    },
  },
}

-- Python Lsp Configuration
lspconfig.pyright.setup {}

-- C/C++ Lsp Configuration
lspconfig.clangd.setup {}

-- Ruby Lsp Configuration
lspconfig.ruby_lsp.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "ruby", "rb" },
  settings = {
    solargraph = {
      diagnostics = true,
    },
  },
}

-- Gleam  Lsp Configuration
lspconfig.gleam.setup {}
