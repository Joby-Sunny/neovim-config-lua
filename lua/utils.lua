local VIM = {}

function VIM.setOption(optionName, optionValue)
	vim.opt[optionName] = optionValue
end

function VIM.getSetKeyMap(options)
	return function(mode, keymap, command)
		vim.api.nvim_set_keymap(mode, keymap, command, options)
	end
end

VIM.MODE = {
	NORMAL   = "n",
	INSERT   = "i",
	VISUAL   = "v",
	TERMINAL = "t",
}


return VIM;
