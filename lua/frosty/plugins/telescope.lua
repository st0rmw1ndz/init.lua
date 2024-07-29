return {
  'nvim-telescope/telescope.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local actions = require('telescope.actions')

    require('telescope').setup({
      defaults = {
        mappings = {
          n = {
            ['q'] = actions.close
          }
        }
      },
      pickers = {
        find_files = {
          disable_devicons = true,
          find_command = { 'rg', '--files', '--hidden' }
        },
        buffers = {
          disable_devicons = true,
          show_all_buffers = true
        }
      }
    })
  end
}
