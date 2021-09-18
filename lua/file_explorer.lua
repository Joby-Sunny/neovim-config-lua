local H = require("helpers");
local options = {noremap = true, silent = true};

H.set_global_variable("nvim_tree_side", 'left');
H.set_global_variable("nvim_tree_width", 35);
H.set_global_variable("nvim_tree_ignore", {'.git','node_modules','.cache'});
H.set_global_variable("nvim_tree_gitignore", 0);
H.set_global_variable("nvim_tree_auto_open", 0);
H.set_global_variable("nvim_tree_auto_close", 0);
H.set_global_variable("nvim_tree_quit_on_open", 0);
H.set_global_variable("nvim_tree_follow", 1);
H.set_global_variable("nvim_tree_follow_update_path", 1);
H.set_global_variable("nvim_tree_hide_dotfiles", 1);
H.set_global_variable("nvim_tree_highlight_opened_files", 1);
H.set_global_variable("nvim_tree_disable_netrw", 1);
H.set_global_variable("nvim_tree_hijack_netrw", 1);
H.set_global_variable("nvim_tree_group_empty", 1);
H.set_global_variable("nvim_tree_lsp_diagnostics", 1);
H.set_global_variable("nvim_tree_lsp_disable_window_picker", 1);
H.set_global_variable("nvim_tree_refresh_wait", 500);


H.set_keymap(H.MODES.NORMAL, '<C-t>', '<cmd>NvimTreeToggle<CR>', options);
H.set_keymap(H.MODES.NORMAL, '<leader>r', '<cmd>NvimTreeRefresh<CR>', options);
H.set_keymap(H.MODES.NORMAL, '<leader>n', '<cmd>NvimTreeFindFile<CR>', options);

H.set_global_variable("nvim_tree_disable_default_keybindings", 1);

local nvim_callback = require("nvim-tree.config").nvim_tree_callback;

local new_keybindings = {
	{ key = {"<CR>", "o"}, cb = nvim_callback("edit") },
	{ key = {"<C-]>"}, cb = nvim_callback("cd") },
	{ key = "s", cb = nvim_callback("vsplit") },
	{ key = "i", cb = nvim_callback("split") },
	{ key = "t", cb = nvim_callback("tabnew") },
	{ key = "<", cb = nvim_callback("prev_sibling") },
	{ key = ">", cb = nvim_callback("next_sibling") },
	{ key = "P", cb = nvim_callback("parent_node") },
	{ key = "<BS>", cb = nvim_callback("close_node") },
	{ key = "<S-CR>", cb = nvim_callback("close_node") },
	{ key = "<Tab>", cb = nvim_callback("preview") },
	{ key = "K", cb = nvim_callback("first_sibling") },
	{ key = "J", cb = nvim_callback("last_sibling") },
	{ key = "I", cb = nvim_callback("toggle_ignored") },
	{ key = "H", cb = nvim_callback("toggle_dotfiles") },
	{ key = "R", cb = nvim_callback("refresh") },
	{ key = "a", cb = nvim_callback("create") },
	{ key = "d", cb = nvim_callback("remove") },
	{ key = "r", cb = nvim_callback("rename") },
	{ key = "<C-r>", cb = nvim_callback("full_rename") },
	{ key = "x", cb = nvim_callback("cut") },
	{ key = "c", cb = nvim_callback("copy") },
	{ key = "p", cb = nvim_callback("paste") },
	{ key = "y", cb = nvim_callback("copy_name") },
	{ key = "Y", cb = nvim_callback("copy_path") },
	{ key = "gy", cb = nvim_callback("copy_absolute_path") },
	{ key = "[c", cb = nvim_callback("prev_git_item") },
	{ key = "]c", cb = nvim_callback("next_git_item") },
	{ key = "-", cb = nvim_callback("dir_up") },
	{ key = "S", cb = nvim_callback("system_open") },
	{ key = "q", cb = nvim_callback("close") },
	{ key = "g?", cb = nvim_callback("toggle_help") },
}

H.set_global_variable("nvim_tree_bindings", new_keybindings);
