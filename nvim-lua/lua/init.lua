require('plugins')
require('color')
require('bufferline-config')
require('bind')
require('indent')
require('treesitter-config')
require('settings')
require('autopairs')
require('n-tree')
require('whichkey-config')
require('telescope-config')
require('ncmp-config')
require('dashboard-cng')
-- set number lines
vim.wo.number=true
require('lualine').setup({
	options = {theme = 'dracula'}
})
vim.cmd('colorscheme tokyonight')

