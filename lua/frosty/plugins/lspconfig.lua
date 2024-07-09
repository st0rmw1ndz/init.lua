return {
  'neovim/nvim-lspconfig',
  dependencies = { 'hrsh7th/cmp-nvim-lsp' },
  config = function()
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
      capabilities = capabilities,
    })
    lspconfig['bashls'].setup({
      capabilities = capabilities,
      settings = {
        filetypes = { 'sh', 'zsh' }
      }
    })
  end
}
