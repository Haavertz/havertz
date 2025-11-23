
return {
  default_config = {
    cmd = { "css-languageserver", "--stdio" },
    filetypes = { "css", "scss", "less" },
    single_file_support = true,
    settings = {
      css = { validate = true },
      scss = { validate = true },
      less = { validate = true },
    },
    root_markers = { "package.json", ".git", "index.html", ".html" },
    init_options = {
      provideFormatter = true,
      configurationSection = { "css", "scss", "less" },
    },
  }
}
