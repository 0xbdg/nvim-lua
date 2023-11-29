require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "rust_analyzer", "lua_ls"}
})

local attach = function(_,_)
  vim.keymap.set('n','<leader>rn',vim.lsp.buf.rename,{})
  vim.keymap.set('n','<leader>ca',vim.lsp.buf.code_action,{})
  vim.keymap.set('n', 'gd',vim.lsp.buf.definition, {})
  vim.keymap.set('n', 'gi',vim.lsp.buf.implementation, {})
  vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_reference, {})
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
end

require("lspconfig").rust_analyzer.setup{
  on_attach = attach
}

require("lspconfig").lua_ls.setup{
  on_attach = attach
}
