local VIM = require('utils')

local setKeyMap = VIM.getSetKeyMap({ noremap = true, silent = true })
local MODE = VIM.MODE

-- [[ Better window naviagtion ]]
setKeyMap(MODE.NORMAL, '<C-h>', ':wincmd h<CR>')
setKeyMap(MODE.NORMAL, '<C-j>', ':wincmd j<CR>')
setKeyMap(MODE.NORMAL, '<C-k>', ':wincmd k<CR>')
setKeyMap(MODE.NORMAL, '<C-l>', ':wincmd l<CR>')
-- [[ Better window terminal ]]
setKeyMap(MODE.TERMINAL, '<C-h>', ':<C-w><C-h><CR>')
setKeyMap(MODE.TERMINAL, '<C-j>', ':<C-w><C-j><CR>')
setKeyMap(MODE.TERMINAL, '<C-k>', ':<C-w><C-k><CR>')
setKeyMap(MODE.TERMINAL, '<C-l>', ':<C-w><C-l><CR>')
-- [[ Better tab naivation ]]
setKeyMap(MODE.NORMAL, '<C-a>', ':tabp<CR>')
setKeyMap(MODE.NORMAL, '<C-s>', ':tabn<CR>')
-- [[ Resize with Arrows ]]
setKeyMap(MODE.NORMAL, '<C-Up>', ":resize +2<CR>")
setKeyMap(MODE.NORMAL, '<C-Down>', ":resize -2<CR>")
setKeyMap(MODE.NORMAL, '<C-Left>', ":vertical resize -2<CR>")
setKeyMap(MODE.NORMAL, '<C-Right>', ":vertical resize +2<CR>")
