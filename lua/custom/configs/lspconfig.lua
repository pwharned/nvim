local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")
local util = require "lspconfig/util"

lspconfig.clangd.setup{
  on_attach = function(client, buffer)
  client.server_capabilities.signatureHelpProvider = false
  on_attach(client, buffer)
  end,
  capabilities = capabilities,
}
