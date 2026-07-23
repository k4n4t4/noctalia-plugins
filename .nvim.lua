-- .nvim.lua
local cwd = vim.fn.getcwd()

vim.lsp.config('luau_lsp', {
    cmd = { 'luau-lsp', 'lsp' },
    root_markers = { 'plugin.toml', '.git' },
    settings = {
        ['luau-lsp'] = {
            types = {
                definitionFiles = {
                    cwd .. '/noctalia.d.luau',
                },
            },
        },
    },
})
