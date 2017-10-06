def word_counter(string)
  word_array = string.split
  puts word_array.length
end

word_counter("Hello world") # returns 2
word_counter("This is a sentence") # returns 4
word_counter("") # returns 0

#accepts a string argument
#returns a number of the number of words
