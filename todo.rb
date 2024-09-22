#Display tasks.
def display_menu(tasks)
  puts "1.Tasks\n2.Quit\nPress a menu choice number followed by enter to access that page.
press 'e' followed by enter to exit the program"

  user_input = gets.chomp

  if user_input == "1"
    display_tasks(tasks)
  elsif user_input == "2"
    puts "Option number 2"
  elsif user_input == "e"
      return false
  end
end

def display_tasks(tasks)
  if tasks.length == 0 #If there are no tasks, return.
    puts "You have no created tasks."
    add_task(tasks)
  end

  puts "\nCurrent tasks:"
  tasks.each_with_index do |task, index| #Display the tasks.
    puts "#{index + 1}. #{task[:name]} - #{task[:completed] ? "Complete" : "Incomplete"}
Press the tasks number followed by enter to change it's status.\nPress just enter to return to the main menu."

    chosen_task = gets.chomp #Get the task number.
    chosen_task.empty? ? return : mark_task((chosen_task.to_i - 1), tasks)
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
  puts "#{tasks[index][:name]} - status - #{tasks[index][:completed] ? "Complete" :"Incomplete"}
Would you like to change the status of #{tasks[index][:name]}? (yes/no)"

  user_input = gets.chomp

  if user_input.downcase == "yes"
    if !tasks[index][:completed]
      tasks[index][:completed] = true
    else
      tasks[index][:completed] == false
      end
  else
    puts "No changes made."
    return
  end

  puts tasks[index][:completed] ? "#{tasks[index][:name]} is now marked as completed" :
         "#{task[index][:name]} is now marked as uncompleted"
end

#Main program.

while true
  tasks = []
  display_menu(tasks) ? next : break
end




