vim.api.nvim_create_user_command("JavaNewProject", function()
  local project_name = vim.fn.input("Project name: ", "MyProject")
  local project_path = vim.fn.input("Where to create? ", vim.fn.getcwd())
  local full_path = project_path .. "/" .. project_name

  os.execute("mkdir -p " .. full_path)

  vim.ui.select({ "Maven", "Gradle" }, { prompt = "Create Java project with:" }, function(choice)
    if not choice then
      print("Operation canceled")
      return
    end

    local cmd
    if choice == "Maven" then
      cmd = string.format(
        "mvn archetype:generate -DgroupId=com.example -DartifactId=%s -DarchetypeArtifactId=maven-archetype-quickstart -DinteractiveMode=false",
        project_name
      )
    elseif choice == "Gradle" then
      cmd = "gradle init --type java-application"
    end

    vim.fn.jobstart(cmd, {
      cwd = full_path,
      on_stdout = function(_, data) if data then print(table.concat(data, "\n")) end end,
      on_stderr = function(_, data) if data then print(table.concat(data, "\n")) end end,
      on_exit = function() print(choice .. " project created at " .. full_path) end,
    })
  end)
end, {})

