local M = {}

for server, config in pairs {
    -- misc
    'stylua',
    lua_ls = {
        on_init = function(client)
            if client.workspace_folders then
                local path = client.workspace_folders[1].name
                if path ~= vim.fn.stdpath 'config' and (vim.uv.fs_stat(path .. '/.luarc.json') or vim.uv.fs_stat(path .. '/.luarc.jsonc')) then return end
            end

            client.config.settings.Lua = vim.tbl_deep_extend('force', client.config.settings.Lua, {
                runtime = {
                    version = 'LuaJIT',
                    path = { 'lua/?.lua', 'lua/?/init.lua' },
                },
                workspace = {
                    checkThirdParty = false,
                    library = vim.tbl_filter(
                        function(d) return not d:match(vim.fn.stdpath 'config' .. '/?a?f?t?e?r?') end,
                        vim.api.nvim_get_runtime_file('', true)
                    ),
                },
            })
        end,
        settings = {
            Lua = {},
        },
    },
    'clangd',
    -- python
    'pyright',
    'black',
    -- web
    html = {
        settings = { html = {
            format = {
                indentInnerHtml = true,
            },
        } },
    },
    'cssls',
    'ts_ls',
    'svelte',
    'biome',
} do
    if type(config) == 'string' then
        M[config] = {}
    elseif type(config) == 'table' then
        M[server] = config
    end
end

return M
