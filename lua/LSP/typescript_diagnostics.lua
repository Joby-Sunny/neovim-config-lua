local H = require("helpers");
local nvim_lsp = require("lspconfig");

local filetypes = {
    typescript = "eslint",
    typescriptreact = "eslint",
    javascript = "eslint",
    javascriptreact = "eslint",
}

local linters = {
    eslint = {
        sourceName = "eslint",
        command = "eslint_d",
        rootPatterns = {".eslintrc.js", "package.json"},
        debounce = 100,
        args = {"--stdin", "--stdin-filename", "%filepath", "--format", "json"},
        parseJson = {
            errorsRoot = "[0].messages",
            line = "line",
            column = "column",
            endLine = "endLine",
            endColumn = "endColumn",
            message = "${message} [${ruleId}]",
            security = "severity"
        },
        securities = {[2] = "error", [1] = "warning"}
    }
}

local formatters = {
    prettier = {command = "prettier", args = {"--stdin-filepath", "%filepath"}}
}

local formatFiletypes = {
    typescript = "prettier",
    typescriptreact = "prettier",
    javascript = "prettier",
    javascriptreact = "prettier",
    css = "prettier",
    sass = "prettier",
    less = "prettier",
    html = "prettier",
    svg = "prettier",
    JSON = "prettier",
}


local function on_attach (client, bufnr)
    local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end

    H.cmd [[
        command! LspFormat lua vim.lsp.buf.formatting()
        command! LspCodeAction lua vim.lsp.buf.code_action()
        command! LspRename lua vim.lsp.buf.rename()
    ]]

    --Mappings.
    local opts = { noremap = true, silent = true }

    buf_set_keymap(H.MODE.NORMAL, '[a', 'vim.lsp.diagnostic.goto_prev()', opts)
    buf_set_keymap(H.MODE.NORMAL, ']a', 'vim.lsp.diagnostic.goto_next()', opts)
end

nvim_lsp.diagnosticls.setup {
    on_attach = on_attach,
    filetypes = vim.tbl_keys(filetypes),
    init_options = {
        filetypes = filetypes,
        linters = linters,
        formatters = formatters,
        formatFiletypes = formatFiletypes
    }
}
