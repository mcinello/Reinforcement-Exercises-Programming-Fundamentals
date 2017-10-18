def ordinalize_number(num)
  ending = case num % 20
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end

puts "#{num}#{ending}"

end


ordinalize_number(1)
ordinalize_number(2)
ordinalize_number(3)
ordinalize_number(4)
ordinalize_number(5)
ordinalize_number(6)
ordinalize_number(7)
ordinalize_number(8)
ordinalize_number(9)
ordinalize_number(10)
ordinalize_number(11)
ordinalize_number(12)
ordinalize_number(13)
ordinalize_number(14)
ordinalize_number(15)
ordinalize_number(16)
ordinalize_number(17)
ordinalize_number(18)
ordinalize_number(19)
ordinalize_number(20)
