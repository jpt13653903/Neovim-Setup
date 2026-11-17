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
}
