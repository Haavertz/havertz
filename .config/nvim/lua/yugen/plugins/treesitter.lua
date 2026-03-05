return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  config = function()
    require'nvim-treesitter'.setup {
        install_dir = "/parsers",
    }
    require'nvim-treesitter'.install { 'rust', 'javascript', 'lua', 'java', 'python' }

  end
}
