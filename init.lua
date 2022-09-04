require "options";
require "keymaps";
require "plugins";
require "comments";
require "configure" ("file_explorer", "nvim-tree");
require "configure" ("statusline", "lualine");
require "configure" ("git_signs", "gitsigns");
require "configure" ("theme", "nightfox");

require "language_servers"; 

require "autocompletion";

-- To set the theme
vim.cmd "colorscheme nightfox"
