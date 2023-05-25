require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls", "pylsp", "texlab"}
})

local on_attach = (function(_, _)
  vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
  vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
--  vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
--  vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
--  vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
--  vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
  vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {}) 
  vim.keymap.set("n", "<leader>gi", vim.lsp.buf.implementation, {}) 
  vim.keymap.set("n", "<leader>gr", require('telescope.builtin').lsp_references, {})
  vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
--  vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)





require("lspconfig").lua_ls.setup {
  on_attach = on_attach}
require("lspconfig").pylsp.setup {
  on_attach = on_attach}
require("lspconfig").texlab.setup {
  on_attach = on_attach}
