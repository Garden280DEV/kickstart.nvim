local M = {}

M.mappings = {

    -- misc
    { 'n', '<C-s>', '<CMD>w<CR>', 'Save buffer' },
    { 'n', '<C-Q>', '<CMD>qa!<CR>', 'Quit without saving' },
    { { 'n', 'v' }, '<leader>y', '"+y', 'Copy to system clipboard' },
    { { 'n', 'v' }, '<leader>p', '"+p', 'Paste from system clipboard after cursor' },
    { { 'n', 'v' }, '<leader>P', '"+P', 'Paste from system clipboard before cursor' },

    { 'n', '<left>', '<cmd>echo "Use h to move!!"<CR>' },
    { 'n', '<right>', '<cmd>echo "Use l to move!!"<CR>' },
    { 'n', '<up>', '<cmd>echo "Use k to move!!"<CR>' },
    { 'n', '<down>', '<cmd>echo "Use j to move!!"<CR>' },

    -- editing
    { 'n', '<esc>', '<CMD>noh<CR>', 'Clear highlights' },
    { 'i', '<C-l>', '<ESC>A;<CR>', 'End line with semicolon' },

    -- ui
    { 'n', '<C-h>', '<C-w><C-h>', 'Move focus to the left window' },
    { 'n', '<C-l>', '<C-w><C-l>', 'Move focus to the right window' },
    { 'n', '<C-j>', '<C-w><C-j>', 'Move focus to the lower window' },
    { 'n', '<C-k>', '<C-w><C-k>', 'Move focus to the upper window' },

    { 'n', '<leader>wh', '<C-W>h', 'Move window left' },
    { 'n', '<leader>wj', '<C-W>j', 'Move window down' },
    { 'n', '<leader>wk', '<C-W>k', 'Move window up' },
    { 'n', '<leader>wh', '<C-W>h', 'Move window left' },

    -- nvim-tree
    { 'n', '<leader>a', '<CMD>NvimTreeOpen<CR>', 'Open nvim-tree' },
    { 'n', '<leader>;', '<CMD>NvimTreeClose<CR>', 'Close nvim-tree' },

    -- lsp
    { 'n', '<leader>lq', vim.diagnostic.setloclist, '[L]SP Open diagnostic [Q]uickfix list' },
    { 'n', '<leader>lr', vim.lsp.buf.rename, '[L]SP [R]ename' },
    { 'n', '<leader>lg', vim.lsp.buf.definition, '[L]SP Go to [d]efinition' },
    { 'n', '<leader>lG', vim.lsp.buf.implementation, '[L]SP Go to [i]mplementation' },
    { 'n', '<leader>lh', vim.lsp.buf.hover, '[L]SP [H]over' },
    { 'n', '<leader>la', vim.lsp.buf.code_action, '[L]SP Code [a]ction' },
    { 'i', '<C-h>', vim.lsp.buf.signature_help, 'LSP Signature help' },
}

return M
