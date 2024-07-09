return {
  'nvim-telescope/telescope.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  opts = {
    pickers = {
      find_files = {
        find_command = { 'rg', '--files', '--hidden', '-g', '!.git' }
      },
      buffers = {
        show_all_buffers = true
      },
      mappings = {
        n = { ['q'] = require('telescope.actions').close },
      }
    }
  }
}
