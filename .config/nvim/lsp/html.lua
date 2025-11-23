return {
  default_config = {
    cmd = { "superhtml", "lsp" },
    filetypes = { "html", "shtml", "htm" },
    single_file_support = true,
    settings = {},

    init_options = {
      provideFormatter = true,
      embeddedLanguages = {
        css = true,
        javascript = true,
      },
      configurationSection = { "html", "css", "javascript" },
    },
  }
}


