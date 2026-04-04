return { -- Collection of various small independent plugins/modules
    'nvim-mini/mini.nvim',
    config = function()
        require('mini.surround').setup {
            mappings = {
                add = '<leader>ea',
                delete = '<leader>ed',
                find = '<leader>ef',
                find_left = '<leader>eF',
                highlight = '<leader>eh',
                replace = '<leader>er',
                update_n_lines = '<leader>en',
            },
        }
    end,
}
