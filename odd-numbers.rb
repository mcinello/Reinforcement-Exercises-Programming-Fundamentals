numbers = (1..20).to_a

odd_numbers = []

odd_numbers = numbers.values_at(* numbers.each_index.select(&:even?))

sum = 0

odd_numbers.each do |num|
  sum += num
end

puts sum
