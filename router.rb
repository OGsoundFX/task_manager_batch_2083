class Router
  def initialize(controller)
    @controller = controller
    @running = true
  end

  def run
    while @running
      choice = display_menu
      print `clear`
      dispatch(choice)
    end
  end

  private

  def display_menu
    puts "Welcome to your task manager"
    puts "1- Display all tasks"
    puts "2- Add a new task"
    puts "3- Mark a task as done"
    puts "4- Remove a task"
    puts "9- Leave program"
    gets.chomp.to_i
  end

  def dispatch(choice)
    case choice
    when 1 then @controller.list
    when 2 then @controller.add
    when 3 then @controller.done
    when 4 then puts "Coming soon!"
    when 9
      puts "Goodbye"
      @running = false
    end
  end
end
