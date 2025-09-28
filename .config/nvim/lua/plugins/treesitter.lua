return{
  "nvim-treesitter/nvim-treesitter",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      ensure_installed = {"lua", "javascript", "java"},
      auto_install = true,
      heighlight = { enable = true },
      trueindent = { enable = true },
      incremental_selection = { enable = true },
    })
  end
}

