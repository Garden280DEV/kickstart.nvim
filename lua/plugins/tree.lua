return {
    'nvim-tree/nvim-tree.lua',
    opts = {
        filters = {
            custom = { '.uid', '.tmp', '.import' },
        },
    },
    init = function()
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1
    end,
}
