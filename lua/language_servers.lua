local on_attach = require("lsp_config")

local lsp_flags = {
    debounce_text_changes = 150
}

local completion_package = 'cmp_nvim_lsp'
local lsp_package = 'lspconfig'

-- initiate tsserver
local function start_tsserver(language_server)
    local capabilities = require(completion_package).default_capabilities(vim.lsp.protocol.make_client_capabilities())
    require(lsp_package)[language_server].setup {
        capabilities = capabilities,
        on_attach = on_attach,
        lsp_flags = lsp_flags
    }
end

local function start_cssls(language_server)
    --Enable (broadcasting) snippet capability for completion
    local capabilities = require(completion_package).default_capabilities(vim.lsp.protocol.make_client_capabilities())
    capabilities.textDocument.completion.completionItem.snippetSupport = true

    require(lsp_package)[language_server].setup {
        on_attach = on_attach,
        capabilities = capabilities,
        lsp_flags = lsp_flags
    }
end

local function start_cssmodules_ls(language_server)
    --Enable (broadcasting) snippet capability for completion
    local capabilities = require(completion_package).default_capabilities(vim.lsp.protocol.make_client_capabilities())

    require(lsp_package)[language_server].setup {
        on_attach = function(client, buffnr)
            -- avoid accepting `go-to-definition` responses from this LSP
            client.server_capabilities.goto_definition = false
            on_attach(client, buffnr)
        end,
        capabilities = capabilities,
        lsp_flags = lsp_flags
    }
end

local function start_html(language_server)
    --Enable (broadcasting) snippet capability for completion
    local capabilities = require(completion_package).default_capabilities(vim.lsp.protocol.make_client_capabilities())
    capabilities.textDocument.completion.completionItem.snippetSupport = true

    require(lsp_package)[language_server].setup {
        on_attach = on_attach,
        capabilities = capabilities,
        lsp_flags = lsp_flags
    }
end

local function start_jsonls(language_server)
    --Enable (broadcasting) snippet capability for completion
    local capabilities = require(completion_package).default_capabilities(vim.lsp.protocol.make_client_capabilities())
    capabilities.textDocument.completion.completionItem.snippetSupport = true

    require(lsp_package)[language_server].setup {
        on_attach = on_attach,
        capabilities = capabilities,
        lsp_flags = lsp_flags
    }
end

local function start_eslint(language_server)
    --Enable (broadcasting) snippet capability for completion
    local capabilities = require(completion_package).default_capabilities(vim.lsp.protocol.make_client_capabilities())
    capabilities.textDocument.completion.completionItem.snippetSupport = true

    require(lsp_package)[language_server].setup {
        on_attach = on_attach,
        capabilities = capabilities,
        lsp_flags = lsp_flags
    }
end

local function start_emmet(language_server)
  local capabilities = require(completion_package).default_capabilities(vim.lsp.protocol.make_client_capabilities())
  capabilities.textDocument.completion.completionItem.snippetSupport = true

  require(lsp_package)[language_server].setup {
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = { 'html', 'typescriptreact', 'javascriptreact', 'css', 'sass', 'scss', 'less' },
    init_options = {
      html = {
        options = {
          -- For possible options, see: https://github.com/emmetio/emmet/blob/master/src/config.ts#L79-L267
          ["bem.enabled"] = true,
        },
      },
    }
  }
end

-- invoking servers
start_tsserver('tsserver');
start_cssls('cssls');
start_cssmodules_ls('cssmodules_ls');
start_html('html');
start_jsonls('jsonls');
start_eslint('eslint');
start_emmet('emmet_ls');
