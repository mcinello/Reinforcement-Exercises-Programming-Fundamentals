
stars = { :rows => 4,
          :cols => 4,
          :char => '*'
        }
zeroes = { :rows => 3,
           :cols => 9,
           :char => '0'
        }

def draw_shape(options)
  shape = ""

  options[:rows].times do |r|
    options[:cols].times do |c|
      shape += options[:char]
    end
    shape += "\n"
  end

  return shape

end

puts draw_shape(stars)
puts draw_shape(zeroes)


# first output
# ****
# ****
# ****
# ****

# second output
# 000000000
# 000000000
# 000000000
