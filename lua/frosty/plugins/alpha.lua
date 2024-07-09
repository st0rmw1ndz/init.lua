return {
  'goolord/alpha-nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local alpha = require('alpha')
    local dashboard = require('alpha.themes.dashboard')

    dashboard.section.buttons.val = {
      dashboard.button('SPC p f', 'Find files'),
      dashboard.button('SPC p o', 'Recent files'),
      dashboard.button('SPC p e', 'File explorer'),
      dashboard.button('SPC p g', 'File grep'),
      dashboard.button('SPC l', 'Lazy'),
      dashboard.button('Z Q', 'Quit')
    }

    alpha.setup(dashboard.opts)
    vim.cmd('autocmd FileType alpha setlocal nofoldenable')
  end
}
