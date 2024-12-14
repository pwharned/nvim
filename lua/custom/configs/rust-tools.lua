local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities
-- Add this at the end of your init.lua or appropriate config file

-- Setup dprint
vim.cmd [[
  augroup DPrint
    autocmd!
    autocmd BufWritePre *.rs :silent !dprint fmt
  augroup END
]]

local options = {
  server = {
    on_attach = on_attach,
    capabilities = capabilities,
    settings = {
      ["rust-analyzer"] = {
        cargo = {
          allFeatures = true,
        },
        checkOnSave = {
          command = "clippy",
        },
      },
    },
  }
}

return options

