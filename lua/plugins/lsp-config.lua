return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {"lua_ls", "ts_ls", "pyright","clangd"}
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      -- Use the new vim.lsp.config API (Neovim 0.11+)
      vim.lsp.config('lua_ls', {})
      vim.lsp.config('ts_ls', {})
      vim.lsp.config('pyright', {})
      vim.lsp.config('clangd', {})
      
      -- Enable the LSP servers
      vim.lsp.enable('lua_ls')
      vim.lsp.enable('ts_ls')
      vim.lsp.enable('pyright')
      vim.lsp.enable('clangd')
      
      vim.keymap.set('n','K',vim.lsp.buf.hover, {})
    end
  }
}
