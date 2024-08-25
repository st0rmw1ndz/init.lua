return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  opts = {
    ensure_installed = { 'lua', 'bash', 'go', 'rust', 'python', 'haskell', 'vim', 'vimdoc', 'yaml', 'toml', 'markdown', 'html' },
    sync_install = false,
    highlight = { enable = true },
    indent = { enable = true }
  },
  config = function()
    vim.cmd('TSEnable highlight')
  end
}
