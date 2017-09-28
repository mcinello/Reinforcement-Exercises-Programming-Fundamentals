names = ['Josh', 'Michelle', 'Isabella']

puts "What's your name?"
user_name = gets.chomp

if names.include?(user_name)
  puts "Hey #{user_name}!"
else
  puts "Who goes there?"
end
