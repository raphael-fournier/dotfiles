return {
  "williamboman/mason-lspconfig.nvim",
  dependencies = { "williamboman/mason.nvim" }, -- Ensure mason.nvim is loaded first
  config = function()
    require("mason-lspconfig").setup({
      automatic_enable = false,
      ensure_installed = {
        "lua_ls",
        "rust_analyzer", -- Needed for rustaceanvim
        "ruby_lsp",
        -- "ts_ls",
        "vtsls",
        "eslint",
        "tailwindcss",
        -- "gopls", -- FIXME: fail for some reason
      },
    })
  end,
}
