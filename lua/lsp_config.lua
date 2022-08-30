local VIM = require("utils")

local MODE = VIM.MODE


return function(client, bufnr)
    local options = { noremap = true, silent = true, buffer = bufnr }
    -- Enable completion triggered by <c-x><c-o>
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

    vim.keymap.set(MODE.NORMAL, '<space>e', vim.diagnostic.open_float, options)
    vim.keymap.set(MODE.NORMAL, '[d', vim.diagnostic.goto_prev, options)
    vim.keymap.set(MODE.NORMAL, ']d', vim.diagnostic.goto_next, options)
    vim.keymap.set(MODE.NORMAL, '<space>q', vim.diagnostic.setloclist, options)

    -- Mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    vim.keymap.set(MODE.NORMAL, 'gD', vim.lsp.buf.declaration, options)
    vim.keymap.set(MODE.NORMAL, 'gd', vim.lsp.buf.definition, options)
    vim.keymap.set(MODE.NORMAL, 'K', vim.lsp.buf.hover, options)
    vim.keymap.set(MODE.NORMAL, 'gi', vim.lsp.buf.implementation, options)
    vim.keymap.set(MODE.NORMAL, '<C-k>', vim.lsp.buf.signature_help, options)
    vim.keymap.set(MODE.NORMAL, '<space>wa', vim.lsp.buf.add_workspace_folder, options)
    vim.keymap.set(MODE.NORMAL, '<space>wr', vim.lsp.buf.remove_workspace_folder, options)
    vim.keymap.set(MODE.NORMAL, '<space>wl', function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, options)
    vim.keymap.set(MODE.NORMAL, '<space>D', vim.lsp.buf.type_definition, options)
    vim.keymap.set(MODE.NORMAL, '<space>rn', vim.lsp.buf.rename, options)
    vim.keymap.set(MODE.NORMAL, '<space>ca', vim.lsp.buf.code_action, options)
    vim.keymap.set(MODE.NORMAL, 'gr', vim.lsp.buf.references, options)
    vim.keymap.set(MODE.NORMAL, '<space>f', vim.lsp.buf.formatting, options)
end
