local opt = vim.opt

local undo_dir = vim.fn.stdpath('data') .. '/undo'

if vim.fn.isdirectory(undo_dir) == 0 then
  vim.fn.mkdir(undo_dir, "p")
end

-- Undo persistence
opt.undodir = undo_dir -- Sets the dir for the undo persistence file
opt.undofile = true -- Enable undo persistence
opt.undolevels = 10000 -- Sets max undo history

-- Tabulation
opt.tabstop = 2 -- Number of visual spaces per tab
opt.softtabstop = 2 -- Number of spaces per tab when editing
opt.shiftwidth = 2 -- Number of spaces to use for each step of (auto)indent
opt.expandtab = true -- Use spaces instead of tab characters
opt.smartindent = true -- Insert indents automatically
opt.wrap = false -- Disable Autowrap

-- Clipboard
opt.clipboard = vim.env.SSH_TTY and "" or "unnamedplus" -- Sync with system clipboard
-- only set clipboard if not in ssh, to make sure the OSC 52
-- integration works automatically. Requires Neovim >= 0.10.0

-- Line Number
opt.number = true -- Enable current line number
opt.relativenumber = true -- Enable relative line numbers
opt.cursorline = true -- Enables decoration on current line number
opt.statuscolumn = " %=%{v:relnum?v:relnum:v:lnum} %s " -- Sets the line numbers column layout

-- Changes
opt.autowrite = true -- Enable auto write
opt.confirm = true -- Confirm to save changes before exiting modified buffer

-- Quality of life
opt.termguicolors = true -- True color support
opt.smoothscroll = true -- Enable smoothscroll
opt.completeopt = "menu,menuone,noselect" -- Autocompletion settings
opt.showmode = false -- Dont show mode since we have a statusline
