local M = {}

local luasnip = require 'luasnip'
local telescope = require 'telescope.builtin'

M.mappings = {
    -- snippets
    {
        'i',
        '<C-l>',
        function()
            if luasnip.locally_jumpable(1) then luasnip.jump(1) end
        end,
    },
    {
        'i',
        '<C-h>',
        function()
            if luasnip.locally_jumpable(-1) then luasnip.jump(-1) end
        end,
    },

    -- tabs
    { 'n', '<Tab>', '<CMD>BufferNext<CR>', 'Go to next buffer' },
    { 'n', '<S-Tab>', '<CMD>BufferNext<CR>', 'Go to prev buffer' },

    -- menus
    { 'n', '<Leader>ml', '<CMD>Lazy<CR>', 'Open Lazy menu' },
    { 'n', '<Leader>mm', '<CMD>Mason<CR>', 'Open Mason menu' },
    { 'n', '<Leader>mt', '<CMD>Themify<CR>', 'Open Themify menu' },

    -- telescope
    { 'n', '<leader><leader>', telescope.find_files, '[S]earch [F]iles' },
    { 'n', '<leader>sr', telescope.resume, '[S]earch [R]esume' },
    { 'n', '<leader>s.', telescope.oldfiles, '[S]earch Recent Files ("." for repeat},' },
    { 'n', '<leader>sh', telescope.help_tags, '[S]earch [H]elp' },
    { 'n', '<leader>sk', telescope.keymaps, '[S]earch [K]eymaps' },
    { 'n', '<leader>ss', telescope.builtin, '[S]earch [S]elect Telescope' },
    { 'n', '<leader>sg', telescope.live_grep, '[S]earch by [G]rep' },
    { 'n', '<leader>sd', telescope.diagnostics, '[S]earch [D]iagnostics' },
    { 'n', '<leader>sc', telescope.commands, '[S]earch [C]ommands' },
    { 'n', '<leader>sb', telescope.buffers, '[S]earch existing [B]uffers' },
    { { 'n', 'v' }, '<leader>sw', telescope.grep_string, '[S]earch current [W]ord' },
}

return M
