require_relative "tasks_view"
require_relative "task"

class TasksController
  def initialize(repository)
    @repository = repository
    @view = TasksView.new
  end

  def list
    list_tasks
  end

  def add
    # 1- asking for the new task name (description)
    task_description = @view.ask_for_description
    # 2- creatin (initializing) the new task instance passing the description as an argument
    task = Task.new(task_description)
    # 3- Store the new task in our repository
    @repository.create(task)
  end

  def done
    list_tasks
    index = @view.ask_for_task
    task = @repository.find(index)
    task.mark_as_done!
  end

  private

  def list_tasks
    tasks = @repository.all
    @view.display_all(tasks)
  end
end
