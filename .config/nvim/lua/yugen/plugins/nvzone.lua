return {
  {
    "nvzone/timerly",
    dependencies = 'nvzone/volt',
    cmd = "TimerlyToggle",
    opts = {
      minutes = { 30, 5 },
      position = "top-right"
    } 
  },
  {
    "nvzone/typr",
    dependencies = "nvzone/volt",
    cmd = { "Typr", "TyprStats" },
    opts = {
      -- phrases = { "neovim supremacy" },
      insert_on_start = true,
      mode = "phrases",
      numbers = true,
      wpm_goal = 140
    },
  }

}
