class Task

  def initialize(description, due_date)
    @description = description
    @due_date = due_date

  end

  def description
    @description
  end

  def description=(description)
    @description = description
    @description
  end

  def due_date
    @due_date
  end

  def due_date=(due_date)
    @due_date = due_date
    @due_date
  end


end


class TodoList < Task

    @@tasks = []



  def self.add_task(task)
    @@tasks << task
  end

  def self.tasks_list
    @@tasks
  end


end









task1 = Task.new("Work on assignments", "Monday, October 2, 2017")
task2 = Task.new("Drink coffee", "Monday, October 3, 2017")
task3 = Task.new("Must adult", "Monday, October 5, 2017")

TodoList.add_task(task1)
TodoList.add_task(task2)
TodoList.add_task(task2)


puts task1.description
puts task1.due_date

puts task2.description
puts task2.due_date

puts task3.description
puts task3.due_date

puts TodoList.tasks_list.inspect
