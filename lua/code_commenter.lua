local H = require("helpers");
local options = { noremap = true, silent = true };

H.set_keymap(H.MODE.NORMAL, '<C-_>', '<cmd>Commentary<CR>', options);
H.set_keymap(H.MODE.INSERT, '<C-_>', '<cmd>Commentary<CR>', options);
H.set_keymap(H.MODE.VISUAL, '<C-_>', '<cmd>\'<,\'>Commentary<CR>', options);
