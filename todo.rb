#Display tasks.
def display_menu(tasks)
  puts "1.Tasks\n2.Quit"
  user_input = gets.chomp

  if user_input == "1"
    display_tasks(tasks)
  elsif user_input == "2"
    return
  end
end

def display_tasks(tasks)
  if tasks.length == 0 #If there are no tasks, return.
    puts "You have no created tasks."
    add_task(tasks)
  end

  puts "\nCurrent tasks:"
  tasks.each_with_index do |task, index| #Display the tasks.
    puts "#{index + 1}. #{task[:name]} - #{task[:completed]}
\nPress the tasks number followed by enter to change it's status"

    # chosen_task = gets.chomp.to_i #Get the task number.
    # mark_task((chosen_task - 1), tasks)
  end
end

#Add a task.
def add_task(tasks)
  puts "Would you like to add a task? (yes/no)"

  user_input = gets.chomp
  user_input.downcase == "yes" ? name_task(tasks) : (puts "No tasks added.")
end

#Name the task.
def name_task(tasks)
  puts "What task would you like to add?"
  task = {name: gets.chomp, completed: false}
  tasks << task
end

#Mark the task as complete or incomplete.
def mark_task(index, tasks)
  puts "#{tasks[index][:name]} status: #{tasks[index][:completed]}
\nWould you like to change the status of #{tasks[index][:name]}? (yes/no)"

  user_input = gets.chomp

  if user_input.downcase == "yes"
    if !tasks[index][:completed]
      tasks[index][:completed] = true
    else
      tasks[index][:completed] == false
      end
  else
    puts "No changes made."
  end
  puts "#{tasks[index][:completed]}"
end

#Main program.
tasks = []
display_menu(tasks)




