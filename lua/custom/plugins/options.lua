vim.g.have_nerd_font = true -- sets Nerd Fonf accessibility for styling
vim.o.relativenumber = true -- Shows line number relative to current line
vim.opt.tabstop = 4 -- Number of spaces a <Tab> in the file counts for
vim.opt.shiftwidth = 4 -- Number of spaces used for each step of (auto)indent
vim.opt.softtabstop = 4 -- Number of spaces a <Tab> counts for in insert mode
vim.opt.expandtab = false -- Converts <Tab> input to spaces
vim.opt.autoindent = true -- Copy indent from current line when starting a new line
vim.opt.relativenumber = true -- show other line numbers relative to current one
vim.opt.fixeol = false -- no extra End of Line / new-line character at the end of file

vim.opt.list = true
-- This configuration displays tabs as "▸ " and trailing spaces as "."
vim.opt.listchars = { tab = '↹ ', trail = '.' }

return {} -- empty table
