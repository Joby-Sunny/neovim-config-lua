local VIM = {}

function VIM.setOption(optionName, optionValue)
	vim.opt[optionName] = optionValue
end

function VIM.setGlobalOption(optionName, optionValue)
	vim.g[optionName] = optionValue
end

function VIM.getSetKeyMap(options)
	return function(mode, keymap, command)
		vim.api.nvim_set_keymap(mode, keymap, command, options)
	end
end

function VIM.getSetBufKeyMap(buffer)
	return function(mode, keymap, command, options)
		vim.api.nvim_buf_set_keymap(buffer, mode, keymap, command, options)
	end
end

VIM.MODE = {
	NORMAL   = "n",
	INSERT   = "i",
	VISUAL   = "v",
	TERMINAL = "t",
}


return VIM;
