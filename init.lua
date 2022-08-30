require "options";
require "keymaps";
require "plugins";
require "configure" ("file_explorer", "nvim-tree");
require "configure" ("statusline", "lualine");
require "configure" ("git_signs", "gitsigns");

require "language_servers" ("lspconfig", "tsserver", "cmp_nvim_lsp");

require "autocompletion";
