return {
    cmd = { 'vhdl_ls' },
    filetypes = { 'vhdl' },
    root_markers = { 'vhdl_ls.toml', '.git' },
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
