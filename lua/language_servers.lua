local on_attach = require("lsp_config")

local lsp_flags = {
    debounce_text_changes = 150
}

return function(lsp_package, language_server, completion_package)
    local capabilities = require(completion_package).update_capabilities(vim.lsp.protocol.make_client_capabilities())

    require(lsp_package)[language_server].setup {
        capabilities = capabilities,
        on_attach = on_attach,
        lsp_flags = lsp_flags
    }
end
