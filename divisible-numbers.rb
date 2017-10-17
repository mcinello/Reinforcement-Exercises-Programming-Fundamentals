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
    if hash[key]%2==0 && hash[key]%7==0
    hash[key] = (val * 2)
    elsif hash[key]%2==0
      hash[key] = (val += 1)
    elsif hash[key]%7==0
      hash[key] = (val -= 1)
    else
      hash[key] = (val = hash[key])
    end
  end
end

puts divisible_values(numbers)
