return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  opts = {
    ensure_installed = { 'c', 'lua', 'vim', 'yaml', 'toml', 'markdown', 'vimdoc', 'bash', 'html', 'python', 'haskell', 'rust' },
    sync_install = false,
    highlight = { enable = true },
    indent = { enable = true }
  }
}
