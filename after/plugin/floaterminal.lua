-- https://www.youtube.com/watch?v=5PIiKDES_wc
--------------------------------------------------------------------------------

local state = {
    buf = -1,
    win = -1,
}
--------------------------------------------------------------------------------

local function create_floating_window(opts)
    opts = opts or {}
    local width  = opts.width  or math.floor(vim.o.columns * 0.8)
    local height = opts.height or math.floor(vim.o.lines   * 0.8)

    local col = math.floor((vim.o.columns - width ) / 2)
    local row = math.floor((vim.o.lines   - height) / 2)

    local buf = nil
    if vim.api.nvim_buf_is_valid(opts.buf) then
        buf = opts.buf
    else
        buf = vim.api.nvim_create_buf(false, true)
    end

    local win_config = {
        relative  = 'editor',
        width     = width,
        height    = height,
        col       = col,
        row       = row,
        style     = 'minimal',
        border    = 'rounded',
    }
    local win = vim.api.nvim_open_win(buf, true, win_config)

    return { buf = buf, win = win }
end
--------------------------------------------------------------------------------

local function toggle_terminal()
    if vim.api.nvim_win_is_valid(state.win) then
        vim.api.nvim_win_hide(state.win)
    else
        state = create_floating_window(state)
        if vim.bo[state.buf].buftype ~= 'terminal' then
            if vim.uv.os_uname().sysname == 'Windows_NT' then
                vim.cmd.terminal('powershell')
            else
                vim.cmd.terminal()
            end
        end
        vim.api.nvim_feedkeys('A', '', true)
    end
end
vim.api.nvim_create_user_command('TerminalToggle', toggle_terminal, {})
--------------------------------------------------------------------------------

vim.keymap.set({'n', 't'}, '<leader>tt', toggle_terminal, {})
--------------------------------------------------------------------------------

