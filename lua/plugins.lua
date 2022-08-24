local packer = require('packer');

packer.startup(function(use)
  -- Package Manager
  use 'wbthomason/packer.nvim'

  -- ColorScheme
  use {
    'mhartington/oceanic-next',
    as = 'OceanicNext',
    config = function()
      vim.cmd "colorscheme OceanicNext"
    end
  }

  -- Icon Pack
  use 'kyazdani42/nvim-web-devicons'

  -- File Explorer
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons'
    }
  }

end)
