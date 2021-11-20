vim.cmd('packadd packer.nvim')
-- vim.cmd('packadd nvim-treesitter')
-- vim.cmd('packadd nvim-lspconfig')
packer = require 'packer'
packer.init {
  display = {
    open_fn  = require('packer.util').float, -- An optional function to open a window for packer's display
    working_sym = '🛠', -- The symbol for a plugin being installed/updated
    error_sym = '🧨', -- The symbol for a plugin with an error in installation/updating
    done_sym = '🎉', -- The symbol for a plugin which has completed installation/updating
    removed_sym = '🔥', -- The symbol for an unused plugin which was removed
    moved_sym = '🚀', -- The symbol for a plugin which was moved (e.g. from opt to start)
    header_sym = '━', -- The symbol for the header line in packer's display
    show_all_info = true, -- Should packer show all update details automatically?
    prompt_border = 'double', -- Border style of prompt popups.
  }
}

local use = packer.use
packer.reset()
return require('packer').startup(
  function()
    use 'wbthomason/packer.nvim'
    use 'shaunsingh/nord.nvim'
    use 'liuchengxu/space-vim-dark'
    use 'Mofiqul/dracula.nvim'
    use {
  	'hoob3rt/lualine.nvim',
  	requires = {'kyazdani42/nvim-web-devicons', opt = true}
	}
    use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}
    use 'searleser97/cpbooster.vim'
    use 'lukas-reineke/indent-blankline.nvim'
    use {'nvim-treesitter/nvim-treesitter',run = ':TSUpdate'}
		use {'p00f/nvim-ts-rainbow'}
		use {'windwp/nvim-autopairs'}
		use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons'
  }
		use 'ghifarit53/tokyonight-vim'
		-- Lua
use {
  "folke/which-key.nvim",
  config = function()
    require("which-key").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  end
}
use {
  'nvim-telescope/telescope.nvim',
  requires = { {'nvim-lua/plenary.nvim'} }
}
use 'neovim/nvim-lspconfig'
use 'hrsh7th/cmp-nvim-lsp'
use 'hrsh7th/cmp-buffer'
use 'hrsh7th/cmp-path'
use 'hrsh7th/cmp-cmdline'
use 'hrsh7th/nvim-cmp'
use 'hrsh7th/cmp-vsnip'
use 'hrsh7th/vim-vsnip'
use 'glepnir/dashboard-nvim'






  end
)
