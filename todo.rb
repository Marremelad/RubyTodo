
def add_task(tasks)
  puts "Would you like to add a task? (yes/no)"
  user_input = gets.chomp
  user_input.downcase == "yes" ? name_task(tasks) : (puts "No tasks added.")
end

def name_task(tasks)
  puts "What task would you like to add?"
  task = {name: gets.chomp, completed: false}
  tasks << task
end

def display_tasks(tasks)
  puts "\nYou have the following tasks:"
  tasks.each_with_index do |task, index|
    puts "#{index + 1}. #{task[:name]} - #{task[:completed]}
\nPress the tasks number followed by enter to change it's status"
    chosen_task = gets.chomp.to_i
    mark_task((chosen_task - 1), tasks)
    end
end

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

task = []
add_task(task)
display_tasks(task)
