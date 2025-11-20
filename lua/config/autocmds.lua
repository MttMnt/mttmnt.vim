-- Autoformatting on save
vim.api.nvim_create_autocmd("BufWritePre", {
  callback = function()
    local clients = vim.lsp.get_clients({ bufnr = vim.api.nvim_get_current_buf() })
    if #clients > 0 then
      vim.lsp.buf.format({ async = false })
    end
  end,
})
