local H = require("helpers");
local nvim_lsp = require("lspconfig");
local cmp_nvim_lsp = require("cmp_nvim_lsp");

local function on_attach (client, bufnr)
    -- disable default formatting of typescript-language-server
    client.resolved_capabilities.document_formatting = false;

    local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
    local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end
    
    -- Enable completion triggered by <C-x><C-o>
    buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

    --Mappings.
    local opts = { noremap = true, silent = true }

    buf_set_keymap(H.MODE.NORMAL, 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
    buf_set_keymap(H.MODE.NORMAL, 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
    buf_set_keymap(H.MODE.NORMAL, 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
    buf_set_keymap(H.MODE.NORMAL, 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
    buf_set_keymap(H.MODE.NORMAL, 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
end


nvim_lsp.tsserver.setup {
    on_attach = on_attach,
    capabilites = cmp_nvim_lsp.update_capabilities(vim.lsp.protocol.make_client_capabilities()),
}


