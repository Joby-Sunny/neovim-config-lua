local VIM = require("utils")

VIM.setOption('completeopt', { 'menu', 'menuone', 'noselect' });

local cmp = require('cmp')
local luasnip = require('luasnip')


local select_opts = { behavior = cmp.SelectBehavior.Select }

cmp.setup({
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end
    },
    sources = {
        { name = 'nvim_lsp', keyword_length = 1 },
        { name = 'path' , keyword_length = 2 },
        { name = 'buffer', keyword_length = 3 },
        { name = 'luasnip', keyword_length = 3 },
    },
    window = {
        documentation = cmp.config.window.bordered()
    },
    formatting = {
        fields = { 'menu', 'abbr', 'kind' },
        format = function(entry, item)
            local menu_icon = {
                nvim_lsp = '',
                luasnip = '',
                buffer = '',
                path = '',
            }

            item.menu = menu_icon[entry.source.name]
            return item
        end,
    },
    mapping = {
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
        ['<Up>'] = cmp.mapping.select_prev_item(select_opts),
        ['<Down>'] = cmp.mapping.select_next_item(select_opts),
        ['<C-p>'] = cmp.mapping.select_prev_item(select_opts),
        ['<C-n>'] = cmp.mapping.select_next_item(select_opts),
        ['<C-u>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-e>'] = cmp.mapping.abort(),
    }
})
