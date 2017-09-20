puts "What's your grade? (in percentage %)"

grade_percentage = gets.chomp.to_i

def report_card(grade_percentage)
  if grade_percentage >= 90
    puts "Your letter grade is A+"
  elsif grade_percentage >= 85
    puts "Your letter grade is A"
  elsif grade_percentage >= 80
    puts "Your letter grade is A-"
  elsif grade_percentage == 79
    puts "Your letter grade is B+"
  elsif grade_percentage >= 75
    puts "Your letter grade is B"
  elsif grade_percentage >= 70
    puts "Your letter grade is B-"
  elsif grade_percentage == 69
    puts "Your letter grade is C+"
  elsif grade_percentage >= 65
    puts "Your letter grade is C"
  elsif grade_percentage >= 60
    puts "Your letter grade is C-"
  elsif grade_percentage >= 50
    puts "Your letter grade is D"
  else
    puts "STUDY!"
  end
end

report_card(grade_percentage)
