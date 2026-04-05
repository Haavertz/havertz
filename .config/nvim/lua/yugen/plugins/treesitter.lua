return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  config = function()
    require("nvim-treesitter").setup {
      ensure_installed = { "rust", "javascript", "lua", "java", "python" },

      highlight = {
        enable = true,
      },
    }
  end
}
