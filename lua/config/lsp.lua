require('config.cmp')

local lsp = require('lspconfig')
local capabilities = require('cmp_nvim_lsp').default_capabilities()

local servers = { 'lua_ls', 'ruby_lsp' }
for _, server in pairs(servers) do
  lsp[server].setup({ capabilities = capabilities })
end

local function format()
  vim.lsp.buf.format({ async = true })
end

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if client:supports_method('textDocument/implementation') then
      vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {buffer = args.buf, desc = "Implementation"})
    end
    if client:supports_method('textDocument/definition') then
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {buffer = args.buf, desc = "Definition"})
    end
    if client:supports_method('textDocument/declaration') then
      vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, {buffer = args.buf, desc = "Declaration"})
    end
    if client:supports_method('textDocument/references') then
      vim.keymap.set('n', 'gr', vim.lsp.buf.references, {buffer = args.buf, desc = "References"})
    end
    if client:supports_method('textDocument/formatting') then
      vim.keymap.set({'n', 'v'}, '<leader>cf', format, {buffer = args.buf, desc = "Format"})
    end
    -- Code actions
    if client:supports_method('textDocument/codeAction') then
      vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {buffer = args.buf, desc = "Code actions"})
    end
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {buffer = args.buf, desc = "Rename"})
  end,
})
