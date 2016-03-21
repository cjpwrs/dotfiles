class ProjectCompletion
  def initialize(path, command)
    @path = path
    @command = command
  end

  def matches
    projects.select do |task|
      task[0, typed.length] == typed
    end
  end

  def typed
    @command[/\s(.+?)$/, 1] || ''
  end

  def projects
    `ls #{@path}/`.split
  end
end
