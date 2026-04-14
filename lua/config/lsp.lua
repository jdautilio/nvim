local M = {}

M.capabilities = require('cmp_nvim_lsp').default_capabilities()

local nvim_lsp = pcall(require, "lspconfig")
local protocol = require('vim.lsp.protocol')

local on_attach = function(client, bufnr)
  -- format on save
  if client.server_capabilities.documentFormattingProvider then
    vim.api.nvim_create_autocmd("BufWritePre", {
      group = vim.api.nvim_create_augroup("Format", { clear = true }),
      buffer = bufnr,
      callback = function() vim.lsp.buf.formatting_seq_sync() end
    })
  end
end

function M.setup_server(server_name)
  require('lspconfig')[server_name].setup {
    capabilities = M.capabilities,
  }
end

return M
