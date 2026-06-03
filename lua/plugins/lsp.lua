return {
  {
    'neovim/nvim-lspconfig',

    dependencies = {
      'hrsh7th/cmp-nvim-lsp',
    },

    config = function()
      local M = require('config/lsp')
      local servers = { 'lua_ls', 'ts_ls', 'ruby_lsp', 'texlab', 'pyright' }
      local conform, conform_ok = pcall(require, 'conform')

      local format = function()
        if conform_ok then
          conform.format({ async = true })
        else
          vim.lsp.buf.format({ async = true })
        end
      end

      for _,server in pairs(servers) do
        M.setup_server(server)
      end

      require('lspconfig').gopls.setup {
        capabilities = M.capabilities,
        on_attach = M.on_attach,
        settings = {
          gopls = {
            hints = {
              assignVariableTypes = true,
              compositeLiteralFields = true,
              constantValues = true,
              functionTypeParameters = true,
              parameterNames = true,
              rangeVariableTypes = true,
            },
          },
        },
      }

      vim.api.nvim_create_autocmd('LspAttach', {
        desc = 'LSP actions',
        callback = function(event)
          local opts = {buffer = event.buf}

          vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
          vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
          vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
          vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)
          vim.keymap.set('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)
          vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', opts)
          vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
          vim.keymap.set('n',         '<leader>cr', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
          vim.keymap.set({'n', 'x'},  '<leader>cf', '<cmd>lua require("conform").format()<cr>', opts)
          vim.keymap.set('n',         '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)
        end
      })
    end
  }
}
