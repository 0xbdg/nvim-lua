vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

vim.keymap.set("n", "ss", ":split<CR><C-w>w", { silent = true })
vim.keymap.set("n", "sv", ":vsplit<CR><C-w>w", { silent = true })

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
