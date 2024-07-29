-- Set leader
vim.g.mapleader = ' '

-- Unset keymaps
vim.keymap.set('n', '<Space>', '<Nop>')
vim.keymap.set('n', 'Q', '<nop>')
vim.keymap.set('n', 'q', '<nop>')

-- File management
vim.keymap.set('n', '<leader>pf', ':Telescope find_files<CR>')
vim.keymap.set('n', '<leader>po', ':Telescope oldfiles<CR>')
vim.keymap.set('n', '<leader>pg', ':Telescope live_grep<CR>')
vim.keymap.set('n', '<leader>pe', ':Ex<CR>')

-- Other Telescope commands
vim.keymap.set('n', '<leader>pS', ':Telescope search_history<CR>')
vim.keymap.set('n', '<leader>ph', ':Telescope command_history<CR>')

-- Buffer management
vim.keymap.set('n', '<leader>pr', ':Telescope buffers<CR>')
vim.keymap.set('n', '<leader>ww', ':bd<CR>')
vim.keymap.set('n', '<leader>wW', ':bd!<CR>')
vim.keymap.set('n', '<leader>n', ':enew<CR>')
vim.keymap.set('n', '<Tab>', ':bnext<CR>')
vim.keymap.set('n', '<S-Tab>', ':bprev<CR>')

-- File actions
vim.keymap.set('n', '<leader>r', ':w<CR>')
vim.keymap.set('n', '<leader>R', ':e $MYVIMRC<CR>')

-- Lazy
vim.keymap.set('n', '<leader>l', ':Lazy<CR>')

-- Neogit
vim.keymap.set('n', '<leader>gg', ':Neogit<CR>')
vim.keymap.set('n', '<leader>gc', ':Neogit commit<CR>')

-- Alpha
vim.keymap.set('n', '<leader>h', ':Alpha<CR>')

-- Visual block selection movement
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", { noremap = true })
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", { noremap = true })
