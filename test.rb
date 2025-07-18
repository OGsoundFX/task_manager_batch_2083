require_relative "task"
require_relative "tasks_repository"
require_relative "tasks_view"

view = TasksView.new

# laundry = Task.new("laundry")
# dishes = Task.new("dishes")
# p laundry.done?
# laundry.mark_as_done!
# p laundry.done?

first_task_description = view.ask_for_description
first_task = Task.new(first_task_description)

second_task = Task.new(view.ask_for_description)

repo = TaskRepository.new
repo.create(first_task)
repo.create(second_task)

tasks = repo.all

view.display_all(tasks)
