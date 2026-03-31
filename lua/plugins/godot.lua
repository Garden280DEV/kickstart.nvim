return {
    'Mathijs-Bakker/godotdev.nvim',
    init = function() vim.lsp.enable { 'gdscript' } end,
    dependencies = { 'nvim-lspconfig', 'nvim-dap', 'nvim-dap-ui', 'nvim-treesitter' },
}
