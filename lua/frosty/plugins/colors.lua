return {
  'ellisonleao/gruvbox.nvim',
  priority = 1000,
  init = function()
    vim.o.background = 'dark'
    vim.cmd('colorscheme gruvbox')
    vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
  end
}
