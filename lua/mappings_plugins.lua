local M = {}

local ls = require 'luasnip'

M.mappings = {
    -- snippets
    {
        'i',
        '<C-l>',
        function()
            if ls.locally_jumpable(1) then ls.jump(1) end
        end,
    },
    {
        'i',
        '<C-h>',
        function()
            if ls.locally_jumpable(-1) then ls.jump(-1) end
        end,
    },

    -- tabs
    { 'n', '<Tab>', '<CMD>BufferNext<CR>', 'Go to next buffer' },
    { 'n', '<S-Tab>', '<CMD>BufferNext<CR>', 'Go to prev buffer' },
}

return M
