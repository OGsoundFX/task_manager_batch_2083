class TasksView
  def display_all(tasks)
    puts "\n"
    tasks.each_with_index do |task, index|
      done = task.done? ? "[X]" : "[ ]"
      puts "#{index + 1}- #{task.description} / #{done}"
    end
    puts "\n"
  end

  def ask_for_description
    puts "What task do you want to add?"
    gets.chomp
  end

  def ask_for_task
    puts "Which task to you want to mark as done"
    gets.chomp.to_i - 1
  end
end
