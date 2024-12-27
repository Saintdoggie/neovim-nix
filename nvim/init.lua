
--if not vim.g.vscode then
    --require "keymaps";
--else
    --require "configs.vscode";
--end

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.cmd [[
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>
]]

vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

-- colors
vim.cmd.colorscheme("catppuccin-frappe")

--set tabbing to 4 characters
vim.opt.tabstop = 4;
vim.opt.shiftwidth = 4;

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.updatetime = 50;

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.nvim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true;

vim.opt.updatetime = 50;

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

