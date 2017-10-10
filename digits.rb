digits = ['1','2','3','4','5','6','7','8','9']
en = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
fr = ['un','deux','trois','quatre','cinq','six','sept','huit','neuf']

=begin
digits must become a hash
the number elements become the keys to digits, and have their own hash
inside each key's hash, will have english and french as keys, and the translations as values

turn all of them into hashes

they can be accessed by INDEX
=end

digits_hash = {}

# def translate_digits(lang, arr)
  digits.each_with_index do |index, value|
    digits_hash[index.to_i] = {english: en[value]}
  end
# end

# digits_hash.translate_digits("english", en)

puts digits_hash
