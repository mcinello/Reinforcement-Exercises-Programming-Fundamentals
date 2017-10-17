# {
#   1: 1,
#   2: 3,
#   3: 3,
#   4: 5,
#   5: 5,
#   6: 7,
#   7: 6,
#   8: 9,
#   9: 9,
#   10: 11,
#   11: 11,
#   12: 13,
#   13: 13,
#   14: 28,
#   15: 15,
#   16: 17,
#   17: 17,
#   18: 19,
#   19: 19,
#   20: 21,
#   21: 20,
#   ...
#   50: 51
# }

numbers = (1..50).each_with_object({}) { |num, hash| hash[num] = num}

def divisible_values(hash)
  hash.each do |key, val|
    if hash[key]%2==0
      hash[key] = (val += 1)
    elsif hash[key]%7==0
      hash[key] = (val -= 1)
  #   elsif key%2==0 && key%7==0
  #     val = (val * 2)
    end
  end
end

puts divisible_values(numbers)

=begin
if number%2==0
  value += 1
elsif number%7==0
value -= 1
elsif number%2==0 %% number%7==0
value = (value * 2)
=end


# Write code to generate a hash where the keys are the numbers from 1 to 50 and the values follow these rules:
#
# if the number is divisible by 2 the value should be one more than the key
# if the number is divisible by 7 the value should be one less than the key
# if the number is divisible by 2 and 7 the value should be the key multiplied by 2
# otherwise the value should be the same number as the key
