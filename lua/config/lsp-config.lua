

require("mason").setup()
require("mason-lspconfig").setup()


vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    vim.keymap.set('n', 'crr', vim.lsp.buf.rename, { buffer = args.buf })
    vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, { buffer = args.buf })
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, { buffer = args.buf })
  end,
})


vim.api.nvim_create_autocmd('LspDetach', {
  callback = function(args)
    vim.keymap.del('n', 'crr', { buffer = args.buf })
    vim.keymap.set({ 'n', 'v' }, '<space>ca', { buffer = args.buf })
    vim.keymap.set('n', 'gr', { buffer = args.buf })
  end,
})



local capabilities = require('cmp_nvim_lsp').default_capabilities()

require'lspconfig'.lua_ls.setup {
    capabilities = capabilities,
}


require'lspconfig'.pyright.setup {
  capabilities = capabilities,
}
