local cwd = vim.fn.getcwd()

vim.lsp.config('luau_lsp', {
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
