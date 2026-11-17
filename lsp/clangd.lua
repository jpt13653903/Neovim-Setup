return {
    cmd = { 'clangd' },
    filetypes = { 'c', 'cpp', 'cuda' },
    root_markers = { '.clangd', 'compile_commands.json', '.git' },
    on_attach = function(client, bufnr)
        client.server_capabilities.semanticTokensProvider = nil
        vim.lsp.completion.enable(true, client.id, bufnr, {
            autotrigger = false,
            convert = function(item)
                return { abbr = item.label:gsub('%b()', '') }
            end,
        })
    end,
}
