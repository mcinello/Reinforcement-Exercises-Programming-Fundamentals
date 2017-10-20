seating_chart = [
  [nil, "Pumpkin", nil, nil],
  ["Socks", nil, "Mimi", nil],
  ["Gismo", "Shadow", nil, nil],
  ["Smokey","Toast","Pacha","Mau"]
]

# display list of available seats

# seating_chart elements are arrays
# row is an array
# seat is an index

# iterate through seating_chart
# in same method iterate through the index

seating_chart.each_with_index do |val, row|
  val.each_with_index do |num, seat|
    if num == nil
      puts "Row #{row + 1} seat #{seat + 1} is free"
      puts "Do you want to sit there?"
      user_input = gets.chomp
        if user_input == 'y'
          puts "What is your name?"
          user_name = gets.chomp
          val << user_name
          puts "#{user_name} is at row #{row + 1} seat #{seat + 1}"
        end
    end
  end
end

puts seating_chart.inspect
