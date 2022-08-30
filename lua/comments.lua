local VIM = require("utils")
local M = VIM.MODE
local setKeyMap = VIM.getSetKeyMap({ noremap = true, silent = true });


setKeyMap(M.NORMAL, '<C-_>', ':Commentary<CR>');
setKeyMap(M.VISUAL, '<C-_>', ":'<,'>Commentary<CR>");
