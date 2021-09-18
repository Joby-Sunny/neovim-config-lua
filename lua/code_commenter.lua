local H = require("helpers");
local options = { noremap = true, silent = true };

H.set_keymap(H.MODES.NORMAL, '<C-_>', '<cmd>Commentary<CR>', options);
H.set_keymap(H.MODES.INSERT, '<C-_>', '<cmd>Commentary<CR>', options);
H.set_keymap(H.MODES.VISUAL, '<C-_>', "'<'><cmd>Commentary<CR>", options);
