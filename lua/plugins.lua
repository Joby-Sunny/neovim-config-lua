-- Configuration for package-manager Packer

local package = require("packer");


function package_listing() 
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

    -- nvim-web-devicons
    use 'kyazdani42/nvim-web-devicons'

	-- nvim-tree.lua
	use {
		'kyazdani42/nvim-tree.lua',
		requires = 'kyazdani42/nvim-web-devicons'
	}
	
	-- vim-commentary 
	use 'tpope/vim-commentary'

	-- Git decorations
	use {
		'lewis6991/gitsigns.nvim',
		requires = {
			'nvim-lua/plenary.nvim'
		}
	}

	-- StatusLine
	use {
		'hoob3rt/lualine.nvim',
		requires = {'kyazdani42/nvim-web-devicons', opt = true}
	}

	-- You can alias plugin names
	use {'dracula/vim', as = 'dracula'}

    -- LSP 
    use 'neovim/nvim-lspconfig'

end
	
package.startup(package_listing)
