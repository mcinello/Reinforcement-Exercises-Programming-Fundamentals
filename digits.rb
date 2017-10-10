$digits = ['1','2','3','4','5','6','7','8','9']
en = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
fr = ['un','deux','trois','quatre','cinq','six','sept','huit','neuf']
kr = ['hana','dul', 'set', 'net', 'dausut', 'yeosut', 'ilgup', 'yeodul', 'ah-hope']
it = ['uno', 'due', 'tre', 'quattro', 'cinque', 'sei', 'sette', 'otto', 'nove']

=begin
digits must become a hash
the number elements become the keys to digits, and have their own hash
inside each key's hash, will have english and french as keys, and the translations as values

turn all of them into hashes

they can be accessed by INDEX
=end

$digits_hash = {}

def translate_digits(lang, arr)
  $digits.each_with_index do |val, idx|
    hash = $digits_hash[val.to_i]
    if hash == nil
      hash = {}
    end
    hash[lang] = arr[idx]
    $digits_hash[val.to_i] = hash
  end
end

translate_digits("english", en)
translate_digits("french", fr)
translate_digits("korean", kr)
translate_digits("italian", it)

puts $digits_hash.inspect
