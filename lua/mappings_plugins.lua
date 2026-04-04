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

    -- menus
    { 'n', '<Leader>ml', '<CMD>Lazy<CR>', 'Open Lazy menu' },
    { 'n', '<Leader>mm', '<CMD>Mason<CR>', 'Open Mason menu' },
    { 'n', '<Leader>mt', '<CMD>Themify<CR>', 'Open Themify menu' },
}

return M
