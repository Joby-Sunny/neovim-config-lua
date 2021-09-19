local H = require("helpers");

-- Main Properties
H.set.encoding = 'UTF-8';
H.set.timeoutlen = 300;
H.set.autoindent = true;
H.set.history = 50;
H.set.termguicolors = true;

-- Character Option
H.set.smartcase = true;
H.set.ignorecase = true;
H.set.smartindent = true;
H.set.wrap = false;
H.set.cursorline = true;

-- Looks Options
H.set.showmode = true;
H.set.expandtab = true;
H.set.background = 'dark';
H.set.hlsearch = true;

-- Line Numbers
H.set.number = true;
H.set.relativenumber = true;

-- Set Tab Stops
H.set.tabstop = 4;
H.set.softtabstop = 4;
H.set.shiftwidth = 4;

-- Disable Swap creation
H.set.swapfile = false;
H.set.backup = false;
H.set.writebackup = false;

-- Splits Options
H.set.switchbuf = 'useopen';
H.set.splitright = true;
H.set.splitbelow = true;

H.set.scrolloff = 3;

H.cmd [[
	syntax enable	
	colorscheme dracula

    set undodir=~/.neovim/undodir
    set undofile
]];
