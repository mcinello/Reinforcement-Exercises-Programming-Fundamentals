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

task1 = Task.new("Work on assignments", "Monday, October 2, 2017")
task2 = Task.new("Drink coffee", "Monday, October 2, 2017")


puts task1.description
puts task1.due_date

puts task2.description
puts task2.due_date
