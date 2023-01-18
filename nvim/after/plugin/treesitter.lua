require'nvim-treesitter.configs'.setup {
    ensure_installed = { "c", "lua", "vim", "help", "rust", "javascript", "python", "typescript", "cpp" },
    sync_install = false,
    auto_install = true,
    highlight = {
        enable = true,
    },
    indent = {
        enable = true,
    }
}
local function setup_lsp_diags()
  vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics,
    {
      virtual_text = true,
      signs = true,
      update_in_insert = false,
      underline = true,
    }
  )
end
setup_lsp_diags()
