local M = {}

local augroup = vim.api.nvim_create_augroup
local keymap = vim.api.nvim_set_keymap

M.my_vscode = augroup('MyVSCode', {})

vim.filetype.add {
    pattern = {
        ['.*%.ipynb.*'] = 'python',
        -- uses lua pattern matching
        -- rathen than naive matching
    },
}

local function notify(cmd)
    return string.format("<cmd>call VSCodeNotify('%s')<CR>", cmd)
end

local function v_notify(cmd)
    return string.format("<cmd>call VSCodeNotifyVisual('%s', 1)<CR>", cmd)
end

keymap('n', 'gd', notify 'editor.action.goToReferences', { silent = true })
keymap('n', '<Leader>ca', notify 'editor.action.refactor', { silent = true }) -- language code actions

keymap('n', '<Leader>pf', notify 'workbench.action.quickOpen', { silent = true }) -- use ripgrep to search files
keymap('n', '<Shift>th', notify 'workbench.action.toggleAuxiliaryBar', { silent = true }) -- toggle docview (help page)
keymap('n', '<Leader>tp', notify 'workbench.action.togglePanel', { silent = true })
keymap('n', '<Leader>fc', notify 'workbench.action.showCommands', { silent = true }) -- find commands
keymap('n', '<Leader>ff', notify 'workbench.action.quickOpen', { silent = true }) -- find files
keymap('n', '<Leader>t', notify 'workbench.action.terminal.toggleTerminal', { silent = true }) -- terminal window

keymap('v', '<Leader>fm', v_notify 'editor.action.formatSelection', { silent = true })
keymap('v', '<Leader>ca', v_notify 'editor.action.refactor', { silent = true })
keymap('v', '<Leader>fc', v_notify 'workbench.action.showCommands', { silent = true })


-- keymap('n', '<Ctrl>k', notify '')
vim.cmd [[
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>
]]

return M