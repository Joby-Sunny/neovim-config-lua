local VIM = require('utils');

VIM.setGlobalOption('mapleader', '<Space>');

VIM.setOption('backup', false);
VIM.setOption('cmdheight', 1);
VIM.setOption('completeopt', { "menuone", "noselect" });
VIM.setOption('conceallevel', 0);
VIM.setOption('fileencoding', 'utf-8');
VIM.setOption('hlsearch', true);
VIM.setOption('ignorecase', true);
VIM.setOption('smartcase', true);
VIM.setOption('pumheight', 10);
VIM.setOption('showmode', true);
VIM.setOption('showtabline', 2);
VIM.setOption('swapfile', false);
VIM.setOption('termguicolors', true);
VIM.setOption('timeoutlen', 1000);
VIM.setOption('undofile', true);
VIM.setOption('updatetime', 300);
VIM.setOption('writebackup', false);
VIM.setOption('expandtab', true);
VIM.setOption('shiftwidth', 2);
VIM.setOption('tabstop', 2);
VIM.setOption('cursorline', true);
VIM.setOption('number', true);
VIM.setOption('relativenumber', true);
VIM.setOption('numberwidth', 2);
VIM.setOption('signcolumn', 'yes');
VIM.setOption('wrap', false);

VIM.setOption('syntax', 'on');
