-- local H = require("helpers");
-- local nvim_lsp = require("lspconfig");

-- local on_attach = function (client, bufnr) 
--     local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
--     local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

    -- Enable completion triggered by <C-x><C-o>
    -- buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

    --Mappings.
    -- local opts = { noremap = true, silent = true }


  -- See `:help vim.lsp.*` for documentation on any of the below functions
  -- buf_set_keymap(H.MODE.NORMAL, 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  -- buf_set_keymap(H.MODE.NORMAL, 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  -- buf_set_keymap(H.MODE.NORMAL, 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  -- buf_set_keymap(H.MODE.NORMAL, 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  -- buf_set_keymap(H.MODE.NORMAL, 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)

  -- buf_set_keymap(H.MODE.NORMAL, '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  -- buf_set_keymap(H.MODE.NORMAL, '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
  -- buf_set_keymap(H.MODE.NORMAL, '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
  -- buf_set_keymap(H.MODE.NORMAL, '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
  -- buf_set_keymap(H.MODE.NORMAL, '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  -- buf_set_keymap(H.MODE.NORMAL, '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  -- buf_set_keymap(H.MODE.NORMAL, '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  -- buf_set_keymap(H.MODE.NORMAL, '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
  -- buf_set_keymap(H.MODE.NORMAL, '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
  -- buf_set_keymap(H.MODE.NORMAL, ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
  -- buf_set_keymap(H.MODE.NORMAL, '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
  -- buf_set_keymap(H.MODE.NORMAL, '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)

-- end

-- return on_attach; 
