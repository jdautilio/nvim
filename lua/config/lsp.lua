local M = {}

M.capabilities = require('cmp_nvim_lsp').default_capabilities()

M.on_attach = function(client, bufnr)
  if client.server_capabilities.inlayHintProvider then
    vim.lsp.inlay_hint.enable(true, { bufnr = bufnr })
  end
end

function M.setup_server(server_name, opts)
  vim.lsp.config(server_name, vim.tbl_deep_extend('force', {
    capabilities = M.capabilities,
    on_attach = M.on_attach,
  }, opts or {}))
  vim.lsp.enable(server_name)
end

return M
