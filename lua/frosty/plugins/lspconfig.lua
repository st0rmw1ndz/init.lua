return {
  'neovim/nvim-lspconfig',
  dependencies = { 'hrsh7th/cmp-nvim-lsp', 'williamboman/mason.nvim', 'williamboman/mason-lspconfig.nvim' },
  config = function()
    require('mason').setup()
    require('mason-lspconfig').setup({
      ensure_installed = { 'lua_ls', 'rust_analyzer', 'bashls', 'gopls' }
    })

    local lspconfig = require('lspconfig')
    local capabilities = require('cmp_nvim_lsp').default_capabilities()

    lspconfig['lua_ls'].setup({
      capabilities = capabilities,
      settings = {
        Lua = {
          diagnostics = {
            globals = { 'vim' }
          },
          format = {
            enable = true,
            defaultConfig = { quote_style = 'single' }
          }
        }
      }
    })
    lspconfig['rust_analyzer'].setup({
      capabilities = capabilities
    })
    lspconfig['gopls'].setup({
      capabilities = capabilities
    })
    lspconfig['bashls'].setup({
      capabilities = capabilities,
      settings = {
        filetypes = { 'sh', 'zsh' }
      }
    })
  end
}
