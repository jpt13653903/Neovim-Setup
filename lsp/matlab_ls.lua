local ignored_codes = {
    NOPTS = true,
    CLALL = true
}

return {
    cmd = { 'matlab-language-server', '--stdio' },
    filetypes = { 'matlab' },
    root_markers = { '.git' },
    settings = {
        MATLAB = {
            installPath = 'C:/Program Files/MATLAB/R2025b',  -- your MATLAB folder
            indexWorkspace = true,          -- index all files in the project
            matlabConnectionTiming = 'onStart',
            telemetry = false,
        },
    },
    handlers = {
        ['textDocument/publishDiagnostics'] = function(err, result, ctx)
            if result and result.diagnostics then
                result.diagnostics = vim.tbl_filter(function(d)
                    return not ignored_codes[tostring(d.code)]
                end, result.diagnostics)
            end
            vim.lsp.diagnostic.on_publish_diagnostics(err, result, ctx)
        end,
    },
}
