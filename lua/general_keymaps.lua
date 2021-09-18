local H = require("helpers");
local options = { noremap = true, silent = true }

-- Switching between splits
H.set_keymap(H.MODES.NORMAL, '<C-h>', '<cmd>wincmd h<CR>', options);
H.set_keymap(H.MODES.NORMAL, '<C-j>', '<cmd>wincmd j<CR>', options);
H.set_keymap(H.MODES.NORMAL, '<C-k>', '<cmd>wincmd k<CR>', options);
H.set_keymap(H.MODES.NORMAL, '<C-l>', '<cmd>wincmd l<CR>', options);

-- Switch between Tabs
H.set_keymap(H.MODES.NORMAL, '<C-a>', '<cmd>tabp<CR>', options);
H.set_keymap(H.MODES.NORMAL, '<C-s>', '<cmd>tabn<CR>', options);
