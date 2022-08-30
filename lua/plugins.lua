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

  -- Statusline
  use {
    'nvim-lualine/lualine.nvim',
    requires = {
      'kyazdani42/nvim-web-devicons'
    }
  }

  -- Code Commenting Plugin
  use "tpope/vim-commentary"
  -- Git Signs
  use { 'lewis6991/gitsigns.nvim' }

  -- LSP Plugin
  use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP

  -- Autocompletion plugins
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'

  -- nvim-cmp doesn't know how to expand an snippet; so we need this;
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'

  -- Prettier {Javascript, Typescript}
  use 'prettier/vim-prettier'
end)
