local M = {}

M.capabilities = require('cmp_nvim_lsp').default_capabilities()

local nvim_lsp = pcall(require, "lspconfig")
local protocol = require('vim.lsp.protocol')

M.on_attach = function(client, bufnr)
  if client.server_capabilities.inlayHintProvider then
    vim.lsp.inlay_hint.enable(true, { bufnr = bufnr })
  end
end

function M.setup_server(server_name)
  require('lspconfig')[server_name].setup {
    capabilities = M.capabilities,
    on_attach = M.on_attach,
  }
end

return M
