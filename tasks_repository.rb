class TasksRepository
  def initialize
    @tasks = []
  end

  def create(task)
    @tasks << task
  end

  def all
    return @tasks
  end

  def find(index)
    @tasks[index]
  end
end
