local H = {}

H.set = vim.opt;

H.set_global_variable = function (key, value)
	vim.g[key] = value;
end;

H.set_keymap = vim.api.nvim_set_keymap;

H.MODE = {
	NORMAL = 'n',
	VISUAL = 'v',
	INSERT = 'i',
}

H.cmd = vim.cmd;

return H;
